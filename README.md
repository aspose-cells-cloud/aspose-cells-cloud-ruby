# Aspose.Cells Cloud SDK for Ruby [![NuGet](https://img.shields.io/nuget/v/Aspose.Cells-Cloud.svg)](https://www.nuget.org/packages/Aspose.Cells-Cloud/)

- API version: 3.0
- SDK version: 19.9

This repository contains Aspose.Cells Cloud SDK for Ruby source code. This SDK allows you to work with Aspose.Cells Cloud REST APIs in your Ruby applications quickly and easily, with zero initial cost.



# Key Features

- Conversion between various document-related formats (20+ formats supported), including PDF<->Excel conversion

- Splitting Excel documents

- Accessing Excel document metadata and statistics

- Find and replace

- Watermarks and protection

- Full read & write access to Cells Object Model, including workbook, worksheet, cell, shapes, tables, list object ,ole Object,headers/footers and many others

  

See [API Reference](https://apireference.aspose.cloud/cells/) for full API specification.



# Storage API support

#### Since version 19.9 SDK includes support of storage operations for better user experience and unification, so now there's no need to use 2 different SDKs!

It gives you an ability to:

- Upload, download, copy, move and delete files, including versions handling (if you are using Cloud storage that supports this feature - true by default)
- Create, copy, move and delete folders
- Copy and move files and folders accross separate storages in scope of a single operation
- Check if certain file, folder or storage exists

# Licensing

All Aspose.Cells Cloud SDKs are licensed under [MIT License](https://github.com/aspose-cells-cloud/aspose-cells-cloud-ruby/blob/master/LICENSE).



# How to use the SDK?

The complete source code is available in this repository folder. You can either directly use it in your project via source code or get  [RubyGem](https://rubygems.org/gems/aspose_cells_cloud)  (recommended). For more details, please visit our [documentation website](https://docs.aspose.cloud/display/cellscloud/Available+SDKs).

 

### Prerequisites

 

To use Aspose.Cells Cloud SDK you need to register an account with [Aspose Cloud](https://www.aspose.cloud/) and lookup/create App Key and SID at [Cloud Dashboard](https://dashboard.aspose.cloud/#/apps). There is free quota available. For more details, see [Aspose Cloud Pricing](https://purchase.aspose.cloud/pricing).

 

### Installation

To install this package do the following: update your Gemfile

```
gem 'aspose_cells_cloud', '~> 19.9'
```

or install directly

```
gem install aspose_cells_cloud
```

### Sample usage

```
@instance = AsposeCellsCloud::CellsApi.new("appsid","appkey")
 name = 'Book1.xlsx'
 text = 'test'
 folder = 'Temp'
 @instance.cells_workbook_post_workbooks_text_search(name, text, { :folder=>folder})
```

# Tests

[Tests](https://github.com/aspose-cells-cloud/aspose-cells-cloud-ruby/tree/master/spec) contain various examples of using the SDK.



# Contact Us

Your feedback is very important to us. Please feel free to contact via

- [**Free Support Forum**](https://forum.aspose.cloud/c/cells)
- [**Paid Support Helpdesk**](https://helpdesk.aspose.cloud/)

# Resources

- [**Web API reference**](https://apireference.aspose.cloud/cells/)
- [**Website**](https://www.aspose.cloud)
- [**Product Home**](https://products.aspose.cloud/cells)
- [**Documentation**](https://docs.aspose.cloud/display/cellscloud/Home)
- [**Blog**](https://blog.aspose.cloud/category/cells/)