��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
�
ArgMin

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
8
Pow
x"T
y"T
z"T"
Ttype:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��
}
embeddings_vqvaeVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*!
shared_nameembeddings_vqvae
v
$embeddings_vqvae/Read/ReadVariableOpReadVariableOpembeddings_vqvae*
_output_shapes
:	@�*
dtype0
�
vae/encoder/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namevae/encoder/conv2d/kernel
�
-vae/encoder/conv2d/kernel/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d/kernel*&
_output_shapes
: *
dtype0
�
vae/encoder/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namevae/encoder/conv2d/bias

+vae/encoder/conv2d/bias/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d/bias*
_output_shapes
: *
dtype0
�
vae/encoder/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*,
shared_namevae/encoder/conv2d_1/kernel
�
/vae/encoder/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d_1/kernel*&
_output_shapes
: @*
dtype0
�
vae/encoder/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namevae/encoder/conv2d_1/bias
�
-vae/encoder/conv2d_1/bias/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d_1/bias*
_output_shapes
:@*
dtype0
�
vae/encoder/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*,
shared_namevae/encoder/conv2d_2/kernel
�
/vae/encoder/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d_2/kernel*&
_output_shapes
:@@*
dtype0
�
vae/encoder/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namevae/encoder/conv2d_2/bias
�
-vae/encoder/conv2d_2/bias/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d_2/bias*
_output_shapes
:@*
dtype0
�
#vae/decoder/conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*4
shared_name%#vae/decoder/conv2d_transpose/kernel
�
7vae/decoder/conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOp#vae/decoder/conv2d_transpose/kernel*&
_output_shapes
: @*
dtype0
�
!vae/decoder/conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!vae/decoder/conv2d_transpose/bias
�
5vae/decoder/conv2d_transpose/bias/Read/ReadVariableOpReadVariableOp!vae/decoder/conv2d_transpose/bias*
_output_shapes
: *
dtype0
�
%vae/decoder/conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*6
shared_name'%vae/decoder/conv2d_transpose_1/kernel
�
9vae/decoder/conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOp%vae/decoder/conv2d_transpose_1/kernel*&
_output_shapes
:@@*
dtype0
�
#vae/decoder/conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#vae/decoder/conv2d_transpose_1/bias
�
7vae/decoder/conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOp#vae/decoder/conv2d_transpose_1/bias*
_output_shapes
:@*
dtype0
�
%vae/decoder/conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%vae/decoder/conv2d_transpose_2/kernel
�
9vae/decoder/conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOp%vae/decoder/conv2d_transpose_2/kernel*&
_output_shapes
: *
dtype0
�
#vae/decoder/conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#vae/decoder/conv2d_transpose_2/bias
�
7vae/decoder/conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOp#vae/decoder/conv2d_transpose_2/bias*
_output_shapes
:*
dtype0

NoOpNoOp
�'
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�&
value�&B�& B�&
�
encoder
vector_quantizer
decoder
	variables
trainable_variables
regularization_losses
	keras_api

signatures
r
	
layer_dict


latent_dim
	variables
trainable_variables
regularization_losses
	keras_api
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
t

layer_dict
output_layer
	variables
trainable_variables
regularization_losses
	keras_api
^
0
1
2
3
4
5
6
 7
!8
"9
#10
$11
%12
^
0
1
2
3
4
5
6
 7
!8
"9
#10
$11
%12
 
�
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
 

+layer_1
,layer_2
h

kernel
bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
�
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEembeddings_vqvae6vector_quantizer/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses

;layer_1
<layer_2
h

$kernel
%bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
*
 0
!1
"2
#3
$4
%5
*
 0
!1
"2
#3
$4
%5
 
�
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
US
VARIABLE_VALUEvae/encoder/conv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEvae/encoder/conv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEvae/encoder/conv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEvae/encoder/conv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEvae/encoder/conv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEvae/encoder/conv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#vae/decoder/conv2d_transpose/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!vae/decoder/conv2d_transpose/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%vae/decoder/conv2d_transpose_1/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#vae/decoder/conv2d_transpose_1/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%vae/decoder/conv2d_transpose_2/kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#vae/decoder/conv2d_transpose_2/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
 
 
 
h

kernel
bias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
h

kernel
bias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api

0
1

0
1
 
�
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
-	variables
.trainable_variables
/regularization_losses
 

+0
,1

2
 
 
 
 
 
 
 
 
h

 kernel
!bias
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
h

"kernel
#bias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api

$0
%1

$0
%1
 
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
=	variables
>trainable_variables
?regularization_losses
 

;0
<1
2
 
 
 

0
1

0
1
 
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses

0
1

0
1
 
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
 
 
 
 
 

 0
!1

 0
!1
 
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses

"0
#1

