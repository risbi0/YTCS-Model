??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
8
Const
output"dtype"
valuetensor"
dtypetype
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?"serve*1.15.02unknown8ġ
?

hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *;
shared_name,*hash_table_/tmp/tmpG6hRYe/tokens.txt_-2_-1*
	key_dtype0
n
VariableVarHandleOp*
shape:
??:2*
dtype0*
shared_name
Variable*
_output_shapes
: 
g
Variable/Read/ReadVariableOpReadVariableOpVariable*
dtype0* 
_output_shapes
:
??:2
W
asset_path_initializerPlaceholder*
dtype0*
_output_shapes
: *
shape: 
?

Variable_1VarHandleOp*
shape: *
_class
loc:@Variable_1*
_output_shapes
: *
shared_name
Variable_1*
dtype0
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
V
Variable_1/AssignAssignVariableOp
Variable_1asset_path_initializer*
dtype0
a
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0
P
ConstConst*
valueB	 R
?????????*
dtype0	*
_output_shapes
: 
}
&StatefulPartitionedCall/ReadVariableOpReadVariableOp
Variable_1^Variable_1/Assign*
dtype0*
_output_shapes
: 
?
StatefulPartitionedCallStatefulPartitionedCall&StatefulPartitionedCall/ReadVariableOp
hash_table*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
Tin
2*
_output_shapes
: *!
fR
__inference_<lambda>_130**
config_proto

CPU

GPU 2J 8
:
NoOpNoOp^StatefulPartitionedCall^Variable_1/Assign
?
Const_1Const"/device:CPU:0*
dtype0*
_output_shapes
: *?
value?B? B?
l
_table_initializer

_table

embeddings
	variables
trainable_variables

signatures

	_filename

_initializer
CA
VARIABLE_VALUEVariable%embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 
 
O
saver_filenamePlaceholder*
shape: *
dtype0*
_output_shapes
: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpConst_1**
config_proto

CPU

GPU 2J 8*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
Tin
2*
_output_shapes
: *%
f R
__inference__traced_save_163
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable*(
f#R!
__inference__traced_restore_178**
config_proto

CPU

GPU 2J 8*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
Tin
2*
_output_shapes
: ؎
?
*
__inference__destroyer_111
identityP
ConstConst*
value	B :*
dtype0*
_output_shapes
: 2
ConstQ
IdentityIdentityConst:output:0*
_output_shapes
: *
T02

Identity"
identityIdentity:output:0*
_input_shapes 
?9
?
__inference__preprocess_83
	sentences:
6none_lookup_none_lookup_lookuptablefindv2_table_handle;
7none_lookup_none_lookup_lookuptablefindv2_default_value	

identity_3	

identity_4	

identity_5	??)None_Lookup/None_Lookup/LookupTableFindV2?'None_Lookup/None_Size/LookupTableSizeV2?+None_Lookup_1/None_Lookup/LookupTableFindV2?)None_Lookup_1/None_Size/LookupTableSizeV2k
ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
?????????2
ExpandDims/dim|

ExpandDims
ExpandDims	sentencesExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2

ExpandDims?
"DenseToSparseTensor/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 2$
"DenseToSparseTensor/ignore_value/x?
DenseToSparseTensor/NotEqualNotEqualExpandDims:output:0+DenseToSparseTensor/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2
DenseToSparseTensor/NotEqual?
DenseToSparseTensor/indicesWhere DenseToSparseTensor/NotEqual:z:0*'
_output_shapes
:?????????2
DenseToSparseTensor/indices?
DenseToSparseTensor/valuesGatherNdExpandDims:output:0#DenseToSparseTensor/indices:index:0*
Tindices0	*#
_output_shapes
:?????????*
Tparams02
DenseToSparseTensor/values?
DenseToSparseTensor/dense_shapeShapeExpandDims:output:0*
_output_shapes
:*
T0*
out_type0	2!
DenseToSparseTensor/dense_shapez
tokenize/StringSplit/ConstConst*
value	B B *
dtype0*
_output_shapes
: 2
tokenize/StringSplit/Const?
 tokenize/StringSplit/StringSplitStringSplit	sentences#tokenize/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2"
 tokenize/StringSplit/StringSplit?
None_Lookup/hash_bucketStringToHashBucketFast)tokenize/StringSplit/StringSplit:values:0*#
_output_shapes
:?????????*
num_buckets?2
None_Lookup/hash_bucket?
)None_Lookup/None_Lookup/LookupTableFindV2LookupTableFindV26none_lookup_none_lookup_lookuptablefindv2_table_handle)tokenize/StringSplit/StringSplit:values:07none_lookup_none_lookup_lookuptablefindv2_default_value*

