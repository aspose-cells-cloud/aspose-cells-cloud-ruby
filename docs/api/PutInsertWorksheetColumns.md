# **Spreadsheet Cloud API: putInsertWorksheetColumns**

Insert worksheet columns in the worksheet. 


## **Quick Start**

- **Base URL**: `http://api.aspose.cloud/v3.0`
- **Authentication Method**: `JWT (OAuth2, application)`  **Token URL**: `https://api.aspose.cloud/connect/token`
- **Example** 

## **Interface Details**

### **Endpoint** 

```
PUT http://api.aspose.cloud/v3.0/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}
```
### **Function Description**
PageTitle: Insert worksheet columns in the worksheet.PageDescription: Aspose.Cells Cloud provides robust support for inserting worksheet columns in the worksheet, a process known for its intricacy.HeadTitle: Insert worksheet columns in the worksheet.HeadSummary: Aspose.Cells Cloud provides robust support for inserting worksheet columns in the worksheet, a process known for its intricacy.HeadContent: Aspose.Cells Cloud provides REST API which supports inserting worksheet columns in the worksheet and offers SDKs for multiple programming languages. These programming languages are include of Net, Java, Go, NodeJS, Python, and so on.

### The request parameters of **putInsertWorksheetColumns** API are: 

| Parameter Name | Type | Path/Query String/HTTPBody | Description | 
| :- | :- | :- |:- | 
|name|String|Path|The file name.|
|sheetName|String|Path|The worksheet name.|
|columnIndex|Integer|Path|The column index.|
|columns|Integer|Query|The number of columns.|
|updateReference|Boolean|Query|Indicates if references in other worksheets will be updated.|
|folder|String|Query|The folder where the file is situated.|
|storageName|String|Query|The storage name where the file is situated.|

### **Response Description**
```json
{
  "Name": "CellsCloudResponse",
  "Type": "Class",
  "IsAbstract": false,
  "Properties": [
    {
      "Name": "Code",
      "Nullable": true,
      "ReadOnly": false,
      "IsInherit": false,
      "DataType": {
        "Identifier": "Integer",
        "Name": "integer"
      }
    },
    {
      "Name": "Status",
      "Nullable": true,
      "ReadOnly": false,
      "IsInherit": false,
      "DataType": {
        "Identifier": "String",
        "Name": "string"
      }
    }
  ]
}
```


## OpenAPI Specification

The [OpenAPI Specification](https://reference.aspose.cloud/cells/#/CellsController/PutInsertWorksheetColumns) defines a publicly accessible programming interface and lets you carry out REST interactions directly from a web browser.


