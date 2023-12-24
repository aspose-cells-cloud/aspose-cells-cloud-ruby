![](https://img.shields.io/badge/REST%20API-v3.0-lightgrey) ![Gem](https://img.shields.io/gem/v/aspose_cells_cloud) ![Gem](https://img.shields.io/gem/dt/aspose_cells_cloud) [![GitHub license](https://img.shields.io/github/license/aspose-cells-cloud/aspose-cells-cloud-ruby)](https://github.com/aspose-cells-cloud/aspose-cells-cloud-ruby/blob/master/LICENSE) ![GitHub commits since latest release (by date)](https://img.shields.io/github/commits-since/aspose-cells-cloud/aspose-cells-cloud-ruby/23.12)


# Ruby SDK for Spreadsheet Processing in the Cloud

Ruby Cloud SDK wraps Aspose.Cells REST API so you could seamlessly integrate Microsoft Excel® spreadsheet generation, manipulation, conversion & inspection features into your own applications. 

[Aspose.Cells Cloud SDK for Ruby](https://products.aspose.cloud/cells/ruby) offers Excel® file creation, editing, conversion, & rendering. Developers can format worksheets, rows, columns or cells to the most granular level, create & manipulate chart & pivot tables, render worksheets, charts and specific data ranges to PDF & images, add & calculate Excel's built-in and custom formulas and much more.

## Cloud Spreadsheet Processor in a Nutshell

- Create Excel files via API or [Smart Markers](https://docs.aspose.cloud/cells/create-excel-workbook-from-a-smartmarker-template/).
- [Create & refresh Pivot Tables](https://docs.aspose.cloud/cells/working-with-pivot-tables/) & Excel charts.
- Split, merger, protect & un-protect spreadsheets.
- Create & manipulate spark-lines & [conditional formatting](https://docs.aspose.cloud/cells/working-with-conditional-formatting/).
- Convert charts, worksheets or data ranges to images or PDF.
- Manage comments, bookmarks, OleObjects, hyperlinks & filters.
- Set complex formulas & calculate results via API.
- Set protection on workbook, worksheet, cell, column or row.
- Create & manipulate named ranges.
- Convert worksheets to PDF, XPS & SVG formats.
- [Convert Excel files to popular formats](https://docs.aspose.cloud/cells/convert-excel-workbook-to-different-file-formats/).


## Feature & Enhancements in Version 23.12

Full list of issues covering all changes in this release:

- Conversion APIs add region parameter.
- Protection APIs add region parameter.
- Assemble data API adds region parameter.
- Merge files API adds region parameter.
- Split files API adds region parameter.
- Import data API adds region parameter.
- Watermark API adds region parameter.
- Clear object API adds region parameter.
- Reverse data API adds region parameter.
- Rotate data API adds region parameter.

## Read & Write Spreadsheet Formats

**Microsoft Excel:** XLS, XLSX, XLSB, XLSM, XLT, XLTX, XLTM
**OpenOffice:** ODS
**SpreadsheetML:** XML
**Text:** CSV, TSV, TXT (TabDelimited)
**Web:** HTML, MHTML

## Save Spreadsheets As

**Microsoft Excel:** XLS, XLSX, XLSB
**OpenOffice:** ODS
**SpreadsheetML:** XML
**Text:** CSV, TSV, TXT (TabDelimited)
**Web:** HTML, MHTML
**Fixed Layout:** PDF, XPS
**Images:** PNG, JPG, TIFF, SVG
**Markdown:** MD
**Other:** DIF

## Read Other Formats

SXC, FODS

## Integrated Storage API

Since version 19.9, SDK includes support of storage operations for better user experience and unification. It gives you an ability to;

- Upload, download, copy, move and delete files, including versions handling (if you are using Cloud storage that supports this feature - true by default).
- Create, copy, move and delete folders.
- Copy and move files and folders across separate storages in scope of a single operation.
- Check if certain file, folder or storage exists.

## Get Started with Aspose.Cells Cloud SDK for Ruby

First, you need to register an account at [Aspose for Cloud](https://dashboard.aspose.cloud/#/apps) and get the application information. 

Next, execute the following command to get the latest Gem package.

```console
gem 'aspose_cells_cloud', '~> 20.10'
```

or install directly

```console
gem install aspose_cells_cloud
```

## Delete Row from a Worksheet via Ruby Code

```ruby
class Row

  include AsposeCellsCloud

  def initialize
    #Get Client Secret and Client Id from https://cloud.aspose.com
    @instance = AsposeCellsCloud::CellsApi.new($client_id,$client_secret,"v3.0")
  end

  def upload_file(file_name)
      remote_folder = 'TestData/In'
      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
  end

  # Delete worksheet row.
  def delete_worksheet_row
      remote_folder = 'TestData/In'
      remote_name = 'Book1.xlsx'   
      request =   AsposeCellsCloud::DeleteWorksheetRowRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:rowIndex=>1,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_row(request);
  end

end

row = Row.new()
puts row.delete_worksheet_row
```

## Aspose.Cells Cloud SDKs in Popular Languages

| .NET | Java | PHP | Python | Node.js | Android | Swift | Perl | GO |
|---|---|---|---|---|---|---|---|---|
| [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-dotnet) | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-java) | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-php) | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-python)  | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-node) | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-android)  | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-swift) | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-perl) | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-go) |
| [NuGet](https://www.nuget.org/packages/Aspose.Cells-Cloud/) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-cells-cloud) | [Composer](https://packagist.org/packages/aspose/cells-sdk-php) | [PIP](https://pypi.org/project/asposecellscloud/)  | [NPM](https://www.npmjs.com/package/asposecellscloud) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-cells-cloud-android) | [POD](https://cocoapods.org/pods/AsposeCellsCloud) |  [CPAN](https://metacpan.org/release/AsposeCellsCloud-CellsApi) | [GO](https://pkg.go.dev/github.com/aspose-cells-cloud/aspose-cells-cloud-go/v20?tab=overview) |

[Product Page](https://products.aspose.cloud/cells/ruby) | [Documentation](https://docs.aspose.cloud/cells/) | [Live Demo](https://products.aspose.app/cells/family) | [API Reference](https://apireference.aspose.cloud/cells/) | [Code Samples](https://github.com/aspose-cells-cloud/aspose-cells-cloud-ruby/tree/master/spec) | [Blog](https://blog.aspose.cloud/category/cells/) | [Free Support](https://forum.aspose.cloud/c/cells) | [Free Trial](https://dashboard.aspose.cloud/#/apps)