Tout0	*	
Tin0*#
_output_shapes
:?????????2+
)None_Lookup/None_Lookup/LookupTableFindV2?
'None_Lookup/None_Size/LookupTableSizeV2LookupTableSizeV26none_lookup_none_lookup_lookuptablefindv2_table_handle*^None_Lookup/None_Lookup/LookupTableFindV2*
_output_shapes
: 2)
'None_Lookup/None_Size/LookupTableSizeV2?
None_Lookup/AddAdd None_Lookup/hash_bucket:output:0.None_Lookup/None_Size/LookupTableSizeV2:size:0*#
_output_shapes
:?????????*
T0	2
None_Lookup/Add?
None_Lookup/NotEqualNotEqual2None_Lookup/None_Lookup/LookupTableFindV2:values:07none_lookup_none_lookup_lookuptablefindv2_default_value*#
_output_shapes
:?????????*
T0	2
None_Lookup/NotEqual?
None_Lookup/SelectV2SelectV2None_Lookup/NotEqual:z:02None_Lookup/None_Lookup/LookupTableFindV2:values:0None_Lookup/Add:z:0*#
_output_shapes
:?????????*
T0	2
None_Lookup/SelectV2O
ConstConst*
valueB B *
dtype0*
_output_shapes
: 2
Const?
None_Lookup_1/hash_bucketStringToHashBucketFastConst:output:0*
_output_shapes
: *
num_buckets?2
None_Lookup_1/hash_bucket?
+None_Lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV26none_lookup_none_lookup_lookuptablefindv2_table_handleConst:output:07none_lookup_none_lookup_lookuptablefindv2_default_value(^None_Lookup/None_Size/LookupTableSizeV2*

Tout0	*	
Tin0*
_output_shapes
: 2-
+None_Lookup_1/None_Lookup/LookupTableFindV2?
)None_Lookup_1/None_Size/LookupTableSizeV2LookupTableSizeV26none_lookup_none_lookup_lookuptablefindv2_table_handle,^None_Lookup_1/None_Lookup/LookupTableFindV2*
_output_shapes
: 2+
)None_Lookup_1/None_Size/LookupTableSizeV2?
None_Lookup_1/AddAdd"None_Lookup_1/hash_bucket:output:00None_Lookup_1/None_Size/LookupTableSizeV2:size:0*
T0	*
_output_shapes
: 2
None_Lookup_1/Add?
None_Lookup_1/NotEqualNotEqual4None_Lookup_1/None_Lookup/LookupTableFindV2:values:07none_lookup_none_lookup_lookuptablefindv2_default_value*
_output_shapes
: *
T0	2
None_Lookup_1/NotEqual?
None_Lookup_1/SelectV2SelectV2None_Lookup_1/NotEqual:z:04None_Lookup_1/None_Lookup/LookupTableFindV2:values:0None_Lookup_1/Add:z:0*
_output_shapes
: *
T0	2
None_Lookup_1/SelectV2?
'SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows*tokenize/StringSplit/StringSplit:indices:0None_Lookup/SelectV2:output:0(tokenize/StringSplit/StringSplit:shape:0None_Lookup_1/SelectV2:output:0*T
_output_shapesB
@:?????????:?????????:?????????:?????????*
T0	2)
'SparseFillEmptyRows/SparseFillEmptyRows?
IdentityIdentity8SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0*'
_output_shapes
:?????????*
T0	2

Identity?

Identity_1Identity7SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*#
_output_shapes
:?????????*
T0	2

Identity_1s

Identity_2Identity(tokenize/StringSplit/StringSplit:shape:0*
T0	*
_output_shapes
:2

Identity_2p
Max/reduction_indicesConst*
value	B : *
dtype0*
_output_shapes
: 2
Max/reduction_indicesi
MaxMaxIdentity:output:0Max/reduction_indices:output:0*
T0	*
_output_shapes
:2
MaxT
Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 2	
Const_1l
ones_like/ShapeConst*
valueB:*
dtype0*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 2
ones_like/Constw
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
_output_shapes
:*
T0	2
	ones_likeX
AddAddMax:output:0ones_like:output:0*
_output_shapes
:*
T0	2
Add]
MaximumMaximumConst_1:output:0Add:z:0*
T0	*
_output_shapes
:2	
Maximum?

