Class {
	#name : 'PharoArrowExample',
	#superclass : 'Object',
	#category : 'PharoArrow-Example',
	#package : 'PharoArrow-Example'
}

{ #category : 'examples' }
PharoArrowExample >> readFile [

	<example>
	| reader table |
	reader := GParquetArrowFileReader
		          on: '/Users/benoit.verhaeghe/Documents/entities.parquet'
		          error: nil.
	table := reader readTableWithError: nil
]

{ #category : 'examples' }
PharoArrowExample >> superSimpleExample [

	<example>
	| arrowLibrary gLibrary parquetLibrary intType strType intField strField fields schema intBuilder stringBuilder intArray strArray columns table writer |
	arrowLibrary := PharoArrowLibrary uniqueInstance.
	gLibrary := PharoGLibLibrary uniqueInstance.
	parquetLibrary := PharoParquetLibrary uniqueInstance.

	"Create the data we will manipulate"
	intType := arrowLibrary garrow_int64_data_type_new.
	strType := arrowLibrary garrow_string_data_type_new.

	intField := arrowLibrary garrow_field_new: 'id' dataType: intType.
	strField := arrowLibrary garrow_field_new: 'name' dataType: strType.

	"Create the fields"
	fields := nil.
	fields := gLibrary g_list_append: fields with: intField.
	fields := gLibrary g_list_append: fields with: strField.

	"arrow schema from our usage"
	schema := arrowLibrary garrow_schema_new: fields.

	"Builder by type"
	intBuilder := arrowLibrary garrow_int64_array_builder_new.
	stringBuilder := arrowLibrary garrow_string_array_builder_new.

	"add elements"
	arrowLibrary
		garrow_int64_array_builder: intBuilder
		_append_value: 42
		error: nil.
	arrowLibrary
		garrow_string_array_builder: stringBuilder
		_append_string: 'hello'
		error: nil.

	"end builder"
	intArray := arrowLibrary
		            garrow_array_builder_finish: intBuilder
		            error: nil.
	strArray := arrowLibrary
		            garrow_array_builder_finish: stringBuilder
		            error: nil.

	"have columns in my memory"
	columns := nil.
	columns := gLibrary g_list_append: columns with: intArray.
	columns := gLibrary g_list_append: columns with: strArray.

	"create table"
	table := arrowLibrary
		         garrow_table_new_values: schema
		         values: columns
		         error: nil.

	"write the file now"
	writer := parquetLibrary
		          gparquet_arrow_file_writer_new_path: schema
		          path: '/Users/benoit.verhaeghe/Documents/hello.parquet'
		          writerProperties: nil
		          error: nil.
	parquetLibrary
		gparquet_arrow_file_writer_write_table: writer
		table: table
		chunkSize: 10000
		error: nil.

	"if everything goes well, you can close the writer here"
	parquetLibrary gparquet_arrow_file_writer_close: writer error: nil
]
