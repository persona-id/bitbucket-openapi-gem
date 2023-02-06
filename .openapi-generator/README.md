# Bitbucket Gem

## Using the Gem

This project generates `bitbucket` gem from Atlassian's OpenAPI spec and stores it in the [generated folder](generated/).

```
gem "bitbucket", bitbucket: "persona-id/bitbucket-gem"
```

## Generating the Gem

From the [Bitbucket docs page](https://developer.atlassian.com/cloud/bitbucket/rest/intro/), click the "..." in the top right to get the OpenAPI (a.k.a. "Swagger") specs.

From the `.openapi-generator` folder, run the following command.

```
openapi-generator generate \
  --input-spec https://developer.atlassian.com/cloud/bitbucket/swagger.v3.json \
  --generator-name ruby \
  --output .. \
  --config generator-config.yml
```

The Ruby [config options are here](https://openapi-generator.tech/docs/generators/ruby) and set in the [generator-config.yml](generator-config.yml) file.

## Updating the OpenAPI Generator

The instructions for [building the generator are here](https://github.com/OpenAPITools/openapi-generator#2---getting-started).