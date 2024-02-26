##################################################
# Stage 1: Builder
##################################################
FROM node:18.17.1 as builder

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json /usr/src/app/

RUN yarn install --production=false
# if you build you code for production
# RUN npm ci --ony=production

# Bundle app source
COPY . /usr/src/app/

# Command to run when the container is ready
# Separate arguments as separate values in the array
RUN yarn run build:prod

##################################################
# Stage 2: Runtime
##################################################
FROM node:18.17.1 as runtime

# Install pm2 globally
RUN npm install -g pm2

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/dist ./dist

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json /usr/src/app/

RUN yarn install --production=true


USER node

CMD ["pm2-runtime", "dist/index.js"]