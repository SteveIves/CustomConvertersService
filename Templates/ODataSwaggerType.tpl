<CODEGEN_FILENAME><StructureNoplural>Types.yaml</CODEGEN_FILENAME>
<REQUIRES_CODEGEN_VERSION>5.4.4</REQUIRES_CODEGEN_VERSION>
<REQUIRES_USERTOKEN>API_VERSION</REQUIRES_USERTOKEN>
;//****************************************************************************
;//
;// Title:       ODataSwaggerType.tpl
;//
;// Type:        CodeGen Template
;//
;// Description: Generates YAML Swagger File documenting a specific complex type
;//
;// Copyright (c) 2019, Synergex International, Inc. All rights reserved.
;//
;// Redistribution and use in source and binary forms, with or without
;// modification, are permitted provided that the following conditions are met:
;//
;// * Redistributions of source code must retain the above copyright notice,
;//   this list of conditions and the following disclaimer.
;//
;// * Redistributions in binary form must reproduce the above copyright notice,
;//   this list of conditions and the following disclaimer in the documentation
;//   and/or other materials provided with the distribution.
;//
;// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
;// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
;// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
;// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
;// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
;// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;// POSSIBILITY OF SUCH DAMAGE.
;//
# *****************************************************************************
#
#  Title:       <StructureNoplural>Types.yaml
# 
#  Description: Describes <StructureNoplural> complex types
# 
# *****************************************************************************
#  WARNING: GENERATED CODE!
#  This file was generated by CodeGen. Avoid editing the file if possible.
#  Any changes you make will be lost of the file is re-generated.
# *****************************************************************************
# 
swagger: '2.0'

info:
  title: <StructureNoplural> Types
  description: Describes complex types for <StructureNoplural>
  version: <API_VERSION>

;//
;// Full type
;//
<StructureNoplural>:
  required:
<IF STRUCTURE_ISAM>
  <PRIMARY_KEY>
    <SEGMENT_LOOP>
    - <FieldSqlname>
    </SEGMENT_LOOP>
  </PRIMARY_KEY>
</IF STRUCTURE_ISAM>
<IF STRUCTURE_RELATIVE>
    - RecordNumber
</IF STRUCTURE_RELATIVE>
  properties:
<FIELD_LOOP>
  <IF CUSTOM_NOT_HARMONY_EXCLUDE>
    <FieldSqlname>:
      <IF ALPHA>
      type: string
      example: <FIELD_SAMPLE_DATA>
      description: <FIELD_DESC>
      </IF ALPHA>
      <IF DECIMAL>
      <IF PRECISION>
      type: number
      format: float
      example: <FIELD_SAMPLE_DATA>
      description: <FIELD_DESC>
      <ELSE>
      <IF CUSTOM_HARMONY_AS_STRING>
      type: string
      example: <FIELD_SAMPLE_DATA>
      <ELSE>
      type: integer
      example: <FIELD_SAMPLE_DATA>
      </IF CUSTOM_HARMONY_AS_STRING>
      description: <FIELD_DESC>
      </IF PRECISION>
      </IF DECIMAL>
      <IF DATE>
      type: string
      format: date-time
      example: <FIELD_SAMPLE_DATA>
      description: <FIELD_DESC>
      </IF DATE>
      <IF TIME>
      type: string
      format: date-time
      example: <FIELD_SAMPLE_DATA>
      description: <FIELD_DESC>
      </IF TIME>
      <IF INTEGER>
      type: number
      format: <IF I124>int32<ELSE>int64</IF I124>
      example: <FIELD_SAMPLE_DATA>
      description: <FIELD_DESC>
       </IF INTEGER>
    </IF CUSTOM_NOT_HARMONY_EXCLUDE>
</FIELD_LOOP>
;//
;// Document relation properties
;//
<IF DEFINED_ENABLE_RELATIONS>
 <IF STRUCTURE_RELATIONS>
  <RELATION_LOOP_RESTRICTED>
;//
   <IF MANY_TO_ONE_TO_MANY>
    <HARMONYCORE_RELATION_NAME>:
      $ref: '<RelationTostructureNoplural>Types.yaml#/<RelationTostructureNoplural>'
      description: Related <RelationTostructureNoplural>
   </IF MANY_TO_ONE_TO_MANY>