Identity_3IdentityIdentity:output:0*^None_Lookup/None_Lookup/LookupTableFindV2(^None_Lookup/None_Size/LookupTableSizeV2,^None_Lookup_1/None_Lookup/LookupTableFindV2*^None_Lookup_1/None_Size/LookupTableSizeV2*
T0	*'
_output_shapes
:?????????2

Identity_3?

Identity_4IdentityIdentity_1:output:0*^None_Lookup/None_Lookup/LookupTableFindV2(^None_Lookup/None_Size/LookupTableSizeV2,^None_Lookup_1/None_Lookup/LookupTableFindV2*^None_Lookup_1/None_Size/LookupTableSizeV2*#
_output_shapes
:?????????*
T0	2

Identity_4?

Identity_5IdentityMaximum:z:0*^None_Lookup/None_Lookup/LookupTableFindV2(^None_Lookup/None_Size/LookupTableSizeV2,^None_Lookup_1/None_Lookup/LookupTableFindV2*^None_Lookup_1/None_Size/LookupTableSizeV2*
T0	*
_output_shapes
:2

Identity_5"!

identity_3Identity_3:output:0"!

identity_5Identity_5:output:0"!

identity_4Identity_4:output:0*(
_input_shapes
:?????????:: 2R
'None_Lookup/None_Size/LookupTableSizeV2'None_Lookup/None_Size/LookupTableSizeV22V
)None_Lookup_1/None_Size/LookupTableSizeV2)None_Lookup_1/None_Size/LookupTableSizeV22Z
+None_Lookup_1/None_Lookup/LookupTableFindV2+None_Lookup_1/None_Lookup/LookupTableFindV22V
)None_Lookup/None_Lookup/LookupTableFindV2)None_Lookup/None_Lookup/LookupTableFindV2:) %
#
_user_specified_name	sentences
?
?
__inference__traced_save_163
file_prefix'
#savev2_variable_read_readvariableop
savev2_1_const_1

identity_1??MergeV2Checkpoints?SaveV2?SaveV2_1?
StringJoin/inputs_1Const"/device:CPU:0*
_output_shapes
: *<
value3B1 B+_temp_fd7716e33eae4ae59f194783abaa7bb3/part*
dtype02
StringJoin/inputs_1?

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*:
value1B/B%embeddings/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableop"/device:CPU:0*
dtypes
2*
_output_shapes
 2
SaveV2?
ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :2
ShardedFilename_1/shard?
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1?
SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_names?
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype02
SaveV2_1/shape_and_slices?
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const_1^SaveV2"/device:CPU:0*
dtypes
2*
_output_shapes
 2

SaveV2_1?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
_output_shapes
:*
T0*
N2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity?

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
_output_shapes
: *
T02

Identity_1"!

