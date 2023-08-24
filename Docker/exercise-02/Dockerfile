FROM ruby
WORKDIR  /app
COPY . .
RUN gem install faker
RUN gem install json
ENV OUTPUT_FILE="./faker.json"
CMD ["ruby", "exercise02.rb", "${OUTPUT_FILE}"]