﻿function New-WordListItem {
    [CmdletBinding()]
    param (
        [parameter(ValueFromPipelineByPropertyName, ValueFromPipeline)][Xceed.Words.NET.Container] $WordDocument,
        [parameter(ValueFromPipelineByPropertyName, ValueFromPipeline)][Xceed.Words.NET.InsertBeforeOrAfter] $List,
        [alias('Level')] [ValidateRange(0, 8)] [int] $ListLevel,
        [alias('ListType')][ListItemType] $ListItemType = [ListItemType]::Bulleted,
        [alias('Value', 'ListValue')]$Text,
        [nullable[int]] $StartNumber,
        [bool]$TrackChanges = $false,
        [bool]$ContinueNumbering = $false,
        [bool]$Supress = $false
    )
    if ($List -eq $null) {
        $List = $WordDocument.AddList($Text, $ListLevel, $ListItemType, $StartNumber, $TrackChanges, $ContinueNumbering)
        $Paragraph = $List.Items[$List.Items.Count - 1]
    } else {
        $List = $WordDocument.AddListItem($List, $Text, $ListLevel, $ListItemType, $StartNumber, $TrackChanges, $ContinueNumbering)
        $Paragraph = $List.Items[$List.Items.Count - 1]
    }
    Write-Verbose "Add-WordListItem - ListType Value: $Text Name: $($List.GetType().Name) - BaseType: $($List.GetType().BaseType)"
    return $List
}function New-WordListItem {
    [CmdletBinding()]
    param (
        [parameter(ValueFromPipelineByPropertyName, ValueFromPipeline)][Xceed.Words.NET.Container] $WordDocument,
        [parameter(ValueFromPipelineByPropertyName, ValueFromPipeline)][Xceed.Words.NET.InsertBeforeOrAfter] $List,
        [alias('Level')] [ValidateRange(0, 8)] [int] $ListLevel,
        [alias('ListType')][ListItemType] $ListItemType = [ListItemType]::Bulleted,
        [alias('Value', 'ListValue')]$Text,
        [nullable[int]] $StartNumber,
        [bool]$TrackChanges = $false,
        [bool]$ContinueNumbering = $false,
        [bool]$Supress = $false
    )
    if ($List -eq $null) {
        $List = $WordDocument.AddList($Text, $ListLevel, $ListItemType, $StartNumber, $TrackChanges, $ContinueNumbering)
        $Paragraph = $List.Items[$List.Items.Count - 1]
    } else {
        $List = $WordDocument.AddListItem($List, $Text, $ListLevel, $ListItemType, $StartNumber, $TrackChanges, $ContinueNumbering)
        $Paragraph = $List.Items[$List.Items.Count - 1]
    }
    Write-Verbose "Add-WordListItem - ListType Value: $Text Name: $($List.GetType().Name) - BaseType: $($List.GetType().BaseType)"
    return $List
}