identity_1Identity_1:output:0*#
_input_shapes
: :
??:2: 2
SaveV2SaveV22
SaveV2_1SaveV2_12(
MergeV2CheckpointsMergeV2Checkpoints:+ '
%
_user_specified_namefile_prefix
?
?
__inference__initializer_118!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identity??,text_file_init/InitializeTableFromTextFileV2?
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_index?????????*
value_index?????????2.
,text_file_init/InitializeTableFromTextFileV2P
ConstConst*
value	B :*
dtype0*
_output_shapes
: 2
Const?
IdentityIdentityConst:output:0-^text_file_init/InitializeTableFromTextFileV2*
_output_shapes
: *
T02

Identity"
identityIdentity:output:0*
_input_shapes
: :2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2
?
?
__inference_<lambda>_130!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identity??,text_file_init/InitializeTableFromTextFileV2?
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
	key_index?????????*
value_index?????????*
_output_shapes
 2.
,text_file_init/InitializeTableFromTextFileV2S
ConstConst*
_output_shapes
: *
valueB
 *  ??*
dtype02
Const?
IdentityIdentityConst:output:0-^text_file_init/InitializeTableFromTextFileV2*
_output_shapes
: *
T02

Identity"
identityIdentity:output:0*
_input_shapes
: :2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2
?
8
__inference__creator_123
identity??
hash_table?

hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *;
shared_name,*hash_table_/tmp/tmpG6hRYe/tokens.txt_-2_-1*
	key_dtype02

hash_tablei
IdentityIdentityhash_table:table_handle:0^hash_table*
_output_shapes
: *
T02

Identity"
identityIdentity:output:0*
_input_shapes 2

hash_table
hash_table
?
?
__inference___call___106
	sentences"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2	/
+embedding_lookup_sparse_embedding_lookup_99
identity??StatefulPartitionedCall?(embedding_lookup_sparse/embedding_lookup?
StatefulPartitionedCallStatefulPartitionedCall	sentencesstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tout
2			*,
_gradient_op_typePartitionedCallUnused*
Tin
2	*<
_output_shapes*
(:?????????:?????????:*#
fR
__inference__preprocess_83**
config_proto

CPU

GPU 2J 82
StatefulPartitionedCall?
+embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:2-
+embedding_lookup_sparse/strided_slice/stack?
-embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype02/
-embedding_lookup_sparse/strided_slice/stack_1?
-embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:2/
-embedding_lookup_sparse/strided_slice/stack_2?
%embedding_lookup_sparse/strided_sliceStridedSlice StatefulPartitionedCall:output:04embedding_lookup_sparse/strided_slice/stack:output:06embedding_lookup_sparse/strided_slice/stack_1:output:06embedding_lookup_sparse/strided_slice/stack_2:output:0*
end_mask*
Index0*
T0	*

begin_mask*#
_output_shapes
:?????????*
shrink_axis_mask2'
%embedding_lookup_sparse/strided_slice?
embedding_lookup_sparse/CastCast.embedding_lookup_sparse/strided_slice:output:0*

SrcT0	*

DstT0*#
_output_shapes
:?????????2
embedding_lookup_sparse/Cast?
embedding_lookup_sparse/UniqueUnique StatefulPartitionedCall:output:1*
T0	*2
_output_shapes 
:?????????:?????????2 
embedding_lookup_sparse/Unique?
(embedding_lookup_sparse/embedding_lookupResourceGather+embedding_lookup_sparse_embedding_lookup_99"embedding_lookup_sparse/Unique:y:0*
dtype0*>
_class4
20loc:@embedding_lookup_sparse/embedding_lookup/99*
Tindices0	*'
_output_shapes
:?????????22*
(embedding_lookup_sparse/embedding_lookup?
1embedding_lookup_sparse/embedding_lookup/IdentityIdentity1embedding_lookup_sparse/embedding_lookup:output:0*
T0*>
_class4
20loc:@embedding_lookup_sparse/embedding_lookup/99*'
_output_shapes
:?????????223
1embedding_lookup_sparse/embedding_lookup/Identity?
3embedding_lookup_sparse/embedding_lookup/Identity_1Identity:embedding_lookup_sparse/embedding_lookup/Identity:output:0*'
_output_shapes
:?????????2*
T025
3embedding_lookup_sparse/embedding_lookup/Identity_1?
embedding_lookup_sparseSparseSegmentSqrtN<embedding_lookup_sparse/embedding_lookup/Identity_1:output:0$embedding_lookup_sparse/Unique:idx:0 embedding_lookup_sparse/Cast:y:0*
T0*'
_output_shapes
:?????????22
embedding_lookup_sparse?
IdentityIdentity embedding_lookup_sparse:output:0^StatefulPartitionedCall)^embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*,
_input_shapes
:?????????:: :2T
(embedding_lookup_sparse/embedding_lookup(embedding_lookup_sparse/embedding_lookup22
StatefulPartitionedCallStatefulPartitionedCall:) %
#
_user_specified_name	sentences
?
?
__inference__traced_restore_178
file_prefix
assignvariableop_variable

identity_2??AssignVariableOp?	RestoreV2?RestoreV2_1?
RestoreV2/tensor_namesConst"/device:CPU:0*:
value1B/B%embeddings/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
dtypes
2*
_output_shapes
:2
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0*
dtype0*
_output_shapes
 2
AssignVariableOp?
RestoreV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0*
_output_shapes
:2
RestoreV2_1/tensor_names?
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 2
RestoreV2_1/shape_and_slices?
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
22
RestoreV2_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp{

Identity_1Identityfile_prefix^AssignVariableOp^NoOp"/device:CPU:0*
_output_shapes
: *
T02

Identity_1?

Identity_2IdentityIdentity_1:output:0^AssignVariableOp
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2

Identity_2"!

identity_2Identity_2:output:0*
_input_shapes
: :2
	RestoreV2	RestoreV22$
AssignVariableOpAssignVariableOp2
RestoreV2_1RestoreV2_1:+ '
%
_user_specified_namefile_prefix"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp2(

asset_path_initializer:0
tokens.txt:?
?
_table_initializer

_table

embeddings
	variables
trainable_variables

signatures
_preprocess
__call__"
_generic_user_object
-
	_filename"
_generic_user_object
R
_initializer
	_destroy_resource

_initialize
_create_resourceR 
:
??:22Variable
'
0"
trackable_list_wrapper
"
signature_map
* 
?2?
__inference__preprocess_83?
???
FullArgSpec 
args?
jself
j	sentences
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
??????????
?2?
__inference___call___106?
???
FullArgSpec 
args?
jself
j	sentences
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
??????????
?2?
__inference__destroyer_111?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_118?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_123?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
	J
Const4
__inference__creator_123?

? 
? "? 6
__inference__destroyer_111?

? 
? "? ?
__inference__preprocess_83.?+
$?!
?
	sentences?????????
? "I?F
?
0?????????	
?
1?????????	
?
2	k
__inference___call___106O.?+
$?!
?
	sentences?????????
? "??????????2<
__inference__initializer_118?

? 
? "? 