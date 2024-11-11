# Step 1: Use an official Node.js runtime as a parent image
# FROM node:16-alpine

# Step 2: Set the working directory in the container
# WORKDIR /app

# Step 3: Copy package.json and package-lock.json (if available) to the working directory
# COPY package*.json ./

# Step 4: Install dependencies
# RUN npm install

# Step 5: Copy the rest of the application files to the container
# COPY . .

# Step 6: Build the app for production with minification
# RUN npm run build

# Step 7: Use an Nginx image to serve the built app
FROM nginx:alpine

# Step 8: Copy the built files from the previous build stage to Nginx's default public folder
# COPY --from=0 /app/build /usr/share/nginx/html
COPY ./build /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf 

# Step 9: Expose port 80
EXPOSE 80

# Step 10: Start Nginx
CMD ["nginx", "-g", "daemon off;"]
