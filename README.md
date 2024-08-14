# README
This is a sample app created leveraging the OpenTelemetry quickstart instructions but including initializing Supergood.

When OpenTelemetry is initialized before Supergood, it can cause a SystemStackError. However, by flipping the initialization order, both libraries behave as expected.

To get it up and running:
1. Make sure your system has ruby 3.2.2 installed (or change the .ruby-version to your preferred flavor)
2. Run `bundle install` to install dependencies like rails, opentelemetry and supergood
3. Start the mini-app server on port 8080 by invoking `env OTEL_TRACES_EXPORTER=console rails server -p 8080`
4. Hit the server via `localhost:8080/rolldice`. In your server console you should see OpenTelemetry calls for the initial http call as well as the SG cache flush (among others, like the Supergood config fetch)
