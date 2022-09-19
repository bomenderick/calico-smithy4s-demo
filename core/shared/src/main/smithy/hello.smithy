$version: "2"
namespace hello

use smithy4s.api#simpleRestJson

@simpleRestJson
service HelloService {
  operations: [GetHello]
}

@http(method: "GET", uri: "/api/hello/{name}")
@readonly
operation GetHello {
  input := {
    @required @httpLabel name: String
  },
  output := {
    @required greeting: String
  }
}