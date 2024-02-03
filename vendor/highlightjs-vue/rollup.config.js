import { terser } from "rollup-plugin-terser";
import pkg from "./package.json";

const builds = [
  { format: "esm", minify: false },
  { format: "cjs", minify: false },
  { format: "umd", minify: false },
  { format: "umd", minify: true }
];

export default builds.map(({ format, minify }) => {
  const minExtension = minify ? ".min" : "";
  return {
    input: "vue.js",
    output: {
      name: pkg.name,
      exports: "named",
      file: `dist/${pkg.name}.${format}${minExtension}.js`,
      format
    },
    external: Object.keys(pkg.peerDependencies || {}),
    plugins: [minify ? terser() : null]
  };
});