;//
   <IF ONE_TO_ONE_TO_ONE>
    <HARMONYCORE_RELATION_NAME>:
      $ref: '<RelationTostructureNoplural>Types.yaml#/<RelationTostructureNoplural>'
      description: Related <RelationTostructureNoplural>
   </IF ONE_TO_ONE_TO_ONE>
;//
   <IF ONE_TO_ONE>
    <HARMONYCORE_RELATION_NAME>:
      $ref: '<RelationTostructureNoplural>Types.yaml#/<RelationTostructureNoplural>'
      description: Related <RelationTostructureNoplural>
   </IF ONE_TO_ONE>
;//
   <IF ONE_TO_MANY_TO_ONE>
    <HARMONYCORE_RELATION_NAME>:
      type: array
      items:
        $ref: '<RelationTostructureNoplural>Types.yaml#/<RelationTostructureNoplural>'
      description: Related <RelationTostructurePlural>
   </IF ONE_TO_MANY_TO_ONE>
;//
   <IF ONE_TO_MANY>
    <HARMONYCORE_RELATION_NAME>:
      type: array
      items:
        $ref: '<RelationTostructureNoplural>Types.yaml#/<RelationTostructureNoplural>'
      description: Related <RelationTostructurePlural>
   </IF ONE_TO_MANY>
;//
    </RELATION_LOOP_RESTRICTED>
  </IF STRUCTURE_RELATIONS>
</IF DEFINED_ENABLE_RELATIONS>
;//
;// Provide example data
;//
  example:
<FIELD_LOOP>
  <IF CUSTOM_NOT_HARMONY_EXCLUDE>
    <FieldSqlname>: <FIELD_SAMPLE_DATA>
  </IF CUSTOM_NOT_HARMONY_EXCLUDE>
</FIELD_LOOP>
<IF DEFINED_ENABLE_POST>
<IF POST_ENDPOINT>

;//
;// Type without primary key properties
;//
<StructureNoplural>Post:
  properties:
<FIELD_LOOP>
  <IF NOTPKSEGMENT>
    <IF CUSTOM_NOT_HARMONY_EXCLUDE>
    <FieldSqlname>:
      <IF ALPHA>
      type: string
      example: <FIELD_SAMPLE_DATA>
      description: <FIELD_DESC>
      </IF ALPHA>
      <IF DECIMAL>
      <IF PRECISION>
      type: number
      format: float
      example: <FIELD_SAMPLE_DATA>
      description: <FIELD_DESC>
      <ELSE>
      <IF CUSTOM_HARMONY_AS_STRING>
      type: string
      example: <FIELD_SAMPLE_DATA>
      <ELSE>
      type: integer
      example: <FIELD_SAMPLE_DATA>
      </IF CUSTOM_HARMONY_AS_STRING>
      description: <FIELD_DESC>
      </IF PRECISION>
      </IF DECIMAL>
      <IF DATE>
      type: string
      format: date-time
      example: <FIELD_SAMPLE_DATA>
      description: <FIELD_DESC>
      </IF DATE>
      <IF TIME>
      type: string
      format: date-time
      example: <FIELD_SAMPLE_DATA>
      description: <FIELD_DESC>
      </IF TIME>
      <IF INTEGER>
      type: number
      format: <IF I124>int32<ELSE>int64</IF I124>
      example: <FIELD_SAMPLE_DATA>
      description: <FIELD_DESC>
      </IF INTEGER>
    </IF CUSTOM_NOT_HARMONY_EXCLUDE>
  </IF NOTPKSEGMENT>
</FIELD_LOOP>
  example:
<FIELD_LOOP>
  <IF NOTPKSEGMENT>
    <IF CUSTOM_NOT_HARMONY_EXCLUDE>
    <FieldSqlname>: <FIELD_SAMPLE_DATA>
    </IF CUSTOM_NOT_HARMONY_EXCLUDE>
  </IF NOTPKSEGMENT>
</FIELD_LOOP>
</IF DEFINED_ENABLE_POST>
</IF POST_ENDPOINT>
