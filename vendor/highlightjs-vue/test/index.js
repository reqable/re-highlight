var should = require("should");
var promisify = require("util").promisify;
let path = require("path");
let hljs = require("highlight.js");
const fs = require("fs");
const hljsDefineVue = require("../vue");

const readdir = promisify(fs.readdir),
  readFile = promisify(fs.readFile);

describe("Vue.js Tests", () => {
  beforeEach(() => {
    hljsDefineVue(hljs);
  });
  it("generates correct markup", async () => {
    var files = await readdir(path.join(__dirname, "markup"));
    files = files.filter(f => !f.includes(".expect."));
    for (var f of files) {
      let fn = path.join(__dirname, "markup", f);
      let expectFn = fn.replace(".txt", ".expect.txt");
      var code = await readFile(fn, "utf-8");
      var exp = await readFile(expectFn, "utf-8");
      var actual = hljs.highlight("vue", code).value;
      actual.trim().should.eql(exp.trim(), f);
    }
  });
  it("is detected correctly", async () => {
    var code = await readFile(path.join(__dirname, "detect.txt"), "utf-8");
    var actual = hljs.highlightAuto(code).language;
    actual.should.eql("vue");
  });
});
