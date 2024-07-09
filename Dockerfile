FROM node:20-slim
WORKDIR /app
COPY . /app
# Set build arguments and environment variables
ARG REACT_APP_API

ENV REACT_APP_API=$REACT_APP_API

RUN npm install
EXPOSE 3000
CMD npm start