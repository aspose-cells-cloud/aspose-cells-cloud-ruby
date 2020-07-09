Ruby REST API for Spreadsheet Processing in Cloud

This Cloud SDK enhances your Ruby cloud-based apps to [process & manipulate Microsoft Excel spreadsheets](https://products.aspose.cloud/cells/ruby) in the cloud, without MS Office.

## Spreadsheet Processing Features

- Add, update or delete charts, worksheet pictures, shapes, hyperlinks & validations.
- Add or remove cells area for conditional formatting, or OleObjects from Excel worksheets.
- Insert or delete, horizontal or vertical page breaks
- Add ListObject at a specific place within an Excel file & convert them to a range of cells.
- Delete specific or all ListObjects in a worksheet or summarize its data with pivot table.
- Apply custom criteria to list filters of various types.
- Get, update, show or hide chart legend & titles.
- Manipulate page setup, header & footer.
- Create, update, fetch or delete document properties.
- Fetch the required shape from worksheet.
- Load & Process Excel Spreadsheets via Cloud SDK.
- Cloud SDK to Read & Process Excel Worksheets.
- Leverage the Power of Pivot Tables & Ranges.

## Feature & Enhancements in Version 20.6

- Support to add text water marker.
- Enhancement for Cells object operating in Task API.
- Enhancement for workbook convert images in get workbook API.

## Read & Write Spreadsheet Formats

**Microsoft Excel:** XLS, XLSX, XLSB, XLSM, XLT, XLTX, XLTM
**OpenOffice:** ODS
**SpreadsheetML:** XML
**Text:** CSV, TSV, TXT (TabDelimited)
**Web:** HTML, MHTML
**PDF**

## Save Spreadsheet As

DIF, HTML, MHTML,PNG,JPG, TIFF, XPS, SVG, MD (Markdown), ODS ,xlsx,xls,xlsb, PDF,XML,TXT,CSV

## Read Spreadsheet Formats

SXC, FODS

## Storage API Support

Since version 19.9, SDK includes support of storage operations for better user experience and unification, so now there's no need to use 2 different SDKs!

It gives you an ability to:

- Upload, download, copy, move and delete files, including versions handling (if you are using Cloud storage that supports this feature - true by default).
- Create, copy, move and delete folders.
- Copy and move files and folders across separate storages in scope of a single operation.
- Check if certain file, folder or storage exists.

## Getting Started with Aspose.Cells Cloud SDK for Ruby

The complete source code is available at the [GitHub Repository](https://github.com/aspose-cells-cloud/aspose-cells-cloud-ruby). You can either directly use it in your project via source code or get [RubyGem](https://rubygems.org/gems/aspose_cells_cloud) (recommended).

## Prerequisites

To use Aspose.Cells Cloud SDK for Ruby you need to register an account with [Aspose Cloud](https://www.aspose.cloud/) and lookup/create App Key and SID at [Cloud Dashboard](https://dashboard.aspose.cloud/#/apps). There is free quota available. For more details, see [Aspose Cloud Pricing](https://purchase.aspose.cloud/pricing).

## Installation

To install this package do the following:

Update your `Gemfile`

```console
gem 'aspose_cells_cloud', '~> 20.4'
```

or install directly

```console
gem install aspose_cells_cloud
```

## Using Ruby Code to Delete Row from a Worksheet

```ruby
# For complete examples and data files, please go to https://github.com/aspose-cells/Aspose.Cells-for-Cloud
require 'aspose_cells_cloud'

class Row

  include AsposeCellsCloud

  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    @instance = AsposeCellsCloud::CellsApi.new($client_id,$client_secret,"v3.0")
  end

  def upload_file(file_name)
    response =  @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
  end

  # Delete worksheet row.
  def delete_worksheet_row
    name = "myWorkbook.xlsx"
    upload_file(name)

    sheet_name = "Sheet1"
    row_index = 1
    result = @instance.cells_delete_worksheet_row(name, sheet_name, row_index,  { :folder=>folder})
  end

end

row = Row.new()
puts row.delete_worksheet_row
```

## Tests

[Tests](https://github.com/aspose-cells-cloud/aspose-cells-cloud-ruby/tree/master/spec) contain various examples of using the SDK.

## Licensing

All Aspose.Cells Cloud SDKs are licensed under [MIT License](https://github.com/aspose-cells-cloud/aspose-cells-cloud-ruby/blob/master/LICENSE).

[Product Page](https://products.aspose.cloud/cells/ruby) | [Documentation](https://docs.aspose.cloud/display/cellscloud/Home) | [Live Demo](https://products.aspose.app/cells/family) | [API Reference](https://apireference.aspose.cloud/cells/) | [Code Samples](https://github.com/aspose-cells-cloud/aspose-cells-cloud-ruby) | [Blog](https://blog.aspose.cloud/category/cells/) | [Free Support](https://forum.aspose.cloud/c/cells) | [Free Trial](https://dashboard.aspose.cloud/#/apps)