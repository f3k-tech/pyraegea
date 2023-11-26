# Stage 1: Build the Jekyll Site
FROM jekyll/jekyll:latest as builder

WORKDIR /app

COPY Gemfile* /app/

RUN bundle install

COPY . /app/

RUN jekyll build

# Stage 2: Serve the Site with Nginx
FROM nginx:alpine

COPY --from=builder /app/_site /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
