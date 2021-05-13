# sgtemplates<img src="man/images/logo.svg?raw=true" alt="Logo" align="right" height="150px" style="max-width: 100%;">

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

R markdown templates for data analysts working for the Scottish Government. `sgtemplates` lets you use RStudio to quickly produce professional, accessible, Government-branded HTML documents and websites.

The design and styling of the templates is based on the [Digital Scotland Design System](https://designsystem.gov.scot/).

<p align="center">
  <img src="man/images/mockup.png?raw=true" alt="Screenshot a R markdown website made with sgtemplates" style="max-width: 100%;">
</p>

## Installation

### Installation with Devtools

Install `sgtemplates` from GitHub using the `devtools` package. In R, copy and run the following code:

``` r
devtools::install_github("DataScienceScotland/sgtemplates")
```

### Installation in a Restricted Environment

If you are on a restricted computer, or in a restricted network environment, you may be unable to download binaries from GitHub or use the `devtools` package. You can install `sgtemplates` manually.

1. Navigate to the `sgtemplates` [repository on GitHub](https://github.com/DataScienceScotland/sgtemplates);
2. Click on the "Code" button, then select "Download ZIP" (see picture below);

<p align="center">
  <img src="man/images/download-from-github.png?raw=true" alt="Screenshot of GitHub's download code button" style="max-width: 100%;">
</p>

3. Open or save the ZIP file;
4. Extract the ZIP file to a memorable location, keeping the folder structure;
5. In R, copy and run the following code:

``` r
install.packages("C:/Users/u000000/Downloads/sgtemplates-main", repos = NULL, type = "source")
```

Replace the example path with the path you extracted the ZIP file to.

## Using the Templates

### Importing Template Files into Existing Projects

`sgtemplates` can be easily added to your existing projects. To import the template files to your project folder:

1. Open your project in R;
2. Copy and run the following code:

``` r
sgtemplates::import_template_files()
```

3. Instruct Knitr to use the template, by adding the following argument to your YAML block:

``` yaml
output:
  html_document:
    template: _template.html
```

### Creating New R Markdown Documents

`sgtemplates` is fully integrated into the RStudio IDE, so creating new documents and websites for the Scottish Government is easy. To create a new R markdown document in RStudio:

1. Select "File > New File > R Markdown";
2. In the new document wizard, select "From Template";
3. Select "Scottish Government Template";
4. Enter your document name and the location that your document will be saved to. Choose "OK".

<p align="center">
  <img src="man/images/new-document.png?raw=true" alt="Screenshot of RStudio's new R markdown document dialogue, with sgtemplates installed" style="max-width: 100%;">
</p>

### Creating New R Markdown Websites

To create a new R markdown website -- multiple R markdown documents tied together by a navigation bar and a simple site structure -- in RStudio:

1. Select "File > New Project";
2. In the new project wizard, select "New Directory";
3. Select "Scottish Government Website";
4. Enter the directory that your website will be saved to. Choose "OK".

<p align="center">
  <img src="man/images/new-website.png?raw=true" alt="Screenshot of RStudio's new project dialogue, with sgtemplates installed" style="max-width: 100%;">
</p>

Your chosen directory will be populated with example R markdown files. It will also have a \_site.yml file, which contains the configuration and metadata for your website.

For more information on authoring websites with R markdown, please read the [documentation for R markdown's site generator](https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html).

### Updating `sgtemplates`

After updating `sgtemplates`, you can also use the `import_template_files()` function to import the latest versions of the template files to your project folder. `import_template_files()` will overwrite your existing template files with the versions installed in your R library.

## New Features and YAML Arguments

You can customise your documents and enable features not present in the default RStudio knitted HTML files through the use of YAML arguments. These will be fully documented in time. At present, the supported arguments can be found in the YAML block of a newly-generated `sgtemplates` R markdown document or website, under the parent YAML argument `sgtemplates`.

<p align="center">
  <img src="man/images/yaml-example.png?raw=true" alt="Screenshot of an R markdown document in RStudio, showing some custom YAML arguments" style="max-width: 100%;">
</p>

You do not need to use any new features. Each argument under `sgtemplates` can be safely deleted, if you do not want to use it.

## Contact

Feedback is greatly appreciated. Please feel free to leave questions, comments, and suggestions on the [GitHub discussion board](../../discussions). Feedback will help direct our efforts as we continue to improve and iterate on `sgtemplates`.

If you do not want to share feedback on GitHub, we also value feedback sent by email. Please contact either:

- The Analytical Workbench support desk at analytical.workbench@gov.scot, or;
- Miles Drake (project author and maintainer) at miles.drake@gov.scot.

## Contributing

Please feel free to add [issues](../../issues), or open [pull requests](../../pulls) on GitHub.

## License

This repository is publicly available under the [GNU General Public License v3.0](LICENSE). It includes a modified version of [DataTables](https://www.datatables.net/), which is publicly available under the [MIT license](https://www.datatables.net/license/mit).

Any content produced using `sgtemplates` is assumed to be publicly available under the [Open Government Licence v3.0](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/), except for graphic assets and where otherwise stated. © Crown Copyright.
