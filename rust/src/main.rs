extern crate regex;

use std::io;
use std::io::prelude::*;
use regex::Regex;
use std::process::Command;

fn main() {
    let re = Regex::new(r"http.*").unwrap();

    for line_result in io::stdin().lock().lines() {
        let line = line_result.unwrap();
        println!("{}", line);

        if line.contains("pull/new") {
            let ma = re.find(&line).unwrap();
            let open_command = format!("open {}", ma.as_str());
            Command::new("sh").arg("-c").arg(open_command).output().ok();
        }
    }
}
