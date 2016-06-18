// http://stackoverflow.com/questions/34501423/is-possible-to-post-a-json-file-at-a-router-location-with-the-iron-framework
extern crate iron;
extern crate router;
extern crate mount;
extern crate bodyparser;

use iron::prelude::*;
use iron::status;
use router::Router;
use mount::Mount;

fn post_to_documents(req: &mut Request) -> IronResult<Response> {
    match req.extensions.get::<Router>().and_then(|r| r.find("json")) {
        Some(name) => println!("The name was {:?}", name),
        None => println!("There was no name!"),
    }

    match req.get::<bodyparser::Json>() {
        Ok(Some(json_body)) => println!("Parsed body:\n{:?}", json_body),
        Ok(None) => println!("No body"),
        Err(err) => println!("Error: {:?}", err),
    }

    Ok(Response::with((status::Ok, "Ok")))
}

fn main() {
    let mut router = Router::new();
    router.post("/documents/post/:json", post_to_documents);

    let mut mount = Mount::new();
    mount.mount("/", router);

    Iron::new(mount).http("0.0.0.0:3000").unwrap();
}
