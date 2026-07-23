const { fixBabelImports, override } = require("customize-cra");

module.exports = {
  webpack: override(
    fixBabelImports("@material-ui/core", {
      libraryDirectory: "esm",
      camel2DashComponentName: false,
    }),

    fixBabelImports("@material-ui/icons", {
      libraryDirectory: "esm",
      camel2DashComponentName: false,
    })
  ),

  // Allow Jest to transform ESM-only dependencies (e.g. react-step-builder),
  // which otherwise throw "Cannot use import statement outside a module".
  jest: (config) => {
    config.transformIgnorePatterns = [
      "node_modules/(?!(react-step-builder|image-promise)/)",
      "^.+\\.module\\.(css|sass|scss)$",
    ];
    return config;
  },
};
