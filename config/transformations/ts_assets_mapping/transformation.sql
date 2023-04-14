/* MAPPING_MODE_ENABLED: false */
/* {"version":1,"sourceType":"raw","mappings":[{"from":"","to":"id"},{"from":"","to":"name"},{"from":"","to":"externalId"},{"from":"","to":"metadata"},{"from":"","to":"unit"},{"from":"","to":"assetId"},{"from":"","to":"description"},{"from":"","to":"securityCategories"},{"from":"","to":"isStep"},{"from":"","to":"isString"},{"from":"","to":"dataSetId"}]} */

SELECT ts.externalId AS externalId,
       ast.id AS assetId
FROM `_cdf`.`timeseries` AS ts
INNER JOIN `_cdf`.`assets` AS ast ON split(ts.externalId, ":") [0] = ast.externalId
