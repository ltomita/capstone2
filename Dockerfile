# pull official base image
FROM public.ecr.aws/docker/library/node:16.18.1-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
CMD ["npm", "start"]