"0
#1
 
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
�
serving_default_input_1Placeholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1vae/encoder/conv2d/kernelvae/encoder/conv2d/biasvae/encoder/conv2d_1/kernelvae/encoder/conv2d_1/biasvae/encoder/conv2d_2/kernelvae/encoder/conv2d_2/biasembeddings_vqvae%vae/decoder/conv2d_transpose_1/kernel#vae/decoder/conv2d_transpose_1/bias#vae/decoder/conv2d_transpose/kernel!vae/decoder/conv2d_transpose/bias%vae/decoder/conv2d_transpose_2/kernel#vae/decoder/conv2d_transpose_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_26341
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$embeddings_vqvae/Read/ReadVariableOp-vae/encoder/conv2d/kernel/Read/ReadVariableOp+vae/encoder/conv2d/bias/Read/ReadVariableOp/vae/encoder/conv2d_1/kernel/Read/ReadVariableOp-vae/encoder/conv2d_1/bias/Read/ReadVariableOp/vae/encoder/conv2d_2/kernel/Read/ReadVariableOp-vae/encoder/conv2d_2/bias/Read/ReadVariableOp7vae/decoder/conv2d_transpose/kernel/Read/ReadVariableOp5vae/decoder/conv2d_transpose/bias/Read/ReadVariableOp9vae/decoder/conv2d_transpose_1/kernel/Read/ReadVariableOp7vae/decoder/conv2d_transpose_1/bias/Read/ReadVariableOp9vae/decoder/conv2d_transpose_2/kernel/Read/ReadVariableOp7vae/decoder/conv2d_transpose_2/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_27301
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembeddings_vqvaevae/encoder/conv2d/kernelvae/encoder/conv2d/biasvae/encoder/conv2d_1/kernelvae/encoder/conv2d_1/biasvae/encoder/conv2d_2/kernelvae/encoder/conv2d_2/bias#vae/decoder/conv2d_transpose/kernel!vae/decoder/conv2d_transpose/bias%vae/decoder/conv2d_transpose_1/kernel#vae/decoder/conv2d_transpose_1/bias%vae/decoder/conv2d_transpose_2/kernel#vae/decoder/conv2d_transpose_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_27350��
�,
�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_25830

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+����������������������������
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�,
�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_26924

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+����������������������������
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_26827

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������  @�
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������  @�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�
�
__inference_loss_fn_5_26987j
Pvae_decoder_conv2d_transpose_2_kernel_regularizer_square_readvariableop_resource: 
identity��Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpPvae_decoder_conv2d_transpose_2_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity9vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp
�;
�
B__inference_encoder_layer_call_and_return_conditional_losses_26619	
input?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@A
'conv2d_2_conv2d_readvariableop_resource:@@6
(conv2d_2_biasadd_readvariableop_resource:@
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp�=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp�=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d/Conv2DConv2Dinput$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @�
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: r
IdentityIdentityconv2d_2/Relu:activations:0^NoOp*
T0*/
_output_shapes
:���������  @�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:V R
/
_output_shapes
:���������  

_user_specified_nameinput
�
�
__inference_loss_fn_1_26849`
Fvae_encoder_conv2d_1_kernel_regularizer_square_readvariableop_resource: @
identity��=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp�
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpFvae_encoder_conv2d_1_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: @*
dtype0�
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: m
IdentityIdentity/vae/encoder/conv2d_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp
�
�
__inference_loss_fn_4_26976j
Pvae_decoder_conv2d_transpose_1_kernel_regularizer_square_readvariableop_resource:@@
identity��Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpPvae_decoder_conv2d_transpose_1_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity9vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp
¹
�
 __inference__wrapped_model_25370
input_1K
1vae_encoder_conv2d_conv2d_readvariableop_resource: @
2vae_encoder_conv2d_biasadd_readvariableop_resource: M
3vae_encoder_conv2d_1_conv2d_readvariableop_resource: @B
4vae_encoder_conv2d_1_biasadd_readvariableop_resource:@M
3vae_encoder_conv2d_2_conv2d_readvariableop_resource:@@B
4vae_encoder_conv2d_2_biasadd_readvariableop_resource:@F
3vae_vector_quantizer_matmul_readvariableop_resource:	@�a
Gvae_decoder_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@@L
>vae_decoder_conv2d_transpose_1_biasadd_readvariableop_resource:@_
Evae_decoder_conv2d_transpose_conv2d_transpose_readvariableop_resource: @J
<vae_decoder_conv2d_transpose_biasadd_readvariableop_resource: a
Gvae_decoder_conv2d_transpose_2_conv2d_transpose_readvariableop_resource: L
>vae_decoder_conv2d_transpose_2_biasadd_readvariableop_resource:
identity��3vae/decoder/conv2d_transpose/BiasAdd/ReadVariableOp�<vae/decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp�5vae/decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp�>vae/decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp�5vae/decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp�>vae/decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp�)vae/encoder/conv2d/BiasAdd/ReadVariableOp�(vae/encoder/conv2d/Conv2D/ReadVariableOp�+vae/encoder/conv2d_1/BiasAdd/ReadVariableOp�*vae/encoder/conv2d_1/Conv2D/ReadVariableOp�+vae/encoder/conv2d_2/BiasAdd/ReadVariableOp�*vae/encoder/conv2d_2/Conv2D/ReadVariableOp�*vae/vector_quantizer/MatMul/ReadVariableOp�,vae/vector_quantizer/MatMul_1/ReadVariableOp�#vae/vector_quantizer/ReadVariableOp�
(vae/encoder/conv2d/Conv2D/ReadVariableOpReadVariableOp1vae_encoder_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
vae/encoder/conv2d/Conv2DConv2Dinput_10vae/encoder/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
)vae/encoder/conv2d/BiasAdd/ReadVariableOpReadVariableOp2vae_encoder_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
vae/encoder/conv2d/BiasAddBiasAdd"vae/encoder/conv2d/Conv2D:output:01vae/encoder/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   ~
vae/encoder/conv2d/ReluRelu#vae/encoder/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
*vae/encoder/conv2d_1/Conv2D/ReadVariableOpReadVariableOp3vae_encoder_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
vae/encoder/conv2d_1/Conv2DConv2D%vae/encoder/conv2d/Relu:activations:02vae/encoder/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
+vae/encoder/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp4vae_encoder_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
vae/encoder/conv2d_1/BiasAddBiasAdd$vae/encoder/conv2d_1/Conv2D:output:03vae/encoder/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @�
vae/encoder/conv2d_1/ReluRelu%vae/encoder/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @�
*vae/encoder/conv2d_2/Conv2D/ReadVariableOpReadVariableOp3vae_encoder_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
vae/encoder/conv2d_2/Conv2DConv2D'vae/encoder/conv2d_1/Relu:activations:02vae/encoder/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
+vae/encoder/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp4vae_encoder_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
vae/encoder/conv2d_2/BiasAddBiasAdd$vae/encoder/conv2d_2/Conv2D:output:03vae/encoder/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @�
vae/encoder/conv2d_2/ReluRelu%vae/encoder/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @q
vae/vector_quantizer/ShapeShape'vae/encoder/conv2d_2/Relu:activations:0*
T0*
_output_shapes
:s
"vae/vector_quantizer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
vae/vector_quantizer/ReshapeReshape'vae/encoder/conv2d_2/Relu:activations:0+vae/vector_quantizer/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@�
*vae/vector_quantizer/MatMul/ReadVariableOpReadVariableOp3vae_vector_quantizer_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
vae/vector_quantizer/MatMulMatMul%vae/vector_quantizer/Reshape:output:02vae/vector_quantizer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
vae/vector_quantizer/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vae/vector_quantizer/powPow%vae/vector_quantizer/Reshape:output:0#vae/vector_quantizer/pow/y:output:0*
T0*'
_output_shapes
:���������@l
*vae/vector_quantizer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
vae/vector_quantizer/SumSumvae/vector_quantizer/pow:z:03vae/vector_quantizer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
#vae/vector_quantizer/ReadVariableOpReadVariableOp3vae_vector_quantizer_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0a
vae/vector_quantizer/pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vae/vector_quantizer/pow_1Pow+vae/vector_quantizer/ReadVariableOp:value:0%vae/vector_quantizer/pow_1/y:output:0*
T0*
_output_shapes
:	@�n
,vae/vector_quantizer/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : �
vae/vector_quantizer/Sum_1Sumvae/vector_quantizer/pow_1:z:05vae/vector_quantizer/Sum_1/reduction_indices:output:0*
T0*
_output_shapes	
:��
vae/vector_quantizer/addAddV2!vae/vector_quantizer/Sum:output:0#vae/vector_quantizer/Sum_1:output:0*
T0*(
_output_shapes
:����������_
vae/vector_quantizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vae/vector_quantizer/mulMul#vae/vector_quantizer/mul/x:output:0%vae/vector_quantizer/MatMul:product:0*
T0*(
_output_shapes
:�����������
vae/vector_quantizer/subSubvae/vector_quantizer/add:z:0vae/vector_quantizer/mul:z:0*
T0*(
_output_shapes
:����������g
%vae/vector_quantizer/ArgMin/dimensionConst*
_output_shapes
: *
dtype0*
value	B :�
vae/vector_quantizer/ArgMinArgMinvae/vector_quantizer/sub:z:0.vae/vector_quantizer/ArgMin/dimension:output:0*
T0*#
_output_shapes
:���������j
%vae/vector_quantizer/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
&vae/vector_quantizer/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    e
"vae/vector_quantizer/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :��
vae/vector_quantizer/one_hotOneHot$vae/vector_quantizer/ArgMin:output:0+vae/vector_quantizer/one_hot/depth:output:0.vae/vector_quantizer/one_hot/on_value:output:0/vae/vector_quantizer/one_hot/off_value:output:0*
T0*(
_output_shapes
:�����������
,vae/vector_quantizer/MatMul_1/ReadVariableOpReadVariableOp3vae_vector_quantizer_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
vae/vector_quantizer/MatMul_1MatMul%vae/vector_quantizer/one_hot:output:04vae/vector_quantizer/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@*
transpose_b(�
vae/vector_quantizer/Reshape_1Reshape'vae/vector_quantizer/MatMul_1:product:0#vae/vector_quantizer/Shape:output:0*
T0*/
_output_shapes
:���������  @�
!vae/vector_quantizer/StopGradientStopGradient'vae/vector_quantizer/Reshape_1:output:0*
T0*/
_output_shapes
:���������  @�
vae/vector_quantizer/sub_1Sub*vae/vector_quantizer/StopGradient:output:0'vae/encoder/conv2d_2/Relu:activations:0*
T0*/
_output_shapes
:���������  @a
vae/vector_quantizer/pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vae/vector_quantizer/pow_2Powvae/vector_quantizer/sub_1:z:0%vae/vector_quantizer/pow_2/y:output:0*
T0*/
_output_shapes
:���������  @s
vae/vector_quantizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
vae/vector_quantizer/MeanMeanvae/vector_quantizer/pow_2:z:0#vae/vector_quantizer/Const:output:0*
T0*
_output_shapes
: a
vae/vector_quantizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �>�
vae/vector_quantizer/mul_1Mul%vae/vector_quantizer/mul_1/x:output:0"vae/vector_quantizer/Mean:output:0*
T0*
_output_shapes
: �
#vae/vector_quantizer/StopGradient_1StopGradient'vae/encoder/conv2d_2/Relu:activations:0*
T0*/
_output_shapes
:���������  @�
vae/vector_quantizer/sub_2Sub'vae/vector_quantizer/Reshape_1:output:0,vae/vector_quantizer/StopGradient_1:output:0*
T0*/
_output_shapes
:���������  @a
vae/vector_quantizer/pow_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vae/vector_quantizer/pow_3Powvae/vector_quantizer/sub_2:z:0%vae/vector_quantizer/pow_3/y:output:0*
T0*/
_output_shapes
:���������  @u
vae/vector_quantizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
vae/vector_quantizer/Mean_1Meanvae/vector_quantizer/pow_3:z:0%vae/vector_quantizer/Const_1:output:0*
T0*
_output_shapes
: �
vae/vector_quantizer/add_1AddV2vae/vector_quantizer/mul_1:z:0$vae/vector_quantizer/Mean_1:output:0*
T0*
_output_shapes
: �
vae/vector_quantizer/sub_3Sub'vae/vector_quantizer/Reshape_1:output:0'vae/encoder/conv2d_2/Relu:activations:0*
T0*/
_output_shapes
:���������  @�
#vae/vector_quantizer/StopGradient_2StopGradientvae/vector_quantizer/sub_3:z:0*
T0*/
_output_shapes
:���������  @�
vae/vector_quantizer/add_2AddV2'vae/encoder/conv2d_2/Relu:activations:0,vae/vector_quantizer/StopGradient_2:output:0*
T0*/
_output_shapes
:���������  @r
$vae/decoder/conv2d_transpose_1/ShapeShapevae/vector_quantizer/add_2:z:0*
T0*
_output_shapes
:|
2vae/decoder/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4vae/decoder/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4vae/decoder/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,vae/decoder/conv2d_transpose_1/strided_sliceStridedSlice-vae/decoder/conv2d_transpose_1/Shape:output:0;vae/decoder/conv2d_transpose_1/strided_slice/stack:output:0=vae/decoder/conv2d_transpose_1/strided_slice/stack_1:output:0=vae/decoder/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&vae/decoder/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : h
&vae/decoder/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : h
&vae/decoder/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
$vae/decoder/conv2d_transpose_1/stackPack5vae/decoder/conv2d_transpose_1/strided_slice:output:0/vae/decoder/conv2d_transpose_1/stack/1:output:0/vae/decoder/conv2d_transpose_1/stack/2:output:0/vae/decoder/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:~
4vae/decoder/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6vae/decoder/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6vae/decoder/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.vae/decoder/conv2d_transpose_1/strided_slice_1StridedSlice-vae/decoder/conv2d_transpose_1/stack:output:0=vae/decoder/conv2d_transpose_1/strided_slice_1/stack:output:0?vae/decoder/conv2d_transpose_1/strided_slice_1/stack_1:output:0?vae/decoder/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
>vae/decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpGvae_decoder_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
/vae/decoder/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput-vae/decoder/conv2d_transpose_1/stack:output:0Fvae/decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0vae/vector_quantizer/add_2:z:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
5vae/decoder/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp>vae_decoder_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
&vae/decoder/conv2d_transpose_1/BiasAddBiasAdd8vae/decoder/conv2d_transpose_1/conv2d_transpose:output:0=vae/decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @�
#vae/decoder/conv2d_transpose_1/ReluRelu/vae/decoder/conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @�
"vae/decoder/conv2d_transpose/ShapeShape1vae/decoder/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:z
0vae/decoder/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2vae/decoder/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2vae/decoder/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*vae/decoder/conv2d_transpose/strided_sliceStridedSlice+vae/decoder/conv2d_transpose/Shape:output:09vae/decoder/conv2d_transpose/strided_slice/stack:output:0;vae/decoder/conv2d_transpose/strided_slice/stack_1:output:0;vae/decoder/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$vae/decoder/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B : f
$vae/decoder/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : f
$vae/decoder/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
"vae/decoder/conv2d_transpose/stackPack3vae/decoder/conv2d_transpose/strided_slice:output:0-vae/decoder/conv2d_transpose/stack/1:output:0-vae/decoder/conv2d_transpose/stack/2:output:0-vae/decoder/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:|
2vae/decoder/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4vae/decoder/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4vae/decoder/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,vae/decoder/conv2d_transpose/strided_slice_1StridedSlice+vae/decoder/conv2d_transpose/stack:output:0;vae/decoder/conv2d_transpose/strided_slice_1/stack:output:0=vae/decoder/conv2d_transpose/strided_slice_1/stack_1:output:0=vae/decoder/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<vae/decoder/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpEvae_decoder_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
-vae/decoder/conv2d_transpose/conv2d_transposeConv2DBackpropInput+vae/decoder/conv2d_transpose/stack:output:0Dvae/decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:01vae/decoder/conv2d_transpose_1/Relu:activations:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
3vae/decoder/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp<vae_decoder_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
$vae/decoder/conv2d_transpose/BiasAddBiasAdd6vae/decoder/conv2d_transpose/conv2d_transpose:output:0;vae/decoder/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   �
!vae/decoder/conv2d_transpose/ReluRelu-vae/decoder/conv2d_transpose/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
$vae/decoder/conv2d_transpose_2/ShapeShape/vae/decoder/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:|
2vae/decoder/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4vae/decoder/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4vae/decoder/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,vae/decoder/conv2d_transpose_2/strided_sliceStridedSlice-vae/decoder/conv2d_transpose_2/Shape:output:0;vae/decoder/conv2d_transpose_2/strided_slice/stack:output:0=vae/decoder/conv2d_transpose_2/strided_slice/stack_1:output:0=vae/decoder/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&vae/decoder/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : h
&vae/decoder/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : h
&vae/decoder/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
$vae/decoder/conv2d_transpose_2/stackPack5vae/decoder/conv2d_transpose_2/strided_slice:output:0/vae/decoder/conv2d_transpose_2/stack/1:output:0/vae/decoder/conv2d_transpose_2/stack/2:output:0/vae/decoder/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:~
4vae/decoder/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6vae/decoder/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6vae/decoder/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.vae/decoder/conv2d_transpose_2/strided_slice_1StridedSlice-vae/decoder/conv2d_transpose_2/stack:output:0=vae/decoder/conv2d_transpose_2/strided_slice_1/stack:output:0?vae/decoder/conv2d_transpose_2/strided_slice_1/stack_1:output:0?vae/decoder/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
>vae/decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpGvae_decoder_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
/vae/decoder/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput-vae/decoder/conv2d_transpose_2/stack:output:0Fvae/decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0/vae/decoder/conv2d_transpose/Relu:activations:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
5vae/decoder/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp>vae_decoder_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&vae/decoder/conv2d_transpose_2/BiasAddBiasAdd8vae/decoder/conv2d_transpose_2/conv2d_transpose:output:0=vae/decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  �
&vae/decoder/conv2d_transpose_2/SigmoidSigmoid/vae/decoder/conv2d_transpose_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������  �
IdentityIdentity*vae/decoder/conv2d_transpose_2/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp4^vae/decoder/conv2d_transpose/BiasAdd/ReadVariableOp=^vae/decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp6^vae/decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp?^vae/decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp6^vae/decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp?^vae/decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp*^vae/encoder/conv2d/BiasAdd/ReadVariableOp)^vae/encoder/conv2d/Conv2D/ReadVariableOp,^vae/encoder/conv2d_1/BiasAdd/ReadVariableOp+^vae/encoder/conv2d_1/Conv2D/ReadVariableOp,^vae/encoder/conv2d_2/BiasAdd/ReadVariableOp+^vae/encoder/conv2d_2/Conv2D/ReadVariableOp+^vae/vector_quantizer/MatMul/ReadVariableOp-^vae/vector_quantizer/MatMul_1/ReadVariableOp$^vae/vector_quantizer/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������  : : : : : : : : : : : : : 2j
3vae/decoder/conv2d_transpose/BiasAdd/ReadVariableOp3vae/decoder/conv2d_transpose/BiasAdd/ReadVariableOp2|
<vae/decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp<vae/decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp2n
5vae/decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp5vae/decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp2�
>vae/decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp>vae/decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2n
5vae/decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp5vae/decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp2�
>vae/decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp>vae/decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2V
)vae/encoder/conv2d/BiasAdd/ReadVariableOp)vae/encoder/conv2d/BiasAdd/ReadVariableOp2T
(vae/encoder/conv2d/Conv2D/ReadVariableOp(vae/encoder/conv2d/Conv2D/ReadVariableOp2Z
+vae/encoder/conv2d_1/BiasAdd/ReadVariableOp+vae/encoder/conv2d_1/BiasAdd/ReadVariableOp2X
*vae/encoder/conv2d_1/Conv2D/ReadVariableOp*vae/encoder/conv2d_1/Conv2D/ReadVariableOp2Z
+vae/encoder/conv2d_2/BiasAdd/ReadVariableOp+vae/encoder/conv2d_2/BiasAdd/ReadVariableOp2X
*vae/encoder/conv2d_2/Conv2D/ReadVariableOp*vae/encoder/conv2d_2/Conv2D/ReadVariableOp2X
*vae/vector_quantizer/MatMul/ReadVariableOp*vae/vector_quantizer/MatMul/ReadVariableOp2\
,vae/vector_quantizer/MatMul_1/ReadVariableOp,vae/vector_quantizer/MatMul_1/ReadVariableOp2J
#vae/vector_quantizer/ReadVariableOp#vae/vector_quantizer/ReadVariableOp:X T
/
_output_shapes
:���������  
!
_user_specified_name	input_1
�5
�
B__inference_decoder_layer_call_and_return_conditional_losses_26064
input_12
conv2d_transpose_1_26030:@@&
conv2d_transpose_1_26032:@0
conv2d_transpose_26035: @$
conv2d_transpose_26037: 2
conv2d_transpose_2_26040: &
conv2d_transpose_2_26042:
identity��(conv2d_transpose/StatefulPartitionedCall�*conv2d_transpose_1/StatefulPartitionedCall�*conv2d_transpose_2/StatefulPartitionedCall�Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp�Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp�Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp�
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_transpose_1_26030conv2d_transpose_1_26032*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_25873�
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_26035conv2d_transpose_26037*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_25908�
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_2_26040conv2d_transpose_2_26042*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_25943�
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_transpose_26035*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_transpose_1_26030*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_transpose_2_26040*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentity3conv2d_transpose_2/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCallF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  @: : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:X T
/
_output_shapes
:���������  @
!
_user_specified_name	input_1
�
�
__inference_loss_fn_0_26838^
Dvae_encoder_conv2d_kernel_regularizer_square_readvariableop_resource: 
identity��;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp�
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpDvae_encoder_conv2d_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: *
dtype0�
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentity-vae/encoder/conv2d/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp
�)
�
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_25684
input_11
matmul_readvariableop_resource:	@�
identity

identity_1��MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOp<
ShapeShapeinput_1*
T0*
_output_shapes
:^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   e
ReshapeReshapeinput_1Reshape/shape:output:0*
T0*'
_output_shapes
:���������@u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0t
MatMulMatMulReshape:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @^
powPowReshape:output:0pow/y:output:0*
T0*'
_output_shapes
:���������@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :v
SumSumpow:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(n
ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @`
pow_1PowReadVariableOp:value:0pow_1/y:output:0*
T0*
_output_shapes
:	@�Y
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : _
Sum_1Sum	pow_1:z:0 Sum_1/reduction_indices:output:0*
T0*
_output_shapes	
:�]
addAddV2Sum:output:0Sum_1:output:0*
T0*(
_output_shapes
:����������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @_
mulMulmul/x:output:0MatMul:product:0*
T0*(
_output_shapes
:����������O
subSubadd:z:0mul:z:0*
T0*(
_output_shapes
:����������R
ArgMin/dimensionConst*
_output_shapes
: *
dtype0*
value	B :b
ArgMinArgMinsub:z:0ArgMin/dimension:output:0*
T0*#
_output_shapes
:���������U
one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?V
one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    P
one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :��
one_hotOneHotArgMin:output:0one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
T0*(
_output_shapes
:����������w
MatMul_1/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
MatMul_1MatMulone_hot:output:0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@*
transpose_b(r
	Reshape_1ReshapeMatMul_1:product:0Shape:output:0*
T0*/
_output_shapes
:���������  @j
StopGradientStopGradientReshape_1:output:0*
T0*/
_output_shapes
:���������  @f
sub_1SubStopGradient:output:0input_1*
T0*/
_output_shapes
:���������  @L
pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @c
pow_2Pow	sub_1:z:0pow_2/y:output:0*
T0*/
_output_shapes
:���������  @^
ConstConst*
_output_shapes
:*
dtype0*%
valueB"             H
MeanMean	pow_2:z:0Const:output:0*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �>N
mul_1Mulmul_1/x:output:0Mean:output:0*
T0*
_output_shapes
: a
StopGradient_1StopGradientinput_1*
T0*/
_output_shapes
:���������  @s
sub_2SubReshape_1:output:0StopGradient_1:output:0*
T0*/
_output_shapes
:���������  @L
pow_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @c
pow_3Pow	sub_2:z:0pow_3/y:output:0*
T0*/
_output_shapes
:���������  @`
Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             L
Mean_1Mean	pow_3:z:0Const_1:output:0*
T0*
_output_shapes
: K
add_1AddV2	mul_1:z:0Mean_1:output:0*
T0*
_output_shapes
: c
sub_3SubReshape_1:output:0input_1*
T0*/
_output_shapes
:���������  @c
StopGradient_2StopGradient	sub_3:z:0*
T0*/
_output_shapes
:���������  @j
add_2AddV2input_1StopGradient_2:output:0*
T0*/
_output_shapes
:���������  @`
IdentityIdentity	add_2:z:0^NoOp*
T0*/
_output_shapes
:���������  @I

Identity_1Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  @: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:X T
/
_output_shapes
:���������  @
!
_user_specified_name	input_1
�
�
__inference_loss_fn_2_26860`
Fvae_encoder_conv2d_2_kernel_regularizer_square_readvariableop_resource:@@
identity��=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp�
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpFvae_encoder_conv2d_2_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: m
IdentityIdentity/vae/encoder/conv2d_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp
�"
�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_27145

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B : I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������   �
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������   �
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�
�
0__inference_conv2d_transpose_layer_call_fn_27075

inputs!
unknown: @
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_25908w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������   `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�.
�
B__inference_encoder_layer_call_and_return_conditional_losses_25465	
input&
conv2d_25395: 
conv2d_25397: (
conv2d_1_25418: @
conv2d_1_25420:@(
conv2d_2_25441:@@
conv2d_2_25443:@
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp�=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp�=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputconv2d_25395conv2d_25397*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_25394�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_25418conv2d_1_25420*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_25417�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_25441conv2d_2_25443*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_25440�
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_25395*&
_output_shapes
: *
dtype0�
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_1_25418*&
_output_shapes
: @*
dtype0�
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_2_25441*&
_output_shapes
:@@*
dtype0�
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentity)conv2d_2/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  @�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:V R
/
_output_shapes
:���������  

_user_specified_nameinput
�"
�
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_27239

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B : I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������  @�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������  @�
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�
�
#__inference_vae_layer_call_fn_26169
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:	@�#
	unknown_6:@@
	unknown_7:@#
	unknown_8: @
	unknown_9: $

unknown_10: 

unknown_11:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������  : */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_vae_layer_call_and_return_conditional_losses_26139w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������  : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������  
!
_user_specified_name	input_1
�
�
#__inference_vae_layer_call_fn_26373	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:	@�#
	unknown_6:@@
	unknown_7:@#
	unknown_8: @
	unknown_9: $

unknown_10: 

unknown_11:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������  : */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_vae_layer_call_and_return_conditional_losses_26139w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������  : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������  

_user_specified_nameinput
�
�
0__inference_vector_quantizer_layer_call_fn_26627
x
unknown:	@�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������  @: *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_25619w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  @: 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:���������  @

_user_specified_namex
�t
�
B__inference_decoder_layer_call_and_return_conditional_losses_26795	
inputU
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@@@
2conv2d_transpose_1_biasadd_readvariableop_resource:@S
9conv2d_transpose_conv2d_transpose_readvariableop_resource: @>
0conv2d_transpose_biasadd_readvariableop_resource: U
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource: @
2conv2d_transpose_2_biasadd_readvariableop_resource:
identity��'conv2d_transpose/BiasAdd/ReadVariableOp�0conv2d_transpose/conv2d_transpose/ReadVariableOp�)conv2d_transpose_1/BiasAdd/ReadVariableOp�2conv2d_transpose_1/conv2d_transpose/ReadVariableOp�)conv2d_transpose_2/BiasAdd/ReadVariableOp�2conv2d_transpose_2/conv2d_transpose/ReadVariableOp�Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp�Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp�Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpM
conv2d_transpose_1/ShapeShapeinput*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0input*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @~
conv2d_transpose_1/ReluRelu#conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @k
conv2d_transpose/ShapeShape%conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B : Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : Z
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_1/Relu:activations:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   z
conv2d_transpose/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*/
_output_shapes
:���������   k
conv2d_transpose_2/ShapeShape#conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0#conv2d_transpose/Relu:activations:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  �
conv2d_transpose_2/SigmoidSigmoid#conv2d_transpose_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������  �
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
IdentityIdentityconv2d_transpose_2/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOpF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  @: : : : : : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:V R
/
_output_shapes
:���������  @

_user_specified_nameinput
�
�
0__inference_vector_quantizer_layer_call_fn_25625
input_1
unknown:	@�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������  @: *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_25619w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  @: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������  @
!
_user_specified_name	input_1
�	
�
'__inference_decoder_layer_call_fn_26713	
input!
unknown:@@
	unknown_0:@#
	unknown_1: @
	unknown_2: #
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_25968w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  @: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������  @

_user_specified_nameinput
�	
�
'__inference_encoder_layer_call_fn_25480
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_25465w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������  
!
_user_specified_name	input_1
��
�
>__inference_vae_layer_call_and_return_conditional_losses_26541	
inputG
-encoder_conv2d_conv2d_readvariableop_resource: <
.encoder_conv2d_biasadd_readvariableop_resource: I
/encoder_conv2d_1_conv2d_readvariableop_resource: @>
0encoder_conv2d_1_biasadd_readvariableop_resource:@I
/encoder_conv2d_2_conv2d_readvariableop_resource:@@>
0encoder_conv2d_2_biasadd_readvariableop_resource:@B
/vector_quantizer_matmul_readvariableop_resource:	@�]
Cdecoder_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@@H
:decoder_conv2d_transpose_1_biasadd_readvariableop_resource:@[
Adecoder_conv2d_transpose_conv2d_transpose_readvariableop_resource: @F
8decoder_conv2d_transpose_biasadd_readvariableop_resource: ]
Cdecoder_conv2d_transpose_2_conv2d_transpose_readvariableop_resource: H
:decoder_conv2d_transpose_2_biasadd_readvariableop_resource:
identity

identity_1��/decoder/conv2d_transpose/BiasAdd/ReadVariableOp�8decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp�1decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp�:decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp�1decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp�:decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp�%encoder/conv2d/BiasAdd/ReadVariableOp�$encoder/conv2d/Conv2D/ReadVariableOp�'encoder/conv2d_1/BiasAdd/ReadVariableOp�&encoder/conv2d_1/Conv2D/ReadVariableOp�'encoder/conv2d_2/BiasAdd/ReadVariableOp�&encoder/conv2d_2/Conv2D/ReadVariableOp�Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp�Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp�Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp�;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp�=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp�=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp�&vector_quantizer/MatMul/ReadVariableOp�(vector_quantizer/MatMul_1/ReadVariableOp�vector_quantizer/ReadVariableOp�
$encoder/conv2d/Conv2D/ReadVariableOpReadVariableOp-encoder_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
encoder/conv2d/Conv2DConv2Dinput,encoder/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
%encoder/conv2d/BiasAdd/ReadVariableOpReadVariableOp.encoder_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
encoder/conv2d/BiasAddBiasAddencoder/conv2d/Conv2D:output:0-encoder/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   v
encoder/conv2d/ReluReluencoder/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
&encoder/conv2d_1/Conv2D/ReadVariableOpReadVariableOp/encoder_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
encoder/conv2d_1/Conv2DConv2D!encoder/conv2d/Relu:activations:0.encoder/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
'encoder/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
encoder/conv2d_1/BiasAddBiasAdd encoder/conv2d_1/Conv2D:output:0/encoder/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @z
encoder/conv2d_1/ReluRelu!encoder/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @�
&encoder/conv2d_2/Conv2D/ReadVariableOpReadVariableOp/encoder_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
encoder/conv2d_2/Conv2DConv2D#encoder/conv2d_1/Relu:activations:0.encoder/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
'encoder/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
encoder/conv2d_2/BiasAddBiasAdd encoder/conv2d_2/Conv2D:output:0/encoder/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @z
encoder/conv2d_2/ReluRelu!encoder/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @i
vector_quantizer/ShapeShape#encoder/conv2d_2/Relu:activations:0*
T0*
_output_shapes
:o
vector_quantizer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
vector_quantizer/ReshapeReshape#encoder/conv2d_2/Relu:activations:0'vector_quantizer/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@�
&vector_quantizer/MatMul/ReadVariableOpReadVariableOp/vector_quantizer_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
vector_quantizer/MatMulMatMul!vector_quantizer/Reshape:output:0.vector_quantizer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
vector_quantizer/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vector_quantizer/powPow!vector_quantizer/Reshape:output:0vector_quantizer/pow/y:output:0*
T0*'
_output_shapes
:���������@h
&vector_quantizer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
vector_quantizer/SumSumvector_quantizer/pow:z:0/vector_quantizer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
vector_quantizer/ReadVariableOpReadVariableOp/vector_quantizer_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0]
vector_quantizer/pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vector_quantizer/pow_1Pow'vector_quantizer/ReadVariableOp:value:0!vector_quantizer/pow_1/y:output:0*
T0*
_output_shapes
:	@�j
(vector_quantizer/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : �
vector_quantizer/Sum_1Sumvector_quantizer/pow_1:z:01vector_quantizer/Sum_1/reduction_indices:output:0*
T0*
_output_shapes	
:��
vector_quantizer/addAddV2vector_quantizer/Sum:output:0vector_quantizer/Sum_1:output:0*
T0*(
_output_shapes
:����������[
vector_quantizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vector_quantizer/mulMulvector_quantizer/mul/x:output:0!vector_quantizer/MatMul:product:0*
T0*(
_output_shapes
:�����������
vector_quantizer/subSubvector_quantizer/add:z:0vector_quantizer/mul:z:0*
T0*(
_output_shapes
:����������c
!vector_quantizer/ArgMin/dimensionConst*
_output_shapes
: *
dtype0*
value	B :�
vector_quantizer/ArgMinArgMinvector_quantizer/sub:z:0*vector_quantizer/ArgMin/dimension:output:0*
T0*#
_output_shapes
:���������f
!vector_quantizer/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
"vector_quantizer/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    a
vector_quantizer/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :��
vector_quantizer/one_hotOneHot vector_quantizer/ArgMin:output:0'vector_quantizer/one_hot/depth:output:0*vector_quantizer/one_hot/on_value:output:0+vector_quantizer/one_hot/off_value:output:0*
T0*(
_output_shapes
:�����������
(vector_quantizer/MatMul_1/ReadVariableOpReadVariableOp/vector_quantizer_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
vector_quantizer/MatMul_1MatMul!vector_quantizer/one_hot:output:00vector_quantizer/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@*
transpose_b(�
vector_quantizer/Reshape_1Reshape#vector_quantizer/MatMul_1:product:0vector_quantizer/Shape:output:0*
T0*/
_output_shapes
:���������  @�
vector_quantizer/StopGradientStopGradient#vector_quantizer/Reshape_1:output:0*
T0*/
_output_shapes
:���������  @�
vector_quantizer/sub_1Sub&vector_quantizer/StopGradient:output:0#encoder/conv2d_2/Relu:activations:0*
T0*/
_output_shapes
:���������  @]
vector_quantizer/pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vector_quantizer/pow_2Powvector_quantizer/sub_1:z:0!vector_quantizer/pow_2/y:output:0*
T0*/
_output_shapes
:���������  @o
vector_quantizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             {
vector_quantizer/MeanMeanvector_quantizer/pow_2:z:0vector_quantizer/Const:output:0*
T0*
_output_shapes
: ]
vector_quantizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �>�
vector_quantizer/mul_1Mul!vector_quantizer/mul_1/x:output:0vector_quantizer/Mean:output:0*
T0*
_output_shapes
: �
vector_quantizer/StopGradient_1StopGradient#encoder/conv2d_2/Relu:activations:0*
T0*/
_output_shapes
:���������  @�
vector_quantizer/sub_2Sub#vector_quantizer/Reshape_1:output:0(vector_quantizer/StopGradient_1:output:0*
T0*/
_output_shapes
:���������  @]
vector_quantizer/pow_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vector_quantizer/pow_3Powvector_quantizer/sub_2:z:0!vector_quantizer/pow_3/y:output:0*
T0*/
_output_shapes
:���������  @q
vector_quantizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
vector_quantizer/Mean_1Meanvector_quantizer/pow_3:z:0!vector_quantizer/Const_1:output:0*
T0*
_output_shapes
: ~
vector_quantizer/add_1AddV2vector_quantizer/mul_1:z:0 vector_quantizer/Mean_1:output:0*
T0*
_output_shapes
: �
vector_quantizer/sub_3Sub#vector_quantizer/Reshape_1:output:0#encoder/conv2d_2/Relu:activations:0*
T0*/
_output_shapes
:���������  @�
vector_quantizer/StopGradient_2StopGradientvector_quantizer/sub_3:z:0*
T0*/
_output_shapes
:���������  @�
vector_quantizer/add_2AddV2#encoder/conv2d_2/Relu:activations:0(vector_quantizer/StopGradient_2:output:0*
T0*/
_output_shapes
:���������  @j
 decoder/conv2d_transpose_1/ShapeShapevector_quantizer/add_2:z:0*
T0*
_output_shapes
:x
.decoder/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0decoder/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0decoder/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(decoder/conv2d_transpose_1/strided_sliceStridedSlice)decoder/conv2d_transpose_1/Shape:output:07decoder/conv2d_transpose_1/strided_slice/stack:output:09decoder/conv2d_transpose_1/strided_slice/stack_1:output:09decoder/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"decoder/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : d
"decoder/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : d
"decoder/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
 decoder/conv2d_transpose_1/stackPack1decoder/conv2d_transpose_1/strided_slice:output:0+decoder/conv2d_transpose_1/stack/1:output:0+decoder/conv2d_transpose_1/stack/2:output:0+decoder/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:z
0decoder/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2decoder/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2decoder/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*decoder/conv2d_transpose_1/strided_slice_1StridedSlice)decoder/conv2d_transpose_1/stack:output:09decoder/conv2d_transpose_1/strided_slice_1/stack:output:0;decoder/conv2d_transpose_1/strided_slice_1/stack_1:output:0;decoder/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
:decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpCdecoder_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
+decoder/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput)decoder/conv2d_transpose_1/stack:output:0Bdecoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0vector_quantizer/add_2:z:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
1decoder/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp:decoder_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
"decoder/conv2d_transpose_1/BiasAddBiasAdd4decoder/conv2d_transpose_1/conv2d_transpose:output:09decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @�
decoder/conv2d_transpose_1/ReluRelu+decoder/conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @{
decoder/conv2d_transpose/ShapeShape-decoder/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:v
,decoder/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.decoder/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.decoder/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&decoder/conv2d_transpose/strided_sliceStridedSlice'decoder/conv2d_transpose/Shape:output:05decoder/conv2d_transpose/strided_slice/stack:output:07decoder/conv2d_transpose/strided_slice/stack_1:output:07decoder/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 decoder/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B : b
 decoder/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : b
 decoder/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
decoder/conv2d_transpose/stackPack/decoder/conv2d_transpose/strided_slice:output:0)decoder/conv2d_transpose/stack/1:output:0)decoder/conv2d_transpose/stack/2:output:0)decoder/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:x
.decoder/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0decoder/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0decoder/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(decoder/conv2d_transpose/strided_slice_1StridedSlice'decoder/conv2d_transpose/stack:output:07decoder/conv2d_transpose/strided_slice_1/stack:output:09decoder/conv2d_transpose/strided_slice_1/stack_1:output:09decoder/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
8decoder/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpAdecoder_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
)decoder/conv2d_transpose/conv2d_transposeConv2DBackpropInput'decoder/conv2d_transpose/stack:output:0@decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0-decoder/conv2d_transpose_1/Relu:activations:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
/decoder/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp8decoder_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
 decoder/conv2d_transpose/BiasAddBiasAdd2decoder/conv2d_transpose/conv2d_transpose:output:07decoder/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   �
decoder/conv2d_transpose/ReluRelu)decoder/conv2d_transpose/BiasAdd:output:0*
T0*/
_output_shapes
:���������   {
 decoder/conv2d_transpose_2/ShapeShape+decoder/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:x
.decoder/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0decoder/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0decoder/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(decoder/conv2d_transpose_2/strided_sliceStridedSlice)decoder/conv2d_transpose_2/Shape:output:07decoder/conv2d_transpose_2/strided_slice/stack:output:09decoder/conv2d_transpose_2/strided_slice/stack_1:output:09decoder/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"decoder/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : d
"decoder/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : d
"decoder/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
 decoder/conv2d_transpose_2/stackPack1decoder/conv2d_transpose_2/strided_slice:output:0+decoder/conv2d_transpose_2/stack/1:output:0+decoder/conv2d_transpose_2/stack/2:output:0+decoder/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:z
0decoder/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2decoder/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2decoder/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*decoder/conv2d_transpose_2/strided_slice_1StridedSlice)decoder/conv2d_transpose_2/stack:output:09decoder/conv2d_transpose_2/strided_slice_1/stack:output:0;decoder/conv2d_transpose_2/strided_slice_1/stack_1:output:0;decoder/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
:decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpCdecoder_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
+decoder/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput)decoder/conv2d_transpose_2/stack:output:0Bdecoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0+decoder/conv2d_transpose/Relu:activations:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
1decoder/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp:decoder_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"decoder/conv2d_transpose_2/BiasAddBiasAdd4decoder/conv2d_transpose_2/conv2d_transpose:output:09decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  �
"decoder/conv2d_transpose_2/SigmoidSigmoid+decoder/conv2d_transpose_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������  �
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOp-encoder_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp/encoder_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp/encoder_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAdecoder_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpCdecoder_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpCdecoder_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
IdentityIdentity&decoder/conv2d_transpose_2/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������  Z

Identity_1Identityvector_quantizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �	
NoOpNoOp0^decoder/conv2d_transpose/BiasAdd/ReadVariableOp9^decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp2^decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp;^decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2^decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp;^decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp&^encoder/conv2d/BiasAdd/ReadVariableOp%^encoder/conv2d/Conv2D/ReadVariableOp(^encoder/conv2d_1/BiasAdd/ReadVariableOp'^encoder/conv2d_1/Conv2D/ReadVariableOp(^encoder/conv2d_2/BiasAdd/ReadVariableOp'^encoder/conv2d_2/Conv2D/ReadVariableOpF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp'^vector_quantizer/MatMul/ReadVariableOp)^vector_quantizer/MatMul_1/ReadVariableOp ^vector_quantizer/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������  : : : : : : : : : : : : : 2b
/decoder/conv2d_transpose/BiasAdd/ReadVariableOp/decoder/conv2d_transpose/BiasAdd/ReadVariableOp2t
8decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp8decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp2f
1decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp1decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp2x
:decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2f
1decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp1decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp2x
:decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2N
%encoder/conv2d/BiasAdd/ReadVariableOp%encoder/conv2d/BiasAdd/ReadVariableOp2L
$encoder/conv2d/Conv2D/ReadVariableOp$encoder/conv2d/Conv2D/ReadVariableOp2R
'encoder/conv2d_1/BiasAdd/ReadVariableOp'encoder/conv2d_1/BiasAdd/ReadVariableOp2P
&encoder/conv2d_1/Conv2D/ReadVariableOp&encoder/conv2d_1/Conv2D/ReadVariableOp2R
'encoder/conv2d_2/BiasAdd/ReadVariableOp'encoder/conv2d_2/BiasAdd/ReadVariableOp2P
&encoder/conv2d_2/Conv2D/ReadVariableOp&encoder/conv2d_2/Conv2D/ReadVariableOp2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2P
&vector_quantizer/MatMul/ReadVariableOp&vector_quantizer/MatMul/ReadVariableOp2T
(vector_quantizer/MatMul_1/ReadVariableOp(vector_quantizer/MatMul_1/ReadVariableOp2B
vector_quantizer/ReadVariableOpvector_quantizer/ReadVariableOp:V R
/
_output_shapes
:���������  

_user_specified_nameinput
�
�
2__inference_conv2d_transpose_2_layer_call_fn_26884

inputs!
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_25943w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_27051

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������  @�
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������  @�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�8
�	
!__inference__traced_restore_27350
file_prefix4
!assignvariableop_embeddings_vqvae:	@�F
,assignvariableop_1_vae_encoder_conv2d_kernel: 8
*assignvariableop_2_vae_encoder_conv2d_bias: H
.assignvariableop_3_vae_encoder_conv2d_1_kernel: @:
,assignvariableop_4_vae_encoder_conv2d_1_bias:@H
.assignvariableop_5_vae_encoder_conv2d_2_kernel:@@:
,assignvariableop_6_vae_encoder_conv2d_2_bias:@P
6assignvariableop_7_vae_decoder_conv2d_transpose_kernel: @B
4assignvariableop_8_vae_decoder_conv2d_transpose_bias: R
8assignvariableop_9_vae_decoder_conv2d_transpose_1_kernel:@@E
7assignvariableop_10_vae_decoder_conv2d_transpose_1_bias:@S
9assignvariableop_11_vae_decoder_conv2d_transpose_2_kernel: E
7assignvariableop_12_vae_decoder_conv2d_transpose_2_bias:
identity_14��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6vector_quantizer/embeddings/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*/
value&B$B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*L
_output_shapes:
8::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_embeddings_vqvaeIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp,assignvariableop_1_vae_encoder_conv2d_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp*assignvariableop_2_vae_encoder_conv2d_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_vae_encoder_conv2d_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp,assignvariableop_4_vae_encoder_conv2d_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp.assignvariableop_5_vae_encoder_conv2d_2_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp,assignvariableop_6_vae_encoder_conv2d_2_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp6assignvariableop_7_vae_decoder_conv2d_transpose_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp4assignvariableop_8_vae_decoder_conv2d_transpose_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp8assignvariableop_9_vae_decoder_conv2d_transpose_1_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp7assignvariableop_10_vae_decoder_conv2d_transpose_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_vae_decoder_conv2d_transpose_2_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp7assignvariableop_12_vae_decoder_conv2d_transpose_2_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_13Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_14IdentityIdentity_13:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_14Identity_14:output:0*/
_input_shapes
: : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�S
�
>__inference_vae_layer_call_and_return_conditional_losses_26272
input_1'
encoder_26204: 
encoder_26206: '
encoder_26208: @
encoder_26210:@'
encoder_26212:@@
encoder_26214:@)
vector_quantizer_26217:	@�'
decoder_26221:@@
decoder_26223:@'
decoder_26225: @
decoder_26227: '
decoder_26229: 
decoder_26231:
identity

identity_1��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp�Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp�Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp�;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp�=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp�=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp�(vector_quantizer/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_1encoder_26204encoder_26206encoder_26208encoder_26210encoder_26212encoder_26214*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_25465�
(vector_quantizer/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0vector_quantizer_26217*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������  @: *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_25619�
decoder/StatefulPartitionedCallStatefulPartitionedCall1vector_quantizer/StatefulPartitionedCall:output:0decoder_26221decoder_26223decoder_26225decoder_26227decoder_26229decoder_26231*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_25968�
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_26204*&
_output_shapes
: *
dtype0�
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_26208*&
_output_shapes
: @*
dtype0�
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_26212*&
_output_shapes
:@@*
dtype0�
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdecoder_26225*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdecoder_26221*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdecoder_26229*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  q

Identity_1Identity1vector_quantizer/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCallF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp)^vector_quantizer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������  : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2T
(vector_quantizer/StatefulPartitionedCall(vector_quantizer/StatefulPartitionedCall:X T
/
_output_shapes
:���������  
!
_user_specified_name	input_1
�"
�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_25943

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B : I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  ^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:���������  �
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�"
�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_26954

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B : I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  ^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:���������  �
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_27019

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������   �
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������   �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�	
�
'__inference_encoder_layer_call_fn_26576	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_25465w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������  

_user_specified_nameinput
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_25440

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������  @�
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������  @�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�.
�
B__inference_encoder_layer_call_and_return_conditional_losses_25564
input_1&
conv2d_25530: 
conv2d_25532: (
conv2d_1_25535: @
conv2d_1_25537:@(
conv2d_2_25540:@@
conv2d_2_25542:@
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp�=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp�=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_25530conv2d_25532*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_25394�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_25535conv2d_1_25537*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_25417�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_25540conv2d_2_25542*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_25440�
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_25530*&
_output_shapes
: *
dtype0�
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_1_25535*&
_output_shapes
: @*
dtype0�
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_2_25540*&
_output_shapes
:@@*
dtype0�
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentity)conv2d_2/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  @�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:X T
/
_output_shapes
:���������  
!
_user_specified_name	input_1
�,
�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_25728

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+��������������������������� j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� �
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
'__inference_decoder_layer_call_fn_25983
input_1!
unknown:@@
	unknown_0:@#
	unknown_1: @
	unknown_2: #
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_25968w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  @: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������  @
!
_user_specified_name	input_1
�
�
2__inference_conv2d_transpose_1_layer_call_fn_27160

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_25779�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
(__inference_conv2d_1_layer_call_fn_27034

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_25417w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
2__inference_conv2d_transpose_1_layer_call_fn_27169

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_25873w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�
�
0__inference_conv2d_transpose_layer_call_fn_27066

inputs!
unknown: @
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_25728�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�"
�
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_25873

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B : I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������  @�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������  @�
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�,
�
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_27209

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������@�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
&__inference_conv2d_layer_call_fn_27002

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_25394w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������   `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�)
�
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_26678
x1
matmul_readvariableop_resource:	@�
identity

identity_1��MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOp6
ShapeShapex*
T0*
_output_shapes
:^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   _
ReshapeReshapexReshape/shape:output:0*
T0*'
_output_shapes
:���������@u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0t
MatMulMatMulReshape:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @^
powPowReshape:output:0pow/y:output:0*
T0*'
_output_shapes
:���������@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :v
SumSumpow:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(n
ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @`
pow_1PowReadVariableOp:value:0pow_1/y:output:0*
T0*
_output_shapes
:	@�Y
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : _
Sum_1Sum	pow_1:z:0 Sum_1/reduction_indices:output:0*
T0*
_output_shapes	
:�]
addAddV2Sum:output:0Sum_1:output:0*
T0*(
_output_shapes
:����������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @_
mulMulmul/x:output:0MatMul:product:0*
T0*(
_output_shapes
:����������O
subSubadd:z:0mul:z:0*
T0*(
_output_shapes
:����������R
ArgMin/dimensionConst*
_output_shapes
: *
dtype0*
value	B :b
ArgMinArgMinsub:z:0ArgMin/dimension:output:0*
T0*#
_output_shapes
:���������U
one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?V
one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    P
one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :��
one_hotOneHotArgMin:output:0one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
T0*(
_output_shapes
:����������w
MatMul_1/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
MatMul_1MatMulone_hot:output:0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@*
transpose_b(r
	Reshape_1ReshapeMatMul_1:product:0Shape:output:0*
T0*/
_output_shapes
:���������  @j
StopGradientStopGradientReshape_1:output:0*
T0*/
_output_shapes
:���������  @`
sub_1SubStopGradient:output:0x*
T0*/
_output_shapes
:���������  @L
pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @c
pow_2Pow	sub_1:z:0pow_2/y:output:0*
T0*/
_output_shapes
:���������  @^
ConstConst*
_output_shapes
:*
dtype0*%
valueB"             H
MeanMean	pow_2:z:0Const:output:0*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �>N
mul_1Mulmul_1/x:output:0Mean:output:0*
T0*
_output_shapes
: [
StopGradient_1StopGradientx*
T0*/
_output_shapes
:���������  @s
sub_2SubReshape_1:output:0StopGradient_1:output:0*
T0*/
_output_shapes
:���������  @L
pow_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @c
pow_3Pow	sub_2:z:0pow_3/y:output:0*
T0*/
_output_shapes
:���������  @`
Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             L
Mean_1Mean	pow_3:z:0Const_1:output:0*
T0*
_output_shapes
: K
add_1AddV2	mul_1:z:0Mean_1:output:0*
T0*
_output_shapes
: ]
sub_3SubReshape_1:output:0x*
T0*/
_output_shapes
:���������  @c
StopGradient_2StopGradient	sub_3:z:0*
T0*/
_output_shapes
:���������  @d
add_2AddV2xStopGradient_2:output:0*
T0*/
_output_shapes
:���������  @`
IdentityIdentity	add_2:z:0^NoOp*
T0*/
_output_shapes
:���������  @I

Identity_1Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  @: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:R N
/
_output_shapes
:���������  @

_user_specified_namex
�'
�
__inference__traced_save_27301
file_prefix/
+savev2_embeddings_vqvae_read_readvariableop8
4savev2_vae_encoder_conv2d_kernel_read_readvariableop6
2savev2_vae_encoder_conv2d_bias_read_readvariableop:
6savev2_vae_encoder_conv2d_1_kernel_read_readvariableop8
4savev2_vae_encoder_conv2d_1_bias_read_readvariableop:
6savev2_vae_encoder_conv2d_2_kernel_read_readvariableop8
4savev2_vae_encoder_conv2d_2_bias_read_readvariableopB
>savev2_vae_decoder_conv2d_transpose_kernel_read_readvariableop@
<savev2_vae_decoder_conv2d_transpose_bias_read_readvariableopD
@savev2_vae_decoder_conv2d_transpose_1_kernel_read_readvariableopB
>savev2_vae_decoder_conv2d_transpose_1_bias_read_readvariableopD
@savev2_vae_decoder_conv2d_transpose_2_kernel_read_readvariableopB
>savev2_vae_decoder_conv2d_transpose_2_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6vector_quantizer/embeddings/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*/
value&B$B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_embeddings_vqvae_read_readvariableop4savev2_vae_encoder_conv2d_kernel_read_readvariableop2savev2_vae_encoder_conv2d_bias_read_readvariableop6savev2_vae_encoder_conv2d_1_kernel_read_readvariableop4savev2_vae_encoder_conv2d_1_bias_read_readvariableop6savev2_vae_encoder_conv2d_2_kernel_read_readvariableop4savev2_vae_encoder_conv2d_2_bias_read_readvariableop>savev2_vae_decoder_conv2d_transpose_kernel_read_readvariableop<savev2_vae_decoder_conv2d_transpose_bias_read_readvariableop@savev2_vae_decoder_conv2d_transpose_1_kernel_read_readvariableop>savev2_vae_decoder_conv2d_transpose_1_bias_read_readvariableop@savev2_vae_decoder_conv2d_transpose_2_kernel_read_readvariableop>savev2_vae_decoder_conv2d_transpose_2_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	@�: : : @:@:@@:@: @: :@@:@: :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	@�:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
: @: 	

_output_shapes
: :,
(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
: : 

_output_shapes
::

_output_shapes
: 
�5
�
B__inference_decoder_layer_call_and_return_conditional_losses_25968	
input2
conv2d_transpose_1_25874:@@&
conv2d_transpose_1_25876:@0
conv2d_transpose_25909: @$
conv2d_transpose_25911: 2
conv2d_transpose_2_25944: &
conv2d_transpose_2_25946:
identity��(conv2d_transpose/StatefulPartitionedCall�*conv2d_transpose_1/StatefulPartitionedCall�*conv2d_transpose_2/StatefulPartitionedCall�Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp�Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp�Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp�
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallinputconv2d_transpose_1_25874conv2d_transpose_1_25876*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_25873�
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_25909conv2d_transpose_25911*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_25908�
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_2_25944conv2d_transpose_2_25946*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_25943�
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_transpose_25909*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_transpose_1_25874*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_transpose_2_25944*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentity3conv2d_transpose_2/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCallF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  @: : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:V R
/
_output_shapes
:���������  @

_user_specified_nameinput
�S
�
>__inference_vae_layer_call_and_return_conditional_losses_26139	
input'
encoder_26071: 
encoder_26073: '
encoder_26075: @
encoder_26077:@'
encoder_26079:@@
encoder_26081:@)
vector_quantizer_26084:	@�'
decoder_26088:@@
decoder_26090:@'
decoder_26092: @
decoder_26094: '
decoder_26096: 
decoder_26098:
identity

identity_1��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp�Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp�Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp�;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp�=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp�=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp�(vector_quantizer/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinputencoder_26071encoder_26073encoder_26075encoder_26077encoder_26079encoder_26081*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_25465�
(vector_quantizer/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0vector_quantizer_26084*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������  @: *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_25619�
decoder/StatefulPartitionedCallStatefulPartitionedCall1vector_quantizer/StatefulPartitionedCall:output:0decoder_26088decoder_26090decoder_26092decoder_26094decoder_26096decoder_26098*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_25968�
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_26071*&
_output_shapes
: *
dtype0�
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_26075*&
_output_shapes
: @*
dtype0�
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_26079*&
_output_shapes
:@@*
dtype0�
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdecoder_26092*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdecoder_26088*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdecoder_26096*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  q

Identity_1Identity1vector_quantizer/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCallF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp)^vector_quantizer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������  : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2T
(vector_quantizer/StatefulPartitionedCall(vector_quantizer/StatefulPartitionedCall:V R
/
_output_shapes
:���������  

_user_specified_nameinput
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_25417

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������  @�
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������  @�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�,
�
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_25779

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������@�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@�
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_26341
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:	@�#
	unknown_6:@@
	unknown_7:@#
	unknown_8: @
	unknown_9: $

unknown_10: 

unknown_11:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_25370w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������  : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������  
!
_user_specified_name	input_1
�
�
2__inference_conv2d_transpose_2_layer_call_fn_26875

inputs!
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_25830�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
(__inference_conv2d_2_layer_call_fn_26810

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_25440w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�)
�
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_25619
x1
matmul_readvariableop_resource:	@�
identity

identity_1��MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOp6
ShapeShapex*
T0*
_output_shapes
:^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   _
ReshapeReshapexReshape/shape:output:0*
T0*'
_output_shapes
:���������@u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0t
MatMulMatMulReshape:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @^
powPowReshape:output:0pow/y:output:0*
T0*'
_output_shapes
:���������@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :v
SumSumpow:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(n
ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @`
pow_1PowReadVariableOp:value:0pow_1/y:output:0*
T0*
_output_shapes
:	@�Y
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : _
Sum_1Sum	pow_1:z:0 Sum_1/reduction_indices:output:0*
T0*
_output_shapes	
:�]
addAddV2Sum:output:0Sum_1:output:0*
T0*(
_output_shapes
:����������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @_
mulMulmul/x:output:0MatMul:product:0*
T0*(
_output_shapes
:����������O
subSubadd:z:0mul:z:0*
T0*(
_output_shapes
:����������R
ArgMin/dimensionConst*
_output_shapes
: *
dtype0*
value	B :b
ArgMinArgMinsub:z:0ArgMin/dimension:output:0*
T0*#
_output_shapes
:���������U
one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?V
one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    P
one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :��
one_hotOneHotArgMin:output:0one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
T0*(
_output_shapes
:����������w
MatMul_1/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
MatMul_1MatMulone_hot:output:0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@*
transpose_b(r
	Reshape_1ReshapeMatMul_1:product:0Shape:output:0*
T0*/
_output_shapes
:���������  @j
StopGradientStopGradientReshape_1:output:0*
T0*/
_output_shapes
:���������  @`
sub_1SubStopGradient:output:0x*
T0*/
_output_shapes
:���������  @L
pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @c
pow_2Pow	sub_1:z:0pow_2/y:output:0*
T0*/
_output_shapes
:���������  @^
ConstConst*
_output_shapes
:*
dtype0*%
valueB"             H
MeanMean	pow_2:z:0Const:output:0*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �>N
mul_1Mulmul_1/x:output:0Mean:output:0*
T0*
_output_shapes
: [
StopGradient_1StopGradientx*
T0*/
_output_shapes
:���������  @s
sub_2SubReshape_1:output:0StopGradient_1:output:0*
T0*/
_output_shapes
:���������  @L
pow_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @c
pow_3Pow	sub_2:z:0pow_3/y:output:0*
T0*/
_output_shapes
:���������  @`
Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             L
Mean_1Mean	pow_3:z:0Const_1:output:0*
T0*
_output_shapes
: K
add_1AddV2	mul_1:z:0Mean_1:output:0*
T0*
_output_shapes
: ]
sub_3SubReshape_1:output:0x*
T0*/
_output_shapes
:���������  @c
StopGradient_2StopGradient	sub_3:z:0*
T0*/
_output_shapes
:���������  @d
add_2AddV2xStopGradient_2:output:0*
T0*/
_output_shapes
:���������  @`
IdentityIdentity	add_2:z:0^NoOp*
T0*/
_output_shapes
:���������  @I

Identity_1Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  @: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:R N
/
_output_shapes
:���������  @

_user_specified_namex
�"
�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_25908

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B : I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������   �
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������   �
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�,
�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_27115

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+��������������������������� j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� �
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_25394

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������   �
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: �
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������   �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
__inference_loss_fn_3_26965h
Nvae_decoder_conv2d_transpose_kernel_regularizer_square_readvariableop_resource: @
identity��Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp�
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOpNvae_decoder_conv2d_transpose_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @�
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
IdentityIdentity7vae/decoder/conv2d_transpose/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOpF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_18
serving_default_input_1:0���������  D
output_18
StatefulPartitionedCall:0���������  tensorflow/serving/predict:��
�
encoder
vector_quantizer
decoder
	variables
trainable_variables
regularization_losses
	keras_api

signatures
t__call__
*u&call_and_return_all_conditional_losses
v_default_save_signature"
_tf_keras_model
�
	
layer_dict


latent_dim
	variables
trainable_variables
regularization_losses
	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_model
�

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_model
�

layer_dict
output_layer
	variables
trainable_variables
regularization_losses
	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_model
~
0
1
2
3
4
5
6
 7
!8
"9
#10
$11
%12"
trackable_list_wrapper
~
0
1
2
3
4
5
6
 7
!8
"9
#10
$11
%12"
trackable_list_wrapper
 "
trackable_list_wrapper
�
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
t__call__
v_default_save_signature
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
,
}serving_default"
signature_map
:
+layer_1
,layer_2"
trackable_dict_wrapper
�

kernel
bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
�
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
#:!	@�2embeddings_vqvae
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
:
;layer_1
<layer_2"
trackable_dict_wrapper
�

$kernel
%bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
J
 0
!1
"2
#3
$4
%5"
trackable_list_wrapper
J
 0
!1
"2
#3
$4
%5"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
�
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
3:1 2vae/encoder/conv2d/kernel
%:# 2vae/encoder/conv2d/bias
5:3 @2vae/encoder/conv2d_1/kernel
':%@2vae/encoder/conv2d_1/bias
5:3@@2vae/encoder/conv2d_2/kernel
':%@2vae/encoder/conv2d_2/bias
=:; @2#vae/decoder/conv2d_transpose/kernel
/:- 2!vae/decoder/conv2d_transpose/bias
?:=@@2%vae/decoder/conv2d_transpose_1/kernel
1:/@2#vae/decoder/conv2d_transpose_1/bias
?:= 2%vae/decoder/conv2d_transpose_2/kernel
1:/2#vae/decoder/conv2d_transpose_2/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�

kernel
bias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
-	variables
.trainable_variables
/regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5
+0
,1

2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�

 kernel
!bias
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

"kernel
#bias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
=	variables
>trainable_variables
?regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5
;0
<1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�2�
#__inference_vae_layer_call_fn_26169
#__inference_vae_layer_call_fn_26373�
���
FullArgSpec
args�
jself
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
>__inference_vae_layer_call_and_return_conditional_losses_26541
>__inference_vae_layer_call_and_return_conditional_losses_26272�
���
FullArgSpec
args�
jself
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
 __inference__wrapped_model_25370input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_encoder_layer_call_fn_25480
'__inference_encoder_layer_call_fn_26576�
���
FullArgSpec
args�
jself
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_encoder_layer_call_and_return_conditional_losses_26619
B__inference_encoder_layer_call_and_return_conditional_losses_25564�
���
FullArgSpec
args�
jself
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_vector_quantizer_layer_call_fn_25625
0__inference_vector_quantizer_layer_call_fn_26627�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_26678
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_25684�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_decoder_layer_call_fn_25983
'__inference_decoder_layer_call_fn_26713�
���
FullArgSpec
args�
jself
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_decoder_layer_call_and_return_conditional_losses_26795
B__inference_decoder_layer_call_and_return_conditional_losses_26064�
���
FullArgSpec
args�
jself
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_26341input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_conv2d_2_layer_call_fn_26810�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_26827�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_loss_fn_0_26838�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_1_26849�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_2_26860�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
2__inference_conv2d_transpose_2_layer_call_fn_26875
2__inference_conv2d_transpose_2_layer_call_fn_26884�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_26924
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_26954�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_loss_fn_3_26965�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_4_26976�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_5_26987�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
&__inference_conv2d_layer_call_fn_27002�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_conv2d_layer_call_and_return_conditional_losses_27019�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_conv2d_1_layer_call_fn_27034�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_27051�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_conv2d_transpose_layer_call_fn_27066
0__inference_conv2d_transpose_layer_call_fn_27075�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_27115
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_27145�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
2__inference_conv2d_transpose_1_layer_call_fn_27160
2__inference_conv2d_transpose_1_layer_call_fn_27169�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_27209
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_27239�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
 __inference__wrapped_model_25370�"# !$%8�5
.�+
)�&
input_1���������  
� ";�8
6
output_1*�'
output_1���������  �
C__inference_conv2d_1_layer_call_and_return_conditional_losses_27051l7�4
-�*
(�%
inputs���������   
� "-�*
#� 
0���������  @
� �
(__inference_conv2d_1_layer_call_fn_27034_7�4
-�*
(�%
inputs���������   
� " ����������  @�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_26827l7�4
-�*
(�%
inputs���������  @
� "-�*
#� 
0���������  @
� �
(__inference_conv2d_2_layer_call_fn_26810_7�4
-�*
(�%
inputs���������  @
� " ����������  @�
A__inference_conv2d_layer_call_and_return_conditional_losses_27019l7�4
-�*
(�%
inputs���������  
� "-�*
#� 
0���������   
� �
&__inference_conv2d_layer_call_fn_27002_7�4
-�*
(�%
inputs���������  
� " ����������   �
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_27209�"#I�F
?�<
:�7
inputs+���������������������������@
� "?�<
5�2
0+���������������������������@
� �
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_27239l"#7�4
-�*
(�%
inputs���������  @
� "-�*
#� 
0���������  @
� �
2__inference_conv2d_transpose_1_layer_call_fn_27160�"#I�F
?�<
:�7
inputs+���������������������������@
� "2�/+���������������������������@�
2__inference_conv2d_transpose_1_layer_call_fn_27169_"#7�4
-�*
(�%
inputs���������  @
� " ����������  @�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_26924�$%I�F
?�<
:�7
inputs+��������������������������� 
� "?�<
5�2
0+���������������������������
� �
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_26954l$%7�4
-�*
(�%
inputs���������   
� "-�*
#� 
0���������  
� �
2__inference_conv2d_transpose_2_layer_call_fn_26875�$%I�F
?�<
:�7
inputs+��������������������������� 
� "2�/+����������������������������
2__inference_conv2d_transpose_2_layer_call_fn_26884_$%7�4
-�*
(�%
inputs���������   
� " ����������  �
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_27115� !I�F
?�<
:�7
inputs+���������������������������@
� "?�<
5�2
0+��������������������������� 
� �
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_27145l !7�4
-�*
(�%
inputs���������  @
� "-�*
#� 
0���������   
� �
0__inference_conv2d_transpose_layer_call_fn_27066� !I�F
?�<
:�7
inputs+���������������������������@
� "2�/+��������������������������� �
0__inference_conv2d_transpose_layer_call_fn_27075_ !7�4
-�*
(�%
inputs���������  @
� " ����������   �
B__inference_decoder_layer_call_and_return_conditional_losses_26064q"# !$%8�5
.�+
)�&
input_1���������  @
� "-�*
#� 
0���������  
� �
B__inference_decoder_layer_call_and_return_conditional_losses_26795o"# !$%6�3
,�)
'�$
input���������  @
� "-�*
#� 
0���������  
� �
'__inference_decoder_layer_call_fn_25983d"# !$%8�5
.�+
)�&
input_1���������  @
� " ����������  �
'__inference_decoder_layer_call_fn_26713b"# !$%6�3
,�)
'�$
input���������  @
� " ����������  �
B__inference_encoder_layer_call_and_return_conditional_losses_25564q8�5
.�+
)�&
input_1���������  
� "-�*
#� 
0���������  @
� �
B__inference_encoder_layer_call_and_return_conditional_losses_26619o6�3
,�)
'�$
input���������  
� "-�*
#� 
0���������  @
� �
'__inference_encoder_layer_call_fn_25480d8�5
.�+
)�&
input_1���������  
� " ����������  @�
'__inference_encoder_layer_call_fn_26576b6�3
,�)
'�$
input���������  
� " ����������  @:
__inference_loss_fn_0_26838�

� 
� "� :
__inference_loss_fn_1_26849�

� 
� "� :
__inference_loss_fn_2_26860�

� 
� "� :
__inference_loss_fn_3_26965 �

� 
� "� :
__inference_loss_fn_4_26976"�

� 
� "� :
__inference_loss_fn_5_26987$�

� 
� "� �
#__inference_signature_wrapper_26341�"# !$%C�@
� 
9�6
4
input_1)�&
input_1���������  ";�8
6
output_1*�'
output_1���������  �
>__inference_vae_layer_call_and_return_conditional_losses_26272�"# !$%8�5
.�+
)�&
input_1���������  
� ";�8
#� 
0���������  
�
�	
1/0 �
>__inference_vae_layer_call_and_return_conditional_losses_26541�"# !$%6�3
,�)
'�$
input���������  
� ";�8
#� 
0���������  
�
�	
1/0 �
#__inference_vae_layer_call_fn_26169k"# !$%8�5
.�+
)�&
input_1���������  
� " ����������  �
#__inference_vae_layer_call_fn_26373i"# !$%6�3
,�)
'�$
input���������  
� " ����������  �
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_25684z8�5
.�+
)�&
input_1���������  @
� ";�8
#� 
0���������  @
�
�	
1/0 �
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_26678t2�/
(�%
#� 
x���������  @
� ";�8
#� 
0���������  @
�
�	
1/0 �
0__inference_vector_quantizer_layer_call_fn_25625_8�5
.�+
)�&
input_1���������  @
� " ����������  @�
0__inference_vector_quantizer_layer_call_fn_26627Y2�/
(�%
#� 
x���������  @
� " ����������  @