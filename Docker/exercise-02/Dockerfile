FROM ruby

WORKDIR  /app

COPY . .

RUN bundle install

ENV EXEC=true

CMD ["ruby", "exercise02.rb", "./faker.json"]