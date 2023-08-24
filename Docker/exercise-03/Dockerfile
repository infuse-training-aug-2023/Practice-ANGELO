FROM ruby
WORKDIR /app
COPY . .
RUN gem install test-unit
ENV EXEC=true
CMD ["ruby", "testcase.rb", "exercise03"]