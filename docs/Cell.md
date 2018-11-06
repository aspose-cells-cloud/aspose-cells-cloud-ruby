# AsposeCellsCloud::Cell

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**link** | [**Link**](Link.md) |  | [optional] 
**style** | [**LinkElement**](LinkElement.md) |  | [optional] 
**html_string** | **String** | Gets and sets the html string which contains data and some formattings in this cell.              | [optional] 
**name** | **String** | Gets the name of the cell.              | [optional] 
**column** | **Integer** | Gets column number (zero based) of the cell.              | 
**worksheet** | **String** | Gets the parent worksheet. | [optional] 
**is_in_table** | **BOOLEAN** | Indicates whethe this cell is part of table formula.              | 
**is_array_header** | **BOOLEAN** | Inidicates the cell&#39;s formula is and array formula and it is the first cell of the array. | 
**value** | **String** |  | [optional] 
**is_formula** | **BOOLEAN** | Represents if the specified cell contains formula.              | 
**is_style_set** | **BOOLEAN** | Indicates if the cell&#39;s style is set. If return false, it means this cell has a default cell format.              | 
**is_in_array** | **BOOLEAN** | Indicates whether the cell formula is an array formula. | 
**is_error_value** | **BOOLEAN** | Checks if a formula can properly evaluate a result.              | 
**is_merged** | **BOOLEAN** | Checks if a cell is part of a merged range or not.              | 
**formula** | **String** | Gets or sets a formula of the Aspose.Cells.Cell. | [optional] 
**type** | **String** | Specifies a cell value type. | [optional] 
**row** | **Integer** | Gets row number (zero based) of the cell.              | 


