Ќ<
А§
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
О
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
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

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*	2.5.0-rc32v2.5.0-rc2-14-gfcdf65934708ЉЄ8
|
conv_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:­*
shared_nameconv_1/kernel
u
!conv_1/kernel/Read/ReadVariableOpReadVariableOpconv_1/kernel*$
_output_shapes
:­*
dtype0
o
conv_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv_1/bias
h
conv_1/bias/Read/ReadVariableOpReadVariableOpconv_1/bias*
_output_shapes	
:*
dtype0

batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_2/gamma

/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes	
:*
dtype0

batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_2/beta

.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes	
:*
dtype0

!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_2/moving_mean

5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes	
:*
dtype0
Ѓ
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_2/moving_variance

9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes	
:*
dtype0
p

fc1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*
shared_name
fc1/kernel
i
fc1/kernel/Read/ReadVariableOpReadVariableOp
fc1/kernel*
_output_shapes

:d2*
dtype0
h
fc1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_name
fc1/bias
a
fc1/bias/Read/ReadVariableOpReadVariableOpfc1/bias*
_output_shapes
:2*
dtype0

batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*,
shared_namebatch_normalization_3/gamma

/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:2*
dtype0

batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*+
shared_namebatch_normalization_3/beta

.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:2*
dtype0

!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*2
shared_name#!batch_normalization_3/moving_mean

5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:2*
dtype0
Ђ
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*6
shared_name'%batch_normalization_3/moving_variance

9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:2*
dtype0
x
softmax/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namesoftmax/kernel
q
"softmax/kernel/Read/ReadVariableOpReadVariableOpsoftmax/kernel*
_output_shapes

:2*
dtype0
p
softmax/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namesoftmax/bias
i
 softmax/bias/Read/ReadVariableOpReadVariableOpsoftmax/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

lstm_1/lstm_cell_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_namelstm_1/lstm_cell_4/kernel

-lstm_1/lstm_cell_4/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_4/kernel* 
_output_shapes
:
*
dtype0
Ѓ
#lstm_1/lstm_cell_4/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*4
shared_name%#lstm_1/lstm_cell_4/recurrent_kernel

7lstm_1/lstm_cell_4/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_4/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_1/lstm_cell_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namelstm_1/lstm_cell_4/bias

+lstm_1/lstm_cell_4/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_4/bias*
_output_shapes	
:*
dtype0

lstm_2/lstm_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d**
shared_namelstm_2/lstm_cell_5/kernel

-lstm_2/lstm_cell_5/kernel/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_5/kernel*
_output_shapes
:	d*
dtype0
Ѓ
#lstm_2/lstm_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*4
shared_name%#lstm_2/lstm_cell_5/recurrent_kernel

7lstm_2/lstm_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_2/lstm_cell_5/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_2/lstm_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namelstm_2/lstm_cell_5/bias

+lstm_2/lstm_cell_5/bias/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_5/bias*
_output_shapes	
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
v
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_negatives
o
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
:*
dtype0
x
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
dtype0
v
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_positives
o
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes
:*
dtype0

Adam/conv_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:­*%
shared_nameAdam/conv_1/kernel/m

(Adam/conv_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_1/kernel/m*$
_output_shapes
:­*
dtype0
}
Adam/conv_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv_1/bias/m
v
&Adam/conv_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_1/bias/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_2/gamma/m

6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/m*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_2/beta/m

5Adam/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/m*
_output_shapes	
:*
dtype0
~
Adam/fc1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*"
shared_nameAdam/fc1/kernel/m
w
%Adam/fc1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/fc1/kernel/m*
_output_shapes

:d2*
dtype0
v
Adam/fc1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2* 
shared_nameAdam/fc1/bias/m
o
#Adam/fc1/bias/m/Read/ReadVariableOpReadVariableOpAdam/fc1/bias/m*
_output_shapes
:2*
dtype0

"Adam/batch_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*3
shared_name$"Adam/batch_normalization_3/gamma/m

6Adam/batch_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_3/gamma/m*
_output_shapes
:2*
dtype0

!Adam/batch_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*2
shared_name#!Adam/batch_normalization_3/beta/m

5Adam/batch_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_3/beta/m*
_output_shapes
:2*
dtype0

Adam/softmax/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/softmax/kernel/m

)Adam/softmax/kernel/m/Read/ReadVariableOpReadVariableOpAdam/softmax/kernel/m*
_output_shapes

:2*
dtype0
~
Adam/softmax/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/softmax/bias/m
w
'Adam/softmax/bias/m/Read/ReadVariableOpReadVariableOpAdam/softmax/bias/m*
_output_shapes
:*
dtype0

 Adam/lstm_1/lstm_cell_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" Adam/lstm_1/lstm_cell_4/kernel/m

4Adam/lstm_1/lstm_cell_4/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_4/kernel/m* 
_output_shapes
:
*
dtype0
Б
*Adam/lstm_1/lstm_cell_4/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*;
shared_name,*Adam/lstm_1/lstm_cell_4/recurrent_kernel/m
Њ
>Adam/lstm_1/lstm_cell_4/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_4/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

Adam/lstm_1/lstm_cell_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_1/lstm_cell_4/bias/m

2Adam/lstm_1/lstm_cell_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_4/bias/m*
_output_shapes	
:*
dtype0

 Adam/lstm_2/lstm_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*1
shared_name" Adam/lstm_2/lstm_cell_5/kernel/m

4Adam/lstm_2/lstm_cell_5/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_5/kernel/m*
_output_shapes
:	d*
dtype0
Б
*Adam/lstm_2/lstm_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*;
shared_name,*Adam/lstm_2/lstm_cell_5/recurrent_kernel/m
Њ
>Adam/lstm_2/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_5/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

Adam/lstm_2/lstm_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_2/lstm_cell_5/bias/m

2Adam/lstm_2/lstm_cell_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_5/bias/m*
_output_shapes	
:*
dtype0

Adam/conv_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:­*%
shared_nameAdam/conv_1/kernel/v

(Adam/conv_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_1/kernel/v*$
_output_shapes
:­*
dtype0
}
Adam/conv_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv_1/bias/v
v
&Adam/conv_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_1/bias/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_2/gamma/v

6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/v*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_2/beta/v

5Adam/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/v*
_output_shapes	
:*
dtype0
~
Adam/fc1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*"
shared_nameAdam/fc1/kernel/v
w
%Adam/fc1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/fc1/kernel/v*
_output_shapes

:d2*
dtype0
v
Adam/fc1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2* 
shared_nameAdam/fc1/bias/v
o
#Adam/fc1/bias/v/Read/ReadVariableOpReadVariableOpAdam/fc1/bias/v*
_output_shapes
:2*
dtype0

"Adam/batch_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*3
shared_name$"Adam/batch_normalization_3/gamma/v

6Adam/batch_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_3/gamma/v*
_output_shapes
:2*
dtype0

!Adam/batch_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*2
shared_name#!Adam/batch_normalization_3/beta/v

5Adam/batch_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_3/beta/v*
_output_shapes
:2*
dtype0

Adam/softmax/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/softmax/kernel/v

)Adam/softmax/kernel/v/Read/ReadVariableOpReadVariableOpAdam/softmax/kernel/v*
_output_shapes

:2*
dtype0
~
Adam/softmax/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/softmax/bias/v
w
'Adam/softmax/bias/v/Read/ReadVariableOpReadVariableOpAdam/softmax/bias/v*
_output_shapes
:*
dtype0

 Adam/lstm_1/lstm_cell_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" Adam/lstm_1/lstm_cell_4/kernel/v

4Adam/lstm_1/lstm_cell_4/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_4/kernel/v* 
_output_shapes
:
*
dtype0
Б
*Adam/lstm_1/lstm_cell_4/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*;
shared_name,*Adam/lstm_1/lstm_cell_4/recurrent_kernel/v
Њ
>Adam/lstm_1/lstm_cell_4/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_4/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

Adam/lstm_1/lstm_cell_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_1/lstm_cell_4/bias/v

2Adam/lstm_1/lstm_cell_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_4/bias/v*
_output_shapes	
:*
dtype0

 Adam/lstm_2/lstm_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*1
shared_name" Adam/lstm_2/lstm_cell_5/kernel/v

4Adam/lstm_2/lstm_cell_5/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_5/kernel/v*
_output_shapes
:	d*
dtype0
Б
*Adam/lstm_2/lstm_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*;
shared_name,*Adam/lstm_2/lstm_cell_5/recurrent_kernel/v
Њ
>Adam/lstm_2/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_5/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

Adam/lstm_2/lstm_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_2/lstm_cell_5/bias/v

2Adam/lstm_2/lstm_cell_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_5/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
ђk
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*­k
valueЃkB k Bk
З
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer_with_weights-6
layer-10
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api

axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
 	keras_api
R
!	variables
"trainable_variables
#regularization_losses
$	keras_api
R
%	variables
&trainable_variables
'regularization_losses
(	keras_api
l
)cell
*
state_spec
+trainable_variables
,	variables
-regularization_losses
.	keras_api
l
/cell
0
state_spec
1trainable_variables
2	variables
3regularization_losses
4	keras_api
h

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api

;axis
	<gamma
=beta
>moving_mean
?moving_variance
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
R
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
R
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
h

Lkernel
Mbias
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api

Riter

Sbeta_1

Tbeta_2
	Udecay
Vlearning_ratemЦmЧmШmЩ5mЪ6mЫ<mЬ=mЭLmЮMmЯWmаXmбYmвZmг[mд\mеvжvзvиvй5vк6vл<vм=vнLvоMvпWvрXvсYvтZvу[vф\vх
v
0
1
2
3
W4
X5
Y6
Z7
[8
\9
510
611
<12
=13
L14
M15

0
1
2
3
4
5
W6
X7
Y8
Z9
[10
\11
512
613
<14
=15
>16
?17
L18
M19
 
­
trainable_variables
]non_trainable_variables

^layers
	variables
_layer_regularization_losses
`metrics
alayer_metrics
regularization_losses
 
YW
VARIABLE_VALUEconv_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
bnon_trainable_variables

clayers
	variables
trainable_variables
dlayer_regularization_losses
emetrics
flayer_metrics
regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3

0
1
 
­
gnon_trainable_variables

hlayers
	variables
trainable_variables
ilayer_regularization_losses
jmetrics
klayer_metrics
regularization_losses
 
 
 
­
lnon_trainable_variables

mlayers
!	variables
"trainable_variables
nlayer_regularization_losses
ometrics
player_metrics
#regularization_losses
 
 
 
­
qnon_trainable_variables

rlayers
%	variables
&trainable_variables
slayer_regularization_losses
tmetrics
ulayer_metrics
'regularization_losses

v
state_size

Wkernel
Xrecurrent_kernel
Ybias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
 

W0
X1
Y2

W0
X1
Y2
 
К
+trainable_variables
{non_trainable_variables
,	variables

|layers
}layer_regularization_losses
~metrics
layer_metrics
states
-regularization_losses


state_size

Zkernel
[recurrent_kernel
\bias
	variables
trainable_variables
regularization_losses
	keras_api
 

Z0
[1
\2

Z0
[1
\2
 
П
1trainable_variables
non_trainable_variables
2	variables
layers
 layer_regularization_losses
metrics
layer_metrics
states
3regularization_losses
VT
VARIABLE_VALUE
fc1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEfc1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

50
61

50
61
 
В
non_trainable_variables
layers
7	variables
8trainable_variables
 layer_regularization_losses
metrics
layer_metrics
9regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
>2
?3

<0
=1
 
В
non_trainable_variables
layers
@	variables
Atrainable_variables
 layer_regularization_losses
metrics
layer_metrics
Bregularization_losses
 
 
 
В
non_trainable_variables
layers
D	variables
Etrainable_variables
 layer_regularization_losses
metrics
layer_metrics
Fregularization_losses
 
 
 
В
non_trainable_variables
layers
H	variables
Itrainable_variables
 layer_regularization_losses
metrics
layer_metrics
Jregularization_losses
ZX
VARIABLE_VALUEsoftmax/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEsoftmax/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

L0
M1

L0
M1
 
В
 non_trainable_variables
Ёlayers
N	variables
Otrainable_variables
 Ђlayer_regularization_losses
Ѓmetrics
Єlayer_metrics
Pregularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_1/lstm_cell_4/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_1/lstm_cell_4/recurrent_kernel0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_1/lstm_cell_4/bias0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_2/lstm_cell_5/kernel0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_2/lstm_cell_5/recurrent_kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_2/lstm_cell_5/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE

0
1
>2
?3
N
0
1
2
3
4
5
6
7
	8

9
10
 
 
Ѕ0
І1
Ї2
Ј3
 
 
 
 
 
 

0
1
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

W0
X1
Y2

W0
X1
Y2
 
В
Љnon_trainable_variables
Њlayers
w	variables
xtrainable_variables
 Ћlayer_regularization_losses
Ќmetrics
­layer_metrics
yregularization_losses
 

)0
 
 
 
 
 

Z0
[1
\2

Z0
[1
\2
 
Е
Ўnon_trainable_variables
Џlayers
	variables
trainable_variables
 Аlayer_regularization_losses
Бmetrics
Вlayer_metrics
regularization_losses
 

/0
 
 
 
 
 
 
 
 
 

>0
?1
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
8

Гtotal

Дcount
Е	variables
Ж	keras_api
I

Зtotal

Иcount
Й
_fn_kwargs
К	variables
Л	keras_api
\
М
thresholds
Нtrue_positives
Оfalse_negatives
П	variables
Р	keras_api
\
С
thresholds
Тtrue_positives
Уfalse_positives
Ф	variables
Х	keras_api
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Г0
Д1

Е	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

З0
И1

К	variables
 
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE

Н0
О1

П	variables
 
ca
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUE

Т0
У1

Ф	variables
|z
VARIABLE_VALUEAdam/conv_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_2/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_2/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/fc1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/fc1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_3/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_3/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/softmax/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/softmax/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_1/lstm_cell_4/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_1/lstm_cell_4/recurrent_kernel/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/lstm_1/lstm_cell_4/bias/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_2/lstm_cell_5/kernel/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_2/lstm_cell_5/recurrent_kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/lstm_2/lstm_cell_5/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_2/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_2/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/fc1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/fc1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_3/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_3/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/softmax/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/softmax/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_1/lstm_cell_4/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_1/lstm_cell_4/recurrent_kernel/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/lstm_1/lstm_cell_4/bias/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_2/lstm_cell_5/kernel/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_2/lstm_cell_5/recurrent_kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/lstm_2/lstm_cell_5/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_2Placeholder*,
_output_shapes
:џџџџџџџџџ­*
dtype0*!
shape:џџџџџџџџџ­
т
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2conv_1/kernelconv_1/bias%batch_normalization_2/moving_variancebatch_normalization_2/gamma!batch_normalization_2/moving_meanbatch_normalization_2/betalstm_1/lstm_cell_4/kernel#lstm_1/lstm_cell_4/recurrent_kernellstm_1/lstm_cell_4/biaslstm_2/lstm_cell_5/kernel#lstm_2/lstm_cell_5/recurrent_kernellstm_2/lstm_cell_5/bias
fc1/kernelfc1/bias%batch_normalization_3/moving_variancebatch_normalization_3/gamma!batch_normalization_3/moving_meanbatch_normalization_3/betasoftmax/kernelsoftmax/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_317362
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
щ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv_1/kernel/Read/ReadVariableOpconv_1/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOpfc1/kernel/Read/ReadVariableOpfc1/bias/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp"softmax/kernel/Read/ReadVariableOp softmax/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_1/lstm_cell_4/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_4/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_4/bias/Read/ReadVariableOp-lstm_2/lstm_cell_5/kernel/Read/ReadVariableOp7lstm_2/lstm_cell_5/recurrent_kernel/Read/ReadVariableOp+lstm_2/lstm_cell_5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_positives/Read/ReadVariableOp(Adam/conv_1/kernel/m/Read/ReadVariableOp&Adam/conv_1/bias/m/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_2/beta/m/Read/ReadVariableOp%Adam/fc1/kernel/m/Read/ReadVariableOp#Adam/fc1/bias/m/Read/ReadVariableOp6Adam/batch_normalization_3/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_3/beta/m/Read/ReadVariableOp)Adam/softmax/kernel/m/Read/ReadVariableOp'Adam/softmax/bias/m/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_4/kernel/m/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_4/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_4/bias/m/Read/ReadVariableOp4Adam/lstm_2/lstm_cell_5/kernel/m/Read/ReadVariableOp>Adam/lstm_2/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_2/lstm_cell_5/bias/m/Read/ReadVariableOp(Adam/conv_1/kernel/v/Read/ReadVariableOp&Adam/conv_1/bias/v/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_2/beta/v/Read/ReadVariableOp%Adam/fc1/kernel/v/Read/ReadVariableOp#Adam/fc1/bias/v/Read/ReadVariableOp6Adam/batch_normalization_3/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_3/beta/v/Read/ReadVariableOp)Adam/softmax/kernel/v/Read/ReadVariableOp'Adam/softmax/bias/v/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_4/kernel/v/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_4/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_4/bias/v/Read/ReadVariableOp4Adam/lstm_2/lstm_cell_5/kernel/v/Read/ReadVariableOp>Adam/lstm_2/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_2/lstm_cell_5/bias/v/Read/ReadVariableOpConst*N
TinG
E2C	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_320857
а
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv_1/kernelconv_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variance
fc1/kernelfc1/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancesoftmax/kernelsoftmax/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_1/lstm_cell_4/kernel#lstm_1/lstm_cell_4/recurrent_kernellstm_1/lstm_cell_4/biaslstm_2/lstm_cell_5/kernel#lstm_2/lstm_cell_5/recurrent_kernellstm_2/lstm_cell_5/biastotalcounttotal_1count_1true_positivesfalse_negativestrue_positives_1false_positivesAdam/conv_1/kernel/mAdam/conv_1/bias/m"Adam/batch_normalization_2/gamma/m!Adam/batch_normalization_2/beta/mAdam/fc1/kernel/mAdam/fc1/bias/m"Adam/batch_normalization_3/gamma/m!Adam/batch_normalization_3/beta/mAdam/softmax/kernel/mAdam/softmax/bias/m Adam/lstm_1/lstm_cell_4/kernel/m*Adam/lstm_1/lstm_cell_4/recurrent_kernel/mAdam/lstm_1/lstm_cell_4/bias/m Adam/lstm_2/lstm_cell_5/kernel/m*Adam/lstm_2/lstm_cell_5/recurrent_kernel/mAdam/lstm_2/lstm_cell_5/bias/mAdam/conv_1/kernel/vAdam/conv_1/bias/v"Adam/batch_normalization_2/gamma/v!Adam/batch_normalization_2/beta/vAdam/fc1/kernel/vAdam/fc1/bias/v"Adam/batch_normalization_3/gamma/v!Adam/batch_normalization_3/beta/vAdam/softmax/kernel/vAdam/softmax/bias/v Adam/lstm_1/lstm_cell_4/kernel/v*Adam/lstm_1/lstm_cell_4/recurrent_kernel/vAdam/lstm_1/lstm_cell_4/bias/v Adam/lstm_2/lstm_cell_5/kernel/v*Adam/lstm_2/lstm_cell_5/recurrent_kernel/vAdam/lstm_2/lstm_cell_5/bias/v*M
TinF
D2B*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_321062Шќ5
е
У
while_cond_319043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_319043___redundant_placeholder04
0while_while_cond_319043___redundant_placeholder14
0while_while_cond_319043___redundant_placeholder24
0while_while_cond_319043___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Ф
Д
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_315915

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2
batchnorm/add_1р
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
E

B__inference_lstm_2_layer_call_and_return_conditional_losses_315198

inputs%
lstm_cell_5_315116:	d%
lstm_cell_5_315118:	d!
lstm_cell_5_315120:	
identityЂ#lstm_cell_5/StatefulPartitionedCallЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_315116lstm_cell_5_315118lstm_cell_5_315120*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_3151152%
#lstm_cell_5/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_315116lstm_cell_5_315118lstm_cell_5_315120*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_315129*
condR
while_cond_315128*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_5/StatefulPartitionedCall^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
 
_user_specified_nameinputs
е
У
while_cond_315374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_315374___redundant_placeholder04
0while_while_cond_315374___redundant_placeholder14
0while_while_cond_315374___redundant_placeholder24
0while_while_cond_315374___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Ц*
ю
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_316988

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradientЉ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesЗ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg/decayЅ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulП
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg_1/decayЋ
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpЁ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulЩ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
оR
Ї

lstm_2_while_body_317617*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_2_while_lstm_cell_5_matmul_readvariableop_resource_0:	dN
;lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resource_0:	dI
:lstm_2_while_lstm_cell_5_biasadd_readvariableop_resource_0:	
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorJ
7lstm_2_while_lstm_cell_5_matmul_readvariableop_resource:	dL
9lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resource:	dG
8lstm_2_while_lstm_cell_5_biasadd_readvariableop_resource:	Ђ/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOpЂ.lstm_2/while/lstm_cell_5/MatMul/ReadVariableOpЂ0lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOpб
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2@
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape§
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype022
0lstm_2/while/TensorArrayV2Read/TensorListGetItemЛ
(lstm_2/while/lstm_cell_5/ones_like/ShapeShape7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_2/while/lstm_cell_5/ones_like/Shape
(lstm_2/while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_2/while/lstm_cell_5/ones_like/Constш
"lstm_2/while/lstm_cell_5/ones_likeFill1lstm_2/while/lstm_cell_5/ones_like/Shape:output:01lstm_2/while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_2/while/lstm_cell_5/ones_likeл
lstm_2/while/lstm_cell_5/mulMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_2/while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/while/lstm_cell_5/mulл
.lstm_2/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp9lstm_2_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype020
.lstm_2/while/lstm_cell_5/MatMul/ReadVariableOpй
lstm_2/while/lstm_cell_5/MatMulMatMul lstm_2/while/lstm_cell_5/mul:z:06lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
lstm_2/while/lstm_cell_5/MatMulс
0lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype022
0lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOpй
!lstm_2/while/lstm_cell_5/MatMul_1MatMullstm_2_while_placeholder_28lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!lstm_2/while/lstm_cell_5/MatMul_1а
lstm_2/while/lstm_cell_5/addAddV2)lstm_2/while/lstm_cell_5/MatMul:product:0+lstm_2/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_2/while/lstm_cell_5/addк
/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOpн
 lstm_2/while/lstm_cell_5/BiasAddBiasAdd lstm_2/while/lstm_cell_5/add:z:07lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_2/while/lstm_cell_5/BiasAdd
(lstm_2/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_2/while/lstm_cell_5/split/split_dimЃ
lstm_2/while/lstm_cell_5/splitSplit1lstm_2/while/lstm_cell_5/split/split_dim:output:0)lstm_2/while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2 
lstm_2/while/lstm_cell_5/splitЊ
 lstm_2/while/lstm_cell_5/SigmoidSigmoid'lstm_2/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_2/while/lstm_cell_5/SigmoidЎ
"lstm_2/while/lstm_cell_5/Sigmoid_1Sigmoid'lstm_2/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_2/while/lstm_cell_5/Sigmoid_1Н
lstm_2/while/lstm_cell_5/mul_1Mul&lstm_2/while/lstm_cell_5/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_2/while/lstm_cell_5/mul_1Ё
lstm_2/while/lstm_cell_5/ReluRelu'lstm_2/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/while/lstm_cell_5/ReluЬ
lstm_2/while/lstm_cell_5/mul_2Mul$lstm_2/while/lstm_cell_5/Sigmoid:y:0+lstm_2/while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_2/while/lstm_cell_5/mul_2У
lstm_2/while/lstm_cell_5/add_1AddV2"lstm_2/while/lstm_cell_5/mul_1:z:0"lstm_2/while/lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_2/while/lstm_cell_5/add_1Ў
"lstm_2/while/lstm_cell_5/Sigmoid_2Sigmoid'lstm_2/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_2/while/lstm_cell_5/Sigmoid_2 
lstm_2/while/lstm_cell_5/Relu_1Relu"lstm_2/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
lstm_2/while/lstm_cell_5/Relu_1а
lstm_2/while/lstm_cell_5/mul_3Mul&lstm_2/while/lstm_cell_5/Sigmoid_2:y:0-lstm_2/while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_2/while/lstm_cell_5/mul_3
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder"lstm_2/while/lstm_cell_5/mul_3:z:0*
_output_shapes
: *
element_dtype023
1lstm_2/while/TensorArrayV2Write/TensorListSetItemj
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add/y
lstm_2/while/addAddV2lstm_2_while_placeholderlstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/addn
lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add_1/y
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/add_1
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:00^lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/IdentityЃ
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations0^lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_1
lstm_2/while/Identity_2Identitylstm_2/while/add:z:00^lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_2И
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_3Њ
lstm_2/while/Identity_4Identity"lstm_2/while/lstm_cell_5/mul_3:z:00^lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/while/Identity_4Њ
lstm_2/while/Identity_5Identity"lstm_2/while/lstm_cell_5/add_1:z:00^lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/while/Identity_5"7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"v
8lstm_2_while_lstm_cell_5_biasadd_readvariableop_resource:lstm_2_while_lstm_cell_5_biasadd_readvariableop_resource_0"x
9lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resource;lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resource_0"t
7lstm_2_while_lstm_cell_5_matmul_readvariableop_resource9lstm_2_while_lstm_cell_5_matmul_readvariableop_resource_0"Ф
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2b
/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp2`
.lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp.lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp2d
0lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp0lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Ј

Я
lstm_2_while_cond_318107*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1B
>lstm_2_while_lstm_2_while_cond_318107___redundant_placeholder0B
>lstm_2_while_lstm_2_while_cond_318107___redundant_placeholder1B
>lstm_2_while_lstm_2_while_cond_318107___redundant_placeholder2B
>lstm_2_while_lstm_2_while_cond_318107___redundant_placeholder3
lstm_2_while_identity

lstm_2/while/LessLesslstm_2_while_placeholder(lstm_2_while_less_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2
lstm_2/while/Lessr
lstm_2/while/IdentityIdentitylstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_2/while/Identity"7
lstm_2_while_identitylstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
є
d
H__inference_activation_2_layer_call_and_return_conditional_losses_315930

inputs
identityS
ReluReluinputs*
T0*,
_output_shapes
:џџџџџџџџџ2
Reluk
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Џ
г
%sequential_1_lstm_1_while_cond_313929D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3F
Bsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_313929___redundant_placeholder0\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_313929___redundant_placeholder1\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_313929___redundant_placeholder2\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_313929___redundant_placeholder3&
"sequential_1_lstm_1_while_identity
д
sequential_1/lstm_1/while/LessLess%sequential_1_lstm_1_while_placeholderBsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/while/Less
"sequential_1/lstm_1/while/IdentityIdentity"sequential_1/lstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_1/while/Identity"Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
ч

B__inference_lstm_1_layer_call_and_return_conditional_losses_318973
inputs_0>
*lstm_cell_4_matmul_readvariableop_resource:
?
,lstm_cell_4_matmul_1_readvariableop_resource:	d:
+lstm_cell_4_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_4/BiasAdd/ReadVariableOpЂ!lstm_cell_4/MatMul/ReadVariableOpЂ#lstm_cell_4/MatMul_1/ReadVariableOpЂwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
lstm_cell_4/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_4/ones_like/Shape
lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_4/ones_like/ConstЕ
lstm_cell_4/ones_likeFill$lstm_cell_4/ones_like/Shape:output:0$lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/ones_like{
lstm_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_4/dropout/ConstА
lstm_cell_4/dropout/MulMullstm_cell_4/ones_like:output:0"lstm_cell_4/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout/Mul
lstm_cell_4/dropout/ShapeShapelstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_4/dropout/Shapeї
0lstm_cell_4/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_4/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2Ј22
0lstm_cell_4/dropout/random_uniform/RandomUniform
"lstm_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2$
"lstm_cell_4/dropout/GreaterEqual/yя
 lstm_cell_4/dropout/GreaterEqualGreaterEqual9lstm_cell_4/dropout/random_uniform/RandomUniform:output:0+lstm_cell_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_cell_4/dropout/GreaterEqualЄ
lstm_cell_4/dropout/CastCast$lstm_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout/CastЋ
lstm_cell_4/dropout/Mul_1Mullstm_cell_4/dropout/Mul:z:0lstm_cell_4/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout/Mul_1
lstm_cell_4/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_4/dropout_1/ConstЖ
lstm_cell_4/dropout_1/MulMullstm_cell_4/ones_like:output:0$lstm_cell_4/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_1/Mul
lstm_cell_4/dropout_1/ShapeShapelstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_4/dropout_1/Shape§
2lstm_cell_4/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_4/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЅD24
2lstm_cell_4/dropout_1/random_uniform/RandomUniform
$lstm_cell_4/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_4/dropout_1/GreaterEqual/yї
"lstm_cell_4/dropout_1/GreaterEqualGreaterEqual;lstm_cell_4/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_4/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_4/dropout_1/GreaterEqualЊ
lstm_cell_4/dropout_1/CastCast&lstm_cell_4/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_1/CastГ
lstm_cell_4/dropout_1/Mul_1Mullstm_cell_4/dropout_1/Mul:z:0lstm_cell_4/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_1/Mul_1
lstm_cell_4/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_4/dropout_2/ConstЖ
lstm_cell_4/dropout_2/MulMullstm_cell_4/ones_like:output:0$lstm_cell_4/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_2/Mul
lstm_cell_4/dropout_2/ShapeShapelstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_4/dropout_2/Shapeў
2lstm_cell_4/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_4/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ћ24
2lstm_cell_4/dropout_2/random_uniform/RandomUniform
$lstm_cell_4/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_4/dropout_2/GreaterEqual/yї
"lstm_cell_4/dropout_2/GreaterEqualGreaterEqual;lstm_cell_4/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_4/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_4/dropout_2/GreaterEqualЊ
lstm_cell_4/dropout_2/CastCast&lstm_cell_4/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_2/CastГ
lstm_cell_4/dropout_2/Mul_1Mullstm_cell_4/dropout_2/Mul:z:0lstm_cell_4/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_2/Mul_1
lstm_cell_4/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_4/dropout_3/ConstЖ
lstm_cell_4/dropout_3/MulMullstm_cell_4/ones_like:output:0$lstm_cell_4/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_3/Mul
lstm_cell_4/dropout_3/ShapeShapelstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_4/dropout_3/Shapeў
2lstm_cell_4/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_4/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2цг24
2lstm_cell_4/dropout_3/random_uniform/RandomUniform
$lstm_cell_4/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_4/dropout_3/GreaterEqual/yї
"lstm_cell_4/dropout_3/GreaterEqualGreaterEqual;lstm_cell_4/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_4/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_4/dropout_3/GreaterEqualЊ
lstm_cell_4/dropout_3/CastCast&lstm_cell_4/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_3/CastГ
lstm_cell_4/dropout_3/Mul_1Mullstm_cell_4/dropout_3/Mul:z:0lstm_cell_4/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_3/Mul_1
lstm_cell_4/mulMulstrided_slice_2:output:0lstm_cell_4/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mulГ
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOpЅ
lstm_cell_4/MatMulMatMullstm_cell_4/mul:z:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/MatMulИ
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOpІ
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/MatMul_1
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/addБ
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOpЉ
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/BiasAdd|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dimя
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_cell_4/split
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid_1
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_1z
lstm_cell_4/ReluRelulstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Relu
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_2
lstm_cell_4/add_1AddV2lstm_cell_4/mul_1:z:0lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/add_1
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid_2y
lstm_cell_4/Relu_1Relulstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Relu_1
lstm_cell_4/mul_3Mullstm_cell_4/Sigmoid_2:y:0 lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterы
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_318853*
condR
while_cond_318852*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeч
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
Ћ
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_316401

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeД
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Ћ
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_320333

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeД
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
є
d
H__inference_activation_2_layer_call_and_return_conditional_losses_318559

inputs
identityS
ReluReluinputs*
T0*,
_output_shapes
:џџџџџџџџџ2
Reluk
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
п

G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_320537

inputs
states_0
states_11
matmul_readvariableop_resource:	d3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
	ones_like_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_3Ј
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

IdentityЌ

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
ЏЕ
З
H__inference_sequential_1_layer_call_and_return_conditional_losses_317736

inputsJ
2conv_1_conv1d_expanddims_1_readvariableop_resource:­5
&conv_1_biasadd_readvariableop_resource:	F
7batch_normalization_2_batchnorm_readvariableop_resource:	J
;batch_normalization_2_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_2_batchnorm_readvariableop_1_resource:	H
9batch_normalization_2_batchnorm_readvariableop_2_resource:	E
1lstm_1_lstm_cell_4_matmul_readvariableop_resource:
F
3lstm_1_lstm_cell_4_matmul_1_readvariableop_resource:	dA
2lstm_1_lstm_cell_4_biasadd_readvariableop_resource:	D
1lstm_2_lstm_cell_5_matmul_readvariableop_resource:	dF
3lstm_2_lstm_cell_5_matmul_1_readvariableop_resource:	dA
2lstm_2_lstm_cell_5_biasadd_readvariableop_resource:	4
"fc1_matmul_readvariableop_resource:d21
#fc1_biasadd_readvariableop_resource:2E
7batch_normalization_3_batchnorm_readvariableop_resource:2I
;batch_normalization_3_batchnorm_mul_readvariableop_resource:2G
9batch_normalization_3_batchnorm_readvariableop_1_resource:2G
9batch_normalization_3_batchnorm_readvariableop_2_resource:28
&softmax_matmul_readvariableop_resource:25
'softmax_biasadd_readvariableop_resource:
identityЂ.batch_normalization_2/batchnorm/ReadVariableOpЂ0batch_normalization_2/batchnorm/ReadVariableOp_1Ђ0batch_normalization_2/batchnorm/ReadVariableOp_2Ђ2batch_normalization_2/batchnorm/mul/ReadVariableOpЂ.batch_normalization_3/batchnorm/ReadVariableOpЂ0batch_normalization_3/batchnorm/ReadVariableOp_1Ђ0batch_normalization_3/batchnorm/ReadVariableOp_2Ђ2batch_normalization_3/batchnorm/mul/ReadVariableOpЂconv_1/BiasAdd/ReadVariableOpЂ)conv_1/conv1d/ExpandDims_1/ReadVariableOpЂfc1/BiasAdd/ReadVariableOpЂfc1/MatMul/ReadVariableOpЂ)lstm_1/lstm_cell_4/BiasAdd/ReadVariableOpЂ(lstm_1/lstm_cell_4/MatMul/ReadVariableOpЂ*lstm_1/lstm_cell_4/MatMul_1/ReadVariableOpЂlstm_1/whileЂ)lstm_2/lstm_cell_5/BiasAdd/ReadVariableOpЂ(lstm_2/lstm_cell_5/MatMul/ReadVariableOpЂ*lstm_2/lstm_cell_5/MatMul_1/ReadVariableOpЂlstm_2/whileЂsoftmax/BiasAdd/ReadVariableOpЂsoftmax/MatMul/ReadVariableOp
conv_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2
conv_1/conv1d/ExpandDims/dimЌ
conv_1/conv1d/ExpandDims
ExpandDimsinputs%conv_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ­2
conv_1/conv1d/ExpandDimsЯ
)conv_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:­*
dtype02+
)conv_1/conv1d/ExpandDims_1/ReadVariableOp
conv_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv_1/conv1d/ExpandDims_1/dimе
conv_1/conv1d/ExpandDims_1
ExpandDims1conv_1/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv_1/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:­2
conv_1/conv1d/ExpandDims_1д
conv_1/conv1dConv2D!conv_1/conv1d/ExpandDims:output:0#conv_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
conv_1/conv1dЈ
conv_1/conv1d/SqueezeSqueezeconv_1/conv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ2
conv_1/conv1d/SqueezeЂ
conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
conv_1/BiasAdd/ReadVariableOpЉ
conv_1/BiasAddBiasAddconv_1/conv1d/Squeeze:output:0%conv_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ2
conv_1/BiasAddе
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_2/batchnorm/ReadVariableOp
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_2/batchnorm/add/yс
#batch_normalization_2/batchnorm/addAddV26batch_normalization_2/batchnorm/ReadVariableOp:value:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/addІ
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_2/batchnorm/Rsqrtс
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_2/batchnorm/mul/ReadVariableOpо
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/mulЮ
%batch_normalization_2/batchnorm/mul_1Mulconv_1/BiasAdd:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2'
%batch_normalization_2/batchnorm/mul_1л
0batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype022
0batch_normalization_2/batchnorm/ReadVariableOp_1о
%batch_normalization_2/batchnorm/mul_2Mul8batch_normalization_2/batchnorm/ReadVariableOp_1:value:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_2/batchnorm/mul_2л
0batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype022
0batch_normalization_2/batchnorm/ReadVariableOp_2м
#batch_normalization_2/batchnorm/subSub8batch_normalization_2/batchnorm/ReadVariableOp_2:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/subт
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2'
%batch_normalization_2/batchnorm/add_1
activation_2/ReluRelu)batch_normalization_2/batchnorm/add_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2
activation_2/Relu
dropout_1/IdentityIdentityactivation_2/Relu:activations:0*
T0*,
_output_shapes
:џџџџџџџџџ2
dropout_1/Identityg
lstm_1/ShapeShapedropout_1/Identity:output:0*
T0*
_output_shapes
:2
lstm_1/Shape
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stack
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slicej
lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_1/zeros/mul/y
lstm_1/zeros/mulMullstm_1/strided_slice:output:0lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/mulm
lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_1/zeros/Less/y
lstm_1/zeros/LessLesslstm_1/zeros/mul:z:0lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/Lessp
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_1/zeros/packed/1
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros/packedm
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros/Const
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/zerosn
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_1/zeros_1/mul/y
lstm_1/zeros_1/mulMullstm_1/strided_slice:output:0lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/mulq
lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_1/zeros_1/Less/y
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mul:z:0lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/Lesst
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_1/zeros_1/packed/1Ѕ
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros_1/packedq
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros_1/Const
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/zeros_1
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose/permЅ
lstm_1/transpose	Transposedropout_1/Identity:output:0lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2
lstm_1/transposed
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:2
lstm_1/Shape_1
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_1/stack
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_1
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_2
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slice_1
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"lstm_1/TensorArrayV2/element_shapeЮ
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2Э
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2>
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_1/TensorArrayUnstack/TensorListFromTensor
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_2/stack
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_1
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_2Ї
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
lstm_1/strided_slice_2
"lstm_1/lstm_cell_4/ones_like/ShapeShapelstm_1/strided_slice_2:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_4/ones_like/Shape
"lstm_1/lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_1/lstm_cell_4/ones_like/Constб
lstm_1/lstm_cell_4/ones_likeFill+lstm_1/lstm_cell_4/ones_like/Shape:output:0+lstm_1/lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_4/ones_likeВ
lstm_1/lstm_cell_4/mulMullstm_1/strided_slice_2:output:0%lstm_1/lstm_cell_4/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_4/mulШ
(lstm_1/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp1lstm_1_lstm_cell_4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(lstm_1/lstm_cell_4/MatMul/ReadVariableOpС
lstm_1/lstm_cell_4/MatMulMatMullstm_1/lstm_cell_4/mul:z:00lstm_1/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_4/MatMulЭ
*lstm_1/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp3lstm_1_lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02,
*lstm_1/lstm_cell_4/MatMul_1/ReadVariableOpТ
lstm_1/lstm_cell_4/MatMul_1MatMullstm_1/zeros:output:02lstm_1/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_4/MatMul_1И
lstm_1/lstm_cell_4/addAddV2#lstm_1/lstm_cell_4/MatMul:product:0%lstm_1/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_4/addЦ
)lstm_1/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)lstm_1/lstm_cell_4/BiasAdd/ReadVariableOpХ
lstm_1/lstm_cell_4/BiasAddBiasAddlstm_1/lstm_cell_4/add:z:01lstm_1/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_4/BiasAdd
"lstm_1/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_1/lstm_cell_4/split/split_dim
lstm_1/lstm_cell_4/splitSplit+lstm_1/lstm_cell_4/split/split_dim:output:0#lstm_1/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_1/lstm_cell_4/split
lstm_1/lstm_cell_4/SigmoidSigmoid!lstm_1/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/Sigmoid
lstm_1/lstm_cell_4/Sigmoid_1Sigmoid!lstm_1/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/Sigmoid_1Ј
lstm_1/lstm_cell_4/mul_1Mul lstm_1/lstm_cell_4/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/mul_1
lstm_1/lstm_cell_4/ReluRelu!lstm_1/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/ReluД
lstm_1/lstm_cell_4/mul_2Mullstm_1/lstm_cell_4/Sigmoid:y:0%lstm_1/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/mul_2Ћ
lstm_1/lstm_cell_4/add_1AddV2lstm_1/lstm_cell_4/mul_1:z:0lstm_1/lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/add_1
lstm_1/lstm_cell_4/Sigmoid_2Sigmoid!lstm_1/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/Sigmoid_2
lstm_1/lstm_cell_4/Relu_1Relulstm_1/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/Relu_1И
lstm_1/lstm_cell_4/mul_3Mul lstm_1/lstm_cell_4/Sigmoid_2:y:0'lstm_1/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/mul_3
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2&
$lstm_1/TensorArrayV2_1/element_shapeд
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2_1\
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/time
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
lstm_1/while/maximum_iterationsx
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/while/loop_counterд
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_1_lstm_cell_4_matmul_readvariableop_resource3lstm_1_lstm_cell_4_matmul_1_readvariableop_resource2lstm_1_lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_1_while_body_317462*$
condR
lstm_1_while_cond_317461*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
lstm_1/whileУ
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   29
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02+
)lstm_1/TensorArrayV2Stack/TensorListStack
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
lstm_1/strided_slice_3/stack
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_1/strided_slice_3/stack_1
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_3/stack_2Ф
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
lstm_1/strided_slice_3
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose_1/permС
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
lstm_1/transpose_1t
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/runtimeb
lstm_2/ShapeShapelstm_1/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_2/Shape
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice/stack
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_1
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_2
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slicej
lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_2/zeros/mul/y
lstm_2/zeros/mulMullstm_2/strided_slice:output:0lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/mulm
lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_2/zeros/Less/y
lstm_2/zeros/LessLesslstm_2/zeros/mul:z:0lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/Lessp
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_2/zeros/packed/1
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros/packedm
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros/Const
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/zerosn
lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_2/zeros_1/mul/y
lstm_2/zeros_1/mulMullstm_2/strided_slice:output:0lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/mulq
lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_2/zeros_1/Less/y
lstm_2/zeros_1/LessLesslstm_2/zeros_1/mul:z:0lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/Lesst
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_2/zeros_1/packed/1Ѕ
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros_1/packedq
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros_1/Const
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/zeros_1
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose/perm
lstm_2/transpose	Transposelstm_1/transpose_1:y:0lstm_2/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
lstm_2/transposed
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:2
lstm_2/Shape_1
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_1/stack
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_1
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_2
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slice_1
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"lstm_2/TensorArrayV2/element_shapeЮ
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2Э
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2>
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_2/TensorArrayUnstack/TensorListFromTensor
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_2/stack
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_1
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_2І
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
lstm_2/strided_slice_2
"lstm_2/lstm_cell_5/ones_like/ShapeShapelstm_2/strided_slice_2:output:0*
T0*
_output_shapes
:2$
"lstm_2/lstm_cell_5/ones_like/Shape
"lstm_2/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_2/lstm_cell_5/ones_like/Constа
lstm_2/lstm_cell_5/ones_likeFill+lstm_2/lstm_cell_5/ones_like/Shape:output:0+lstm_2/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/ones_likeБ
lstm_2/lstm_cell_5/mulMullstm_2/strided_slice_2:output:0%lstm_2/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/mulЧ
(lstm_2/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp1lstm_2_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype02*
(lstm_2/lstm_cell_5/MatMul/ReadVariableOpС
lstm_2/lstm_cell_5/MatMulMatMullstm_2/lstm_cell_5/mul:z:00lstm_2/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_5/MatMulЭ
*lstm_2/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02,
*lstm_2/lstm_cell_5/MatMul_1/ReadVariableOpТ
lstm_2/lstm_cell_5/MatMul_1MatMullstm_2/zeros:output:02lstm_2/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_5/MatMul_1И
lstm_2/lstm_cell_5/addAddV2#lstm_2/lstm_cell_5/MatMul:product:0%lstm_2/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_5/addЦ
)lstm_2/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)lstm_2/lstm_cell_5/BiasAdd/ReadVariableOpХ
lstm_2/lstm_cell_5/BiasAddBiasAddlstm_2/lstm_cell_5/add:z:01lstm_2/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_5/BiasAdd
"lstm_2/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_2/lstm_cell_5/split/split_dim
lstm_2/lstm_cell_5/splitSplit+lstm_2/lstm_cell_5/split/split_dim:output:0#lstm_2/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_2/lstm_cell_5/split
lstm_2/lstm_cell_5/SigmoidSigmoid!lstm_2/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/Sigmoid
lstm_2/lstm_cell_5/Sigmoid_1Sigmoid!lstm_2/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/Sigmoid_1Ј
lstm_2/lstm_cell_5/mul_1Mul lstm_2/lstm_cell_5/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/mul_1
lstm_2/lstm_cell_5/ReluRelu!lstm_2/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/ReluД
lstm_2/lstm_cell_5/mul_2Mullstm_2/lstm_cell_5/Sigmoid:y:0%lstm_2/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/mul_2Ћ
lstm_2/lstm_cell_5/add_1AddV2lstm_2/lstm_cell_5/mul_1:z:0lstm_2/lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/add_1
lstm_2/lstm_cell_5/Sigmoid_2Sigmoid!lstm_2/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/Sigmoid_2
lstm_2/lstm_cell_5/Relu_1Relulstm_2/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/Relu_1И
lstm_2/lstm_cell_5/mul_3Mul lstm_2/lstm_cell_5/Sigmoid_2:y:0'lstm_2/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/mul_3
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2&
$lstm_2/TensorArrayV2_1/element_shapeд
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2_1\
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/time
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
lstm_2/while/maximum_iterationsx
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/while/loop_counterд
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_2_lstm_cell_5_matmul_readvariableop_resource3lstm_2_lstm_cell_5_matmul_1_readvariableop_resource2lstm_2_lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_2_while_body_317617*$
condR
lstm_2_while_cond_317616*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
lstm_2/whileУ
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   29
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02+
)lstm_2/TensorArrayV2Stack/TensorListStack
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
lstm_2/strided_slice_3/stack
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_2/strided_slice_3/stack_1
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_3/stack_2Ф
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
lstm_2/strided_slice_3
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose_1/permС
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
lstm_2/transpose_1t
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/runtime
fc1/MatMul/ReadVariableOpReadVariableOp"fc1_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
fc1/MatMul/ReadVariableOp

fc1/MatMulMatMullstm_2/strided_slice_3:output:0!fc1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22

fc1/MatMul
fc1/BiasAdd/ReadVariableOpReadVariableOp#fc1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
fc1/BiasAdd/ReadVariableOp
fc1/BiasAddBiasAddfc1/MatMul:product:0"fc1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22
fc1/BiasAddд
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype020
.batch_normalization_3/batchnorm/ReadVariableOp
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_3/batchnorm/add/yр
#batch_normalization_3/batchnorm/addAddV26batch_normalization_3/batchnorm/ReadVariableOp:value:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:22%
#batch_normalization_3/batchnorm/addЅ
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:22'
%batch_normalization_3/batchnorm/Rsqrtр
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype024
2batch_normalization_3/batchnorm/mul/ReadVariableOpн
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22%
#batch_normalization_3/batchnorm/mulЦ
%batch_normalization_3/batchnorm/mul_1Mulfc1/BiasAdd:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22'
%batch_normalization_3/batchnorm/mul_1к
0batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes
:2*
dtype022
0batch_normalization_3/batchnorm/ReadVariableOp_1н
%batch_normalization_3/batchnorm/mul_2Mul8batch_normalization_3/batchnorm/ReadVariableOp_1:value:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:22'
%batch_normalization_3/batchnorm/mul_2к
0batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes
:2*
dtype022
0batch_normalization_3/batchnorm/ReadVariableOp_2л
#batch_normalization_3/batchnorm/subSub8batch_normalization_3/batchnorm/ReadVariableOp_2:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:22%
#batch_normalization_3/batchnorm/subн
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22'
%batch_normalization_3/batchnorm/add_1
activation_3/ReluRelu)batch_normalization_3/batchnorm/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
activation_3/Relu
dropout_2/IdentityIdentityactivation_3/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_2/IdentityЅ
softmax/MatMul/ReadVariableOpReadVariableOp&softmax_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
softmax/MatMul/ReadVariableOp 
softmax/MatMulMatMuldropout_2/Identity:output:0%softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
softmax/MatMulЄ
softmax/BiasAdd/ReadVariableOpReadVariableOp'softmax_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
softmax/BiasAdd/ReadVariableOpЁ
softmax/BiasAddBiasAddsoftmax/MatMul:product:0&softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
softmax/BiasAddy
softmax/SoftmaxSoftmaxsoftmax/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
softmax/Softmaxё
IdentityIdentitysoftmax/Softmax:softmax:0/^batch_normalization_2/batchnorm/ReadVariableOp1^batch_normalization_2/batchnorm/ReadVariableOp_11^batch_normalization_2/batchnorm/ReadVariableOp_23^batch_normalization_2/batchnorm/mul/ReadVariableOp/^batch_normalization_3/batchnorm/ReadVariableOp1^batch_normalization_3/batchnorm/ReadVariableOp_11^batch_normalization_3/batchnorm/ReadVariableOp_23^batch_normalization_3/batchnorm/mul/ReadVariableOp^conv_1/BiasAdd/ReadVariableOp*^conv_1/conv1d/ExpandDims_1/ReadVariableOp^fc1/BiasAdd/ReadVariableOp^fc1/MatMul/ReadVariableOp*^lstm_1/lstm_cell_4/BiasAdd/ReadVariableOp)^lstm_1/lstm_cell_4/MatMul/ReadVariableOp+^lstm_1/lstm_cell_4/MatMul_1/ReadVariableOp^lstm_1/while*^lstm_2/lstm_cell_5/BiasAdd/ReadVariableOp)^lstm_2/lstm_cell_5/MatMul/ReadVariableOp+^lstm_2/lstm_cell_5/MatMul_1/ReadVariableOp^lstm_2/while^softmax/BiasAdd/ReadVariableOp^softmax/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ­: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2d
0batch_normalization_2/batchnorm/ReadVariableOp_10batch_normalization_2/batchnorm/ReadVariableOp_12d
0batch_normalization_2/batchnorm/ReadVariableOp_20batch_normalization_2/batchnorm/ReadVariableOp_22h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2d
0batch_normalization_3/batchnorm/ReadVariableOp_10batch_normalization_3/batchnorm/ReadVariableOp_12d
0batch_normalization_3/batchnorm/ReadVariableOp_20batch_normalization_3/batchnorm/ReadVariableOp_22h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2>
conv_1/BiasAdd/ReadVariableOpconv_1/BiasAdd/ReadVariableOp2V
)conv_1/conv1d/ExpandDims_1/ReadVariableOp)conv_1/conv1d/ExpandDims_1/ReadVariableOp28
fc1/BiasAdd/ReadVariableOpfc1/BiasAdd/ReadVariableOp26
fc1/MatMul/ReadVariableOpfc1/MatMul/ReadVariableOp2V
)lstm_1/lstm_cell_4/BiasAdd/ReadVariableOp)lstm_1/lstm_cell_4/BiasAdd/ReadVariableOp2T
(lstm_1/lstm_cell_4/MatMul/ReadVariableOp(lstm_1/lstm_cell_4/MatMul/ReadVariableOp2X
*lstm_1/lstm_cell_4/MatMul_1/ReadVariableOp*lstm_1/lstm_cell_4/MatMul_1/ReadVariableOp2
lstm_1/whilelstm_1/while2V
)lstm_2/lstm_cell_5/BiasAdd/ReadVariableOp)lstm_2/lstm_cell_5/BiasAdd/ReadVariableOp2T
(lstm_2/lstm_cell_5/MatMul/ReadVariableOp(lstm_2/lstm_cell_5/MatMul/ReadVariableOp2X
*lstm_2/lstm_cell_5/MatMul_1/ReadVariableOp*lstm_2/lstm_cell_5/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while2@
softmax/BiasAdd/ReadVariableOpsoftmax/BiasAdd/ReadVariableOp2>
softmax/MatMul/ReadVariableOpsoftmax/MatMul/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ­
 
_user_specified_nameinputs
і%
о
while_body_314705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_4_314729_0:
-
while_lstm_cell_4_314731_0:	d)
while_lstm_cell_4_314733_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_4_314729:
+
while_lstm_cell_4_314731:	d'
while_lstm_cell_4_314733:	Ђ)while/lstm_cell_4/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemл
)while/lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_4_314729_0while_lstm_cell_4_314731_0while_lstm_cell_4_314733_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_3146272+
)while/lstm_cell_4/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Т
while/Identity_4Identity2while/lstm_cell_4/StatefulPartitionedCall:output:1*^while/lstm_cell_4/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4Т
while/Identity_5Identity2while/lstm_cell_4/StatefulPartitionedCall:output:2*^while/lstm_cell_4/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_4_314729while_lstm_cell_4_314729_0"6
while_lstm_cell_4_314731while_lstm_cell_4_314731_0"6
while_lstm_cell_4_314733while_lstm_cell_4_314733_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_4/StatefulPartitionedCall)while/lstm_cell_4/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
§^

B__inference_lstm_1_layer_call_and_return_conditional_losses_319132

inputs>
*lstm_cell_4_matmul_readvariableop_resource:
?
,lstm_cell_4_matmul_1_readvariableop_resource:	d:
+lstm_cell_4_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_4/BiasAdd/ReadVariableOpЂ!lstm_cell_4/MatMul/ReadVariableOpЂ#lstm_cell_4/MatMul_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
lstm_cell_4/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_4/ones_like/Shape
lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_4/ones_like/ConstЕ
lstm_cell_4/ones_likeFill$lstm_cell_4/ones_like/Shape:output:0$lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/ones_like
lstm_cell_4/mulMulstrided_slice_2:output:0lstm_cell_4/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mulГ
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOpЅ
lstm_cell_4/MatMulMatMullstm_cell_4/mul:z:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/MatMulИ
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOpІ
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/MatMul_1
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/addБ
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOpЉ
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/BiasAdd|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dimя
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_cell_4/split
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid_1
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_1z
lstm_cell_4/ReluRelulstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Relu
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_2
lstm_cell_4/add_1AddV2lstm_cell_4/mul_1:z:0lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/add_1
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid_2y
lstm_cell_4/Relu_1Relulstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Relu_1
lstm_cell_4/mul_3Mullstm_cell_4/Sigmoid_2:y:0 lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterы
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_319044*
condR
while_cond_319043*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeо
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ: : : 2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ц
Ж
'__inference_lstm_2_layer_call_fn_320185
inputs_0
unknown:	d
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_3154442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
жG
Ч
while_body_319852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_5_matmul_readvariableop_resource_0:	dG
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:	dB
3while_lstm_cell_5_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_5_matmul_readvariableop_resource:	dE
2while_lstm_cell_5_matmul_1_readvariableop_resource:	d@
1while_lstm_cell_5_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_5/BiasAdd/ReadVariableOpЂ'while/lstm_cell_5/MatMul/ReadVariableOpЂ)while/lstm_cell_5/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_5/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_5/ones_like/ConstЬ
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/ones_likeП
while/lstm_cell_5/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mulЦ
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOpН
while/lstm_cell_5/MatMulMatMulwhile/lstm_cell_5/mul:z:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/MatMulЬ
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOpН
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/MatMul_1Д
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/addХ
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOpС
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/BiasAdd
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/lstm_cell_5/split
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid_1Ё
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_1
while/lstm_cell_5/ReluRelu while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/ReluА
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_2Ї
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul_1:z:0while/lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/add_1
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid_2
while/lstm_cell_5/Relu_1Reluwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Relu_1Д
while/lstm_cell_5/mul_3Mulwhile/lstm_cell_5/Sigmoid_2:y:0&while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_3:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
е
У
while_cond_319660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_319660___redundant_placeholder04
0while_while_cond_319660___redundant_placeholder14
0while_while_cond_319660___redundant_placeholder24
0while_while_cond_319660___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
р
d
H__inference_activation_3_layer_call_and_return_conditional_losses_320311

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:џџџџџџџџџ22
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs


$__inference_signature_wrapper_317362
input_2
unknown:­
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	d
	unknown_7:	
	unknown_8:	d
	unknown_9:	d

unknown_10:	

unknown_11:d2

unknown_12:2

unknown_13:2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:2

unknown_18:
identityЂStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_3142042
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ­: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџ­
!
_user_specified_name	input_2
фy
Щ
while_body_318853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_4_matmul_readvariableop_resource_0:
G
4while_lstm_cell_4_matmul_1_readvariableop_resource_0:	dB
3while_lstm_cell_4_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_4_matmul_readvariableop_resource:
E
2while_lstm_cell_4_matmul_1_readvariableop_resource:	d@
1while_lstm_cell_4_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_4/BiasAdd/ReadVariableOpЂ'while/lstm_cell_4/MatMul/ReadVariableOpЂ)while/lstm_cell_4/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_4/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/ones_like/Shape
!while/lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_4/ones_like/ConstЭ
while/lstm_cell_4/ones_likeFill*while/lstm_cell_4/ones_like/Shape:output:0*while/lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/ones_like
while/lstm_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_4/dropout/ConstШ
while/lstm_cell_4/dropout/MulMul$while/lstm_cell_4/ones_like:output:0(while/lstm_cell_4/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/dropout/Mul
while/lstm_cell_4/dropout/ShapeShape$while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_4/dropout/Shape
6while/lstm_cell_4/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_4/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2Зu28
6while/lstm_cell_4/dropout/random_uniform/RandomUniform
(while/lstm_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2*
(while/lstm_cell_4/dropout/GreaterEqual/y
&while/lstm_cell_4/dropout/GreaterEqualGreaterEqual?while/lstm_cell_4/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&while/lstm_cell_4/dropout/GreaterEqualЖ
while/lstm_cell_4/dropout/CastCast*while/lstm_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2 
while/lstm_cell_4/dropout/CastУ
while/lstm_cell_4/dropout/Mul_1Mul!while/lstm_cell_4/dropout/Mul:z:0"while/lstm_cell_4/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_4/dropout/Mul_1
!while/lstm_cell_4/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_4/dropout_1/ConstЮ
while/lstm_cell_4/dropout_1/MulMul$while/lstm_cell_4/ones_like:output:0*while/lstm_cell_4/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_4/dropout_1/Mul
!while/lstm_cell_4/dropout_1/ShapeShape$while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/dropout_1/Shape
8while/lstm_cell_4/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_4/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2Бш2:
8while/lstm_cell_4/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_4/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_4/dropout_1/GreaterEqual/y
(while/lstm_cell_4/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_4/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_4/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_4/dropout_1/GreaterEqualМ
 while/lstm_cell_4/dropout_1/CastCast,while/lstm_cell_4/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_4/dropout_1/CastЫ
!while/lstm_cell_4/dropout_1/Mul_1Mul#while/lstm_cell_4/dropout_1/Mul:z:0$while/lstm_cell_4/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_4/dropout_1/Mul_1
!while/lstm_cell_4/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_4/dropout_2/ConstЮ
while/lstm_cell_4/dropout_2/MulMul$while/lstm_cell_4/ones_like:output:0*while/lstm_cell_4/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_4/dropout_2/Mul
!while/lstm_cell_4/dropout_2/ShapeShape$while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/dropout_2/Shape
8while/lstm_cell_4/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_4/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ћиВ2:
8while/lstm_cell_4/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_4/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_4/dropout_2/GreaterEqual/y
(while/lstm_cell_4/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_4/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_4/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_4/dropout_2/GreaterEqualМ
 while/lstm_cell_4/dropout_2/CastCast,while/lstm_cell_4/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_4/dropout_2/CastЫ
!while/lstm_cell_4/dropout_2/Mul_1Mul#while/lstm_cell_4/dropout_2/Mul:z:0$while/lstm_cell_4/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_4/dropout_2/Mul_1
!while/lstm_cell_4/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_4/dropout_3/ConstЮ
while/lstm_cell_4/dropout_3/MulMul$while/lstm_cell_4/ones_like:output:0*while/lstm_cell_4/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_4/dropout_3/Mul
!while/lstm_cell_4/dropout_3/ShapeShape$while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/dropout_3/Shape
8while/lstm_cell_4/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_4/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЇГЯ2:
8while/lstm_cell_4/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_4/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_4/dropout_3/GreaterEqual/y
(while/lstm_cell_4/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_4/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_4/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_4/dropout_3/GreaterEqualМ
 while/lstm_cell_4/dropout_3/CastCast,while/lstm_cell_4/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_4/dropout_3/CastЫ
!while/lstm_cell_4/dropout_3/Mul_1Mul#while/lstm_cell_4/dropout_3/Mul:z:0$while/lstm_cell_4/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_4/dropout_3/Mul_1П
while/lstm_cell_4/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_4/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mulЧ
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOpН
while/lstm_cell_4/MatMulMatMulwhile/lstm_cell_4/mul:z:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/MatMulЬ
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOpН
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/MatMul_1Д
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/addХ
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOpС
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/BiasAdd
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/lstm_cell_4/split
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid_1Ё
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_1
while/lstm_cell_4/ReluRelu while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/ReluА
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid:y:0$while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_2Ї
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul_1:z:0while/lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/add_1
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid_2
while/lstm_cell_4/Relu_1Reluwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Relu_1Д
while/lstm_cell_4/mul_3Mulwhile/lstm_cell_4/Sigmoid_2:y:0&while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_4/mul_3:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
иC

G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_320467

inputs
states_0
states_12
matmul_readvariableop_resource:
3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shapeг
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2вкF2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yП
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeк
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2уш2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_1/GreaterEqual/yЧ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeк
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed22(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_2/GreaterEqual/yЧ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeк
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2Чд2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_3/GreaterEqual/yЧ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_3/Mul_1_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_3Ј
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

IdentityЌ

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
х

G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_320399

inputs
states_0
states_12
matmul_readvariableop_resource:
3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	ones_like`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_3Ј
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

IdentityЌ

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
е
У
while_cond_320042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_320042___redundant_placeholder04
0while_while_cond_320042___redundant_placeholder14
0while_while_cond_320042___redundant_placeholder24
0while_while_cond_320042___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
ѓ%
м
while_body_315129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_5_315153_0:	d-
while_lstm_cell_5_315155_0:	d)
while_lstm_cell_5_315157_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_5_315153:	d+
while_lstm_cell_5_315155:	d'
while_lstm_cell_5_315157:	Ђ)while/lstm_cell_5/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemл
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_315153_0while_lstm_cell_5_315155_0while_lstm_cell_5_315157_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_3151152+
)while/lstm_cell_5/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Т
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1*^while/lstm_cell_5/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4Т
while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2*^while/lstm_cell_5/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_5_315153while_lstm_cell_5_315153_0"6
while_lstm_cell_5_315155while_lstm_cell_5_315155_0"6
while_lstm_cell_5_315157while_lstm_cell_5_315157_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
С7
а
H__inference_sequential_1_layer_call_and_return_conditional_losses_316328

inputs%
conv_1_315891:­
conv_1_315893:	+
batch_normalization_2_315916:	+
batch_normalization_2_315918:	+
batch_normalization_2_315920:	+
batch_normalization_2_315922:	!
lstm_1_316098:
 
lstm_1_316100:	d
lstm_1_316102:	 
lstm_2_316264:	d 
lstm_2_316266:	d
lstm_2_316268:	

fc1_316282:d2

fc1_316284:2*
batch_normalization_3_316287:2*
batch_normalization_3_316289:2*
batch_normalization_3_316291:2*
batch_normalization_3_316293:2 
softmax_316322:2
softmax_316324:
identityЂ-batch_normalization_2/StatefulPartitionedCallЂ-batch_normalization_3/StatefulPartitionedCallЂconv_1/StatefulPartitionedCallЂfc1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCallЂlstm_2/StatefulPartitionedCallЂsoftmax/StatefulPartitionedCall
conv_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_1_315891conv_1_315893*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_3158902 
conv_1/StatefulPartitionedCallЛ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0batch_normalization_2_315916batch_normalization_2_315918batch_normalization_2_315920batch_normalization_2_315922*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3159152/
-batch_normalization_2/StatefulPartitionedCall
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_2_layer_call_and_return_conditional_losses_3159302
activation_2/PartitionedCallћ
dropout_1/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3159372
dropout_1/PartitionedCallЛ
lstm_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0lstm_1_316098lstm_1_316100lstm_1_316102*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3160972 
lstm_1/StatefulPartitionedCallМ
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_316264lstm_2_316266lstm_2_316268*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_3162632 
lstm_2/StatefulPartitionedCall
fc1/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0
fc1_316282
fc1_316284*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_3162812
fc1/StatefulPartitionedCallГ
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall$fc1/StatefulPartitionedCall:output:0batch_normalization_3_316287batch_normalization_3_316289batch_normalization_3_316291batch_normalization_3_316293*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_3157302/
-batch_normalization_3/StatefulPartitionedCall
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_3163012
activation_3/PartitionedCallі
dropout_2/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3163082
dropout_2/PartitionedCallЋ
softmax/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0softmax_316322softmax_316324*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_3163212!
softmax/StatefulPartitionedCallџ
IdentityIdentity(softmax/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv_1/StatefulPartitionedCall^fc1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall ^softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ­: : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2B
softmax/StatefulPartitionedCallsoftmax/StatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ­
 
_user_specified_nameinputs

А
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_320246

inputs/
!batchnorm_readvariableop_resource:23
%batchnorm_mul_readvariableop_resource:21
#batchnorm_readvariableop_1_resource:21
#batchnorm_readvariableop_2_resource:2
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:22
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:22
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:22
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:22
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
batchnorm/add_1л
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ2: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
е
У
while_cond_316780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_316780___redundant_placeholder04
0while_while_cond_316780___redundant_placeholder14
0while_while_cond_316780___redundant_placeholder24
0while_while_cond_316780___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Ы	
№
?__inference_fc1_layer_call_and_return_conditional_losses_316281

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
с
Ф
__inference__traced_save_320857
file_prefix,
(savev2_conv_1_kernel_read_readvariableop*
&savev2_conv_1_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop)
%savev2_fc1_kernel_read_readvariableop'
#savev2_fc1_bias_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop-
)savev2_softmax_kernel_read_readvariableop+
'savev2_softmax_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_1_lstm_cell_4_kernel_read_readvariableopB
>savev2_lstm_1_lstm_cell_4_recurrent_kernel_read_readvariableop6
2savev2_lstm_1_lstm_cell_4_bias_read_readvariableop8
4savev2_lstm_2_lstm_cell_5_kernel_read_readvariableopB
>savev2_lstm_2_lstm_cell_5_recurrent_kernel_read_readvariableop6
2savev2_lstm_2_lstm_cell_5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop/
+savev2_true_positives_1_read_readvariableop.
*savev2_false_positives_read_readvariableop3
/savev2_adam_conv_1_kernel_m_read_readvariableop1
-savev2_adam_conv_1_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_m_read_readvariableop0
,savev2_adam_fc1_kernel_m_read_readvariableop.
*savev2_adam_fc1_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_3_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_3_beta_m_read_readvariableop4
0savev2_adam_softmax_kernel_m_read_readvariableop2
.savev2_adam_softmax_bias_m_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_4_kernel_m_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_4_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_4_bias_m_read_readvariableop?
;savev2_adam_lstm_2_lstm_cell_5_kernel_m_read_readvariableopI
Esavev2_adam_lstm_2_lstm_cell_5_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_2_lstm_cell_5_bias_m_read_readvariableop3
/savev2_adam_conv_1_kernel_v_read_readvariableop1
-savev2_adam_conv_1_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_v_read_readvariableop0
,savev2_adam_fc1_kernel_v_read_readvariableop.
*savev2_adam_fc1_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_3_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_3_beta_v_read_readvariableop4
0savev2_adam_softmax_kernel_v_read_readvariableop2
.savev2_adam_softmax_bias_v_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_4_kernel_v_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_4_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_4_bias_v_read_readvariableop?
;savev2_adam_lstm_2_lstm_cell_5_kernel_v_read_readvariableopI
Esavev2_adam_lstm_2_lstm_cell_5_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_2_lstm_cell_5_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameШ#
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*к"
valueа"BЭ"BB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*
valueBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЯ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv_1_kernel_read_readvariableop&savev2_conv_1_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop%savev2_fc1_kernel_read_readvariableop#savev2_fc1_bias_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop)savev2_softmax_kernel_read_readvariableop'savev2_softmax_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_1_lstm_cell_4_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_4_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_4_bias_read_readvariableop4savev2_lstm_2_lstm_cell_5_kernel_read_readvariableop>savev2_lstm_2_lstm_cell_5_recurrent_kernel_read_readvariableop2savev2_lstm_2_lstm_cell_5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_negatives_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_positives_read_readvariableop/savev2_adam_conv_1_kernel_m_read_readvariableop-savev2_adam_conv_1_bias_m_read_readvariableop=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop<savev2_adam_batch_normalization_2_beta_m_read_readvariableop,savev2_adam_fc1_kernel_m_read_readvariableop*savev2_adam_fc1_bias_m_read_readvariableop=savev2_adam_batch_normalization_3_gamma_m_read_readvariableop<savev2_adam_batch_normalization_3_beta_m_read_readvariableop0savev2_adam_softmax_kernel_m_read_readvariableop.savev2_adam_softmax_bias_m_read_readvariableop;savev2_adam_lstm_1_lstm_cell_4_kernel_m_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_4_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_1_lstm_cell_4_bias_m_read_readvariableop;savev2_adam_lstm_2_lstm_cell_5_kernel_m_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_5_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_2_lstm_cell_5_bias_m_read_readvariableop/savev2_adam_conv_1_kernel_v_read_readvariableop-savev2_adam_conv_1_bias_v_read_readvariableop=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop<savev2_adam_batch_normalization_2_beta_v_read_readvariableop,savev2_adam_fc1_kernel_v_read_readvariableop*savev2_adam_fc1_bias_v_read_readvariableop=savev2_adam_batch_normalization_3_gamma_v_read_readvariableop<savev2_adam_batch_normalization_3_beta_v_read_readvariableop0savev2_adam_softmax_kernel_v_read_readvariableop.savev2_adam_softmax_bias_v_read_readvariableop;savev2_adam_lstm_1_lstm_cell_4_kernel_v_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_4_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_1_lstm_cell_4_bias_v_read_readvariableop;savev2_adam_lstm_2_lstm_cell_5_kernel_v_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_5_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_2_lstm_cell_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *P
dtypesF
D2B	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapesя
ь: :­::::::d2:2:2:2:2:2:2:: : : : : :
:	d::	d:	d:: : : : :::::­::::d2:2:2:2:2::
:	d::	d:	d::­::::d2:2:2:2:2::
:	d::	d:	d:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:*&
$
_output_shapes
:­:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::$ 

_output_shapes

:d2: 

_output_shapes
:2: 	

_output_shapes
:2: 


_output_shapes
:2: 

_output_shapes
:2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:%!

_output_shapes
:	d:!

_output_shapes	
::%!

_output_shapes
:	d:%!

_output_shapes
:	d:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::  

_output_shapes
:: !

_output_shapes
::*"&
$
_output_shapes
:­:!#

_output_shapes	
::!$

_output_shapes	
::!%

_output_shapes	
::$& 

_output_shapes

:d2: '

_output_shapes
:2: (

_output_shapes
:2: )

_output_shapes
:2:$* 

_output_shapes

:2: +

_output_shapes
::&,"
 
_output_shapes
:
:%-!

_output_shapes
:	d:!.

_output_shapes	
::%/!

_output_shapes
:	d:%0!

_output_shapes
:	d:!1

_output_shapes	
::*2&
$
_output_shapes
:­:!3

_output_shapes	
::!4

_output_shapes	
::!5

_output_shapes	
::$6 

_output_shapes

:d2: 7

_output_shapes
:2: 8

_output_shapes
:2: 9

_output_shapes
:2:$: 

_output_shapes

:2: ;

_output_shapes
::&<"
 
_output_shapes
:
:%=!

_output_shapes
:	d:!>

_output_shapes	
::%?!

_output_shapes
:	d:%@!

_output_shapes
:	d:!A

_output_shapes	
::B

_output_shapes
: 

c
E__inference_dropout_1_layer_call_and_return_conditional_losses_315937

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е
У
while_cond_318852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_318852___redundant_placeholder04
0while_while_cond_318852___redundant_placeholder14
0while_while_cond_318852___redundant_placeholder24
0while_while_cond_318852___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
о
c
*__inference_dropout_1_layer_call_fn_318591

inputs
identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3169302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ьџ
Г
!__inference__wrapped_model_314204
input_2W
?sequential_1_conv_1_conv1d_expanddims_1_readvariableop_resource:­B
3sequential_1_conv_1_biasadd_readvariableop_resource:	S
Dsequential_1_batch_normalization_2_batchnorm_readvariableop_resource:	W
Hsequential_1_batch_normalization_2_batchnorm_mul_readvariableop_resource:	U
Fsequential_1_batch_normalization_2_batchnorm_readvariableop_1_resource:	U
Fsequential_1_batch_normalization_2_batchnorm_readvariableop_2_resource:	R
>sequential_1_lstm_1_lstm_cell_4_matmul_readvariableop_resource:
S
@sequential_1_lstm_1_lstm_cell_4_matmul_1_readvariableop_resource:	dN
?sequential_1_lstm_1_lstm_cell_4_biasadd_readvariableop_resource:	Q
>sequential_1_lstm_2_lstm_cell_5_matmul_readvariableop_resource:	dS
@sequential_1_lstm_2_lstm_cell_5_matmul_1_readvariableop_resource:	dN
?sequential_1_lstm_2_lstm_cell_5_biasadd_readvariableop_resource:	A
/sequential_1_fc1_matmul_readvariableop_resource:d2>
0sequential_1_fc1_biasadd_readvariableop_resource:2R
Dsequential_1_batch_normalization_3_batchnorm_readvariableop_resource:2V
Hsequential_1_batch_normalization_3_batchnorm_mul_readvariableop_resource:2T
Fsequential_1_batch_normalization_3_batchnorm_readvariableop_1_resource:2T
Fsequential_1_batch_normalization_3_batchnorm_readvariableop_2_resource:2E
3sequential_1_softmax_matmul_readvariableop_resource:2B
4sequential_1_softmax_biasadd_readvariableop_resource:
identityЂ;sequential_1/batch_normalization_2/batchnorm/ReadVariableOpЂ=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_1Ђ=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_2Ђ?sequential_1/batch_normalization_2/batchnorm/mul/ReadVariableOpЂ;sequential_1/batch_normalization_3/batchnorm/ReadVariableOpЂ=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_1Ђ=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_2Ђ?sequential_1/batch_normalization_3/batchnorm/mul/ReadVariableOpЂ*sequential_1/conv_1/BiasAdd/ReadVariableOpЂ6sequential_1/conv_1/conv1d/ExpandDims_1/ReadVariableOpЂ'sequential_1/fc1/BiasAdd/ReadVariableOpЂ&sequential_1/fc1/MatMul/ReadVariableOpЂ6sequential_1/lstm_1/lstm_cell_4/BiasAdd/ReadVariableOpЂ5sequential_1/lstm_1/lstm_cell_4/MatMul/ReadVariableOpЂ7sequential_1/lstm_1/lstm_cell_4/MatMul_1/ReadVariableOpЂsequential_1/lstm_1/whileЂ6sequential_1/lstm_2/lstm_cell_5/BiasAdd/ReadVariableOpЂ5sequential_1/lstm_2/lstm_cell_5/MatMul/ReadVariableOpЂ7sequential_1/lstm_2/lstm_cell_5/MatMul_1/ReadVariableOpЂsequential_1/lstm_2/whileЂ+sequential_1/softmax/BiasAdd/ReadVariableOpЂ*sequential_1/softmax/MatMul/ReadVariableOpЁ
)sequential_1/conv_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2+
)sequential_1/conv_1/conv1d/ExpandDims/dimд
%sequential_1/conv_1/conv1d/ExpandDims
ExpandDimsinput_22sequential_1/conv_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ­2'
%sequential_1/conv_1/conv1d/ExpandDimsі
6sequential_1/conv_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp?sequential_1_conv_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:­*
dtype028
6sequential_1/conv_1/conv1d/ExpandDims_1/ReadVariableOp
+sequential_1/conv_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_1/conv_1/conv1d/ExpandDims_1/dim
'sequential_1/conv_1/conv1d/ExpandDims_1
ExpandDims>sequential_1/conv_1/conv1d/ExpandDims_1/ReadVariableOp:value:04sequential_1/conv_1/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:­2)
'sequential_1/conv_1/conv1d/ExpandDims_1
sequential_1/conv_1/conv1dConv2D.sequential_1/conv_1/conv1d/ExpandDims:output:00sequential_1/conv_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
sequential_1/conv_1/conv1dЯ
"sequential_1/conv_1/conv1d/SqueezeSqueeze#sequential_1/conv_1/conv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ2$
"sequential_1/conv_1/conv1d/SqueezeЩ
*sequential_1/conv_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_conv_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential_1/conv_1/BiasAdd/ReadVariableOpн
sequential_1/conv_1/BiasAddBiasAdd+sequential_1/conv_1/conv1d/Squeeze:output:02sequential_1/conv_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ2
sequential_1/conv_1/BiasAddќ
;sequential_1/batch_normalization_2/batchnorm/ReadVariableOpReadVariableOpDsequential_1_batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02=
;sequential_1/batch_normalization_2/batchnorm/ReadVariableOp­
2sequential_1/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:24
2sequential_1/batch_normalization_2/batchnorm/add/y
0sequential_1/batch_normalization_2/batchnorm/addAddV2Csequential_1/batch_normalization_2/batchnorm/ReadVariableOp:value:0;sequential_1/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:22
0sequential_1/batch_normalization_2/batchnorm/addЭ
2sequential_1/batch_normalization_2/batchnorm/RsqrtRsqrt4sequential_1/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:24
2sequential_1/batch_normalization_2/batchnorm/Rsqrt
?sequential_1/batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_1_batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02A
?sequential_1/batch_normalization_2/batchnorm/mul/ReadVariableOp
0sequential_1/batch_normalization_2/batchnorm/mulMul6sequential_1/batch_normalization_2/batchnorm/Rsqrt:y:0Gsequential_1/batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:22
0sequential_1/batch_normalization_2/batchnorm/mul
2sequential_1/batch_normalization_2/batchnorm/mul_1Mul$sequential_1/conv_1/BiasAdd:output:04sequential_1/batch_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџ24
2sequential_1/batch_normalization_2/batchnorm/mul_1
=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_1_batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02?
=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_1
2sequential_1/batch_normalization_2/batchnorm/mul_2MulEsequential_1/batch_normalization_2/batchnorm/ReadVariableOp_1:value:04sequential_1/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:24
2sequential_1/batch_normalization_2/batchnorm/mul_2
=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_1_batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02?
=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_2
0sequential_1/batch_normalization_2/batchnorm/subSubEsequential_1/batch_normalization_2/batchnorm/ReadVariableOp_2:value:06sequential_1/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:22
0sequential_1/batch_normalization_2/batchnorm/sub
2sequential_1/batch_normalization_2/batchnorm/add_1AddV26sequential_1/batch_normalization_2/batchnorm/mul_1:z:04sequential_1/batch_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџ24
2sequential_1/batch_normalization_2/batchnorm/add_1З
sequential_1/activation_2/ReluRelu6sequential_1/batch_normalization_2/batchnorm/add_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2 
sequential_1/activation_2/ReluГ
sequential_1/dropout_1/IdentityIdentity,sequential_1/activation_2/Relu:activations:0*
T0*,
_output_shapes
:џџџџџџџџџ2!
sequential_1/dropout_1/Identity
sequential_1/lstm_1/ShapeShape(sequential_1/dropout_1/Identity:output:0*
T0*
_output_shapes
:2
sequential_1/lstm_1/Shape
'sequential_1/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_1/strided_slice/stack 
)sequential_1/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_1 
)sequential_1/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_2к
!sequential_1/lstm_1/strided_sliceStridedSlice"sequential_1/lstm_1/Shape:output:00sequential_1/lstm_1/strided_slice/stack:output:02sequential_1/lstm_1/strided_slice/stack_1:output:02sequential_1/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_1/strided_slice
sequential_1/lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2!
sequential_1/lstm_1/zeros/mul/yМ
sequential_1/lstm_1/zeros/mulMul*sequential_1/lstm_1/strided_slice:output:0(sequential_1/lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/zeros/mul
 sequential_1/lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2"
 sequential_1/lstm_1/zeros/Less/yЗ
sequential_1/lstm_1/zeros/LessLess!sequential_1/lstm_1/zeros/mul:z:0)sequential_1/lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/zeros/Less
"sequential_1/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2$
"sequential_1/lstm_1/zeros/packed/1г
 sequential_1/lstm_1/zeros/packedPack*sequential_1/lstm_1/strided_slice:output:0+sequential_1/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_1/zeros/packed
sequential_1/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_1/zeros/ConstХ
sequential_1/lstm_1/zerosFill)sequential_1/lstm_1/zeros/packed:output:0(sequential_1/lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
sequential_1/lstm_1/zeros
!sequential_1/lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2#
!sequential_1/lstm_1/zeros_1/mul/yТ
sequential_1/lstm_1/zeros_1/mulMul*sequential_1/lstm_1/strided_slice:output:0*sequential_1/lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/zeros_1/mul
"sequential_1/lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential_1/lstm_1/zeros_1/Less/yП
 sequential_1/lstm_1/zeros_1/LessLess#sequential_1/lstm_1/zeros_1/mul:z:0+sequential_1/lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_1/zeros_1/Less
$sequential_1/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2&
$sequential_1/lstm_1/zeros_1/packed/1й
"sequential_1/lstm_1/zeros_1/packedPack*sequential_1/lstm_1/strided_slice:output:0-sequential_1/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_1/zeros_1/packed
!sequential_1/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_1/zeros_1/ConstЭ
sequential_1/lstm_1/zeros_1Fill+sequential_1/lstm_1/zeros_1/packed:output:0*sequential_1/lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
sequential_1/lstm_1/zeros_1
"sequential_1/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_1/transpose/permй
sequential_1/lstm_1/transpose	Transpose(sequential_1/dropout_1/Identity:output:0+sequential_1/lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2
sequential_1/lstm_1/transpose
sequential_1/lstm_1/Shape_1Shape!sequential_1/lstm_1/transpose:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_1/Shape_1 
)sequential_1/lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_1/strided_slice_1/stackЄ
+sequential_1/lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_1/stack_1Є
+sequential_1/lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_1/stack_2ц
#sequential_1/lstm_1/strided_slice_1StridedSlice$sequential_1/lstm_1/Shape_1:output:02sequential_1/lstm_1/strided_slice_1/stack:output:04sequential_1/lstm_1/strided_slice_1/stack_1:output:04sequential_1/lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_1­
/sequential_1/lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ21
/sequential_1/lstm_1/TensorArrayV2/element_shape
!sequential_1/lstm_1/TensorArrayV2TensorListReserve8sequential_1/lstm_1/TensorArrayV2/element_shape:output:0,sequential_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_1/TensorArrayV2ч
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2K
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeШ
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_1/transpose:y:0Rsequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor 
)sequential_1/lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_1/strided_slice_2/stackЄ
+sequential_1/lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_2/stack_1Є
+sequential_1/lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_2/stack_2ѕ
#sequential_1/lstm_1/strided_slice_2StridedSlice!sequential_1/lstm_1/transpose:y:02sequential_1/lstm_1/strided_slice_2/stack:output:04sequential_1/lstm_1/strided_slice_2/stack_1:output:04sequential_1/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_2О
/sequential_1/lstm_1/lstm_cell_4/ones_like/ShapeShape,sequential_1/lstm_1/strided_slice_2:output:0*
T0*
_output_shapes
:21
/sequential_1/lstm_1/lstm_cell_4/ones_like/ShapeЇ
/sequential_1/lstm_1/lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?21
/sequential_1/lstm_1/lstm_cell_4/ones_like/Const
)sequential_1/lstm_1/lstm_cell_4/ones_likeFill8sequential_1/lstm_1/lstm_cell_4/ones_like/Shape:output:08sequential_1/lstm_1/lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_1/lstm_cell_4/ones_likeц
#sequential_1/lstm_1/lstm_cell_4/mulMul,sequential_1/lstm_1/strided_slice_2:output:02sequential_1/lstm_1/lstm_cell_4/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2%
#sequential_1/lstm_1/lstm_cell_4/mulя
5sequential_1/lstm_1/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp>sequential_1_lstm_1_lstm_cell_4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype027
5sequential_1/lstm_1/lstm_cell_4/MatMul/ReadVariableOpѕ
&sequential_1/lstm_1/lstm_cell_4/MatMulMatMul'sequential_1/lstm_1/lstm_cell_4/mul:z:0=sequential_1/lstm_1/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&sequential_1/lstm_1/lstm_cell_4/MatMulє
7sequential_1/lstm_1/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp@sequential_1_lstm_1_lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype029
7sequential_1/lstm_1/lstm_cell_4/MatMul_1/ReadVariableOpі
(sequential_1/lstm_1/lstm_cell_4/MatMul_1MatMul"sequential_1/lstm_1/zeros:output:0?sequential_1/lstm_1/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(sequential_1/lstm_1/lstm_cell_4/MatMul_1ь
#sequential_1/lstm_1/lstm_cell_4/addAddV20sequential_1/lstm_1/lstm_cell_4/MatMul:product:02sequential_1/lstm_1/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2%
#sequential_1/lstm_1/lstm_cell_4/addэ
6sequential_1/lstm_1/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_lstm_1_lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype028
6sequential_1/lstm_1/lstm_cell_4/BiasAdd/ReadVariableOpљ
'sequential_1/lstm_1/lstm_cell_4/BiasAddBiasAdd'sequential_1/lstm_1/lstm_cell_4/add:z:0>sequential_1/lstm_1/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2)
'sequential_1/lstm_1/lstm_cell_4/BiasAddЄ
/sequential_1/lstm_1/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_1/lstm_1/lstm_cell_4/split/split_dimП
%sequential_1/lstm_1/lstm_cell_4/splitSplit8sequential_1/lstm_1/lstm_cell_4/split/split_dim:output:00sequential_1/lstm_1/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2'
%sequential_1/lstm_1/lstm_cell_4/splitП
'sequential_1/lstm_1/lstm_cell_4/SigmoidSigmoid.sequential_1/lstm_1/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2)
'sequential_1/lstm_1/lstm_cell_4/SigmoidУ
)sequential_1/lstm_1/lstm_cell_4/Sigmoid_1Sigmoid.sequential_1/lstm_1/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2+
)sequential_1/lstm_1/lstm_cell_4/Sigmoid_1м
%sequential_1/lstm_1/lstm_cell_4/mul_1Mul-sequential_1/lstm_1/lstm_cell_4/Sigmoid_1:y:0$sequential_1/lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2'
%sequential_1/lstm_1/lstm_cell_4/mul_1Ж
$sequential_1/lstm_1/lstm_cell_4/ReluRelu.sequential_1/lstm_1/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2&
$sequential_1/lstm_1/lstm_cell_4/Reluш
%sequential_1/lstm_1/lstm_cell_4/mul_2Mul+sequential_1/lstm_1/lstm_cell_4/Sigmoid:y:02sequential_1/lstm_1/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2'
%sequential_1/lstm_1/lstm_cell_4/mul_2п
%sequential_1/lstm_1/lstm_cell_4/add_1AddV2)sequential_1/lstm_1/lstm_cell_4/mul_1:z:0)sequential_1/lstm_1/lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2'
%sequential_1/lstm_1/lstm_cell_4/add_1У
)sequential_1/lstm_1/lstm_cell_4/Sigmoid_2Sigmoid.sequential_1/lstm_1/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2+
)sequential_1/lstm_1/lstm_cell_4/Sigmoid_2Е
&sequential_1/lstm_1/lstm_cell_4/Relu_1Relu)sequential_1/lstm_1/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2(
&sequential_1/lstm_1/lstm_cell_4/Relu_1ь
%sequential_1/lstm_1/lstm_cell_4/mul_3Mul-sequential_1/lstm_1/lstm_cell_4/Sigmoid_2:y:04sequential_1/lstm_1/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2'
%sequential_1/lstm_1/lstm_cell_4/mul_3З
1sequential_1/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   23
1sequential_1/lstm_1/TensorArrayV2_1/element_shape
#sequential_1/lstm_1/TensorArrayV2_1TensorListReserve:sequential_1/lstm_1/TensorArrayV2_1/element_shape:output:0,sequential_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_1/lstm_1/TensorArrayV2_1v
sequential_1/lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_1/lstm_1/timeЇ
,sequential_1/lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2.
,sequential_1/lstm_1/while/maximum_iterations
&sequential_1/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_1/while/loop_counter
sequential_1/lstm_1/whileWhile/sequential_1/lstm_1/while/loop_counter:output:05sequential_1/lstm_1/while/maximum_iterations:output:0!sequential_1/lstm_1/time:output:0,sequential_1/lstm_1/TensorArrayV2_1:handle:0"sequential_1/lstm_1/zeros:output:0$sequential_1/lstm_1/zeros_1:output:0,sequential_1/lstm_1/strided_slice_1:output:0Ksequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_1_lstm_1_lstm_cell_4_matmul_readvariableop_resource@sequential_1_lstm_1_lstm_cell_4_matmul_1_readvariableop_resource?sequential_1_lstm_1_lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_1_lstm_1_while_body_313930*1
cond)R'
%sequential_1_lstm_1_while_cond_313929*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
sequential_1/lstm_1/whileн
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2F
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeИ
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_1/while:output:3Msequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype028
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStackЉ
)sequential_1/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2+
)sequential_1/lstm_1/strided_slice_3/stackЄ
+sequential_1/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_1/strided_slice_3/stack_1Є
+sequential_1/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_3/stack_2
#sequential_1/lstm_1/strided_slice_3StridedSlice?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_1/strided_slice_3/stack:output:04sequential_1/lstm_1/strided_slice_3/stack_1:output:04sequential_1/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_3Ё
$sequential_1/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_1/transpose_1/permѕ
sequential_1/lstm_1/transpose_1	Transpose?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2!
sequential_1/lstm_1/transpose_1
sequential_1/lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_1/runtime
sequential_1/lstm_2/ShapeShape#sequential_1/lstm_1/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_2/Shape
'sequential_1/lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_2/strided_slice/stack 
)sequential_1/lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_2/strided_slice/stack_1 
)sequential_1/lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_2/strided_slice/stack_2к
!sequential_1/lstm_2/strided_sliceStridedSlice"sequential_1/lstm_2/Shape:output:00sequential_1/lstm_2/strided_slice/stack:output:02sequential_1/lstm_2/strided_slice/stack_1:output:02sequential_1/lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_2/strided_slice
sequential_1/lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2!
sequential_1/lstm_2/zeros/mul/yМ
sequential_1/lstm_2/zeros/mulMul*sequential_1/lstm_2/strided_slice:output:0(sequential_1/lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_2/zeros/mul
 sequential_1/lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2"
 sequential_1/lstm_2/zeros/Less/yЗ
sequential_1/lstm_2/zeros/LessLess!sequential_1/lstm_2/zeros/mul:z:0)sequential_1/lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_2/zeros/Less
"sequential_1/lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2$
"sequential_1/lstm_2/zeros/packed/1г
 sequential_1/lstm_2/zeros/packedPack*sequential_1/lstm_2/strided_slice:output:0+sequential_1/lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_2/zeros/packed
sequential_1/lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_2/zeros/ConstХ
sequential_1/lstm_2/zerosFill)sequential_1/lstm_2/zeros/packed:output:0(sequential_1/lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
sequential_1/lstm_2/zeros
!sequential_1/lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2#
!sequential_1/lstm_2/zeros_1/mul/yТ
sequential_1/lstm_2/zeros_1/mulMul*sequential_1/lstm_2/strided_slice:output:0*sequential_1/lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_2/zeros_1/mul
"sequential_1/lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential_1/lstm_2/zeros_1/Less/yП
 sequential_1/lstm_2/zeros_1/LessLess#sequential_1/lstm_2/zeros_1/mul:z:0+sequential_1/lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_2/zeros_1/Less
$sequential_1/lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2&
$sequential_1/lstm_2/zeros_1/packed/1й
"sequential_1/lstm_2/zeros_1/packedPack*sequential_1/lstm_2/strided_slice:output:0-sequential_1/lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_2/zeros_1/packed
!sequential_1/lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_2/zeros_1/ConstЭ
sequential_1/lstm_2/zeros_1Fill+sequential_1/lstm_2/zeros_1/packed:output:0*sequential_1/lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
sequential_1/lstm_2/zeros_1
"sequential_1/lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_2/transpose/permг
sequential_1/lstm_2/transpose	Transpose#sequential_1/lstm_1/transpose_1:y:0+sequential_1/lstm_2/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
sequential_1/lstm_2/transpose
sequential_1/lstm_2/Shape_1Shape!sequential_1/lstm_2/transpose:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_2/Shape_1 
)sequential_1/lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_2/strided_slice_1/stackЄ
+sequential_1/lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_1/stack_1Є
+sequential_1/lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_1/stack_2ц
#sequential_1/lstm_2/strided_slice_1StridedSlice$sequential_1/lstm_2/Shape_1:output:02sequential_1/lstm_2/strided_slice_1/stack:output:04sequential_1/lstm_2/strided_slice_1/stack_1:output:04sequential_1/lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_1­
/sequential_1/lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ21
/sequential_1/lstm_2/TensorArrayV2/element_shape
!sequential_1/lstm_2/TensorArrayV2TensorListReserve8sequential_1/lstm_2/TensorArrayV2/element_shape:output:0,sequential_1/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_2/TensorArrayV2ч
Isequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2K
Isequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeШ
;sequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_2/transpose:y:0Rsequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor 
)sequential_1/lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_2/strided_slice_2/stackЄ
+sequential_1/lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_2/stack_1Є
+sequential_1/lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_2/stack_2є
#sequential_1/lstm_2/strided_slice_2StridedSlice!sequential_1/lstm_2/transpose:y:02sequential_1/lstm_2/strided_slice_2/stack:output:04sequential_1/lstm_2/strided_slice_2/stack_1:output:04sequential_1/lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_2О
/sequential_1/lstm_2/lstm_cell_5/ones_like/ShapeShape,sequential_1/lstm_2/strided_slice_2:output:0*
T0*
_output_shapes
:21
/sequential_1/lstm_2/lstm_cell_5/ones_like/ShapeЇ
/sequential_1/lstm_2/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?21
/sequential_1/lstm_2/lstm_cell_5/ones_like/Const
)sequential_1/lstm_2/lstm_cell_5/ones_likeFill8sequential_1/lstm_2/lstm_cell_5/ones_like/Shape:output:08sequential_1/lstm_2/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)sequential_1/lstm_2/lstm_cell_5/ones_likeх
#sequential_1/lstm_2/lstm_cell_5/mulMul,sequential_1/lstm_2/strided_slice_2:output:02sequential_1/lstm_2/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#sequential_1/lstm_2/lstm_cell_5/mulю
5sequential_1/lstm_2/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp>sequential_1_lstm_2_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype027
5sequential_1/lstm_2/lstm_cell_5/MatMul/ReadVariableOpѕ
&sequential_1/lstm_2/lstm_cell_5/MatMulMatMul'sequential_1/lstm_2/lstm_cell_5/mul:z:0=sequential_1/lstm_2/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&sequential_1/lstm_2/lstm_cell_5/MatMulє
7sequential_1/lstm_2/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp@sequential_1_lstm_2_lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype029
7sequential_1/lstm_2/lstm_cell_5/MatMul_1/ReadVariableOpі
(sequential_1/lstm_2/lstm_cell_5/MatMul_1MatMul"sequential_1/lstm_2/zeros:output:0?sequential_1/lstm_2/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(sequential_1/lstm_2/lstm_cell_5/MatMul_1ь
#sequential_1/lstm_2/lstm_cell_5/addAddV20sequential_1/lstm_2/lstm_cell_5/MatMul:product:02sequential_1/lstm_2/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2%
#sequential_1/lstm_2/lstm_cell_5/addэ
6sequential_1/lstm_2/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_lstm_2_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype028
6sequential_1/lstm_2/lstm_cell_5/BiasAdd/ReadVariableOpљ
'sequential_1/lstm_2/lstm_cell_5/BiasAddBiasAdd'sequential_1/lstm_2/lstm_cell_5/add:z:0>sequential_1/lstm_2/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2)
'sequential_1/lstm_2/lstm_cell_5/BiasAddЄ
/sequential_1/lstm_2/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_1/lstm_2/lstm_cell_5/split/split_dimП
%sequential_1/lstm_2/lstm_cell_5/splitSplit8sequential_1/lstm_2/lstm_cell_5/split/split_dim:output:00sequential_1/lstm_2/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2'
%sequential_1/lstm_2/lstm_cell_5/splitП
'sequential_1/lstm_2/lstm_cell_5/SigmoidSigmoid.sequential_1/lstm_2/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2)
'sequential_1/lstm_2/lstm_cell_5/SigmoidУ
)sequential_1/lstm_2/lstm_cell_5/Sigmoid_1Sigmoid.sequential_1/lstm_2/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2+
)sequential_1/lstm_2/lstm_cell_5/Sigmoid_1м
%sequential_1/lstm_2/lstm_cell_5/mul_1Mul-sequential_1/lstm_2/lstm_cell_5/Sigmoid_1:y:0$sequential_1/lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2'
%sequential_1/lstm_2/lstm_cell_5/mul_1Ж
$sequential_1/lstm_2/lstm_cell_5/ReluRelu.sequential_1/lstm_2/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2&
$sequential_1/lstm_2/lstm_cell_5/Reluш
%sequential_1/lstm_2/lstm_cell_5/mul_2Mul+sequential_1/lstm_2/lstm_cell_5/Sigmoid:y:02sequential_1/lstm_2/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2'
%sequential_1/lstm_2/lstm_cell_5/mul_2п
%sequential_1/lstm_2/lstm_cell_5/add_1AddV2)sequential_1/lstm_2/lstm_cell_5/mul_1:z:0)sequential_1/lstm_2/lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2'
%sequential_1/lstm_2/lstm_cell_5/add_1У
)sequential_1/lstm_2/lstm_cell_5/Sigmoid_2Sigmoid.sequential_1/lstm_2/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2+
)sequential_1/lstm_2/lstm_cell_5/Sigmoid_2Е
&sequential_1/lstm_2/lstm_cell_5/Relu_1Relu)sequential_1/lstm_2/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2(
&sequential_1/lstm_2/lstm_cell_5/Relu_1ь
%sequential_1/lstm_2/lstm_cell_5/mul_3Mul-sequential_1/lstm_2/lstm_cell_5/Sigmoid_2:y:04sequential_1/lstm_2/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2'
%sequential_1/lstm_2/lstm_cell_5/mul_3З
1sequential_1/lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   23
1sequential_1/lstm_2/TensorArrayV2_1/element_shape
#sequential_1/lstm_2/TensorArrayV2_1TensorListReserve:sequential_1/lstm_2/TensorArrayV2_1/element_shape:output:0,sequential_1/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_1/lstm_2/TensorArrayV2_1v
sequential_1/lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_1/lstm_2/timeЇ
,sequential_1/lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2.
,sequential_1/lstm_2/while/maximum_iterations
&sequential_1/lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_2/while/loop_counter
sequential_1/lstm_2/whileWhile/sequential_1/lstm_2/while/loop_counter:output:05sequential_1/lstm_2/while/maximum_iterations:output:0!sequential_1/lstm_2/time:output:0,sequential_1/lstm_2/TensorArrayV2_1:handle:0"sequential_1/lstm_2/zeros:output:0$sequential_1/lstm_2/zeros_1:output:0,sequential_1/lstm_2/strided_slice_1:output:0Ksequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_1_lstm_2_lstm_cell_5_matmul_readvariableop_resource@sequential_1_lstm_2_lstm_cell_5_matmul_1_readvariableop_resource?sequential_1_lstm_2_lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_1_lstm_2_while_body_314085*1
cond)R'
%sequential_1_lstm_2_while_cond_314084*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
sequential_1/lstm_2/whileн
Dsequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2F
Dsequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeИ
6sequential_1/lstm_2/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_2/while:output:3Msequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype028
6sequential_1/lstm_2/TensorArrayV2Stack/TensorListStackЉ
)sequential_1/lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2+
)sequential_1/lstm_2/strided_slice_3/stackЄ
+sequential_1/lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_2/strided_slice_3/stack_1Є
+sequential_1/lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_3/stack_2
#sequential_1/lstm_2/strided_slice_3StridedSlice?sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_2/strided_slice_3/stack:output:04sequential_1/lstm_2/strided_slice_3/stack_1:output:04sequential_1/lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_3Ё
$sequential_1/lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_2/transpose_1/permѕ
sequential_1/lstm_2/transpose_1	Transpose?sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2!
sequential_1/lstm_2/transpose_1
sequential_1/lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_2/runtimeР
&sequential_1/fc1/MatMul/ReadVariableOpReadVariableOp/sequential_1_fc1_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02(
&sequential_1/fc1/MatMul/ReadVariableOpЬ
sequential_1/fc1/MatMulMatMul,sequential_1/lstm_2/strided_slice_3:output:0.sequential_1/fc1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22
sequential_1/fc1/MatMulП
'sequential_1/fc1/BiasAdd/ReadVariableOpReadVariableOp0sequential_1_fc1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02)
'sequential_1/fc1/BiasAdd/ReadVariableOpХ
sequential_1/fc1/BiasAddBiasAdd!sequential_1/fc1/MatMul:product:0/sequential_1/fc1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22
sequential_1/fc1/BiasAddћ
;sequential_1/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpDsequential_1_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype02=
;sequential_1/batch_normalization_3/batchnorm/ReadVariableOp­
2sequential_1/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:24
2sequential_1/batch_normalization_3/batchnorm/add/y
0sequential_1/batch_normalization_3/batchnorm/addAddV2Csequential_1/batch_normalization_3/batchnorm/ReadVariableOp:value:0;sequential_1/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:222
0sequential_1/batch_normalization_3/batchnorm/addЬ
2sequential_1/batch_normalization_3/batchnorm/RsqrtRsqrt4sequential_1/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:224
2sequential_1/batch_normalization_3/batchnorm/Rsqrt
?sequential_1/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_1_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype02A
?sequential_1/batch_normalization_3/batchnorm/mul/ReadVariableOp
0sequential_1/batch_normalization_3/batchnorm/mulMul6sequential_1/batch_normalization_3/batchnorm/Rsqrt:y:0Gsequential_1/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:222
0sequential_1/batch_normalization_3/batchnorm/mulњ
2sequential_1/batch_normalization_3/batchnorm/mul_1Mul!sequential_1/fc1/BiasAdd:output:04sequential_1/batch_normalization_3/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ224
2sequential_1/batch_normalization_3/batchnorm/mul_1
=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_1_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes
:2*
dtype02?
=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_1
2sequential_1/batch_normalization_3/batchnorm/mul_2MulEsequential_1/batch_normalization_3/batchnorm/ReadVariableOp_1:value:04sequential_1/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:224
2sequential_1/batch_normalization_3/batchnorm/mul_2
=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_1_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes
:2*
dtype02?
=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_2
0sequential_1/batch_normalization_3/batchnorm/subSubEsequential_1/batch_normalization_3/batchnorm/ReadVariableOp_2:value:06sequential_1/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:222
0sequential_1/batch_normalization_3/batchnorm/sub
2sequential_1/batch_normalization_3/batchnorm/add_1AddV26sequential_1/batch_normalization_3/batchnorm/mul_1:z:04sequential_1/batch_normalization_3/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ224
2sequential_1/batch_normalization_3/batchnorm/add_1В
sequential_1/activation_3/ReluRelu6sequential_1/batch_normalization_3/batchnorm/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
sequential_1/activation_3/ReluЎ
sequential_1/dropout_2/IdentityIdentity,sequential_1/activation_3/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ22!
sequential_1/dropout_2/IdentityЬ
*sequential_1/softmax/MatMul/ReadVariableOpReadVariableOp3sequential_1_softmax_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02,
*sequential_1/softmax/MatMul/ReadVariableOpд
sequential_1/softmax/MatMulMatMul(sequential_1/dropout_2/Identity:output:02sequential_1/softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/softmax/MatMulЫ
+sequential_1/softmax/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_softmax_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_1/softmax/BiasAdd/ReadVariableOpе
sequential_1/softmax/BiasAddBiasAdd%sequential_1/softmax/MatMul:product:03sequential_1/softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/softmax/BiasAdd 
sequential_1/softmax/SoftmaxSoftmax%sequential_1/softmax/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/softmax/Softmax

IdentityIdentity&sequential_1/softmax/Softmax:softmax:0<^sequential_1/batch_normalization_2/batchnorm/ReadVariableOp>^sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_1>^sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_2@^sequential_1/batch_normalization_2/batchnorm/mul/ReadVariableOp<^sequential_1/batch_normalization_3/batchnorm/ReadVariableOp>^sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_1>^sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_2@^sequential_1/batch_normalization_3/batchnorm/mul/ReadVariableOp+^sequential_1/conv_1/BiasAdd/ReadVariableOp7^sequential_1/conv_1/conv1d/ExpandDims_1/ReadVariableOp(^sequential_1/fc1/BiasAdd/ReadVariableOp'^sequential_1/fc1/MatMul/ReadVariableOp7^sequential_1/lstm_1/lstm_cell_4/BiasAdd/ReadVariableOp6^sequential_1/lstm_1/lstm_cell_4/MatMul/ReadVariableOp8^sequential_1/lstm_1/lstm_cell_4/MatMul_1/ReadVariableOp^sequential_1/lstm_1/while7^sequential_1/lstm_2/lstm_cell_5/BiasAdd/ReadVariableOp6^sequential_1/lstm_2/lstm_cell_5/MatMul/ReadVariableOp8^sequential_1/lstm_2/lstm_cell_5/MatMul_1/ReadVariableOp^sequential_1/lstm_2/while,^sequential_1/softmax/BiasAdd/ReadVariableOp+^sequential_1/softmax/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ­: : : : : : : : : : : : : : : : : : : : 2z
;sequential_1/batch_normalization_2/batchnorm/ReadVariableOp;sequential_1/batch_normalization_2/batchnorm/ReadVariableOp2~
=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_1=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_12~
=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_2=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_22
?sequential_1/batch_normalization_2/batchnorm/mul/ReadVariableOp?sequential_1/batch_normalization_2/batchnorm/mul/ReadVariableOp2z
;sequential_1/batch_normalization_3/batchnorm/ReadVariableOp;sequential_1/batch_normalization_3/batchnorm/ReadVariableOp2~
=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_1=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_12~
=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_2=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_22
?sequential_1/batch_normalization_3/batchnorm/mul/ReadVariableOp?sequential_1/batch_normalization_3/batchnorm/mul/ReadVariableOp2X
*sequential_1/conv_1/BiasAdd/ReadVariableOp*sequential_1/conv_1/BiasAdd/ReadVariableOp2p
6sequential_1/conv_1/conv1d/ExpandDims_1/ReadVariableOp6sequential_1/conv_1/conv1d/ExpandDims_1/ReadVariableOp2R
'sequential_1/fc1/BiasAdd/ReadVariableOp'sequential_1/fc1/BiasAdd/ReadVariableOp2P
&sequential_1/fc1/MatMul/ReadVariableOp&sequential_1/fc1/MatMul/ReadVariableOp2p
6sequential_1/lstm_1/lstm_cell_4/BiasAdd/ReadVariableOp6sequential_1/lstm_1/lstm_cell_4/BiasAdd/ReadVariableOp2n
5sequential_1/lstm_1/lstm_cell_4/MatMul/ReadVariableOp5sequential_1/lstm_1/lstm_cell_4/MatMul/ReadVariableOp2r
7sequential_1/lstm_1/lstm_cell_4/MatMul_1/ReadVariableOp7sequential_1/lstm_1/lstm_cell_4/MatMul_1/ReadVariableOp26
sequential_1/lstm_1/whilesequential_1/lstm_1/while2p
6sequential_1/lstm_2/lstm_cell_5/BiasAdd/ReadVariableOp6sequential_1/lstm_2/lstm_cell_5/BiasAdd/ReadVariableOp2n
5sequential_1/lstm_2/lstm_cell_5/MatMul/ReadVariableOp5sequential_1/lstm_2/lstm_cell_5/MatMul/ReadVariableOp2r
7sequential_1/lstm_2/lstm_cell_5/MatMul_1/ReadVariableOp7sequential_1/lstm_2/lstm_cell_5/MatMul_1/ReadVariableOp26
sequential_1/lstm_2/whilesequential_1/lstm_2/while2Z
+sequential_1/softmax/BiasAdd/ReadVariableOp+sequential_1/softmax/BiasAdd/ReadVariableOp2X
*sequential_1/softmax/MatMul/ReadVariableOp*sequential_1/softmax/MatMul/ReadVariableOp:U Q
,
_output_shapes
:џџџџџџџџџ­
!
_user_specified_name	input_2
Л
е
6__inference_batch_normalization_2_layer_call_fn_318528

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3142882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):џџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
И

-__inference_sequential_1_layer_call_fn_317199
input_2
unknown:­
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	d
	unknown_7:	
	unknown_8:	d
	unknown_9:	d

unknown_10:	

unknown_11:d2

unknown_12:2

unknown_13:2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:2

unknown_18:
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3171112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ­: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџ­
!
_user_specified_name	input_2
Ј

Я
lstm_1_while_cond_317888*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1B
>lstm_1_while_lstm_1_while_cond_317888___redundant_placeholder0B
>lstm_1_while_lstm_1_while_cond_317888___redundant_placeholder1B
>lstm_1_while_lstm_1_while_cond_317888___redundant_placeholder2B
>lstm_1_while_lstm_1_while_cond_317888___redundant_placeholder3
lstm_1_while_identity

lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2
lstm_1/while/Lessr
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_1/while/Identity"7
lstm_1_while_identitylstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
е
У
while_cond_319851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_319851___redundant_placeholder04
0while_while_cond_319851___redundant_placeholder14
0while_while_cond_319851___redundant_placeholder24
0while_while_cond_319851___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
э

H__inference_sequential_1_layer_call_and_return_conditional_losses_318280

inputsJ
2conv_1_conv1d_expanddims_1_readvariableop_resource:­5
&conv_1_biasadd_readvariableop_resource:	L
=batch_normalization_2_assignmovingavg_readvariableop_resource:	N
?batch_normalization_2_assignmovingavg_1_readvariableop_resource:	J
;batch_normalization_2_batchnorm_mul_readvariableop_resource:	F
7batch_normalization_2_batchnorm_readvariableop_resource:	E
1lstm_1_lstm_cell_4_matmul_readvariableop_resource:
F
3lstm_1_lstm_cell_4_matmul_1_readvariableop_resource:	dA
2lstm_1_lstm_cell_4_biasadd_readvariableop_resource:	D
1lstm_2_lstm_cell_5_matmul_readvariableop_resource:	dF
3lstm_2_lstm_cell_5_matmul_1_readvariableop_resource:	dA
2lstm_2_lstm_cell_5_biasadd_readvariableop_resource:	4
"fc1_matmul_readvariableop_resource:d21
#fc1_biasadd_readvariableop_resource:2K
=batch_normalization_3_assignmovingavg_readvariableop_resource:2M
?batch_normalization_3_assignmovingavg_1_readvariableop_resource:2I
;batch_normalization_3_batchnorm_mul_readvariableop_resource:2E
7batch_normalization_3_batchnorm_readvariableop_resource:28
&softmax_matmul_readvariableop_resource:25
'softmax_biasadd_readvariableop_resource:
identityЂ%batch_normalization_2/AssignMovingAvgЂ4batch_normalization_2/AssignMovingAvg/ReadVariableOpЂ'batch_normalization_2/AssignMovingAvg_1Ђ6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpЂ.batch_normalization_2/batchnorm/ReadVariableOpЂ2batch_normalization_2/batchnorm/mul/ReadVariableOpЂ%batch_normalization_3/AssignMovingAvgЂ4batch_normalization_3/AssignMovingAvg/ReadVariableOpЂ'batch_normalization_3/AssignMovingAvg_1Ђ6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpЂ.batch_normalization_3/batchnorm/ReadVariableOpЂ2batch_normalization_3/batchnorm/mul/ReadVariableOpЂconv_1/BiasAdd/ReadVariableOpЂ)conv_1/conv1d/ExpandDims_1/ReadVariableOpЂfc1/BiasAdd/ReadVariableOpЂfc1/MatMul/ReadVariableOpЂ)lstm_1/lstm_cell_4/BiasAdd/ReadVariableOpЂ(lstm_1/lstm_cell_4/MatMul/ReadVariableOpЂ*lstm_1/lstm_cell_4/MatMul_1/ReadVariableOpЂlstm_1/whileЂ)lstm_2/lstm_cell_5/BiasAdd/ReadVariableOpЂ(lstm_2/lstm_cell_5/MatMul/ReadVariableOpЂ*lstm_2/lstm_cell_5/MatMul_1/ReadVariableOpЂlstm_2/whileЂsoftmax/BiasAdd/ReadVariableOpЂsoftmax/MatMul/ReadVariableOp
conv_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2
conv_1/conv1d/ExpandDims/dimЌ
conv_1/conv1d/ExpandDims
ExpandDimsinputs%conv_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ­2
conv_1/conv1d/ExpandDimsЯ
)conv_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:­*
dtype02+
)conv_1/conv1d/ExpandDims_1/ReadVariableOp
conv_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv_1/conv1d/ExpandDims_1/dimе
conv_1/conv1d/ExpandDims_1
ExpandDims1conv_1/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv_1/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:­2
conv_1/conv1d/ExpandDims_1д
conv_1/conv1dConv2D!conv_1/conv1d/ExpandDims:output:0#conv_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
conv_1/conv1dЈ
conv_1/conv1d/SqueezeSqueezeconv_1/conv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ2
conv_1/conv1d/SqueezeЂ
conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
conv_1/BiasAdd/ReadVariableOpЉ
conv_1/BiasAddBiasAddconv_1/conv1d/Squeeze:output:0%conv_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ2
conv_1/BiasAddН
4batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       26
4batch_normalization_2/moments/mean/reduction_indicesч
"batch_normalization_2/moments/meanMeanconv_1/BiasAdd:output:0=batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2$
"batch_normalization_2/moments/meanУ
*batch_normalization_2/moments/StopGradientStopGradient+batch_normalization_2/moments/mean:output:0*
T0*#
_output_shapes
:2,
*batch_normalization_2/moments/StopGradientќ
/batch_normalization_2/moments/SquaredDifferenceSquaredDifferenceconv_1/BiasAdd:output:03batch_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:џџџџџџџџџ21
/batch_normalization_2/moments/SquaredDifferenceХ
8batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2:
8batch_normalization_2/moments/variance/reduction_indices
&batch_normalization_2/moments/varianceMean3batch_normalization_2/moments/SquaredDifference:z:0Abatch_normalization_2/moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2(
&batch_normalization_2/moments/varianceФ
%batch_normalization_2/moments/SqueezeSqueeze+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2'
%batch_normalization_2/moments/SqueezeЬ
'batch_normalization_2/moments/Squeeze_1Squeeze/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2)
'batch_normalization_2/moments/Squeeze_1
+batch_normalization_2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2-
+batch_normalization_2/AssignMovingAvg/decayч
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype026
4batch_normalization_2/AssignMovingAvg/ReadVariableOpё
)batch_normalization_2/AssignMovingAvg/subSub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_2/moments/Squeeze:output:0*
T0*
_output_shapes	
:2+
)batch_normalization_2/AssignMovingAvg/subш
)batch_normalization_2/AssignMovingAvg/mulMul-batch_normalization_2/AssignMovingAvg/sub:z:04batch_normalization_2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2+
)batch_normalization_2/AssignMovingAvg/mul­
%batch_normalization_2/AssignMovingAvgAssignSubVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_2/AssignMovingAvgЃ
-batch_normalization_2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2/
-batch_normalization_2/AssignMovingAvg_1/decayэ
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpљ
+batch_normalization_2/AssignMovingAvg_1/subSub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_2/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_2/AssignMovingAvg_1/sub№
+batch_normalization_2/AssignMovingAvg_1/mulMul/batch_normalization_2/AssignMovingAvg_1/sub:z:06batch_normalization_2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_2/AssignMovingAvg_1/mulЗ
'batch_normalization_2/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_2/AssignMovingAvg_1
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_2/batchnorm/add/yл
#batch_normalization_2/batchnorm/addAddV20batch_normalization_2/moments/Squeeze_1:output:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/addІ
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_2/batchnorm/Rsqrtс
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_2/batchnorm/mul/ReadVariableOpо
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/mulЮ
%batch_normalization_2/batchnorm/mul_1Mulconv_1/BiasAdd:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2'
%batch_normalization_2/batchnorm/mul_1д
%batch_normalization_2/batchnorm/mul_2Mul.batch_normalization_2/moments/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_2/batchnorm/mul_2е
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_2/batchnorm/ReadVariableOpк
#batch_normalization_2/batchnorm/subSub6batch_normalization_2/batchnorm/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/subт
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2'
%batch_normalization_2/batchnorm/add_1
activation_2/ReluRelu)batch_normalization_2/batchnorm/add_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2
activation_2/Reluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/dropout/ConstЏ
dropout_1/dropout/MulMulactivation_2/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2
dropout_1/dropout/Mul
dropout_1/dropout/ShapeShapeactivation_2/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shapeз
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџ*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2"
 dropout_1/dropout/GreaterEqual/yы
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2 
dropout_1/dropout/GreaterEqualЂ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:џџџџџџџџџ2
dropout_1/dropout/CastЇ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџ2
dropout_1/dropout/Mul_1g
lstm_1/ShapeShapedropout_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_1/Shape
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stack
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slicej
lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_1/zeros/mul/y
lstm_1/zeros/mulMullstm_1/strided_slice:output:0lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/mulm
lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_1/zeros/Less/y
lstm_1/zeros/LessLesslstm_1/zeros/mul:z:0lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/Lessp
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_1/zeros/packed/1
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros/packedm
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros/Const
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/zerosn
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_1/zeros_1/mul/y
lstm_1/zeros_1/mulMullstm_1/strided_slice:output:0lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/mulq
lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_1/zeros_1/Less/y
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mul:z:0lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/Lesst
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_1/zeros_1/packed/1Ѕ
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros_1/packedq
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros_1/Const
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/zeros_1
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose/permЅ
lstm_1/transpose	Transposedropout_1/dropout/Mul_1:z:0lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2
lstm_1/transposed
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:2
lstm_1/Shape_1
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_1/stack
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_1
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_2
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slice_1
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"lstm_1/TensorArrayV2/element_shapeЮ
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2Э
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2>
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_1/TensorArrayUnstack/TensorListFromTensor
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_2/stack
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_1
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_2Ї
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
lstm_1/strided_slice_2
"lstm_1/lstm_cell_4/ones_like/ShapeShapelstm_1/strided_slice_2:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_4/ones_like/Shape
"lstm_1/lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_1/lstm_cell_4/ones_like/Constб
lstm_1/lstm_cell_4/ones_likeFill+lstm_1/lstm_cell_4/ones_like/Shape:output:0+lstm_1/lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_4/ones_like
 lstm_1/lstm_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_1/lstm_cell_4/dropout/ConstЬ
lstm_1/lstm_cell_4/dropout/MulMul%lstm_1/lstm_cell_4/ones_like:output:0)lstm_1/lstm_cell_4/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2 
lstm_1/lstm_cell_4/dropout/Mul
 lstm_1/lstm_cell_4/dropout/ShapeShape%lstm_1/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm_1/lstm_cell_4/dropout/Shape
7lstm_1/lstm_cell_4/dropout/random_uniform/RandomUniformRandomUniform)lstm_1/lstm_cell_4/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2б29
7lstm_1/lstm_cell_4/dropout/random_uniform/RandomUniform
)lstm_1/lstm_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2+
)lstm_1/lstm_cell_4/dropout/GreaterEqual/y
'lstm_1/lstm_cell_4/dropout/GreaterEqualGreaterEqual@lstm_1/lstm_cell_4/dropout/random_uniform/RandomUniform:output:02lstm_1/lstm_cell_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2)
'lstm_1/lstm_cell_4/dropout/GreaterEqualЙ
lstm_1/lstm_cell_4/dropout/CastCast+lstm_1/lstm_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2!
lstm_1/lstm_cell_4/dropout/CastЧ
 lstm_1/lstm_cell_4/dropout/Mul_1Mul"lstm_1/lstm_cell_4/dropout/Mul:z:0#lstm_1/lstm_cell_4/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_1/lstm_cell_4/dropout/Mul_1
"lstm_1/lstm_cell_4/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_1/lstm_cell_4/dropout_1/Constв
 lstm_1/lstm_cell_4/dropout_1/MulMul%lstm_1/lstm_cell_4/ones_like:output:0+lstm_1/lstm_cell_4/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_1/lstm_cell_4/dropout_1/Mul
"lstm_1/lstm_cell_4/dropout_1/ShapeShape%lstm_1/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_4/dropout_1/Shape
9lstm_1/lstm_cell_4/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_4/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2тЈц2;
9lstm_1/lstm_cell_4/dropout_1/random_uniform/RandomUniform
+lstm_1/lstm_cell_4/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+lstm_1/lstm_cell_4/dropout_1/GreaterEqual/y
)lstm_1/lstm_cell_4/dropout_1/GreaterEqualGreaterEqualBlstm_1/lstm_cell_4/dropout_1/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_4/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2+
)lstm_1/lstm_cell_4/dropout_1/GreaterEqualП
!lstm_1/lstm_cell_4/dropout_1/CastCast-lstm_1/lstm_cell_4/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2#
!lstm_1/lstm_cell_4/dropout_1/CastЯ
"lstm_1/lstm_cell_4/dropout_1/Mul_1Mul$lstm_1/lstm_cell_4/dropout_1/Mul:z:0%lstm_1/lstm_cell_4/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_1/lstm_cell_4/dropout_1/Mul_1
"lstm_1/lstm_cell_4/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_1/lstm_cell_4/dropout_2/Constв
 lstm_1/lstm_cell_4/dropout_2/MulMul%lstm_1/lstm_cell_4/ones_like:output:0+lstm_1/lstm_cell_4/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_1/lstm_cell_4/dropout_2/Mul
"lstm_1/lstm_cell_4/dropout_2/ShapeShape%lstm_1/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_4/dropout_2/Shape
9lstm_1/lstm_cell_4/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_4/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2і2;
9lstm_1/lstm_cell_4/dropout_2/random_uniform/RandomUniform
+lstm_1/lstm_cell_4/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+lstm_1/lstm_cell_4/dropout_2/GreaterEqual/y
)lstm_1/lstm_cell_4/dropout_2/GreaterEqualGreaterEqualBlstm_1/lstm_cell_4/dropout_2/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_4/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2+
)lstm_1/lstm_cell_4/dropout_2/GreaterEqualП
!lstm_1/lstm_cell_4/dropout_2/CastCast-lstm_1/lstm_cell_4/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2#
!lstm_1/lstm_cell_4/dropout_2/CastЯ
"lstm_1/lstm_cell_4/dropout_2/Mul_1Mul$lstm_1/lstm_cell_4/dropout_2/Mul:z:0%lstm_1/lstm_cell_4/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_1/lstm_cell_4/dropout_2/Mul_1
"lstm_1/lstm_cell_4/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_1/lstm_cell_4/dropout_3/Constв
 lstm_1/lstm_cell_4/dropout_3/MulMul%lstm_1/lstm_cell_4/ones_like:output:0+lstm_1/lstm_cell_4/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_1/lstm_cell_4/dropout_3/Mul
"lstm_1/lstm_cell_4/dropout_3/ShapeShape%lstm_1/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_4/dropout_3/Shape
9lstm_1/lstm_cell_4/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_4/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2бјk2;
9lstm_1/lstm_cell_4/dropout_3/random_uniform/RandomUniform
+lstm_1/lstm_cell_4/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+lstm_1/lstm_cell_4/dropout_3/GreaterEqual/y
)lstm_1/lstm_cell_4/dropout_3/GreaterEqualGreaterEqualBlstm_1/lstm_cell_4/dropout_3/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_4/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2+
)lstm_1/lstm_cell_4/dropout_3/GreaterEqualП
!lstm_1/lstm_cell_4/dropout_3/CastCast-lstm_1/lstm_cell_4/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2#
!lstm_1/lstm_cell_4/dropout_3/CastЯ
"lstm_1/lstm_cell_4/dropout_3/Mul_1Mul$lstm_1/lstm_cell_4/dropout_3/Mul:z:0%lstm_1/lstm_cell_4/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_1/lstm_cell_4/dropout_3/Mul_1Б
lstm_1/lstm_cell_4/mulMullstm_1/strided_slice_2:output:0$lstm_1/lstm_cell_4/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_4/mulШ
(lstm_1/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp1lstm_1_lstm_cell_4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(lstm_1/lstm_cell_4/MatMul/ReadVariableOpС
lstm_1/lstm_cell_4/MatMulMatMullstm_1/lstm_cell_4/mul:z:00lstm_1/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_4/MatMulЭ
*lstm_1/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp3lstm_1_lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02,
*lstm_1/lstm_cell_4/MatMul_1/ReadVariableOpТ
lstm_1/lstm_cell_4/MatMul_1MatMullstm_1/zeros:output:02lstm_1/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_4/MatMul_1И
lstm_1/lstm_cell_4/addAddV2#lstm_1/lstm_cell_4/MatMul:product:0%lstm_1/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_4/addЦ
)lstm_1/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)lstm_1/lstm_cell_4/BiasAdd/ReadVariableOpХ
lstm_1/lstm_cell_4/BiasAddBiasAddlstm_1/lstm_cell_4/add:z:01lstm_1/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_4/BiasAdd
"lstm_1/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_1/lstm_cell_4/split/split_dim
lstm_1/lstm_cell_4/splitSplit+lstm_1/lstm_cell_4/split/split_dim:output:0#lstm_1/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_1/lstm_cell_4/split
lstm_1/lstm_cell_4/SigmoidSigmoid!lstm_1/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/Sigmoid
lstm_1/lstm_cell_4/Sigmoid_1Sigmoid!lstm_1/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/Sigmoid_1Ј
lstm_1/lstm_cell_4/mul_1Mul lstm_1/lstm_cell_4/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/mul_1
lstm_1/lstm_cell_4/ReluRelu!lstm_1/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/ReluД
lstm_1/lstm_cell_4/mul_2Mullstm_1/lstm_cell_4/Sigmoid:y:0%lstm_1/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/mul_2Ћ
lstm_1/lstm_cell_4/add_1AddV2lstm_1/lstm_cell_4/mul_1:z:0lstm_1/lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/add_1
lstm_1/lstm_cell_4/Sigmoid_2Sigmoid!lstm_1/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/Sigmoid_2
lstm_1/lstm_cell_4/Relu_1Relulstm_1/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/Relu_1И
lstm_1/lstm_cell_4/mul_3Mul lstm_1/lstm_cell_4/Sigmoid_2:y:0'lstm_1/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/lstm_cell_4/mul_3
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2&
$lstm_1/TensorArrayV2_1/element_shapeд
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2_1\
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/time
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
lstm_1/while/maximum_iterationsx
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/while/loop_counterд
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_1_lstm_cell_4_matmul_readvariableop_resource3lstm_1_lstm_cell_4_matmul_1_readvariableop_resource2lstm_1_lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_1_while_body_317889*$
condR
lstm_1_while_cond_317888*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
lstm_1/whileУ
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   29
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02+
)lstm_1/TensorArrayV2Stack/TensorListStack
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
lstm_1/strided_slice_3/stack
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_1/strided_slice_3/stack_1
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_3/stack_2Ф
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
lstm_1/strided_slice_3
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose_1/permС
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
lstm_1/transpose_1t
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/runtimeb
lstm_2/ShapeShapelstm_1/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_2/Shape
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice/stack
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_1
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_2
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slicej
lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_2/zeros/mul/y
lstm_2/zeros/mulMullstm_2/strided_slice:output:0lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/mulm
lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_2/zeros/Less/y
lstm_2/zeros/LessLesslstm_2/zeros/mul:z:0lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/Lessp
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_2/zeros/packed/1
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros/packedm
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros/Const
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/zerosn
lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_2/zeros_1/mul/y
lstm_2/zeros_1/mulMullstm_2/strided_slice:output:0lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/mulq
lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_2/zeros_1/Less/y
lstm_2/zeros_1/LessLesslstm_2/zeros_1/mul:z:0lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/Lesst
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_2/zeros_1/packed/1Ѕ
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros_1/packedq
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros_1/Const
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/zeros_1
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose/perm
lstm_2/transpose	Transposelstm_1/transpose_1:y:0lstm_2/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
lstm_2/transposed
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:2
lstm_2/Shape_1
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_1/stack
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_1
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_2
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slice_1
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"lstm_2/TensorArrayV2/element_shapeЮ
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2Э
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2>
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_2/TensorArrayUnstack/TensorListFromTensor
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_2/stack
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_1
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_2І
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
lstm_2/strided_slice_2
"lstm_2/lstm_cell_5/ones_like/ShapeShapelstm_2/strided_slice_2:output:0*
T0*
_output_shapes
:2$
"lstm_2/lstm_cell_5/ones_like/Shape
"lstm_2/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_2/lstm_cell_5/ones_like/Constа
lstm_2/lstm_cell_5/ones_likeFill+lstm_2/lstm_cell_5/ones_like/Shape:output:0+lstm_2/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/ones_like
 lstm_2/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_2/lstm_cell_5/dropout/ConstЫ
lstm_2/lstm_cell_5/dropout/MulMul%lstm_2/lstm_cell_5/ones_like:output:0)lstm_2/lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_2/lstm_cell_5/dropout/Mul
 lstm_2/lstm_cell_5/dropout/ShapeShape%lstm_2/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm_2/lstm_cell_5/dropout/Shape
7lstm_2/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform)lstm_2/lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2жЪЖ29
7lstm_2/lstm_cell_5/dropout/random_uniform/RandomUniform
)lstm_2/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2+
)lstm_2/lstm_cell_5/dropout/GreaterEqual/y
'lstm_2/lstm_cell_5/dropout/GreaterEqualGreaterEqual@lstm_2/lstm_cell_5/dropout/random_uniform/RandomUniform:output:02lstm_2/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2)
'lstm_2/lstm_cell_5/dropout/GreaterEqualИ
lstm_2/lstm_cell_5/dropout/CastCast+lstm_2/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2!
lstm_2/lstm_cell_5/dropout/CastЦ
 lstm_2/lstm_cell_5/dropout/Mul_1Mul"lstm_2/lstm_cell_5/dropout/Mul:z:0#lstm_2/lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_2/lstm_cell_5/dropout/Mul_1
"lstm_2/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_2/lstm_cell_5/dropout_1/Constб
 lstm_2/lstm_cell_5/dropout_1/MulMul%lstm_2/lstm_cell_5/ones_like:output:0+lstm_2/lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_2/lstm_cell_5/dropout_1/Mul
"lstm_2/lstm_cell_5/dropout_1/ShapeShape%lstm_2/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_2/lstm_cell_5/dropout_1/Shape
9lstm_2/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_2/lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ъвя2;
9lstm_2/lstm_cell_5/dropout_1/random_uniform/RandomUniform
+lstm_2/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+lstm_2/lstm_cell_5/dropout_1/GreaterEqual/y
)lstm_2/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualBlstm_2/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:04lstm_2/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)lstm_2/lstm_cell_5/dropout_1/GreaterEqualО
!lstm_2/lstm_cell_5/dropout_1/CastCast-lstm_2/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!lstm_2/lstm_cell_5/dropout_1/CastЮ
"lstm_2/lstm_cell_5/dropout_1/Mul_1Mul$lstm_2/lstm_cell_5/dropout_1/Mul:z:0%lstm_2/lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_2/lstm_cell_5/dropout_1/Mul_1
"lstm_2/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_2/lstm_cell_5/dropout_2/Constб
 lstm_2/lstm_cell_5/dropout_2/MulMul%lstm_2/lstm_cell_5/ones_like:output:0+lstm_2/lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_2/lstm_cell_5/dropout_2/Mul
"lstm_2/lstm_cell_5/dropout_2/ShapeShape%lstm_2/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_2/lstm_cell_5/dropout_2/Shape
9lstm_2/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_2/lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2П§2;
9lstm_2/lstm_cell_5/dropout_2/random_uniform/RandomUniform
+lstm_2/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+lstm_2/lstm_cell_5/dropout_2/GreaterEqual/y
)lstm_2/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualBlstm_2/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:04lstm_2/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)lstm_2/lstm_cell_5/dropout_2/GreaterEqualО
!lstm_2/lstm_cell_5/dropout_2/CastCast-lstm_2/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!lstm_2/lstm_cell_5/dropout_2/CastЮ
"lstm_2/lstm_cell_5/dropout_2/Mul_1Mul$lstm_2/lstm_cell_5/dropout_2/Mul:z:0%lstm_2/lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_2/lstm_cell_5/dropout_2/Mul_1
"lstm_2/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_2/lstm_cell_5/dropout_3/Constб
 lstm_2/lstm_cell_5/dropout_3/MulMul%lstm_2/lstm_cell_5/ones_like:output:0+lstm_2/lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_2/lstm_cell_5/dropout_3/Mul
"lstm_2/lstm_cell_5/dropout_3/ShapeShape%lstm_2/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_2/lstm_cell_5/dropout_3/Shape
9lstm_2/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_2/lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Ѓь2;
9lstm_2/lstm_cell_5/dropout_3/random_uniform/RandomUniform
+lstm_2/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+lstm_2/lstm_cell_5/dropout_3/GreaterEqual/y
)lstm_2/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualBlstm_2/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:04lstm_2/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)lstm_2/lstm_cell_5/dropout_3/GreaterEqualО
!lstm_2/lstm_cell_5/dropout_3/CastCast-lstm_2/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!lstm_2/lstm_cell_5/dropout_3/CastЮ
"lstm_2/lstm_cell_5/dropout_3/Mul_1Mul$lstm_2/lstm_cell_5/dropout_3/Mul:z:0%lstm_2/lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_2/lstm_cell_5/dropout_3/Mul_1А
lstm_2/lstm_cell_5/mulMullstm_2/strided_slice_2:output:0$lstm_2/lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/mulЧ
(lstm_2/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp1lstm_2_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype02*
(lstm_2/lstm_cell_5/MatMul/ReadVariableOpС
lstm_2/lstm_cell_5/MatMulMatMullstm_2/lstm_cell_5/mul:z:00lstm_2/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_5/MatMulЭ
*lstm_2/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02,
*lstm_2/lstm_cell_5/MatMul_1/ReadVariableOpТ
lstm_2/lstm_cell_5/MatMul_1MatMullstm_2/zeros:output:02lstm_2/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_5/MatMul_1И
lstm_2/lstm_cell_5/addAddV2#lstm_2/lstm_cell_5/MatMul:product:0%lstm_2/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_5/addЦ
)lstm_2/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)lstm_2/lstm_cell_5/BiasAdd/ReadVariableOpХ
lstm_2/lstm_cell_5/BiasAddBiasAddlstm_2/lstm_cell_5/add:z:01lstm_2/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_5/BiasAdd
"lstm_2/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_2/lstm_cell_5/split/split_dim
lstm_2/lstm_cell_5/splitSplit+lstm_2/lstm_cell_5/split/split_dim:output:0#lstm_2/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_2/lstm_cell_5/split
lstm_2/lstm_cell_5/SigmoidSigmoid!lstm_2/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/Sigmoid
lstm_2/lstm_cell_5/Sigmoid_1Sigmoid!lstm_2/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/Sigmoid_1Ј
lstm_2/lstm_cell_5/mul_1Mul lstm_2/lstm_cell_5/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/mul_1
lstm_2/lstm_cell_5/ReluRelu!lstm_2/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/ReluД
lstm_2/lstm_cell_5/mul_2Mullstm_2/lstm_cell_5/Sigmoid:y:0%lstm_2/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/mul_2Ћ
lstm_2/lstm_cell_5/add_1AddV2lstm_2/lstm_cell_5/mul_1:z:0lstm_2/lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/add_1
lstm_2/lstm_cell_5/Sigmoid_2Sigmoid!lstm_2/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/Sigmoid_2
lstm_2/lstm_cell_5/Relu_1Relulstm_2/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/Relu_1И
lstm_2/lstm_cell_5/mul_3Mul lstm_2/lstm_cell_5/Sigmoid_2:y:0'lstm_2/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/lstm_cell_5/mul_3
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2&
$lstm_2/TensorArrayV2_1/element_shapeд
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2_1\
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/time
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
lstm_2/while/maximum_iterationsx
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/while/loop_counterд
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_2_lstm_cell_5_matmul_readvariableop_resource3lstm_2_lstm_cell_5_matmul_1_readvariableop_resource2lstm_2_lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_2_while_body_318108*$
condR
lstm_2_while_cond_318107*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
lstm_2/whileУ
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   29
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02+
)lstm_2/TensorArrayV2Stack/TensorListStack
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
lstm_2/strided_slice_3/stack
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_2/strided_slice_3/stack_1
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_3/stack_2Ф
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
lstm_2/strided_slice_3
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose_1/permС
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
lstm_2/transpose_1t
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/runtime
fc1/MatMul/ReadVariableOpReadVariableOp"fc1_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
fc1/MatMul/ReadVariableOp

fc1/MatMulMatMullstm_2/strided_slice_3:output:0!fc1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22

fc1/MatMul
fc1/BiasAdd/ReadVariableOpReadVariableOp#fc1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
fc1/BiasAdd/ReadVariableOp
fc1/BiasAddBiasAddfc1/MatMul:product:0"fc1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22
fc1/BiasAddЖ
4batch_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_3/moments/mean/reduction_indicesп
"batch_normalization_3/moments/meanMeanfc1/BiasAdd:output:0=batch_normalization_3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:2*
	keep_dims(2$
"batch_normalization_3/moments/meanО
*batch_normalization_3/moments/StopGradientStopGradient+batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes

:22,
*batch_normalization_3/moments/StopGradientє
/batch_normalization_3/moments/SquaredDifferenceSquaredDifferencefc1/BiasAdd:output:03batch_normalization_3/moments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџ221
/batch_normalization_3/moments/SquaredDifferenceО
8batch_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_3/moments/variance/reduction_indices
&batch_normalization_3/moments/varianceMean3batch_normalization_3/moments/SquaredDifference:z:0Abatch_normalization_3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:2*
	keep_dims(2(
&batch_normalization_3/moments/varianceТ
%batch_normalization_3/moments/SqueezeSqueeze+batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2'
%batch_normalization_3/moments/SqueezeЪ
'batch_normalization_3/moments/Squeeze_1Squeeze/batch_normalization_3/moments/variance:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2)
'batch_normalization_3/moments/Squeeze_1
+batch_normalization_3/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2-
+batch_normalization_3/AssignMovingAvg/decayц
4batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_3_assignmovingavg_readvariableop_resource*
_output_shapes
:2*
dtype026
4batch_normalization_3/AssignMovingAvg/ReadVariableOp№
)batch_normalization_3/AssignMovingAvg/subSub<batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_3/moments/Squeeze:output:0*
T0*
_output_shapes
:22+
)batch_normalization_3/AssignMovingAvg/subч
)batch_normalization_3/AssignMovingAvg/mulMul-batch_normalization_3/AssignMovingAvg/sub:z:04batch_normalization_3/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:22+
)batch_normalization_3/AssignMovingAvg/mul­
%batch_normalization_3/AssignMovingAvgAssignSubVariableOp=batch_normalization_3_assignmovingavg_readvariableop_resource-batch_normalization_3/AssignMovingAvg/mul:z:05^batch_normalization_3/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_3/AssignMovingAvgЃ
-batch_normalization_3/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2/
-batch_normalization_3/AssignMovingAvg_1/decayь
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_3_assignmovingavg_1_readvariableop_resource*
_output_shapes
:2*
dtype028
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpј
+batch_normalization_3/AssignMovingAvg_1/subSub>batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_3/moments/Squeeze_1:output:0*
T0*
_output_shapes
:22-
+batch_normalization_3/AssignMovingAvg_1/subя
+batch_normalization_3/AssignMovingAvg_1/mulMul/batch_normalization_3/AssignMovingAvg_1/sub:z:06batch_normalization_3/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:22-
+batch_normalization_3/AssignMovingAvg_1/mulЗ
'batch_normalization_3/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_3_assignmovingavg_1_readvariableop_resource/batch_normalization_3/AssignMovingAvg_1/mul:z:07^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_3/AssignMovingAvg_1
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_3/batchnorm/add/yк
#batch_normalization_3/batchnorm/addAddV20batch_normalization_3/moments/Squeeze_1:output:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:22%
#batch_normalization_3/batchnorm/addЅ
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:22'
%batch_normalization_3/batchnorm/Rsqrtр
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype024
2batch_normalization_3/batchnorm/mul/ReadVariableOpн
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22%
#batch_normalization_3/batchnorm/mulЦ
%batch_normalization_3/batchnorm/mul_1Mulfc1/BiasAdd:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22'
%batch_normalization_3/batchnorm/mul_1г
%batch_normalization_3/batchnorm/mul_2Mul.batch_normalization_3/moments/Squeeze:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:22'
%batch_normalization_3/batchnorm/mul_2д
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype020
.batch_normalization_3/batchnorm/ReadVariableOpй
#batch_normalization_3/batchnorm/subSub6batch_normalization_3/batchnorm/ReadVariableOp:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:22%
#batch_normalization_3/batchnorm/subн
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22'
%batch_normalization_3/batchnorm/add_1
activation_3/ReluRelu)batch_normalization_3/batchnorm/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
activation_3/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/dropout/ConstЊ
dropout_2/dropout/MulMulactivation_3/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_2/dropout/Mul
dropout_2/dropout/ShapeShapeactivation_3/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shapeв
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2"
 dropout_2/dropout/GreaterEqual/yц
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
dropout_2/dropout/GreaterEqual
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
dropout_2/dropout/CastЂ
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_2/dropout/Mul_1Ѕ
softmax/MatMul/ReadVariableOpReadVariableOp&softmax_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
softmax/MatMul/ReadVariableOp 
softmax/MatMulMatMuldropout_2/dropout/Mul_1:z:0%softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
softmax/MatMulЄ
softmax/BiasAdd/ReadVariableOpReadVariableOp'softmax_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
softmax/BiasAdd/ReadVariableOpЁ
softmax/BiasAddBiasAddsoftmax/MatMul:product:0&softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
softmax/BiasAddy
softmax/SoftmaxSoftmaxsoftmax/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
softmax/SoftmaxЉ	
IdentityIdentitysoftmax/Softmax:softmax:0&^batch_normalization_2/AssignMovingAvg5^batch_normalization_2/AssignMovingAvg/ReadVariableOp(^batch_normalization_2/AssignMovingAvg_17^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_2/batchnorm/ReadVariableOp3^batch_normalization_2/batchnorm/mul/ReadVariableOp&^batch_normalization_3/AssignMovingAvg5^batch_normalization_3/AssignMovingAvg/ReadVariableOp(^batch_normalization_3/AssignMovingAvg_17^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_3/batchnorm/ReadVariableOp3^batch_normalization_3/batchnorm/mul/ReadVariableOp^conv_1/BiasAdd/ReadVariableOp*^conv_1/conv1d/ExpandDims_1/ReadVariableOp^fc1/BiasAdd/ReadVariableOp^fc1/MatMul/ReadVariableOp*^lstm_1/lstm_cell_4/BiasAdd/ReadVariableOp)^lstm_1/lstm_cell_4/MatMul/ReadVariableOp+^lstm_1/lstm_cell_4/MatMul_1/ReadVariableOp^lstm_1/while*^lstm_2/lstm_cell_5/BiasAdd/ReadVariableOp)^lstm_2/lstm_cell_5/MatMul/ReadVariableOp+^lstm_2/lstm_cell_5/MatMul_1/ReadVariableOp^lstm_2/while^softmax/BiasAdd/ReadVariableOp^softmax/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ­: : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_2/AssignMovingAvg%batch_normalization_2/AssignMovingAvg2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_2/AssignMovingAvg_1'batch_normalization_2/AssignMovingAvg_12p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2N
%batch_normalization_3/AssignMovingAvg%batch_normalization_3/AssignMovingAvg2l
4batch_normalization_3/AssignMovingAvg/ReadVariableOp4batch_normalization_3/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_3/AssignMovingAvg_1'batch_normalization_3/AssignMovingAvg_12p
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2>
conv_1/BiasAdd/ReadVariableOpconv_1/BiasAdd/ReadVariableOp2V
)conv_1/conv1d/ExpandDims_1/ReadVariableOp)conv_1/conv1d/ExpandDims_1/ReadVariableOp28
fc1/BiasAdd/ReadVariableOpfc1/BiasAdd/ReadVariableOp26
fc1/MatMul/ReadVariableOpfc1/MatMul/ReadVariableOp2V
)lstm_1/lstm_cell_4/BiasAdd/ReadVariableOp)lstm_1/lstm_cell_4/BiasAdd/ReadVariableOp2T
(lstm_1/lstm_cell_4/MatMul/ReadVariableOp(lstm_1/lstm_cell_4/MatMul/ReadVariableOp2X
*lstm_1/lstm_cell_4/MatMul_1/ReadVariableOp*lstm_1/lstm_cell_4/MatMul_1/ReadVariableOp2
lstm_1/whilelstm_1/while2V
)lstm_2/lstm_cell_5/BiasAdd/ReadVariableOp)lstm_2/lstm_cell_5/BiasAdd/ReadVariableOp2T
(lstm_2/lstm_cell_5/MatMul/ReadVariableOp(lstm_2/lstm_cell_5/MatMul/ReadVariableOp2X
*lstm_2/lstm_cell_5/MatMul_1/ReadVariableOp*lstm_2/lstm_cell_5/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while2@
softmax/BiasAdd/ReadVariableOpsoftmax/BiasAdd/ReadVariableOp2>
softmax/MatMul/ReadVariableOpsoftmax/MatMul/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ­
 
_user_specified_nameinputs
и
I
-__inference_activation_2_layer_call_fn_318564

inputs
identityЫ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_2_layer_call_and_return_conditional_losses_3159302
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
§*
ю
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_318448

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradientВ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesЗ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg/decayЅ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulП
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg_1/decayЋ
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpЁ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulЩ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):џџџџџџџџџџџџџџџџџџ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

З
'__inference_lstm_1_layer_call_fn_319366
inputs_0
unknown:

	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3145282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
мG
Щ
while_body_318662
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_4_matmul_readvariableop_resource_0:
G
4while_lstm_cell_4_matmul_1_readvariableop_resource_0:	dB
3while_lstm_cell_4_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_4_matmul_readvariableop_resource:
E
2while_lstm_cell_4_matmul_1_readvariableop_resource:	d@
1while_lstm_cell_4_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_4/BiasAdd/ReadVariableOpЂ'while/lstm_cell_4/MatMul/ReadVariableOpЂ)while/lstm_cell_4/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_4/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/ones_like/Shape
!while/lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_4/ones_like/ConstЭ
while/lstm_cell_4/ones_likeFill*while/lstm_cell_4/ones_like/Shape:output:0*while/lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/ones_likeР
while/lstm_cell_4/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_4/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mulЧ
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOpН
while/lstm_cell_4/MatMulMatMulwhile/lstm_cell_4/mul:z:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/MatMulЬ
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOpН
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/MatMul_1Д
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/addХ
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOpС
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/BiasAdd
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/lstm_cell_4/split
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid_1Ё
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_1
while/lstm_cell_4/ReluRelu while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/ReluА
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid:y:0$while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_2Ї
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul_1:z:0while/lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/add_1
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid_2
while/lstm_cell_4/Relu_1Reluwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Relu_1Д
while/lstm_cell_4/mul_3Mulwhile/lstm_cell_4/Sigmoid_2:y:0&while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_4/mul_3:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Ф:
	
H__inference_sequential_1_layer_call_and_return_conditional_losses_317309
input_2%
conv_1_317257:­
conv_1_317259:	+
batch_normalization_2_317262:	+
batch_normalization_2_317264:	+
batch_normalization_2_317266:	+
batch_normalization_2_317268:	!
lstm_1_317273:
 
lstm_1_317275:	d
lstm_1_317277:	 
lstm_2_317280:	d 
lstm_2_317282:	d
lstm_2_317284:	

fc1_317287:d2

fc1_317289:2*
batch_normalization_3_317292:2*
batch_normalization_3_317294:2*
batch_normalization_3_317296:2*
batch_normalization_3_317298:2 
softmax_317303:2
softmax_317305:
identityЂ-batch_normalization_2/StatefulPartitionedCallЂ-batch_normalization_3/StatefulPartitionedCallЂconv_1/StatefulPartitionedCallЂ!dropout_1/StatefulPartitionedCallЂ!dropout_2/StatefulPartitionedCallЂfc1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCallЂlstm_2/StatefulPartitionedCallЂsoftmax/StatefulPartitionedCall
conv_1/StatefulPartitionedCallStatefulPartitionedCallinput_2conv_1_317257conv_1_317259*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_3158902 
conv_1/StatefulPartitionedCallЙ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0batch_normalization_2_317262batch_normalization_2_317264batch_normalization_2_317266batch_normalization_2_317268*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3169882/
-batch_normalization_2/StatefulPartitionedCall
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_2_layer_call_and_return_conditional_losses_3159302
activation_2/PartitionedCall
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3169302#
!dropout_1/StatefulPartitionedCallУ
lstm_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0lstm_1_317273lstm_1_317275lstm_1_317277*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3169012 
lstm_1/StatefulPartitionedCallМ
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_317280lstm_2_317282lstm_2_317284*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_3166562 
lstm_2/StatefulPartitionedCall
fc1/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0
fc1_317287
fc1_317289*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_3162812
fc1/StatefulPartitionedCallБ
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall$fc1/StatefulPartitionedCall:output:0batch_normalization_3_317292batch_normalization_3_317294batch_normalization_3_317296batch_normalization_3_317298*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_3157902/
-batch_normalization_3/StatefulPartitionedCall
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_3163012
activation_3/PartitionedCallВ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3164012#
!dropout_2/StatefulPartitionedCallГ
softmax/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0softmax_317303softmax_317305*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_3163212!
softmax/StatefulPartitionedCallЧ
IdentityIdentity(softmax/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall^fc1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall ^softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ­: : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2B
softmax/StatefulPartitionedCallsoftmax/StatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџ­
!
_user_specified_name	input_2
ц
Ж
'__inference_lstm_2_layer_call_fn_320174
inputs_0
unknown:	d
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_3151982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
Щy
Ч
while_body_319661
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_5_matmul_readvariableop_resource_0:	dG
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:	dB
3while_lstm_cell_5_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_5_matmul_readvariableop_resource:	dE
2while_lstm_cell_5_matmul_1_readvariableop_resource:	d@
1while_lstm_cell_5_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_5/BiasAdd/ReadVariableOpЂ'while/lstm_cell_5/MatMul/ReadVariableOpЂ)while/lstm_cell_5/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_5/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_5/ones_like/ConstЬ
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/ones_like
while/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_5/dropout/ConstЧ
while/lstm_cell_5/dropout/MulMul$while/lstm_cell_5/ones_like:output:0(while/lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/dropout/Mul
while/lstm_cell_5/dropout/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_5/dropout/Shape
6while/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2зх`28
6while/lstm_cell_5/dropout/random_uniform/RandomUniform
(while/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2*
(while/lstm_cell_5/dropout/GreaterEqual/y
&while/lstm_cell_5/dropout/GreaterEqualGreaterEqual?while/lstm_cell_5/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2(
&while/lstm_cell_5/dropout/GreaterEqualЕ
while/lstm_cell_5/dropout/CastCast*while/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2 
while/lstm_cell_5/dropout/CastТ
while/lstm_cell_5/dropout/Mul_1Mul!while/lstm_cell_5/dropout/Mul:z:0"while/lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
while/lstm_cell_5/dropout/Mul_1
!while/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_1/ConstЭ
while/lstm_cell_5/dropout_1/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
while/lstm_cell_5/dropout_1/Mul
!while/lstm_cell_5/dropout_1/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_1/Shape
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Н02:
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_5/dropout_1/GreaterEqual/y
(while/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(while/lstm_cell_5/dropout_1/GreaterEqualЛ
 while/lstm_cell_5/dropout_1/CastCast,while/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_5/dropout_1/CastЪ
!while/lstm_cell_5/dropout_1/Mul_1Mul#while/lstm_cell_5/dropout_1/Mul:z:0$while/lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_5/dropout_1/Mul_1
!while/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_2/ConstЭ
while/lstm_cell_5/dropout_2/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
while/lstm_cell_5/dropout_2/Mul
!while/lstm_cell_5/dropout_2/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_2/Shape
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2АЊ2:
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_5/dropout_2/GreaterEqual/y
(while/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(while/lstm_cell_5/dropout_2/GreaterEqualЛ
 while/lstm_cell_5/dropout_2/CastCast,while/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_5/dropout_2/CastЪ
!while/lstm_cell_5/dropout_2/Mul_1Mul#while/lstm_cell_5/dropout_2/Mul:z:0$while/lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_5/dropout_2/Mul_1
!while/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_3/ConstЭ
while/lstm_cell_5/dropout_3/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
while/lstm_cell_5/dropout_3/Mul
!while/lstm_cell_5/dropout_3/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_3/Shape
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2њ2:
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_5/dropout_3/GreaterEqual/y
(while/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(while/lstm_cell_5/dropout_3/GreaterEqualЛ
 while/lstm_cell_5/dropout_3/CastCast,while/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_5/dropout_3/CastЪ
!while/lstm_cell_5/dropout_3/Mul_1Mul#while/lstm_cell_5/dropout_3/Mul:z:0$while/lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_5/dropout_3/Mul_1О
while/lstm_cell_5/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mulЦ
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOpН
while/lstm_cell_5/MatMulMatMulwhile/lstm_cell_5/mul:z:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/MatMulЬ
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOpН
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/MatMul_1Д
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/addХ
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOpС
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/BiasAdd
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/lstm_cell_5/split
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid_1Ё
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_1
while/lstm_cell_5/ReluRelu while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/ReluА
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_2Ї
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul_1:z:0while/lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/add_1
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid_2
while/lstm_cell_5/Relu_1Reluwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Relu_1Д
while/lstm_cell_5/mul_3Mulwhile/lstm_cell_5/Sigmoid_2:y:0&while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_3:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 

З
'__inference_lstm_1_layer_call_fn_319377
inputs_0
unknown:

	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3147742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0

е
6__inference_batch_normalization_2_layer_call_fn_318554

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3169882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Г

є
C__inference_softmax_layer_call_and_return_conditional_losses_316321

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
і%
о
while_body_314459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_4_314483_0:
-
while_lstm_cell_4_314485_0:	d)
while_lstm_cell_4_314487_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_4_314483:
+
while_lstm_cell_4_314485:	d'
while_lstm_cell_4_314487:	Ђ)while/lstm_cell_4/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemл
)while/lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_4_314483_0while_lstm_cell_4_314485_0while_lstm_cell_4_314487_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_3144452+
)while/lstm_cell_4/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Т
while/Identity_4Identity2while/lstm_cell_4/StatefulPartitionedCall:output:1*^while/lstm_cell_4/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4Т
while/Identity_5Identity2while/lstm_cell_4/StatefulPartitionedCall:output:2*^while/lstm_cell_4/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_4_314483while_lstm_cell_4_314483_0"6
while_lstm_cell_4_314485while_lstm_cell_4_314485_0"6
while_lstm_cell_4_314487while_lstm_cell_4_314487_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_4/StatefulPartitionedCall)while/lstm_cell_4/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
А_

B__inference_lstm_2_layer_call_and_return_conditional_losses_319558
inputs_0=
*lstm_cell_5_matmul_readvariableop_resource:	d?
,lstm_cell_5_matmul_1_readvariableop_resource:	d:
+lstm_cell_5_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_5/BiasAdd/ReadVariableOpЂ!lstm_cell_5/MatMul/ReadVariableOpЂ#lstm_cell_5/MatMul_1/ReadVariableOpЂwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2
lstm_cell_5/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like/ConstД
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/ones_like
lstm_cell_5/mulMulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mulВ
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOpЅ
lstm_cell_5/MatMulMatMullstm_cell_5/mul:z:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/MatMulИ
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOpІ
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/MatMul_1
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/addБ
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOpЉ
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/BiasAdd|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dimя
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_cell_5/split
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid_1
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_1z
lstm_cell_5/ReluRelulstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Relu
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_2
lstm_cell_5/add_1AddV2lstm_cell_5/mul_1:z:0lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/add_1
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid_2y
lstm_cell_5/Relu_1Relulstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Relu_1
lstm_cell_5/mul_3Mullstm_cell_5/Sigmoid_2:y:0 lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterы
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_319470*
condR
while_cond_319469*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeу
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
д
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_316930

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЙ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yУ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:џџџџџџџџџ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџ2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

е
6__inference_batch_normalization_2_layer_call_fn_318541

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3159152
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Ї

lstm_2_while_body_318108*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_2_while_lstm_cell_5_matmul_readvariableop_resource_0:	dN
;lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resource_0:	dI
:lstm_2_while_lstm_cell_5_biasadd_readvariableop_resource_0:	
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorJ
7lstm_2_while_lstm_cell_5_matmul_readvariableop_resource:	dL
9lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resource:	dG
8lstm_2_while_lstm_cell_5_biasadd_readvariableop_resource:	Ђ/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOpЂ.lstm_2/while/lstm_cell_5/MatMul/ReadVariableOpЂ0lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOpб
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2@
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape§
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype022
0lstm_2/while/TensorArrayV2Read/TensorListGetItemЛ
(lstm_2/while/lstm_cell_5/ones_like/ShapeShape7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_2/while/lstm_cell_5/ones_like/Shape
(lstm_2/while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_2/while/lstm_cell_5/ones_like/Constш
"lstm_2/while/lstm_cell_5/ones_likeFill1lstm_2/while/lstm_cell_5/ones_like/Shape:output:01lstm_2/while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_2/while/lstm_cell_5/ones_like
&lstm_2/while/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&lstm_2/while/lstm_cell_5/dropout/Constу
$lstm_2/while/lstm_cell_5/dropout/MulMul+lstm_2/while/lstm_cell_5/ones_like:output:0/lstm_2/while/lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_2/while/lstm_cell_5/dropout/MulЋ
&lstm_2/while/lstm_cell_5/dropout/ShapeShape+lstm_2/while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_2/while/lstm_cell_5/dropout/Shape
=lstm_2/while/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform/lstm_2/while/lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2РлУ2?
=lstm_2/while/lstm_cell_5/dropout/random_uniform/RandomUniformЇ
/lstm_2/while/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>21
/lstm_2/while/lstm_cell_5/dropout/GreaterEqual/yЂ
-lstm_2/while/lstm_cell_5/dropout/GreaterEqualGreaterEqualFlstm_2/while/lstm_cell_5/dropout/random_uniform/RandomUniform:output:08lstm_2/while/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2/
-lstm_2/while/lstm_cell_5/dropout/GreaterEqualЪ
%lstm_2/while/lstm_cell_5/dropout/CastCast1lstm_2/while/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2'
%lstm_2/while/lstm_cell_5/dropout/Castо
&lstm_2/while/lstm_cell_5/dropout/Mul_1Mul(lstm_2/while/lstm_cell_5/dropout/Mul:z:0)lstm_2/while/lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2(
&lstm_2/while/lstm_cell_5/dropout/Mul_1
(lstm_2/while/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_2/while/lstm_cell_5/dropout_1/Constщ
&lstm_2/while/lstm_cell_5/dropout_1/MulMul+lstm_2/while/lstm_cell_5/ones_like:output:01lstm_2/while/lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2(
&lstm_2/while/lstm_cell_5/dropout_1/MulЏ
(lstm_2/while/lstm_cell_5/dropout_1/ShapeShape+lstm_2/while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_2/while/lstm_cell_5/dropout_1/ShapeЄ
?lstm_2/while/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_2/while/lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2КНп2A
?lstm_2/while/lstm_cell_5/dropout_1/random_uniform/RandomUniformЋ
1lstm_2/while/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>23
1lstm_2/while/lstm_cell_5/dropout_1/GreaterEqual/yЊ
/lstm_2/while/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualHlstm_2/while/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:0:lstm_2/while/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd21
/lstm_2/while/lstm_cell_5/dropout_1/GreaterEqualа
'lstm_2/while/lstm_cell_5/dropout_1/CastCast3lstm_2/while/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2)
'lstm_2/while/lstm_cell_5/dropout_1/Castц
(lstm_2/while/lstm_cell_5/dropout_1/Mul_1Mul*lstm_2/while/lstm_cell_5/dropout_1/Mul:z:0+lstm_2/while/lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(lstm_2/while/lstm_cell_5/dropout_1/Mul_1
(lstm_2/while/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_2/while/lstm_cell_5/dropout_2/Constщ
&lstm_2/while/lstm_cell_5/dropout_2/MulMul+lstm_2/while/lstm_cell_5/ones_like:output:01lstm_2/while/lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2(
&lstm_2/while/lstm_cell_5/dropout_2/MulЏ
(lstm_2/while/lstm_cell_5/dropout_2/ShapeShape+lstm_2/while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_2/while/lstm_cell_5/dropout_2/ShapeЄ
?lstm_2/while/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_2/while/lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ьэ2A
?lstm_2/while/lstm_cell_5/dropout_2/random_uniform/RandomUniformЋ
1lstm_2/while/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>23
1lstm_2/while/lstm_cell_5/dropout_2/GreaterEqual/yЊ
/lstm_2/while/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualHlstm_2/while/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:0:lstm_2/while/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd21
/lstm_2/while/lstm_cell_5/dropout_2/GreaterEqualа
'lstm_2/while/lstm_cell_5/dropout_2/CastCast3lstm_2/while/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2)
'lstm_2/while/lstm_cell_5/dropout_2/Castц
(lstm_2/while/lstm_cell_5/dropout_2/Mul_1Mul*lstm_2/while/lstm_cell_5/dropout_2/Mul:z:0+lstm_2/while/lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(lstm_2/while/lstm_cell_5/dropout_2/Mul_1
(lstm_2/while/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_2/while/lstm_cell_5/dropout_3/Constщ
&lstm_2/while/lstm_cell_5/dropout_3/MulMul+lstm_2/while/lstm_cell_5/ones_like:output:01lstm_2/while/lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2(
&lstm_2/while/lstm_cell_5/dropout_3/MulЏ
(lstm_2/while/lstm_cell_5/dropout_3/ShapeShape+lstm_2/while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_2/while/lstm_cell_5/dropout_3/ShapeЄ
?lstm_2/while/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_2/while/lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ЋЗІ2A
?lstm_2/while/lstm_cell_5/dropout_3/random_uniform/RandomUniformЋ
1lstm_2/while/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>23
1lstm_2/while/lstm_cell_5/dropout_3/GreaterEqual/yЊ
/lstm_2/while/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualHlstm_2/while/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:0:lstm_2/while/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd21
/lstm_2/while/lstm_cell_5/dropout_3/GreaterEqualа
'lstm_2/while/lstm_cell_5/dropout_3/CastCast3lstm_2/while/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2)
'lstm_2/while/lstm_cell_5/dropout_3/Castц
(lstm_2/while/lstm_cell_5/dropout_3/Mul_1Mul*lstm_2/while/lstm_cell_5/dropout_3/Mul:z:0+lstm_2/while/lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(lstm_2/while/lstm_cell_5/dropout_3/Mul_1к
lstm_2/while/lstm_cell_5/mulMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm_2/while/lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/while/lstm_cell_5/mulл
.lstm_2/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp9lstm_2_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype020
.lstm_2/while/lstm_cell_5/MatMul/ReadVariableOpй
lstm_2/while/lstm_cell_5/MatMulMatMul lstm_2/while/lstm_cell_5/mul:z:06lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
lstm_2/while/lstm_cell_5/MatMulс
0lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype022
0lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOpй
!lstm_2/while/lstm_cell_5/MatMul_1MatMullstm_2_while_placeholder_28lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!lstm_2/while/lstm_cell_5/MatMul_1а
lstm_2/while/lstm_cell_5/addAddV2)lstm_2/while/lstm_cell_5/MatMul:product:0+lstm_2/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_2/while/lstm_cell_5/addк
/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOpн
 lstm_2/while/lstm_cell_5/BiasAddBiasAdd lstm_2/while/lstm_cell_5/add:z:07lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_2/while/lstm_cell_5/BiasAdd
(lstm_2/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_2/while/lstm_cell_5/split/split_dimЃ
lstm_2/while/lstm_cell_5/splitSplit1lstm_2/while/lstm_cell_5/split/split_dim:output:0)lstm_2/while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2 
lstm_2/while/lstm_cell_5/splitЊ
 lstm_2/while/lstm_cell_5/SigmoidSigmoid'lstm_2/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_2/while/lstm_cell_5/SigmoidЎ
"lstm_2/while/lstm_cell_5/Sigmoid_1Sigmoid'lstm_2/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_2/while/lstm_cell_5/Sigmoid_1Н
lstm_2/while/lstm_cell_5/mul_1Mul&lstm_2/while/lstm_cell_5/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_2/while/lstm_cell_5/mul_1Ё
lstm_2/while/lstm_cell_5/ReluRelu'lstm_2/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/while/lstm_cell_5/ReluЬ
lstm_2/while/lstm_cell_5/mul_2Mul$lstm_2/while/lstm_cell_5/Sigmoid:y:0+lstm_2/while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_2/while/lstm_cell_5/mul_2У
lstm_2/while/lstm_cell_5/add_1AddV2"lstm_2/while/lstm_cell_5/mul_1:z:0"lstm_2/while/lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_2/while/lstm_cell_5/add_1Ў
"lstm_2/while/lstm_cell_5/Sigmoid_2Sigmoid'lstm_2/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_2/while/lstm_cell_5/Sigmoid_2 
lstm_2/while/lstm_cell_5/Relu_1Relu"lstm_2/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
lstm_2/while/lstm_cell_5/Relu_1а
lstm_2/while/lstm_cell_5/mul_3Mul&lstm_2/while/lstm_cell_5/Sigmoid_2:y:0-lstm_2/while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_2/while/lstm_cell_5/mul_3
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder"lstm_2/while/lstm_cell_5/mul_3:z:0*
_output_shapes
: *
element_dtype023
1lstm_2/while/TensorArrayV2Write/TensorListSetItemj
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add/y
lstm_2/while/addAddV2lstm_2_while_placeholderlstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/addn
lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add_1/y
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/add_1
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:00^lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/IdentityЃ
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations0^lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_1
lstm_2/while/Identity_2Identitylstm_2/while/add:z:00^lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_2И
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_3Њ
lstm_2/while/Identity_4Identity"lstm_2/while/lstm_cell_5/mul_3:z:00^lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/while/Identity_4Њ
lstm_2/while/Identity_5Identity"lstm_2/while/lstm_cell_5/add_1:z:00^lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_2/while/Identity_5"7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"v
8lstm_2_while_lstm_cell_5_biasadd_readvariableop_resource:lstm_2_while_lstm_cell_5_biasadd_readvariableop_resource_0"x
9lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resource;lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resource_0"t
7lstm_2_while_lstm_cell_5_matmul_readvariableop_resource9lstm_2_while_lstm_cell_5_matmul_readvariableop_resource_0"Ф
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2b
/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp2`
.lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp.lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp2d
0lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp0lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
ђ
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_320321

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ22

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs


$__inference_fc1_layer_call_fn_320226

inputs
unknown:d2
	unknown_0:2
identityЂStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_3162812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
О
F
*__inference_dropout_2_layer_call_fn_320338

inputs
identityУ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3163082
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs


B__inference_conv_1_layer_call_and_return_conditional_losses_315890

inputsC
+conv1d_expanddims_1_readvariableop_resource:­.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ­2
conv1d/ExpandDimsК
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:­*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЙ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:­2
conv1d/ExpandDims_1И
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ2	
BiasAddЇ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ­: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ­
 
_user_specified_nameinputs
ђ
Д
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_314228

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
batchnorm/add_1щ
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):џџџџџџџџџџџџџџџџџџ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

c
E__inference_dropout_1_layer_call_and_return_conditional_losses_318569

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
жG
Ч
while_body_319470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_5_matmul_readvariableop_resource_0:	dG
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:	dB
3while_lstm_cell_5_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_5_matmul_readvariableop_resource:	dE
2while_lstm_cell_5_matmul_1_readvariableop_resource:	d@
1while_lstm_cell_5_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_5/BiasAdd/ReadVariableOpЂ'while/lstm_cell_5/MatMul/ReadVariableOpЂ)while/lstm_cell_5/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_5/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_5/ones_like/ConstЬ
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/ones_likeП
while/lstm_cell_5/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mulЦ
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOpН
while/lstm_cell_5/MatMulMatMulwhile/lstm_cell_5/mul:z:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/MatMulЬ
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOpН
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/MatMul_1Д
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/addХ
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOpС
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/BiasAdd
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/lstm_cell_5/split
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid_1Ё
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_1
while/lstm_cell_5/ReluRelu while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/ReluА
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_2Ї
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul_1:z:0while/lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/add_1
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid_2
while/lstm_cell_5/Relu_1Reluwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Relu_1Д
while/lstm_cell_5/mul_3Mulwhile/lstm_cell_5/Sigmoid_2:y:0&while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_3:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
ѓ%
м
while_body_315375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_5_315399_0:	d-
while_lstm_cell_5_315401_0:	d)
while_lstm_cell_5_315403_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_5_315399:	d+
while_lstm_cell_5_315401:	d'
while_lstm_cell_5_315403:	Ђ)while/lstm_cell_5/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemл
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_315399_0while_lstm_cell_5_315401_0while_lstm_cell_5_315403_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_3152972+
)while/lstm_cell_5/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Т
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1*^while/lstm_cell_5/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4Т
while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2*^while/lstm_cell_5/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_5_315399while_lstm_cell_5_315399_0"6
while_lstm_cell_5_315401while_lstm_cell_5_315401_0"6
while_lstm_cell_5_315403while_lstm_cell_5_315403_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
џ
б
6__inference_batch_normalization_3_layer_call_fn_320306

inputs
unknown:2
	unknown_0:2
	unknown_1:2
	unknown_2:2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_3157902
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Ыy
Ч
while_body_316536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_5_matmul_readvariableop_resource_0:	dG
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:	dB
3while_lstm_cell_5_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_5_matmul_readvariableop_resource:	dE
2while_lstm_cell_5_matmul_1_readvariableop_resource:	d@
1while_lstm_cell_5_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_5/BiasAdd/ReadVariableOpЂ'while/lstm_cell_5/MatMul/ReadVariableOpЂ)while/lstm_cell_5/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_5/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_5/ones_like/ConstЬ
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/ones_like
while/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_5/dropout/ConstЧ
while/lstm_cell_5/dropout/MulMul$while/lstm_cell_5/ones_like:output:0(while/lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/dropout/Mul
while/lstm_cell_5/dropout/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_5/dropout/Shape
6while/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2жД28
6while/lstm_cell_5/dropout/random_uniform/RandomUniform
(while/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2*
(while/lstm_cell_5/dropout/GreaterEqual/y
&while/lstm_cell_5/dropout/GreaterEqualGreaterEqual?while/lstm_cell_5/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2(
&while/lstm_cell_5/dropout/GreaterEqualЕ
while/lstm_cell_5/dropout/CastCast*while/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2 
while/lstm_cell_5/dropout/CastТ
while/lstm_cell_5/dropout/Mul_1Mul!while/lstm_cell_5/dropout/Mul:z:0"while/lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
while/lstm_cell_5/dropout/Mul_1
!while/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_1/ConstЭ
while/lstm_cell_5/dropout_1/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
while/lstm_cell_5/dropout_1/Mul
!while/lstm_cell_5/dropout_1/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_1/Shape
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Б2:
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_5/dropout_1/GreaterEqual/y
(while/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(while/lstm_cell_5/dropout_1/GreaterEqualЛ
 while/lstm_cell_5/dropout_1/CastCast,while/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_5/dropout_1/CastЪ
!while/lstm_cell_5/dropout_1/Mul_1Mul#while/lstm_cell_5/dropout_1/Mul:z:0$while/lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_5/dropout_1/Mul_1
!while/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_2/ConstЭ
while/lstm_cell_5/dropout_2/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
while/lstm_cell_5/dropout_2/Mul
!while/lstm_cell_5/dropout_2/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_2/Shape
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ї2:
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_5/dropout_2/GreaterEqual/y
(while/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(while/lstm_cell_5/dropout_2/GreaterEqualЛ
 while/lstm_cell_5/dropout_2/CastCast,while/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_5/dropout_2/CastЪ
!while/lstm_cell_5/dropout_2/Mul_1Mul#while/lstm_cell_5/dropout_2/Mul:z:0$while/lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_5/dropout_2/Mul_1
!while/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_3/ConstЭ
while/lstm_cell_5/dropout_3/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
while/lstm_cell_5/dropout_3/Mul
!while/lstm_cell_5/dropout_3/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_3/Shape
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2шк2:
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_5/dropout_3/GreaterEqual/y
(while/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(while/lstm_cell_5/dropout_3/GreaterEqualЛ
 while/lstm_cell_5/dropout_3/CastCast,while/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_5/dropout_3/CastЪ
!while/lstm_cell_5/dropout_3/Mul_1Mul#while/lstm_cell_5/dropout_3/Mul:z:0$while/lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_5/dropout_3/Mul_1О
while/lstm_cell_5/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mulЦ
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOpН
while/lstm_cell_5/MatMulMatMulwhile/lstm_cell_5/mul:z:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/MatMulЬ
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOpН
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/MatMul_1Д
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/addХ
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOpС
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/BiasAdd
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/lstm_cell_5/split
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid_1Ё
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_1
while/lstm_cell_5/ReluRelu while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/ReluА
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_2Ї
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul_1:z:0while/lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/add_1
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid_2
while/lstm_cell_5/Relu_1Reluwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Relu_1Д
while/lstm_cell_5/mul_3Mulwhile/lstm_cell_5/Sigmoid_2:y:0&while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_3:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
д
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_318581

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЙ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yУ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:џџџџџџџџџ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџ2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
В

'__inference_conv_1_layer_call_fn_318394

inputs
unknown:­
	unknown_0:	
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_3158902
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ­: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ­
 
_user_specified_nameinputs


B__inference_lstm_2_layer_call_and_return_conditional_losses_316656

inputs=
*lstm_cell_5_matmul_readvariableop_resource:	d?
,lstm_cell_5_matmul_1_readvariableop_resource:	d:
+lstm_cell_5_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_5/BiasAdd/ReadVariableOpЂ!lstm_cell_5/MatMul/ReadVariableOpЂ#lstm_cell_5/MatMul_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2
lstm_cell_5/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like/ConstД
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/ones_like{
lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout/ConstЏ
lstm_cell_5/dropout/MulMullstm_cell_5/ones_like:output:0"lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout/Mul
lstm_cell_5/dropout/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout/Shapeї
0lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2цёН22
0lstm_cell_5/dropout/random_uniform/RandomUniform
"lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2$
"lstm_cell_5/dropout/GreaterEqual/yю
 lstm_cell_5/dropout/GreaterEqualGreaterEqual9lstm_cell_5/dropout/random_uniform/RandomUniform:output:0+lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_cell_5/dropout/GreaterEqualЃ
lstm_cell_5/dropout/CastCast$lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout/CastЊ
lstm_cell_5/dropout/Mul_1Mullstm_cell_5/dropout/Mul:z:0lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout/Mul_1
lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_1/ConstЕ
lstm_cell_5/dropout_1/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_1/Mul
lstm_cell_5/dropout_1/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_1/Shape§
2lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ЄА24
2lstm_cell_5/dropout_1/random_uniform/RandomUniform
$lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_5/dropout_1/GreaterEqual/yі
"lstm_cell_5/dropout_1/GreaterEqualGreaterEqual;lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_cell_5/dropout_1/GreaterEqualЉ
lstm_cell_5/dropout_1/CastCast&lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_1/CastВ
lstm_cell_5/dropout_1/Mul_1Mullstm_cell_5/dropout_1/Mul:z:0lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_1/Mul_1
lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_2/ConstЕ
lstm_cell_5/dropout_2/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_2/Mul
lstm_cell_5/dropout_2/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_2/Shape§
2lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ч24
2lstm_cell_5/dropout_2/random_uniform/RandomUniform
$lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_5/dropout_2/GreaterEqual/yі
"lstm_cell_5/dropout_2/GreaterEqualGreaterEqual;lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_cell_5/dropout_2/GreaterEqualЉ
lstm_cell_5/dropout_2/CastCast&lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_2/CastВ
lstm_cell_5/dropout_2/Mul_1Mullstm_cell_5/dropout_2/Mul:z:0lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_2/Mul_1
lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_3/ConstЕ
lstm_cell_5/dropout_3/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_3/Mul
lstm_cell_5/dropout_3/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_3/Shape§
2lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2й24
2lstm_cell_5/dropout_3/random_uniform/RandomUniform
$lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_5/dropout_3/GreaterEqual/yі
"lstm_cell_5/dropout_3/GreaterEqualGreaterEqual;lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_cell_5/dropout_3/GreaterEqualЉ
lstm_cell_5/dropout_3/CastCast&lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_3/CastВ
lstm_cell_5/dropout_3/Mul_1Mullstm_cell_5/dropout_3/Mul:z:0lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_3/Mul_1
lstm_cell_5/mulMulstrided_slice_2:output:0lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mulВ
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOpЅ
lstm_cell_5/MatMulMatMullstm_cell_5/mul:z:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/MatMulИ
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOpІ
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/MatMul_1
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/addБ
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOpЉ
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/BiasAdd|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dimя
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_cell_5/split
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid_1
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_1z
lstm_cell_5/ReluRelulstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Relu
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_2
lstm_cell_5/add_1AddV2lstm_cell_5/mul_1:z:0lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/add_1
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid_2y
lstm_cell_5/Relu_1Relulstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Relu_1
lstm_cell_5/mul_3Mullstm_cell_5/Sigmoid_2:y:0 lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterы
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_316536*
condR
while_cond_316535*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeу
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
§*
ю
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_314288

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradientВ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesЗ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg/decayЅ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulП
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg_1/decayЋ
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpЁ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulЩ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):џџџџџџџџџџџџџџџџџџ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ДC

G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_315297

inputs

states
states_11
matmul_readvariableop_resource:	d3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shapeг
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2еъ2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeй
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2у2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_1/GreaterEqual/yЦ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeй
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Ю2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_2/GreaterEqual/yЦ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeи
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2єНh2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_3/GreaterEqual/yЦ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_3/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_3Ј
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

IdentityЌ

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates
Й

-__inference_sequential_1_layer_call_fn_318325

inputs
unknown:­
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	d
	unknown_7:	
	unknown_8:	d
	unknown_9:	d

unknown_10:	

unknown_11:d2

unknown_12:2

unknown_13:2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:2

unknown_18:
identityЂStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3163282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ­: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ­
 
_user_specified_nameinputs

ѕ
,__inference_lstm_cell_5_layer_call_fn_320639

inputs
states_0
states_1
unknown:	d
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_3152972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
е
Ф*
"__inference__traced_restore_321062
file_prefix6
assignvariableop_conv_1_kernel:­-
assignvariableop_1_conv_1_bias:	=
.assignvariableop_2_batch_normalization_2_gamma:	<
-assignvariableop_3_batch_normalization_2_beta:	C
4assignvariableop_4_batch_normalization_2_moving_mean:	G
8assignvariableop_5_batch_normalization_2_moving_variance:	/
assignvariableop_6_fc1_kernel:d2)
assignvariableop_7_fc1_bias:2<
.assignvariableop_8_batch_normalization_3_gamma:2;
-assignvariableop_9_batch_normalization_3_beta:2C
5assignvariableop_10_batch_normalization_3_moving_mean:2G
9assignvariableop_11_batch_normalization_3_moving_variance:24
"assignvariableop_12_softmax_kernel:2.
 assignvariableop_13_softmax_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: A
-assignvariableop_19_lstm_1_lstm_cell_4_kernel:
J
7assignvariableop_20_lstm_1_lstm_cell_4_recurrent_kernel:	d:
+assignvariableop_21_lstm_1_lstm_cell_4_bias:	@
-assignvariableop_22_lstm_2_lstm_cell_5_kernel:	dJ
7assignvariableop_23_lstm_2_lstm_cell_5_recurrent_kernel:	d:
+assignvariableop_24_lstm_2_lstm_cell_5_bias:	#
assignvariableop_25_total: #
assignvariableop_26_count: %
assignvariableop_27_total_1: %
assignvariableop_28_count_1: 0
"assignvariableop_29_true_positives:1
#assignvariableop_30_false_negatives:2
$assignvariableop_31_true_positives_1:1
#assignvariableop_32_false_positives:@
(assignvariableop_33_adam_conv_1_kernel_m:­5
&assignvariableop_34_adam_conv_1_bias_m:	E
6assignvariableop_35_adam_batch_normalization_2_gamma_m:	D
5assignvariableop_36_adam_batch_normalization_2_beta_m:	7
%assignvariableop_37_adam_fc1_kernel_m:d21
#assignvariableop_38_adam_fc1_bias_m:2D
6assignvariableop_39_adam_batch_normalization_3_gamma_m:2C
5assignvariableop_40_adam_batch_normalization_3_beta_m:2;
)assignvariableop_41_adam_softmax_kernel_m:25
'assignvariableop_42_adam_softmax_bias_m:H
4assignvariableop_43_adam_lstm_1_lstm_cell_4_kernel_m:
Q
>assignvariableop_44_adam_lstm_1_lstm_cell_4_recurrent_kernel_m:	dA
2assignvariableop_45_adam_lstm_1_lstm_cell_4_bias_m:	G
4assignvariableop_46_adam_lstm_2_lstm_cell_5_kernel_m:	dQ
>assignvariableop_47_adam_lstm_2_lstm_cell_5_recurrent_kernel_m:	dA
2assignvariableop_48_adam_lstm_2_lstm_cell_5_bias_m:	@
(assignvariableop_49_adam_conv_1_kernel_v:­5
&assignvariableop_50_adam_conv_1_bias_v:	E
6assignvariableop_51_adam_batch_normalization_2_gamma_v:	D
5assignvariableop_52_adam_batch_normalization_2_beta_v:	7
%assignvariableop_53_adam_fc1_kernel_v:d21
#assignvariableop_54_adam_fc1_bias_v:2D
6assignvariableop_55_adam_batch_normalization_3_gamma_v:2C
5assignvariableop_56_adam_batch_normalization_3_beta_v:2;
)assignvariableop_57_adam_softmax_kernel_v:25
'assignvariableop_58_adam_softmax_bias_v:H
4assignvariableop_59_adam_lstm_1_lstm_cell_4_kernel_v:
Q
>assignvariableop_60_adam_lstm_1_lstm_cell_4_recurrent_kernel_v:	dA
2assignvariableop_61_adam_lstm_1_lstm_cell_4_bias_v:	G
4assignvariableop_62_adam_lstm_2_lstm_cell_5_kernel_v:	dQ
>assignvariableop_63_adam_lstm_2_lstm_cell_5_recurrent_kernel_v:	dA
2assignvariableop_64_adam_lstm_2_lstm_cell_5_bias_v:	
identity_66ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ю#
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*к"
valueа"BЭ"BB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*
valueBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesј
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*P
dtypesF
D2B	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_conv_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѓ
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Г
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_2_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3В
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_2_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Й
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_2_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Н
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_2_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ђ
AssignVariableOp_6AssignVariableOpassignvariableop_6_fc1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7 
AssignVariableOp_7AssignVariableOpassignvariableop_7_fc1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Г
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_3_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9В
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_3_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Н
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_3_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11С
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_3_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Њ
AssignVariableOp_12AssignVariableOp"assignvariableop_12_softmax_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ј
AssignVariableOp_13AssignVariableOp assignvariableop_13_softmax_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14Ѕ
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ї
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ї
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17І
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ў
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Е
AssignVariableOp_19AssignVariableOp-assignvariableop_19_lstm_1_lstm_cell_4_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20П
AssignVariableOp_20AssignVariableOp7assignvariableop_20_lstm_1_lstm_cell_4_recurrent_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Г
AssignVariableOp_21AssignVariableOp+assignvariableop_21_lstm_1_lstm_cell_4_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Е
AssignVariableOp_22AssignVariableOp-assignvariableop_22_lstm_2_lstm_cell_5_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23П
AssignVariableOp_23AssignVariableOp7assignvariableop_23_lstm_2_lstm_cell_5_recurrent_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Г
AssignVariableOp_24AssignVariableOp+assignvariableop_24_lstm_2_lstm_cell_5_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ё
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ё
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Ѓ
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ѓ
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Њ
AssignVariableOp_29AssignVariableOp"assignvariableop_29_true_positivesIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ћ
AssignVariableOp_30AssignVariableOp#assignvariableop_30_false_negativesIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Ќ
AssignVariableOp_31AssignVariableOp$assignvariableop_31_true_positives_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Ћ
AssignVariableOp_32AssignVariableOp#assignvariableop_32_false_positivesIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33А
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv_1_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Ў
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_conv_1_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35О
AssignVariableOp_35AssignVariableOp6assignvariableop_35_adam_batch_normalization_2_gamma_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Н
AssignVariableOp_36AssignVariableOp5assignvariableop_36_adam_batch_normalization_2_beta_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37­
AssignVariableOp_37AssignVariableOp%assignvariableop_37_adam_fc1_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Ћ
AssignVariableOp_38AssignVariableOp#assignvariableop_38_adam_fc1_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39О
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_batch_normalization_3_gamma_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40Н
AssignVariableOp_40AssignVariableOp5assignvariableop_40_adam_batch_normalization_3_beta_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41Б
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_softmax_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42Џ
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_softmax_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43М
AssignVariableOp_43AssignVariableOp4assignvariableop_43_adam_lstm_1_lstm_cell_4_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44Ц
AssignVariableOp_44AssignVariableOp>assignvariableop_44_adam_lstm_1_lstm_cell_4_recurrent_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45К
AssignVariableOp_45AssignVariableOp2assignvariableop_45_adam_lstm_1_lstm_cell_4_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46М
AssignVariableOp_46AssignVariableOp4assignvariableop_46_adam_lstm_2_lstm_cell_5_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47Ц
AssignVariableOp_47AssignVariableOp>assignvariableop_47_adam_lstm_2_lstm_cell_5_recurrent_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48К
AssignVariableOp_48AssignVariableOp2assignvariableop_48_adam_lstm_2_lstm_cell_5_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49А
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_conv_1_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50Ў
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_conv_1_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51О
AssignVariableOp_51AssignVariableOp6assignvariableop_51_adam_batch_normalization_2_gamma_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52Н
AssignVariableOp_52AssignVariableOp5assignvariableop_52_adam_batch_normalization_2_beta_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53­
AssignVariableOp_53AssignVariableOp%assignvariableop_53_adam_fc1_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54Ћ
AssignVariableOp_54AssignVariableOp#assignvariableop_54_adam_fc1_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55О
AssignVariableOp_55AssignVariableOp6assignvariableop_55_adam_batch_normalization_3_gamma_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56Н
AssignVariableOp_56AssignVariableOp5assignvariableop_56_adam_batch_normalization_3_beta_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57Б
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_softmax_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58Џ
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_softmax_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59М
AssignVariableOp_59AssignVariableOp4assignvariableop_59_adam_lstm_1_lstm_cell_4_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60Ц
AssignVariableOp_60AssignVariableOp>assignvariableop_60_adam_lstm_1_lstm_cell_4_recurrent_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61К
AssignVariableOp_61AssignVariableOp2assignvariableop_61_adam_lstm_1_lstm_cell_4_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62М
AssignVariableOp_62AssignVariableOp4assignvariableop_62_adam_lstm_2_lstm_cell_5_kernel_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63Ц
AssignVariableOp_63AssignVariableOp>assignvariableop_63_adam_lstm_2_lstm_cell_5_recurrent_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64К
AssignVariableOp_64AssignVariableOp2assignvariableop_64_adam_lstm_2_lstm_cell_5_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_649
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpє
Identity_65Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_65ч
Identity_66IdentityIdentity_65:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_66"#
identity_66Identity_66:output:0*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
й
Е
'__inference_lstm_1_layer_call_fn_319388

inputs
unknown:

	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3160972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Н
е
6__inference_batch_normalization_2_layer_call_fn_318515

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3142282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):џџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
е
У
while_cond_314704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_314704___redundant_placeholder04
0while_while_cond_314704___redundant_placeholder14
0while_while_cond_314704___redundant_placeholder24
0while_while_cond_314704___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
М_

B__inference_lstm_1_layer_call_and_return_conditional_losses_318750
inputs_0>
*lstm_cell_4_matmul_readvariableop_resource:
?
,lstm_cell_4_matmul_1_readvariableop_resource:	d:
+lstm_cell_4_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_4/BiasAdd/ReadVariableOpЂ!lstm_cell_4/MatMul/ReadVariableOpЂ#lstm_cell_4/MatMul_1/ReadVariableOpЂwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
lstm_cell_4/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_4/ones_like/Shape
lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_4/ones_like/ConstЕ
lstm_cell_4/ones_likeFill$lstm_cell_4/ones_like/Shape:output:0$lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/ones_like
lstm_cell_4/mulMulstrided_slice_2:output:0lstm_cell_4/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mulГ
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOpЅ
lstm_cell_4/MatMulMatMullstm_cell_4/mul:z:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/MatMulИ
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOpІ
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/MatMul_1
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/addБ
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOpЉ
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/BiasAdd|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dimя
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_cell_4/split
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid_1
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_1z
lstm_cell_4/ReluRelulstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Relu
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_2
lstm_cell_4/add_1AddV2lstm_cell_4/mul_1:z:0lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/add_1
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid_2y
lstm_cell_4/Relu_1Relulstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Relu_1
lstm_cell_4/mul_3Mullstm_cell_4/Sigmoid_2:y:0 lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterы
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_318662*
condR
while_cond_318661*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeч
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
фR
Љ

lstm_1_while_body_317462*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0M
9lstm_1_while_lstm_cell_4_matmul_readvariableop_resource_0:
N
;lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resource_0:	dI
:lstm_1_while_lstm_cell_4_biasadd_readvariableop_resource_0:	
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorK
7lstm_1_while_lstm_cell_4_matmul_readvariableop_resource:
L
9lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resource:	dG
8lstm_1_while_lstm_cell_4_biasadd_readvariableop_resource:	Ђ/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOpЂ.lstm_1/while/lstm_cell_4/MatMul/ReadVariableOpЂ0lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOpб
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2@
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeў
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype022
0lstm_1/while/TensorArrayV2Read/TensorListGetItemЛ
(lstm_1/while/lstm_cell_4/ones_like/ShapeShape7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_4/ones_like/Shape
(lstm_1/while/lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_1/while/lstm_cell_4/ones_like/Constщ
"lstm_1/while/lstm_cell_4/ones_likeFill1lstm_1/while/lstm_cell_4/ones_like/Shape:output:01lstm_1/while/lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_1/while/lstm_cell_4/ones_likeм
lstm_1/while/lstm_cell_4/mulMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_1/while/lstm_cell_4/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/while/lstm_cell_4/mulм
.lstm_1/while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp9lstm_1_while_lstm_cell_4_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype020
.lstm_1/while/lstm_cell_4/MatMul/ReadVariableOpй
lstm_1/while/lstm_cell_4/MatMulMatMul lstm_1/while/lstm_cell_4/mul:z:06lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
lstm_1/while/lstm_cell_4/MatMulс
0lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp;lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype022
0lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOpй
!lstm_1/while/lstm_cell_4/MatMul_1MatMullstm_1_while_placeholder_28lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!lstm_1/while/lstm_cell_4/MatMul_1а
lstm_1/while/lstm_cell_4/addAddV2)lstm_1/while/lstm_cell_4/MatMul:product:0+lstm_1/while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/while/lstm_cell_4/addк
/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOpн
 lstm_1/while/lstm_cell_4/BiasAddBiasAdd lstm_1/while/lstm_cell_4/add:z:07lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_1/while/lstm_cell_4/BiasAdd
(lstm_1/while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_1/while/lstm_cell_4/split/split_dimЃ
lstm_1/while/lstm_cell_4/splitSplit1lstm_1/while/lstm_cell_4/split/split_dim:output:0)lstm_1/while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2 
lstm_1/while/lstm_cell_4/splitЊ
 lstm_1/while/lstm_cell_4/SigmoidSigmoid'lstm_1/while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_1/while/lstm_cell_4/SigmoidЎ
"lstm_1/while/lstm_cell_4/Sigmoid_1Sigmoid'lstm_1/while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_1/while/lstm_cell_4/Sigmoid_1Н
lstm_1/while/lstm_cell_4/mul_1Mul&lstm_1/while/lstm_cell_4/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_1/while/lstm_cell_4/mul_1Ё
lstm_1/while/lstm_cell_4/ReluRelu'lstm_1/while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/while/lstm_cell_4/ReluЬ
lstm_1/while/lstm_cell_4/mul_2Mul$lstm_1/while/lstm_cell_4/Sigmoid:y:0+lstm_1/while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_1/while/lstm_cell_4/mul_2У
lstm_1/while/lstm_cell_4/add_1AddV2"lstm_1/while/lstm_cell_4/mul_1:z:0"lstm_1/while/lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_1/while/lstm_cell_4/add_1Ў
"lstm_1/while/lstm_cell_4/Sigmoid_2Sigmoid'lstm_1/while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_1/while/lstm_cell_4/Sigmoid_2 
lstm_1/while/lstm_cell_4/Relu_1Relu"lstm_1/while/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
lstm_1/while/lstm_cell_4/Relu_1а
lstm_1/while/lstm_cell_4/mul_3Mul&lstm_1/while/lstm_cell_4/Sigmoid_2:y:0-lstm_1/while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_1/while/lstm_cell_4/mul_3
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder"lstm_1/while/lstm_cell_4/mul_3:z:0*
_output_shapes
: *
element_dtype023
1lstm_1/while/TensorArrayV2Write/TensorListSetItemj
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add/y
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/addn
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add_1/y
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/add_1
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:00^lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/IdentityЃ
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations0^lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_1
lstm_1/while/Identity_2Identitylstm_1/while/add:z:00^lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_2И
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_3Њ
lstm_1/while/Identity_4Identity"lstm_1/while/lstm_cell_4/mul_3:z:00^lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/while/Identity_4Њ
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_4/add_1:z:00^lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/while/Identity_5"7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"v
8lstm_1_while_lstm_cell_4_biasadd_readvariableop_resource:lstm_1_while_lstm_cell_4_biasadd_readvariableop_resource_0"x
9lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resource;lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resource_0"t
7lstm_1_while_lstm_cell_4_matmul_readvariableop_resource9lstm_1_while_lstm_cell_4_matmul_readvariableop_resource_0"Ф
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2b
/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp2`
.lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp.lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp2d
0lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp0lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Љ
Љ

lstm_1_while_body_317889*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0M
9lstm_1_while_lstm_cell_4_matmul_readvariableop_resource_0:
N
;lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resource_0:	dI
:lstm_1_while_lstm_cell_4_biasadd_readvariableop_resource_0:	
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorK
7lstm_1_while_lstm_cell_4_matmul_readvariableop_resource:
L
9lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resource:	dG
8lstm_1_while_lstm_cell_4_biasadd_readvariableop_resource:	Ђ/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOpЂ.lstm_1/while/lstm_cell_4/MatMul/ReadVariableOpЂ0lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOpб
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2@
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeў
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype022
0lstm_1/while/TensorArrayV2Read/TensorListGetItemЛ
(lstm_1/while/lstm_cell_4/ones_like/ShapeShape7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_4/ones_like/Shape
(lstm_1/while/lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_1/while/lstm_cell_4/ones_like/Constщ
"lstm_1/while/lstm_cell_4/ones_likeFill1lstm_1/while/lstm_cell_4/ones_like/Shape:output:01lstm_1/while/lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_1/while/lstm_cell_4/ones_like
&lstm_1/while/lstm_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&lstm_1/while/lstm_cell_4/dropout/Constф
$lstm_1/while/lstm_cell_4/dropout/MulMul+lstm_1/while/lstm_cell_4/ones_like:output:0/lstm_1/while/lstm_cell_4/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2&
$lstm_1/while/lstm_cell_4/dropout/MulЋ
&lstm_1/while/lstm_cell_4/dropout/ShapeShape+lstm_1/while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_1/while/lstm_cell_4/dropout/Shape
=lstm_1/while/lstm_cell_4/dropout/random_uniform/RandomUniformRandomUniform/lstm_1/while/lstm_cell_4/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2е2?
=lstm_1/while/lstm_cell_4/dropout/random_uniform/RandomUniformЇ
/lstm_1/while/lstm_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>21
/lstm_1/while/lstm_cell_4/dropout/GreaterEqual/yЃ
-lstm_1/while/lstm_cell_4/dropout/GreaterEqualGreaterEqualFlstm_1/while/lstm_cell_4/dropout/random_uniform/RandomUniform:output:08lstm_1/while/lstm_cell_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2/
-lstm_1/while/lstm_cell_4/dropout/GreaterEqualЫ
%lstm_1/while/lstm_cell_4/dropout/CastCast1lstm_1/while/lstm_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2'
%lstm_1/while/lstm_cell_4/dropout/Castп
&lstm_1/while/lstm_cell_4/dropout/Mul_1Mul(lstm_1/while/lstm_cell_4/dropout/Mul:z:0)lstm_1/while/lstm_cell_4/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&lstm_1/while/lstm_cell_4/dropout/Mul_1
(lstm_1/while/lstm_cell_4/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_1/while/lstm_cell_4/dropout_1/Constъ
&lstm_1/while/lstm_cell_4/dropout_1/MulMul+lstm_1/while/lstm_cell_4/ones_like:output:01lstm_1/while/lstm_cell_4/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&lstm_1/while/lstm_cell_4/dropout_1/MulЏ
(lstm_1/while/lstm_cell_4/dropout_1/ShapeShape+lstm_1/while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_4/dropout_1/ShapeЅ
?lstm_1/while/lstm_cell_4/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_4/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2гр2A
?lstm_1/while/lstm_cell_4/dropout_1/random_uniform/RandomUniformЋ
1lstm_1/while/lstm_cell_4/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>23
1lstm_1/while/lstm_cell_4/dropout_1/GreaterEqual/yЋ
/lstm_1/while/lstm_cell_4/dropout_1/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_4/dropout_1/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_4/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ21
/lstm_1/while/lstm_cell_4/dropout_1/GreaterEqualб
'lstm_1/while/lstm_cell_4/dropout_1/CastCast3lstm_1/while/lstm_cell_4/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2)
'lstm_1/while/lstm_cell_4/dropout_1/Castч
(lstm_1/while/lstm_cell_4/dropout_1/Mul_1Mul*lstm_1/while/lstm_cell_4/dropout_1/Mul:z:0+lstm_1/while/lstm_cell_4/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(lstm_1/while/lstm_cell_4/dropout_1/Mul_1
(lstm_1/while/lstm_cell_4/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_1/while/lstm_cell_4/dropout_2/Constъ
&lstm_1/while/lstm_cell_4/dropout_2/MulMul+lstm_1/while/lstm_cell_4/ones_like:output:01lstm_1/while/lstm_cell_4/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&lstm_1/while/lstm_cell_4/dropout_2/MulЏ
(lstm_1/while/lstm_cell_4/dropout_2/ShapeShape+lstm_1/while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_4/dropout_2/ShapeЅ
?lstm_1/while/lstm_cell_4/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_4/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2Аг2A
?lstm_1/while/lstm_cell_4/dropout_2/random_uniform/RandomUniformЋ
1lstm_1/while/lstm_cell_4/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>23
1lstm_1/while/lstm_cell_4/dropout_2/GreaterEqual/yЋ
/lstm_1/while/lstm_cell_4/dropout_2/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_4/dropout_2/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_4/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ21
/lstm_1/while/lstm_cell_4/dropout_2/GreaterEqualб
'lstm_1/while/lstm_cell_4/dropout_2/CastCast3lstm_1/while/lstm_cell_4/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2)
'lstm_1/while/lstm_cell_4/dropout_2/Castч
(lstm_1/while/lstm_cell_4/dropout_2/Mul_1Mul*lstm_1/while/lstm_cell_4/dropout_2/Mul:z:0+lstm_1/while/lstm_cell_4/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(lstm_1/while/lstm_cell_4/dropout_2/Mul_1
(lstm_1/while/lstm_cell_4/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_1/while/lstm_cell_4/dropout_3/Constъ
&lstm_1/while/lstm_cell_4/dropout_3/MulMul+lstm_1/while/lstm_cell_4/ones_like:output:01lstm_1/while/lstm_cell_4/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&lstm_1/while/lstm_cell_4/dropout_3/MulЏ
(lstm_1/while/lstm_cell_4/dropout_3/ShapeShape+lstm_1/while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_4/dropout_3/ShapeЅ
?lstm_1/while/lstm_cell_4/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_4/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2к2A
?lstm_1/while/lstm_cell_4/dropout_3/random_uniform/RandomUniformЋ
1lstm_1/while/lstm_cell_4/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>23
1lstm_1/while/lstm_cell_4/dropout_3/GreaterEqual/yЋ
/lstm_1/while/lstm_cell_4/dropout_3/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_4/dropout_3/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_4/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ21
/lstm_1/while/lstm_cell_4/dropout_3/GreaterEqualб
'lstm_1/while/lstm_cell_4/dropout_3/CastCast3lstm_1/while/lstm_cell_4/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2)
'lstm_1/while/lstm_cell_4/dropout_3/Castч
(lstm_1/while/lstm_cell_4/dropout_3/Mul_1Mul*lstm_1/while/lstm_cell_4/dropout_3/Mul:z:0+lstm_1/while/lstm_cell_4/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(lstm_1/while/lstm_cell_4/dropout_3/Mul_1л
lstm_1/while/lstm_cell_4/mulMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm_1/while/lstm_cell_4/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/while/lstm_cell_4/mulм
.lstm_1/while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp9lstm_1_while_lstm_cell_4_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype020
.lstm_1/while/lstm_cell_4/MatMul/ReadVariableOpй
lstm_1/while/lstm_cell_4/MatMulMatMul lstm_1/while/lstm_cell_4/mul:z:06lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
lstm_1/while/lstm_cell_4/MatMulс
0lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp;lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype022
0lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOpй
!lstm_1/while/lstm_cell_4/MatMul_1MatMullstm_1_while_placeholder_28lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!lstm_1/while/lstm_cell_4/MatMul_1а
lstm_1/while/lstm_cell_4/addAddV2)lstm_1/while/lstm_cell_4/MatMul:product:0+lstm_1/while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/while/lstm_cell_4/addк
/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOpн
 lstm_1/while/lstm_cell_4/BiasAddBiasAdd lstm_1/while/lstm_cell_4/add:z:07lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_1/while/lstm_cell_4/BiasAdd
(lstm_1/while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_1/while/lstm_cell_4/split/split_dimЃ
lstm_1/while/lstm_cell_4/splitSplit1lstm_1/while/lstm_cell_4/split/split_dim:output:0)lstm_1/while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2 
lstm_1/while/lstm_cell_4/splitЊ
 lstm_1/while/lstm_cell_4/SigmoidSigmoid'lstm_1/while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_1/while/lstm_cell_4/SigmoidЎ
"lstm_1/while/lstm_cell_4/Sigmoid_1Sigmoid'lstm_1/while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_1/while/lstm_cell_4/Sigmoid_1Н
lstm_1/while/lstm_cell_4/mul_1Mul&lstm_1/while/lstm_cell_4/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_1/while/lstm_cell_4/mul_1Ё
lstm_1/while/lstm_cell_4/ReluRelu'lstm_1/while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/while/lstm_cell_4/ReluЬ
lstm_1/while/lstm_cell_4/mul_2Mul$lstm_1/while/lstm_cell_4/Sigmoid:y:0+lstm_1/while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_1/while/lstm_cell_4/mul_2У
lstm_1/while/lstm_cell_4/add_1AddV2"lstm_1/while/lstm_cell_4/mul_1:z:0"lstm_1/while/lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_1/while/lstm_cell_4/add_1Ў
"lstm_1/while/lstm_cell_4/Sigmoid_2Sigmoid'lstm_1/while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_1/while/lstm_cell_4/Sigmoid_2 
lstm_1/while/lstm_cell_4/Relu_1Relu"lstm_1/while/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
lstm_1/while/lstm_cell_4/Relu_1а
lstm_1/while/lstm_cell_4/mul_3Mul&lstm_1/while/lstm_cell_4/Sigmoid_2:y:0-lstm_1/while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_1/while/lstm_cell_4/mul_3
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder"lstm_1/while/lstm_cell_4/mul_3:z:0*
_output_shapes
: *
element_dtype023
1lstm_1/while/TensorArrayV2Write/TensorListSetItemj
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add/y
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/addn
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add_1/y
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/add_1
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:00^lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/IdentityЃ
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations0^lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_1
lstm_1/while/Identity_2Identitylstm_1/while/add:z:00^lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_2И
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_3Њ
lstm_1/while/Identity_4Identity"lstm_1/while/lstm_cell_4/mul_3:z:00^lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/while/Identity_4Њ
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_4/add_1:z:00^lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_1/while/Identity_5"7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"v
8lstm_1_while_lstm_cell_4_biasadd_readvariableop_resource:lstm_1_while_lstm_cell_4_biasadd_readvariableop_resource_0"x
9lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resource;lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resource_0"t
7lstm_1_while_lstm_cell_4_matmul_readvariableop_resource9lstm_1_while_lstm_cell_4_matmul_readvariableop_resource_0"Ф
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2b
/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp2`
.lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp.lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp2d
0lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp0lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
е
У
while_cond_316535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_316535___redundant_placeholder04
0while_while_cond_316535___redundant_placeholder14
0while_while_cond_316535___redundant_placeholder24
0while_while_cond_316535___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Џ
г
%sequential_1_lstm_2_while_cond_314084D
@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counterJ
Fsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations)
%sequential_1_lstm_2_while_placeholder+
'sequential_1_lstm_2_while_placeholder_1+
'sequential_1_lstm_2_while_placeholder_2+
'sequential_1_lstm_2_while_placeholder_3F
Bsequential_1_lstm_2_while_less_sequential_1_lstm_2_strided_slice_1\
Xsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_314084___redundant_placeholder0\
Xsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_314084___redundant_placeholder1\
Xsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_314084___redundant_placeholder2\
Xsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_314084___redundant_placeholder3&
"sequential_1_lstm_2_while_identity
д
sequential_1/lstm_2/while/LessLess%sequential_1_lstm_2_while_placeholderBsequential_1_lstm_2_while_less_sequential_1_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_2/while/Less
"sequential_1/lstm_2/while/IdentityIdentity"sequential_1/lstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_2/while/Identity"Q
"sequential_1_lstm_2_while_identity+sequential_1/lstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
ђ
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_316308

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ22

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
МC

G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_320605

inputs
states_0
states_11
matmul_readvariableop_resource:	d3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shapeг
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ЏйЎ2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeй
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2џъ2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_1/GreaterEqual/yЦ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeи
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2рФ{2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_2/GreaterEqual/yЦ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeй
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ЇџЦ2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_3/GreaterEqual/yЦ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_3/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_3Ј
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

IdentityЌ

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
 E

B__inference_lstm_1_layer_call_and_return_conditional_losses_314774

inputs&
lstm_cell_4_314692:
%
lstm_cell_4_314694:	d!
lstm_cell_4_314696:	
identityЂ#lstm_cell_4/StatefulPartitionedCallЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
#lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_4_314692lstm_cell_4_314694lstm_cell_4_314696*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_3146272%
#lstm_cell_4/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_4_314692lstm_cell_4_314694lstm_cell_4_314696*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_314705*
condR
while_cond_314704*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0$^lstm_cell_4/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_4/StatefulPartitionedCall#lstm_cell_4/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
е
У
while_cond_316174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_316174___redundant_placeholder04
0while_while_cond_316174___redundant_placeholder14
0while_while_cond_316174___redundant_placeholder24
0while_while_cond_316174___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Ќg
Щ
%sequential_1_lstm_1_while_body_313930D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3C
?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0
{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0Z
Fsequential_1_lstm_1_while_lstm_cell_4_matmul_readvariableop_resource_0:
[
Hsequential_1_lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resource_0:	dV
Gsequential_1_lstm_1_while_lstm_cell_4_biasadd_readvariableop_resource_0:	&
"sequential_1_lstm_1_while_identity(
$sequential_1_lstm_1_while_identity_1(
$sequential_1_lstm_1_while_identity_2(
$sequential_1_lstm_1_while_identity_3(
$sequential_1_lstm_1_while_identity_4(
$sequential_1_lstm_1_while_identity_5A
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1}
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensorX
Dsequential_1_lstm_1_while_lstm_cell_4_matmul_readvariableop_resource:
Y
Fsequential_1_lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resource:	dT
Esequential_1_lstm_1_while_lstm_cell_4_biasadd_readvariableop_resource:	Ђ<sequential_1/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOpЂ;sequential_1/lstm_1/while/lstm_cell_4/MatMul/ReadVariableOpЂ=sequential_1/lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOpы
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2M
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeЬ
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_1_while_placeholderTsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02?
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItemт
5sequential_1/lstm_1/while/lstm_cell_4/ones_like/ShapeShapeDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:27
5sequential_1/lstm_1/while/lstm_cell_4/ones_like/ShapeГ
5sequential_1/lstm_1/while/lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?27
5sequential_1/lstm_1/while/lstm_cell_4/ones_like/Const
/sequential_1/lstm_1/while/lstm_cell_4/ones_likeFill>sequential_1/lstm_1/while/lstm_cell_4/ones_like/Shape:output:0>sequential_1/lstm_1/while/lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ21
/sequential_1/lstm_1/while/lstm_cell_4/ones_like
)sequential_1/lstm_1/while/lstm_cell_4/mulMulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_1/lstm_1/while/lstm_cell_4/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_1/while/lstm_cell_4/mul
;sequential_1/lstm_1/while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOpFsequential_1_lstm_1_while_lstm_cell_4_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02=
;sequential_1/lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp
,sequential_1/lstm_1/while/lstm_cell_4/MatMulMatMul-sequential_1/lstm_1/while/lstm_cell_4/mul:z:0Csequential_1/lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2.
,sequential_1/lstm_1/while/lstm_cell_4/MatMul
=sequential_1/lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOpHsequential_1_lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype02?
=sequential_1/lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp
.sequential_1/lstm_1/while/lstm_cell_4/MatMul_1MatMul'sequential_1_lstm_1_while_placeholder_2Esequential_1/lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ20
.sequential_1/lstm_1/while/lstm_cell_4/MatMul_1
)sequential_1/lstm_1/while/lstm_cell_4/addAddV26sequential_1/lstm_1/while/lstm_cell_4/MatMul:product:08sequential_1/lstm_1/while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_1/while/lstm_cell_4/add
<sequential_1/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_lstm_1_while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02>
<sequential_1/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp
-sequential_1/lstm_1/while/lstm_cell_4/BiasAddBiasAdd-sequential_1/lstm_1/while/lstm_cell_4/add:z:0Dsequential_1/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2/
-sequential_1/lstm_1/while/lstm_cell_4/BiasAddА
5sequential_1/lstm_1/while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_1/lstm_1/while/lstm_cell_4/split/split_dimз
+sequential_1/lstm_1/while/lstm_cell_4/splitSplit>sequential_1/lstm_1/while/lstm_cell_4/split/split_dim:output:06sequential_1/lstm_1/while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2-
+sequential_1/lstm_1/while/lstm_cell_4/splitб
-sequential_1/lstm_1/while/lstm_cell_4/SigmoidSigmoid4sequential_1/lstm_1/while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2/
-sequential_1/lstm_1/while/lstm_cell_4/Sigmoidе
/sequential_1/lstm_1/while/lstm_cell_4/Sigmoid_1Sigmoid4sequential_1/lstm_1/while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd21
/sequential_1/lstm_1/while/lstm_cell_4/Sigmoid_1ё
+sequential_1/lstm_1/while/lstm_cell_4/mul_1Mul3sequential_1/lstm_1/while/lstm_cell_4/Sigmoid_1:y:0'sequential_1_lstm_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2-
+sequential_1/lstm_1/while/lstm_cell_4/mul_1Ш
*sequential_1/lstm_1/while/lstm_cell_4/ReluRelu4sequential_1/lstm_1/while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2,
*sequential_1/lstm_1/while/lstm_cell_4/Relu
+sequential_1/lstm_1/while/lstm_cell_4/mul_2Mul1sequential_1/lstm_1/while/lstm_cell_4/Sigmoid:y:08sequential_1/lstm_1/while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2-
+sequential_1/lstm_1/while/lstm_cell_4/mul_2ї
+sequential_1/lstm_1/while/lstm_cell_4/add_1AddV2/sequential_1/lstm_1/while/lstm_cell_4/mul_1:z:0/sequential_1/lstm_1/while/lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2-
+sequential_1/lstm_1/while/lstm_cell_4/add_1е
/sequential_1/lstm_1/while/lstm_cell_4/Sigmoid_2Sigmoid4sequential_1/lstm_1/while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd21
/sequential_1/lstm_1/while/lstm_cell_4/Sigmoid_2Ч
,sequential_1/lstm_1/while/lstm_cell_4/Relu_1Relu/sequential_1/lstm_1/while/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2.
,sequential_1/lstm_1/while/lstm_cell_4/Relu_1
+sequential_1/lstm_1/while/lstm_cell_4/mul_3Mul3sequential_1/lstm_1/while/lstm_cell_4/Sigmoid_2:y:0:sequential_1/lstm_1/while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2-
+sequential_1/lstm_1/while/lstm_cell_4/mul_3У
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_1_while_placeholder_1%sequential_1_lstm_1_while_placeholder/sequential_1/lstm_1/while/lstm_cell_4/mul_3:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem
sequential_1/lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_1/while/add/yЙ
sequential_1/lstm_1/while/addAddV2%sequential_1_lstm_1_while_placeholder(sequential_1/lstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/while/add
!sequential_1/lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_1/while/add_1/yк
sequential_1/lstm_1/while/add_1AddV2@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counter*sequential_1/lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/while/add_1з
"sequential_1/lstm_1/while/IdentityIdentity#sequential_1/lstm_1/while/add_1:z:0=^sequential_1/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_1/lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_1/lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_1/while/Identityў
$sequential_1/lstm_1/while/Identity_1IdentityFsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations=^sequential_1/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_1/lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_1/lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_1й
$sequential_1/lstm_1/while/Identity_2Identity!sequential_1/lstm_1/while/add:z:0=^sequential_1/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_1/lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_1/lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_2
$sequential_1/lstm_1/while/Identity_3IdentityNsequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^sequential_1/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_1/lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_1/lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_3ј
$sequential_1/lstm_1/while/Identity_4Identity/sequential_1/lstm_1/while/lstm_cell_4/mul_3:z:0=^sequential_1/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_1/lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_1/lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2&
$sequential_1/lstm_1/while/Identity_4ј
$sequential_1/lstm_1/while/Identity_5Identity/sequential_1/lstm_1/while/lstm_cell_4/add_1:z:0=^sequential_1/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_1/lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_1/lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2&
$sequential_1/lstm_1/while/Identity_5"Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0"U
$sequential_1_lstm_1_while_identity_1-sequential_1/lstm_1/while/Identity_1:output:0"U
$sequential_1_lstm_1_while_identity_2-sequential_1/lstm_1/while/Identity_2:output:0"U
$sequential_1_lstm_1_while_identity_3-sequential_1/lstm_1/while/Identity_3:output:0"U
$sequential_1_lstm_1_while_identity_4-sequential_1/lstm_1/while/Identity_4:output:0"U
$sequential_1_lstm_1_while_identity_5-sequential_1/lstm_1/while/Identity_5:output:0"
Esequential_1_lstm_1_while_lstm_cell_4_biasadd_readvariableop_resourceGsequential_1_lstm_1_while_lstm_cell_4_biasadd_readvariableop_resource_0"
Fsequential_1_lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resourceHsequential_1_lstm_1_while_lstm_cell_4_matmul_1_readvariableop_resource_0"
Dsequential_1_lstm_1_while_lstm_cell_4_matmul_readvariableop_resourceFsequential_1_lstm_1_while_lstm_cell_4_matmul_readvariableop_resource_0"
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0"ј
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2|
<sequential_1/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp<sequential_1/lstm_1/while/lstm_cell_4/BiasAdd/ReadVariableOp2z
;sequential_1/lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp;sequential_1/lstm_1/while/lstm_cell_4/MatMul/ReadVariableOp2~
=sequential_1/lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp=sequential_1/lstm_1/while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
й
Е
'__inference_lstm_1_layer_call_fn_319399

inputs
unknown:

	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3169012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е
У
while_cond_315128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_315128___redundant_placeholder04
0while_while_cond_315128___redundant_placeholder14
0while_while_cond_315128___redundant_placeholder24
0while_while_cond_315128___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:

А
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_315730

inputs/
!batchnorm_readvariableop_resource:23
%batchnorm_mul_readvariableop_resource:21
#batchnorm_readvariableop_1_resource:21
#batchnorm_readvariableop_2_resource:2
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:22
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:22
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:22
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:22
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
batchnorm/add_1л
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ2: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
хy
Щ
while_body_316781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_4_matmul_readvariableop_resource_0:
G
4while_lstm_cell_4_matmul_1_readvariableop_resource_0:	dB
3while_lstm_cell_4_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_4_matmul_readvariableop_resource:
E
2while_lstm_cell_4_matmul_1_readvariableop_resource:	d@
1while_lstm_cell_4_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_4/BiasAdd/ReadVariableOpЂ'while/lstm_cell_4/MatMul/ReadVariableOpЂ)while/lstm_cell_4/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_4/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/ones_like/Shape
!while/lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_4/ones_like/ConstЭ
while/lstm_cell_4/ones_likeFill*while/lstm_cell_4/ones_like/Shape:output:0*while/lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/ones_like
while/lstm_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_4/dropout/ConstШ
while/lstm_cell_4/dropout/MulMul$while/lstm_cell_4/ones_like:output:0(while/lstm_cell_4/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/dropout/Mul
while/lstm_cell_4/dropout/ShapeShape$while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_4/dropout/Shape
6while/lstm_cell_4/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_4/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ашћ28
6while/lstm_cell_4/dropout/random_uniform/RandomUniform
(while/lstm_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2*
(while/lstm_cell_4/dropout/GreaterEqual/y
&while/lstm_cell_4/dropout/GreaterEqualGreaterEqual?while/lstm_cell_4/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&while/lstm_cell_4/dropout/GreaterEqualЖ
while/lstm_cell_4/dropout/CastCast*while/lstm_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2 
while/lstm_cell_4/dropout/CastУ
while/lstm_cell_4/dropout/Mul_1Mul!while/lstm_cell_4/dropout/Mul:z:0"while/lstm_cell_4/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_4/dropout/Mul_1
!while/lstm_cell_4/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_4/dropout_1/ConstЮ
while/lstm_cell_4/dropout_1/MulMul$while/lstm_cell_4/ones_like:output:0*while/lstm_cell_4/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_4/dropout_1/Mul
!while/lstm_cell_4/dropout_1/ShapeShape$while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/dropout_1/Shape
8while/lstm_cell_4/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_4/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2жЉ2:
8while/lstm_cell_4/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_4/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_4/dropout_1/GreaterEqual/y
(while/lstm_cell_4/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_4/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_4/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_4/dropout_1/GreaterEqualМ
 while/lstm_cell_4/dropout_1/CastCast,while/lstm_cell_4/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_4/dropout_1/CastЫ
!while/lstm_cell_4/dropout_1/Mul_1Mul#while/lstm_cell_4/dropout_1/Mul:z:0$while/lstm_cell_4/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_4/dropout_1/Mul_1
!while/lstm_cell_4/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_4/dropout_2/ConstЮ
while/lstm_cell_4/dropout_2/MulMul$while/lstm_cell_4/ones_like:output:0*while/lstm_cell_4/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_4/dropout_2/Mul
!while/lstm_cell_4/dropout_2/ShapeShape$while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/dropout_2/Shape
8while/lstm_cell_4/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_4/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2у2:
8while/lstm_cell_4/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_4/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_4/dropout_2/GreaterEqual/y
(while/lstm_cell_4/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_4/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_4/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_4/dropout_2/GreaterEqualМ
 while/lstm_cell_4/dropout_2/CastCast,while/lstm_cell_4/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_4/dropout_2/CastЫ
!while/lstm_cell_4/dropout_2/Mul_1Mul#while/lstm_cell_4/dropout_2/Mul:z:0$while/lstm_cell_4/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_4/dropout_2/Mul_1
!while/lstm_cell_4/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_4/dropout_3/ConstЮ
while/lstm_cell_4/dropout_3/MulMul$while/lstm_cell_4/ones_like:output:0*while/lstm_cell_4/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_4/dropout_3/Mul
!while/lstm_cell_4/dropout_3/ShapeShape$while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/dropout_3/Shape
8while/lstm_cell_4/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_4/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2фКс2:
8while/lstm_cell_4/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_4/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_4/dropout_3/GreaterEqual/y
(while/lstm_cell_4/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_4/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_4/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_4/dropout_3/GreaterEqualМ
 while/lstm_cell_4/dropout_3/CastCast,while/lstm_cell_4/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_4/dropout_3/CastЫ
!while/lstm_cell_4/dropout_3/Mul_1Mul#while/lstm_cell_4/dropout_3/Mul:z:0$while/lstm_cell_4/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_4/dropout_3/Mul_1П
while/lstm_cell_4/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_4/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mulЧ
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOpН
while/lstm_cell_4/MatMulMatMulwhile/lstm_cell_4/mul:z:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/MatMulЬ
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOpН
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/MatMul_1Д
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/addХ
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOpС
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/BiasAdd
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/lstm_cell_4/split
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid_1Ё
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_1
while/lstm_cell_4/ReluRelu while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/ReluА
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid:y:0$while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_2Ї
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul_1:z:0while/lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/add_1
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid_2
while/lstm_cell_4/Relu_1Reluwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Relu_1Д
while/lstm_cell_4/mul_3Mulwhile/lstm_cell_4/Sigmoid_2:y:0&while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_4/mul_3:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 

і
,__inference_lstm_cell_4_layer_call_fn_320484

inputs
states_0
states_1
unknown:

	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_3144452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
Ъ
c
*__inference_dropout_2_layer_call_fn_320343

inputs
identityЂStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3164012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ222
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Ы	
№
?__inference_fc1_layer_call_and_return_conditional_losses_320217

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
р
d
H__inference_activation_3_layer_call_and_return_conditional_losses_316301

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:џџџџџџџџџ22
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
е
У
while_cond_319234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_319234___redundant_placeholder04
0while_while_cond_319234___redundant_placeholder14
0while_while_cond_319234___redundant_placeholder24
0while_while_cond_319234___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Ј

Я
lstm_2_while_cond_317616*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1B
>lstm_2_while_lstm_2_while_cond_317616___redundant_placeholder0B
>lstm_2_while_lstm_2_while_cond_317616___redundant_placeholder1B
>lstm_2_while_lstm_2_while_cond_317616___redundant_placeholder2B
>lstm_2_while_lstm_2_while_cond_317616___redundant_placeholder3
lstm_2_while_identity

lstm_2/while/LessLesslstm_2_while_placeholder(lstm_2_while_less_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2
lstm_2/while/Lessr
lstm_2/while/IdentityIdentitylstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_2/while/Identity"7
lstm_2_while_identitylstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:


(__inference_softmax_layer_call_fn_320363

inputs
unknown:2
	unknown_0:
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_3163212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
е
У
while_cond_319469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_319469___redundant_placeholder04
0while_while_cond_319469___redundant_placeholder14
0while_while_cond_319469___redundant_placeholder24
0while_while_cond_319469___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
С:
	
H__inference_sequential_1_layer_call_and_return_conditional_losses_317111

inputs%
conv_1_317059:­
conv_1_317061:	+
batch_normalization_2_317064:	+
batch_normalization_2_317066:	+
batch_normalization_2_317068:	+
batch_normalization_2_317070:	!
lstm_1_317075:
 
lstm_1_317077:	d
lstm_1_317079:	 
lstm_2_317082:	d 
lstm_2_317084:	d
lstm_2_317086:	

fc1_317089:d2

fc1_317091:2*
batch_normalization_3_317094:2*
batch_normalization_3_317096:2*
batch_normalization_3_317098:2*
batch_normalization_3_317100:2 
softmax_317105:2
softmax_317107:
identityЂ-batch_normalization_2/StatefulPartitionedCallЂ-batch_normalization_3/StatefulPartitionedCallЂconv_1/StatefulPartitionedCallЂ!dropout_1/StatefulPartitionedCallЂ!dropout_2/StatefulPartitionedCallЂfc1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCallЂlstm_2/StatefulPartitionedCallЂsoftmax/StatefulPartitionedCall
conv_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_1_317059conv_1_317061*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_3158902 
conv_1/StatefulPartitionedCallЙ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0batch_normalization_2_317064batch_normalization_2_317066batch_normalization_2_317068batch_normalization_2_317070*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3169882/
-batch_normalization_2/StatefulPartitionedCall
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_2_layer_call_and_return_conditional_losses_3159302
activation_2/PartitionedCall
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3169302#
!dropout_1/StatefulPartitionedCallУ
lstm_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0lstm_1_317075lstm_1_317077lstm_1_317079*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3169012 
lstm_1/StatefulPartitionedCallМ
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_317082lstm_2_317084lstm_2_317086*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_3166562 
lstm_2/StatefulPartitionedCall
fc1/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0
fc1_317089
fc1_317091*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_3162812
fc1/StatefulPartitionedCallБ
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall$fc1/StatefulPartitionedCall:output:0batch_normalization_3_317094batch_normalization_3_317096batch_normalization_3_317098batch_normalization_3_317100*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_3157902/
-batch_normalization_3/StatefulPartitionedCall
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_3163012
activation_3/PartitionedCallВ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3164012#
!dropout_2/StatefulPartitionedCallГ
softmax/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0softmax_317105softmax_317107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_3163212!
softmax/StatefulPartitionedCallЧ
IdentityIdentity(softmax/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall^fc1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall ^softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ­: : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2B
softmax/StatefulPartitionedCallsoftmax/StatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ­
 
_user_specified_nameinputs
ѕ)
ъ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_320280

inputs5
'assignmovingavg_readvariableop_resource:27
)assignmovingavg_1_readvariableop_resource:23
%batchnorm_mul_readvariableop_resource:2/
!batchnorm_readvariableop_resource:2
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:2*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:22
moments/StopGradientЄ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indicesВ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:2*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg/decayЄ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:2*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:22
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:22
AssignMovingAvg/mulП
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg_1/decayЊ
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:2*
dtype02"
 AssignMovingAvg_1/ReadVariableOp 
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:22
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:22
AssignMovingAvg_1/mulЩ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:22
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:22
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:22
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:22
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ2: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Ф7
б
H__inference_sequential_1_layer_call_and_return_conditional_losses_317254
input_2%
conv_1_317202:­
conv_1_317204:	+
batch_normalization_2_317207:	+
batch_normalization_2_317209:	+
batch_normalization_2_317211:	+
batch_normalization_2_317213:	!
lstm_1_317218:
 
lstm_1_317220:	d
lstm_1_317222:	 
lstm_2_317225:	d 
lstm_2_317227:	d
lstm_2_317229:	

fc1_317232:d2

fc1_317234:2*
batch_normalization_3_317237:2*
batch_normalization_3_317239:2*
batch_normalization_3_317241:2*
batch_normalization_3_317243:2 
softmax_317248:2
softmax_317250:
identityЂ-batch_normalization_2/StatefulPartitionedCallЂ-batch_normalization_3/StatefulPartitionedCallЂconv_1/StatefulPartitionedCallЂfc1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCallЂlstm_2/StatefulPartitionedCallЂsoftmax/StatefulPartitionedCall
conv_1/StatefulPartitionedCallStatefulPartitionedCallinput_2conv_1_317202conv_1_317204*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_3158902 
conv_1/StatefulPartitionedCallЛ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0batch_normalization_2_317207batch_normalization_2_317209batch_normalization_2_317211batch_normalization_2_317213*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_3159152/
-batch_normalization_2/StatefulPartitionedCall
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_2_layer_call_and_return_conditional_losses_3159302
activation_2/PartitionedCallћ
dropout_1/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3159372
dropout_1/PartitionedCallЛ
lstm_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0lstm_1_317218lstm_1_317220lstm_1_317222*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3160972 
lstm_1/StatefulPartitionedCallМ
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_317225lstm_2_317227lstm_2_317229*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_3162632 
lstm_2/StatefulPartitionedCall
fc1/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0
fc1_317232
fc1_317234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_3162812
fc1/StatefulPartitionedCallГ
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall$fc1/StatefulPartitionedCall:output:0batch_normalization_3_317237batch_normalization_3_317239batch_normalization_3_317241batch_normalization_3_317243*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_3157302/
-batch_normalization_3/StatefulPartitionedCall
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_3163012
activation_3/PartitionedCallі
dropout_2/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3163082
dropout_2/PartitionedCallЋ
softmax/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0softmax_317248softmax_317250*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_3163212!
softmax/StatefulPartitionedCallџ
IdentityIdentity(softmax/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv_1/StatefulPartitionedCall^fc1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall ^softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ­: : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2B
softmax/StatefulPartitionedCallsoftmax/StatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџ­
!
_user_specified_name	input_2
Ф
Д
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_318468

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2
batchnorm/add_1р
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ђ
Д
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_318414

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
batchnorm/add_1щ
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):џџџџџџџџџџџџџџџџџџ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ю
Д
'__inference_lstm_2_layer_call_fn_320196

inputs
unknown:	d
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_3162632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Ј

Я
lstm_1_while_cond_317461*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1B
>lstm_1_while_lstm_1_while_cond_317461___redundant_placeholder0B
>lstm_1_while_lstm_1_while_cond_317461___redundant_placeholder1B
>lstm_1_while_lstm_1_while_cond_317461___redundant_placeholder2B
>lstm_1_while_lstm_1_while_cond_317461___redundant_placeholder3
lstm_1_while_identity

lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2
lstm_1/while/Lessr
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_1/while/Identity"7
lstm_1_while_identitylstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
 E

B__inference_lstm_1_layer_call_and_return_conditional_losses_314528

inputs&
lstm_cell_4_314446:
%
lstm_cell_4_314448:	d!
lstm_cell_4_314450:	
identityЂ#lstm_cell_4/StatefulPartitionedCallЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
#lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_4_314446lstm_cell_4_314448lstm_cell_4_314450*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_3144452%
#lstm_cell_4/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_4_314446lstm_cell_4_314448lstm_cell_4_314450*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_314459*
condR
while_cond_314458*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0$^lstm_cell_4/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_4/StatefulPartitionedCall#lstm_cell_4/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
е
У
while_cond_314458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_314458___redundant_placeholder04
0while_while_cond_314458___redundant_placeholder14
0while_while_cond_314458___redundant_placeholder24
0while_while_cond_314458___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:

ѕ
,__inference_lstm_cell_5_layer_call_fn_320622

inputs
states_0
states_1
unknown:	d
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_3151152
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
мG
Щ
while_body_316009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_4_matmul_readvariableop_resource_0:
G
4while_lstm_cell_4_matmul_1_readvariableop_resource_0:	dB
3while_lstm_cell_4_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_4_matmul_readvariableop_resource:
E
2while_lstm_cell_4_matmul_1_readvariableop_resource:	d@
1while_lstm_cell_4_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_4/BiasAdd/ReadVariableOpЂ'while/lstm_cell_4/MatMul/ReadVariableOpЂ)while/lstm_cell_4/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_4/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/ones_like/Shape
!while/lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_4/ones_like/ConstЭ
while/lstm_cell_4/ones_likeFill*while/lstm_cell_4/ones_like/Shape:output:0*while/lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/ones_likeР
while/lstm_cell_4/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_4/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mulЧ
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOpН
while/lstm_cell_4/MatMulMatMulwhile/lstm_cell_4/mul:z:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/MatMulЬ
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOpН
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/MatMul_1Д
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/addХ
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOpС
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/BiasAdd
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/lstm_cell_4/split
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid_1Ё
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_1
while/lstm_cell_4/ReluRelu while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/ReluА
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid:y:0$while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_2Ї
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul_1:z:0while/lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/add_1
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid_2
while/lstm_cell_4/Relu_1Reluwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Relu_1Д
while/lstm_cell_4/mul_3Mulwhile/lstm_cell_4/Sigmoid_2:y:0&while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_4/mul_3:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Ю
Д
'__inference_lstm_2_layer_call_fn_320207

inputs
unknown:	d
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_3166562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
е
У
while_cond_316008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_316008___redundant_placeholder04
0while_while_cond_316008___redundant_placeholder14
0while_while_cond_316008___redundant_placeholder24
0while_while_cond_316008___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Ц*
ю
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_318502

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradientЉ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesЗ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg/decayЅ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulП
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg_1/decayЋ
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpЁ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulЩ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

б
6__inference_batch_normalization_3_layer_call_fn_320293

inputs
unknown:2
	unknown_0:2
	unknown_1:2
	unknown_2:2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_3157302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
фy
Щ
while_body_319235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_4_matmul_readvariableop_resource_0:
G
4while_lstm_cell_4_matmul_1_readvariableop_resource_0:	dB
3while_lstm_cell_4_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_4_matmul_readvariableop_resource:
E
2while_lstm_cell_4_matmul_1_readvariableop_resource:	d@
1while_lstm_cell_4_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_4/BiasAdd/ReadVariableOpЂ'while/lstm_cell_4/MatMul/ReadVariableOpЂ)while/lstm_cell_4/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_4/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/ones_like/Shape
!while/lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_4/ones_like/ConstЭ
while/lstm_cell_4/ones_likeFill*while/lstm_cell_4/ones_like/Shape:output:0*while/lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/ones_like
while/lstm_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_4/dropout/ConstШ
while/lstm_cell_4/dropout/MulMul$while/lstm_cell_4/ones_like:output:0(while/lstm_cell_4/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/dropout/Mul
while/lstm_cell_4/dropout/ShapeShape$while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_4/dropout/Shape
6while/lstm_cell_4/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_4/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЭФ28
6while/lstm_cell_4/dropout/random_uniform/RandomUniform
(while/lstm_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2*
(while/lstm_cell_4/dropout/GreaterEqual/y
&while/lstm_cell_4/dropout/GreaterEqualGreaterEqual?while/lstm_cell_4/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&while/lstm_cell_4/dropout/GreaterEqualЖ
while/lstm_cell_4/dropout/CastCast*while/lstm_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2 
while/lstm_cell_4/dropout/CastУ
while/lstm_cell_4/dropout/Mul_1Mul!while/lstm_cell_4/dropout/Mul:z:0"while/lstm_cell_4/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_4/dropout/Mul_1
!while/lstm_cell_4/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_4/dropout_1/ConstЮ
while/lstm_cell_4/dropout_1/MulMul$while/lstm_cell_4/ones_like:output:0*while/lstm_cell_4/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_4/dropout_1/Mul
!while/lstm_cell_4/dropout_1/ShapeShape$while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/dropout_1/Shape
8while/lstm_cell_4/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_4/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЅИ2:
8while/lstm_cell_4/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_4/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_4/dropout_1/GreaterEqual/y
(while/lstm_cell_4/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_4/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_4/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_4/dropout_1/GreaterEqualМ
 while/lstm_cell_4/dropout_1/CastCast,while/lstm_cell_4/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_4/dropout_1/CastЫ
!while/lstm_cell_4/dropout_1/Mul_1Mul#while/lstm_cell_4/dropout_1/Mul:z:0$while/lstm_cell_4/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_4/dropout_1/Mul_1
!while/lstm_cell_4/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_4/dropout_2/ConstЮ
while/lstm_cell_4/dropout_2/MulMul$while/lstm_cell_4/ones_like:output:0*while/lstm_cell_4/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_4/dropout_2/Mul
!while/lstm_cell_4/dropout_2/ShapeShape$while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/dropout_2/Shape
8while/lstm_cell_4/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_4/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЕёU2:
8while/lstm_cell_4/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_4/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_4/dropout_2/GreaterEqual/y
(while/lstm_cell_4/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_4/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_4/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_4/dropout_2/GreaterEqualМ
 while/lstm_cell_4/dropout_2/CastCast,while/lstm_cell_4/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_4/dropout_2/CastЫ
!while/lstm_cell_4/dropout_2/Mul_1Mul#while/lstm_cell_4/dropout_2/Mul:z:0$while/lstm_cell_4/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_4/dropout_2/Mul_1
!while/lstm_cell_4/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_4/dropout_3/ConstЮ
while/lstm_cell_4/dropout_3/MulMul$while/lstm_cell_4/ones_like:output:0*while/lstm_cell_4/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_4/dropout_3/Mul
!while/lstm_cell_4/dropout_3/ShapeShape$while/lstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/dropout_3/Shape
8while/lstm_cell_4/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_4/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЯЗй2:
8while/lstm_cell_4/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_4/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_4/dropout_3/GreaterEqual/y
(while/lstm_cell_4/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_4/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_4/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_4/dropout_3/GreaterEqualМ
 while/lstm_cell_4/dropout_3/CastCast,while/lstm_cell_4/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_4/dropout_3/CastЫ
!while/lstm_cell_4/dropout_3/Mul_1Mul#while/lstm_cell_4/dropout_3/Mul:z:0$while/lstm_cell_4/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_4/dropout_3/Mul_1П
while/lstm_cell_4/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_4/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mulЧ
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOpН
while/lstm_cell_4/MatMulMatMulwhile/lstm_cell_4/mul:z:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/MatMulЬ
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOpН
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/MatMul_1Д
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/addХ
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOpС
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/BiasAdd
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/lstm_cell_4/split
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid_1Ё
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_1
while/lstm_cell_4/ReluRelu while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/ReluА
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid:y:0$while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_2Ї
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul_1:z:0while/lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/add_1
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid_2
while/lstm_cell_4/Relu_1Reluwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Relu_1Д
while/lstm_cell_4/mul_3Mulwhile/lstm_cell_4/Sigmoid_2:y:0&while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_4/mul_3:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
њ^

B__inference_lstm_2_layer_call_and_return_conditional_losses_319940

inputs=
*lstm_cell_5_matmul_readvariableop_resource:	d?
,lstm_cell_5_matmul_1_readvariableop_resource:	d:
+lstm_cell_5_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_5/BiasAdd/ReadVariableOpЂ!lstm_cell_5/MatMul/ReadVariableOpЂ#lstm_cell_5/MatMul_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2
lstm_cell_5/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like/ConstД
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/ones_like
lstm_cell_5/mulMulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mulВ
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOpЅ
lstm_cell_5/MatMulMatMullstm_cell_5/mul:z:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/MatMulИ
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOpІ
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/MatMul_1
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/addБ
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOpЉ
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/BiasAdd|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dimя
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_cell_5/split
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid_1
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_1z
lstm_cell_5/ReluRelulstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Relu
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_2
lstm_cell_5/add_1AddV2lstm_cell_5/mul_1:z:0lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/add_1
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid_2y
lstm_cell_5/Relu_1Relulstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Relu_1
lstm_cell_5/mul_3Mullstm_cell_5/Sigmoid_2:y:0 lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterы
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_319852*
condR
while_cond_319851*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeу
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Њ

B__inference_lstm_1_layer_call_and_return_conditional_losses_316901

inputs>
*lstm_cell_4_matmul_readvariableop_resource:
?
,lstm_cell_4_matmul_1_readvariableop_resource:	d:
+lstm_cell_4_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_4/BiasAdd/ReadVariableOpЂ!lstm_cell_4/MatMul/ReadVariableOpЂ#lstm_cell_4/MatMul_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
lstm_cell_4/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_4/ones_like/Shape
lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_4/ones_like/ConstЕ
lstm_cell_4/ones_likeFill$lstm_cell_4/ones_like/Shape:output:0$lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/ones_like{
lstm_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_4/dropout/ConstА
lstm_cell_4/dropout/MulMullstm_cell_4/ones_like:output:0"lstm_cell_4/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout/Mul
lstm_cell_4/dropout/ShapeShapelstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_4/dropout/Shapeј
0lstm_cell_4/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_4/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЦЊр22
0lstm_cell_4/dropout/random_uniform/RandomUniform
"lstm_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2$
"lstm_cell_4/dropout/GreaterEqual/yя
 lstm_cell_4/dropout/GreaterEqualGreaterEqual9lstm_cell_4/dropout/random_uniform/RandomUniform:output:0+lstm_cell_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_cell_4/dropout/GreaterEqualЄ
lstm_cell_4/dropout/CastCast$lstm_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout/CastЋ
lstm_cell_4/dropout/Mul_1Mullstm_cell_4/dropout/Mul:z:0lstm_cell_4/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout/Mul_1
lstm_cell_4/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_4/dropout_1/ConstЖ
lstm_cell_4/dropout_1/MulMullstm_cell_4/ones_like:output:0$lstm_cell_4/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_1/Mul
lstm_cell_4/dropout_1/ShapeShapelstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_4/dropout_1/Shapeў
2lstm_cell_4/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_4/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2Мфя24
2lstm_cell_4/dropout_1/random_uniform/RandomUniform
$lstm_cell_4/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_4/dropout_1/GreaterEqual/yї
"lstm_cell_4/dropout_1/GreaterEqualGreaterEqual;lstm_cell_4/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_4/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_4/dropout_1/GreaterEqualЊ
lstm_cell_4/dropout_1/CastCast&lstm_cell_4/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_1/CastГ
lstm_cell_4/dropout_1/Mul_1Mullstm_cell_4/dropout_1/Mul:z:0lstm_cell_4/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_1/Mul_1
lstm_cell_4/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_4/dropout_2/ConstЖ
lstm_cell_4/dropout_2/MulMullstm_cell_4/ones_like:output:0$lstm_cell_4/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_2/Mul
lstm_cell_4/dropout_2/ShapeShapelstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_4/dropout_2/Shapeў
2lstm_cell_4/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_4/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ўВ24
2lstm_cell_4/dropout_2/random_uniform/RandomUniform
$lstm_cell_4/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_4/dropout_2/GreaterEqual/yї
"lstm_cell_4/dropout_2/GreaterEqualGreaterEqual;lstm_cell_4/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_4/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_4/dropout_2/GreaterEqualЊ
lstm_cell_4/dropout_2/CastCast&lstm_cell_4/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_2/CastГ
lstm_cell_4/dropout_2/Mul_1Mullstm_cell_4/dropout_2/Mul:z:0lstm_cell_4/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_2/Mul_1
lstm_cell_4/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_4/dropout_3/ConstЖ
lstm_cell_4/dropout_3/MulMullstm_cell_4/ones_like:output:0$lstm_cell_4/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_3/Mul
lstm_cell_4/dropout_3/ShapeShapelstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_4/dropout_3/Shapeў
2lstm_cell_4/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_4/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2звщ24
2lstm_cell_4/dropout_3/random_uniform/RandomUniform
$lstm_cell_4/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_4/dropout_3/GreaterEqual/yї
"lstm_cell_4/dropout_3/GreaterEqualGreaterEqual;lstm_cell_4/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_4/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_4/dropout_3/GreaterEqualЊ
lstm_cell_4/dropout_3/CastCast&lstm_cell_4/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_3/CastГ
lstm_cell_4/dropout_3/Mul_1Mullstm_cell_4/dropout_3/Mul:z:0lstm_cell_4/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_3/Mul_1
lstm_cell_4/mulMulstrided_slice_2:output:0lstm_cell_4/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mulГ
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOpЅ
lstm_cell_4/MatMulMatMullstm_cell_4/mul:z:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/MatMulИ
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOpІ
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/MatMul_1
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/addБ
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOpЉ
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/BiasAdd|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dimя
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_cell_4/split
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid_1
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_1z
lstm_cell_4/ReluRelulstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Relu
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_2
lstm_cell_4/add_1AddV2lstm_cell_4/mul_1:z:0lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/add_1
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid_2y
lstm_cell_4/Relu_1Relulstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Relu_1
lstm_cell_4/mul_3Mullstm_cell_4/Sigmoid_2:y:0 lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterы
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_316781*
condR
while_cond_316780*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeо
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ: : : 2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ф
I
-__inference_activation_3_layer_call_fn_320316

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_3163012
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
н

G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_314445

inputs

states
states_12
matmul_readvariableop_resource:
3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	ones_like`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_3Ј
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

IdentityЌ

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates
з

G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_315115

inputs

states
states_11
matmul_readvariableop_resource:	d3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
	ones_like_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_3Ј
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

IdentityЌ

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates


B__inference_conv_1_layer_call_and_return_conditional_losses_318385

inputsC
+conv1d_expanddims_1_readvariableop_resource:­.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџ­2
conv1d/ExpandDimsК
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:­*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЙ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:­2
conv1d/ExpandDims_1И
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ2	
BiasAddЇ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ­: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџ­
 
_user_specified_nameinputs
жG
Ч
while_body_316175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_5_matmul_readvariableop_resource_0:	dG
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:	dB
3while_lstm_cell_5_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_5_matmul_readvariableop_resource:	dE
2while_lstm_cell_5_matmul_1_readvariableop_resource:	d@
1while_lstm_cell_5_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_5/BiasAdd/ReadVariableOpЂ'while/lstm_cell_5/MatMul/ReadVariableOpЂ)while/lstm_cell_5/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_5/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_5/ones_like/ConstЬ
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/ones_likeП
while/lstm_cell_5/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mulЦ
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOpН
while/lstm_cell_5/MatMulMatMulwhile/lstm_cell_5/mul:z:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/MatMulЬ
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOpН
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/MatMul_1Д
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/addХ
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOpС
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/BiasAdd
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/lstm_cell_5/split
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid_1Ё
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_1
while/lstm_cell_5/ReluRelu while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/ReluА
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_2Ї
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul_1:z:0while/lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/add_1
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid_2
while/lstm_cell_5/Relu_1Reluwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Relu_1Д
while/lstm_cell_5/mul_3Mulwhile/lstm_cell_5/Sigmoid_2:y:0&while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_3:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
бC

G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_314627

inputs

states
states_12
matmul_readvariableop_resource:
3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shapeд
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ШШО2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yП
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeк
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2с2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_1/GreaterEqual/yЧ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeк
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2њњч2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_2/GreaterEqual/yЧ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeк
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2йјЂ2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_3/GreaterEqual/yЧ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_3/Mul_1_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_3Ј
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

IdentityЌ

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates
Г

є
C__inference_softmax_layer_call_and_return_conditional_losses_320354

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs


B__inference_lstm_2_layer_call_and_return_conditional_losses_320163

inputs=
*lstm_cell_5_matmul_readvariableop_resource:	d?
,lstm_cell_5_matmul_1_readvariableop_resource:	d:
+lstm_cell_5_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_5/BiasAdd/ReadVariableOpЂ!lstm_cell_5/MatMul/ReadVariableOpЂ#lstm_cell_5/MatMul_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2
lstm_cell_5/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like/ConstД
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/ones_like{
lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout/ConstЏ
lstm_cell_5/dropout/MulMullstm_cell_5/ones_like:output:0"lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout/Mul
lstm_cell_5/dropout/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout/Shapeї
0lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2љОА22
0lstm_cell_5/dropout/random_uniform/RandomUniform
"lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2$
"lstm_cell_5/dropout/GreaterEqual/yю
 lstm_cell_5/dropout/GreaterEqualGreaterEqual9lstm_cell_5/dropout/random_uniform/RandomUniform:output:0+lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_cell_5/dropout/GreaterEqualЃ
lstm_cell_5/dropout/CastCast$lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout/CastЊ
lstm_cell_5/dropout/Mul_1Mullstm_cell_5/dropout/Mul:z:0lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout/Mul_1
lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_1/ConstЕ
lstm_cell_5/dropout_1/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_1/Mul
lstm_cell_5/dropout_1/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_1/Shape§
2lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2КЪР24
2lstm_cell_5/dropout_1/random_uniform/RandomUniform
$lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_5/dropout_1/GreaterEqual/yі
"lstm_cell_5/dropout_1/GreaterEqualGreaterEqual;lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_cell_5/dropout_1/GreaterEqualЉ
lstm_cell_5/dropout_1/CastCast&lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_1/CastВ
lstm_cell_5/dropout_1/Mul_1Mullstm_cell_5/dropout_1/Mul:z:0lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_1/Mul_1
lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_2/ConstЕ
lstm_cell_5/dropout_2/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_2/Mul
lstm_cell_5/dropout_2/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_2/Shape§
2lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Яи24
2lstm_cell_5/dropout_2/random_uniform/RandomUniform
$lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_5/dropout_2/GreaterEqual/yі
"lstm_cell_5/dropout_2/GreaterEqualGreaterEqual;lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_cell_5/dropout_2/GreaterEqualЉ
lstm_cell_5/dropout_2/CastCast&lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_2/CastВ
lstm_cell_5/dropout_2/Mul_1Mullstm_cell_5/dropout_2/Mul:z:0lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_2/Mul_1
lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_3/ConstЕ
lstm_cell_5/dropout_3/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_3/Mul
lstm_cell_5/dropout_3/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_3/Shape§
2lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2љїі24
2lstm_cell_5/dropout_3/random_uniform/RandomUniform
$lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_5/dropout_3/GreaterEqual/yі
"lstm_cell_5/dropout_3/GreaterEqualGreaterEqual;lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_cell_5/dropout_3/GreaterEqualЉ
lstm_cell_5/dropout_3/CastCast&lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_3/CastВ
lstm_cell_5/dropout_3/Mul_1Mullstm_cell_5/dropout_3/Mul:z:0lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_3/Mul_1
lstm_cell_5/mulMulstrided_slice_2:output:0lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mulВ
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOpЅ
lstm_cell_5/MatMulMatMullstm_cell_5/mul:z:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/MatMulИ
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOpІ
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/MatMul_1
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/addБ
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOpЉ
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/BiasAdd|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dimя
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_cell_5/split
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid_1
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_1z
lstm_cell_5/ReluRelulstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Relu
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_2
lstm_cell_5/add_1AddV2lstm_cell_5/mul_1:z:0lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/add_1
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid_2y
lstm_cell_5/Relu_1Relulstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Relu_1
lstm_cell_5/mul_3Mullstm_cell_5/Sigmoid_2:y:0 lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterы
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_320043*
condR
while_cond_320042*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeу
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Іg
Ч
%sequential_1_lstm_2_while_body_314085D
@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counterJ
Fsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations)
%sequential_1_lstm_2_while_placeholder+
'sequential_1_lstm_2_while_placeholder_1+
'sequential_1_lstm_2_while_placeholder_2+
'sequential_1_lstm_2_while_placeholder_3C
?sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1_0
{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0Y
Fsequential_1_lstm_2_while_lstm_cell_5_matmul_readvariableop_resource_0:	d[
Hsequential_1_lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resource_0:	dV
Gsequential_1_lstm_2_while_lstm_cell_5_biasadd_readvariableop_resource_0:	&
"sequential_1_lstm_2_while_identity(
$sequential_1_lstm_2_while_identity_1(
$sequential_1_lstm_2_while_identity_2(
$sequential_1_lstm_2_while_identity_3(
$sequential_1_lstm_2_while_identity_4(
$sequential_1_lstm_2_while_identity_5A
=sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1}
ysequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensorW
Dsequential_1_lstm_2_while_lstm_cell_5_matmul_readvariableop_resource:	dY
Fsequential_1_lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resource:	dT
Esequential_1_lstm_2_while_lstm_cell_5_biasadd_readvariableop_resource:	Ђ<sequential_1/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOpЂ;sequential_1/lstm_2/while/lstm_cell_5/MatMul/ReadVariableOpЂ=sequential_1/lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOpы
Ksequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2M
Ksequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeЫ
=sequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_2_while_placeholderTsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype02?
=sequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItemт
5sequential_1/lstm_2/while/lstm_cell_5/ones_like/ShapeShapeDsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:27
5sequential_1/lstm_2/while/lstm_cell_5/ones_like/ShapeГ
5sequential_1/lstm_2/while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?27
5sequential_1/lstm_2/while/lstm_cell_5/ones_like/Const
/sequential_1/lstm_2/while/lstm_cell_5/ones_likeFill>sequential_1/lstm_2/while/lstm_cell_5/ones_like/Shape:output:0>sequential_1/lstm_2/while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd21
/sequential_1/lstm_2/while/lstm_cell_5/ones_like
)sequential_1/lstm_2/while/lstm_cell_5/mulMulDsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_1/lstm_2/while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)sequential_1/lstm_2/while/lstm_cell_5/mul
;sequential_1/lstm_2/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOpFsequential_1_lstm_2_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype02=
;sequential_1/lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp
,sequential_1/lstm_2/while/lstm_cell_5/MatMulMatMul-sequential_1/lstm_2/while/lstm_cell_5/mul:z:0Csequential_1/lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2.
,sequential_1/lstm_2/while/lstm_cell_5/MatMul
=sequential_1/lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOpHsequential_1_lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype02?
=sequential_1/lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp
.sequential_1/lstm_2/while/lstm_cell_5/MatMul_1MatMul'sequential_1_lstm_2_while_placeholder_2Esequential_1/lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ20
.sequential_1/lstm_2/while/lstm_cell_5/MatMul_1
)sequential_1/lstm_2/while/lstm_cell_5/addAddV26sequential_1/lstm_2/while/lstm_cell_5/MatMul:product:08sequential_1/lstm_2/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_2/while/lstm_cell_5/add
<sequential_1/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_lstm_2_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02>
<sequential_1/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp
-sequential_1/lstm_2/while/lstm_cell_5/BiasAddBiasAdd-sequential_1/lstm_2/while/lstm_cell_5/add:z:0Dsequential_1/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2/
-sequential_1/lstm_2/while/lstm_cell_5/BiasAddА
5sequential_1/lstm_2/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_1/lstm_2/while/lstm_cell_5/split/split_dimз
+sequential_1/lstm_2/while/lstm_cell_5/splitSplit>sequential_1/lstm_2/while/lstm_cell_5/split/split_dim:output:06sequential_1/lstm_2/while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2-
+sequential_1/lstm_2/while/lstm_cell_5/splitб
-sequential_1/lstm_2/while/lstm_cell_5/SigmoidSigmoid4sequential_1/lstm_2/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2/
-sequential_1/lstm_2/while/lstm_cell_5/Sigmoidе
/sequential_1/lstm_2/while/lstm_cell_5/Sigmoid_1Sigmoid4sequential_1/lstm_2/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd21
/sequential_1/lstm_2/while/lstm_cell_5/Sigmoid_1ё
+sequential_1/lstm_2/while/lstm_cell_5/mul_1Mul3sequential_1/lstm_2/while/lstm_cell_5/Sigmoid_1:y:0'sequential_1_lstm_2_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2-
+sequential_1/lstm_2/while/lstm_cell_5/mul_1Ш
*sequential_1/lstm_2/while/lstm_cell_5/ReluRelu4sequential_1/lstm_2/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2,
*sequential_1/lstm_2/while/lstm_cell_5/Relu
+sequential_1/lstm_2/while/lstm_cell_5/mul_2Mul1sequential_1/lstm_2/while/lstm_cell_5/Sigmoid:y:08sequential_1/lstm_2/while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2-
+sequential_1/lstm_2/while/lstm_cell_5/mul_2ї
+sequential_1/lstm_2/while/lstm_cell_5/add_1AddV2/sequential_1/lstm_2/while/lstm_cell_5/mul_1:z:0/sequential_1/lstm_2/while/lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2-
+sequential_1/lstm_2/while/lstm_cell_5/add_1е
/sequential_1/lstm_2/while/lstm_cell_5/Sigmoid_2Sigmoid4sequential_1/lstm_2/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd21
/sequential_1/lstm_2/while/lstm_cell_5/Sigmoid_2Ч
,sequential_1/lstm_2/while/lstm_cell_5/Relu_1Relu/sequential_1/lstm_2/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2.
,sequential_1/lstm_2/while/lstm_cell_5/Relu_1
+sequential_1/lstm_2/while/lstm_cell_5/mul_3Mul3sequential_1/lstm_2/while/lstm_cell_5/Sigmoid_2:y:0:sequential_1/lstm_2/while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2-
+sequential_1/lstm_2/while/lstm_cell_5/mul_3У
>sequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_2_while_placeholder_1%sequential_1_lstm_2_while_placeholder/sequential_1/lstm_2/while/lstm_cell_5/mul_3:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItem
sequential_1/lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_2/while/add/yЙ
sequential_1/lstm_2/while/addAddV2%sequential_1_lstm_2_while_placeholder(sequential_1/lstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_2/while/add
!sequential_1/lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_2/while/add_1/yк
sequential_1/lstm_2/while/add_1AddV2@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counter*sequential_1/lstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_2/while/add_1з
"sequential_1/lstm_2/while/IdentityIdentity#sequential_1/lstm_2/while/add_1:z:0=^sequential_1/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_2/while/Identityў
$sequential_1/lstm_2/while/Identity_1IdentityFsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations=^sequential_1/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_1й
$sequential_1/lstm_2/while/Identity_2Identity!sequential_1/lstm_2/while/add:z:0=^sequential_1/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_2
$sequential_1/lstm_2/while/Identity_3IdentityNsequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^sequential_1/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_3ј
$sequential_1/lstm_2/while/Identity_4Identity/sequential_1/lstm_2/while/lstm_cell_5/mul_3:z:0=^sequential_1/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2&
$sequential_1/lstm_2/while/Identity_4ј
$sequential_1/lstm_2/while/Identity_5Identity/sequential_1/lstm_2/while/lstm_cell_5/add_1:z:0=^sequential_1/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2&
$sequential_1/lstm_2/while/Identity_5"Q
"sequential_1_lstm_2_while_identity+sequential_1/lstm_2/while/Identity:output:0"U
$sequential_1_lstm_2_while_identity_1-sequential_1/lstm_2/while/Identity_1:output:0"U
$sequential_1_lstm_2_while_identity_2-sequential_1/lstm_2/while/Identity_2:output:0"U
$sequential_1_lstm_2_while_identity_3-sequential_1/lstm_2/while/Identity_3:output:0"U
$sequential_1_lstm_2_while_identity_4-sequential_1/lstm_2/while/Identity_4:output:0"U
$sequential_1_lstm_2_while_identity_5-sequential_1/lstm_2/while/Identity_5:output:0"
Esequential_1_lstm_2_while_lstm_cell_5_biasadd_readvariableop_resourceGsequential_1_lstm_2_while_lstm_cell_5_biasadd_readvariableop_resource_0"
Fsequential_1_lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resourceHsequential_1_lstm_2_while_lstm_cell_5_matmul_1_readvariableop_resource_0"
Dsequential_1_lstm_2_while_lstm_cell_5_matmul_readvariableop_resourceFsequential_1_lstm_2_while_lstm_cell_5_matmul_readvariableop_resource_0"
=sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1?sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1_0"ј
ysequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2|
<sequential_1/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp<sequential_1/lstm_2/while/lstm_cell_5/BiasAdd/ReadVariableOp2z
;sequential_1/lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp;sequential_1/lstm_2/while/lstm_cell_5/MatMul/ReadVariableOp2~
=sequential_1/lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp=sequential_1/lstm_2/while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
њ^

B__inference_lstm_2_layer_call_and_return_conditional_losses_316263

inputs=
*lstm_cell_5_matmul_readvariableop_resource:	d?
,lstm_cell_5_matmul_1_readvariableop_resource:	d:
+lstm_cell_5_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_5/BiasAdd/ReadVariableOpЂ!lstm_cell_5/MatMul/ReadVariableOpЂ#lstm_cell_5/MatMul_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2
lstm_cell_5/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like/ConstД
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/ones_like
lstm_cell_5/mulMulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mulВ
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOpЅ
lstm_cell_5/MatMulMatMullstm_cell_5/mul:z:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/MatMulИ
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOpІ
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/MatMul_1
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/addБ
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOpЉ
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/BiasAdd|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dimя
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_cell_5/split
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid_1
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_1z
lstm_cell_5/ReluRelulstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Relu
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_2
lstm_cell_5/add_1AddV2lstm_cell_5/mul_1:z:0lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/add_1
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid_2y
lstm_cell_5/Relu_1Relulstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Relu_1
lstm_cell_5/mul_3Mullstm_cell_5/Sigmoid_2:y:0 lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterы
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_316175*
condR
while_cond_316174*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeу
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs

і
,__inference_lstm_cell_4_layer_call_fn_320501

inputs
states_0
states_1
unknown:

	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_3146272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
мG
Щ
while_body_319044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_4_matmul_readvariableop_resource_0:
G
4while_lstm_cell_4_matmul_1_readvariableop_resource_0:	dB
3while_lstm_cell_4_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_4_matmul_readvariableop_resource:
E
2while_lstm_cell_4_matmul_1_readvariableop_resource:	d@
1while_lstm_cell_4_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_4/BiasAdd/ReadVariableOpЂ'while/lstm_cell_4/MatMul/ReadVariableOpЂ)while/lstm_cell_4/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_4/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_4/ones_like/Shape
!while/lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_4/ones_like/ConstЭ
while/lstm_cell_4/ones_likeFill*while/lstm_cell_4/ones_like/Shape:output:0*while/lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/ones_likeР
while/lstm_cell_4/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_4/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mulЧ
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOpН
while/lstm_cell_4/MatMulMatMulwhile/lstm_cell_4/mul:z:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/MatMulЬ
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOpН
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/MatMul_1Д
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/addХ
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOpС
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/BiasAdd
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/lstm_cell_4/split
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid_1Ё
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_1
while/lstm_cell_4/ReluRelu while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/ReluА
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid:y:0$while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_2Ї
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul_1:z:0while/lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/add_1
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Sigmoid_2
while/lstm_cell_4/Relu_1Reluwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/Relu_1Д
while/lstm_cell_4/mul_3Mulwhile/lstm_cell_4/Sigmoid_2:y:0&while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_4/mul_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_4/mul_3:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
E

B__inference_lstm_2_layer_call_and_return_conditional_losses_315444

inputs%
lstm_cell_5_315362:	d%
lstm_cell_5_315364:	d!
lstm_cell_5_315366:	
identityЂ#lstm_cell_5/StatefulPartitionedCallЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_315362lstm_cell_5_315364lstm_cell_5_315366*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_3152972%
#lstm_cell_5/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_315362lstm_cell_5_315364lstm_cell_5_315366*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_315375*
condR
while_cond_315374*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_5/StatefulPartitionedCall^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
 
_user_specified_nameinputs
Е

-__inference_sequential_1_layer_call_fn_318370

inputs
unknown:­
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	d
	unknown_7:	
	unknown_8:	d
	unknown_9:	d

unknown_10:	

unknown_11:d2

unknown_12:2

unknown_13:2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:2

unknown_18:
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3171112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ­: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ­
 
_user_specified_nameinputs
Щy
Ч
while_body_320043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_5_matmul_readvariableop_resource_0:	dG
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:	dB
3while_lstm_cell_5_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_5_matmul_readvariableop_resource:	dE
2while_lstm_cell_5_matmul_1_readvariableop_resource:	d@
1while_lstm_cell_5_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_5/BiasAdd/ReadVariableOpЂ'while/lstm_cell_5/MatMul/ReadVariableOpЂ)while/lstm_cell_5/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_5/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_5/ones_like/ConstЬ
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/ones_like
while/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_5/dropout/ConstЧ
while/lstm_cell_5/dropout/MulMul$while/lstm_cell_5/ones_like:output:0(while/lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/dropout/Mul
while/lstm_cell_5/dropout/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_5/dropout/Shape
6while/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2жыі28
6while/lstm_cell_5/dropout/random_uniform/RandomUniform
(while/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2*
(while/lstm_cell_5/dropout/GreaterEqual/y
&while/lstm_cell_5/dropout/GreaterEqualGreaterEqual?while/lstm_cell_5/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2(
&while/lstm_cell_5/dropout/GreaterEqualЕ
while/lstm_cell_5/dropout/CastCast*while/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2 
while/lstm_cell_5/dropout/CastТ
while/lstm_cell_5/dropout/Mul_1Mul!while/lstm_cell_5/dropout/Mul:z:0"while/lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
while/lstm_cell_5/dropout/Mul_1
!while/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_1/ConstЭ
while/lstm_cell_5/dropout_1/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
while/lstm_cell_5/dropout_1/Mul
!while/lstm_cell_5/dropout_1/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_1/Shape
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ЉЗЯ2:
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_5/dropout_1/GreaterEqual/y
(while/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(while/lstm_cell_5/dropout_1/GreaterEqualЛ
 while/lstm_cell_5/dropout_1/CastCast,while/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_5/dropout_1/CastЪ
!while/lstm_cell_5/dropout_1/Mul_1Mul#while/lstm_cell_5/dropout_1/Mul:z:0$while/lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_5/dropout_1/Mul_1
!while/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_2/ConstЭ
while/lstm_cell_5/dropout_2/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
while/lstm_cell_5/dropout_2/Mul
!while/lstm_cell_5/dropout_2/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_2/Shape
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2РСM2:
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_5/dropout_2/GreaterEqual/y
(while/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(while/lstm_cell_5/dropout_2/GreaterEqualЛ
 while/lstm_cell_5/dropout_2/CastCast,while/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_5/dropout_2/CastЪ
!while/lstm_cell_5/dropout_2/Mul_1Mul#while/lstm_cell_5/dropout_2/Mul:z:0$while/lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_5/dropout_2/Mul_1
!while/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_3/ConstЭ
while/lstm_cell_5/dropout_3/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
while/lstm_cell_5/dropout_3/Mul
!while/lstm_cell_5/dropout_3/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_3/Shape
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ьЃ82:
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_5/dropout_3/GreaterEqual/y
(while/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(while/lstm_cell_5/dropout_3/GreaterEqualЛ
 while/lstm_cell_5/dropout_3/CastCast,while/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_5/dropout_3/CastЪ
!while/lstm_cell_5/dropout_3/Mul_1Mul#while/lstm_cell_5/dropout_3/Mul:z:0$while/lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_5/dropout_3/Mul_1О
while/lstm_cell_5/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mulЦ
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOpН
while/lstm_cell_5/MatMulMatMulwhile/lstm_cell_5/mul:z:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/MatMulЬ
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOpН
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/MatMul_1Д
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/addХ
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOpС
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_5/BiasAdd
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/lstm_cell_5/split
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid_1Ё
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_1
while/lstm_cell_5/ReluRelu while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/ReluА
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_2Ї
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul_1:z:0while/lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/add_1
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Sigmoid_2
while/lstm_cell_5/Relu_1Reluwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/Relu_1Д
while/lstm_cell_5/mul_3Mulwhile/lstm_cell_5/Sigmoid_2:y:0&while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_5/mul_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_3:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
§^

B__inference_lstm_1_layer_call_and_return_conditional_losses_316097

inputs>
*lstm_cell_4_matmul_readvariableop_resource:
?
,lstm_cell_4_matmul_1_readvariableop_resource:	d:
+lstm_cell_4_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_4/BiasAdd/ReadVariableOpЂ!lstm_cell_4/MatMul/ReadVariableOpЂ#lstm_cell_4/MatMul_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
lstm_cell_4/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_4/ones_like/Shape
lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_4/ones_like/ConstЕ
lstm_cell_4/ones_likeFill$lstm_cell_4/ones_like/Shape:output:0$lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/ones_like
lstm_cell_4/mulMulstrided_slice_2:output:0lstm_cell_4/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mulГ
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOpЅ
lstm_cell_4/MatMulMatMullstm_cell_4/mul:z:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/MatMulИ
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOpІ
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/MatMul_1
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/addБ
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOpЉ
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/BiasAdd|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dimя
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_cell_4/split
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid_1
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_1z
lstm_cell_4/ReluRelulstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Relu
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_2
lstm_cell_4/add_1AddV2lstm_cell_4/mul_1:z:0lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/add_1
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid_2y
lstm_cell_4/Relu_1Relulstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Relu_1
lstm_cell_4/mul_3Mullstm_cell_4/Sigmoid_2:y:0 lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterы
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_316009*
condR
while_cond_316008*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeо
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ: : : 2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ѕ)
ъ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_315790

inputs5
'assignmovingavg_readvariableop_resource:27
)assignmovingavg_1_readvariableop_resource:23
%batchnorm_mul_readvariableop_resource:2/
!batchnorm_readvariableop_resource:2
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:2*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:22
moments/StopGradientЄ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indicesВ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:2*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg/decayЄ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:2*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:22
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:22
AssignMovingAvg/mulП
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg_1/decayЊ
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:2*
dtype02"
 AssignMovingAvg_1/ReadVariableOp 
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:22
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:22
AssignMovingAvg_1/mulЩ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:22
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:22
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:22
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:22
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ2: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
в
F
*__inference_dropout_1_layer_call_fn_318586

inputs
identityШ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3159372
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Љ

B__inference_lstm_1_layer_call_and_return_conditional_losses_319355

inputs>
*lstm_cell_4_matmul_readvariableop_resource:
?
,lstm_cell_4_matmul_1_readvariableop_resource:	d:
+lstm_cell_4_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_4/BiasAdd/ReadVariableOpЂ!lstm_cell_4/MatMul/ReadVariableOpЂ#lstm_cell_4/MatMul_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
lstm_cell_4/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_4/ones_like/Shape
lstm_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_4/ones_like/ConstЕ
lstm_cell_4/ones_likeFill$lstm_cell_4/ones_like/Shape:output:0$lstm_cell_4/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/ones_like{
lstm_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_4/dropout/ConstА
lstm_cell_4/dropout/MulMullstm_cell_4/ones_like:output:0"lstm_cell_4/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout/Mul
lstm_cell_4/dropout/ShapeShapelstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_4/dropout/Shapeї
0lstm_cell_4/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_4/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2§б!22
0lstm_cell_4/dropout/random_uniform/RandomUniform
"lstm_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2$
"lstm_cell_4/dropout/GreaterEqual/yя
 lstm_cell_4/dropout/GreaterEqualGreaterEqual9lstm_cell_4/dropout/random_uniform/RandomUniform:output:0+lstm_cell_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_cell_4/dropout/GreaterEqualЄ
lstm_cell_4/dropout/CastCast$lstm_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout/CastЋ
lstm_cell_4/dropout/Mul_1Mullstm_cell_4/dropout/Mul:z:0lstm_cell_4/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout/Mul_1
lstm_cell_4/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_4/dropout_1/ConstЖ
lstm_cell_4/dropout_1/MulMullstm_cell_4/ones_like:output:0$lstm_cell_4/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_1/Mul
lstm_cell_4/dropout_1/ShapeShapelstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_4/dropout_1/Shapeў
2lstm_cell_4/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_4/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2б24
2lstm_cell_4/dropout_1/random_uniform/RandomUniform
$lstm_cell_4/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_4/dropout_1/GreaterEqual/yї
"lstm_cell_4/dropout_1/GreaterEqualGreaterEqual;lstm_cell_4/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_4/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_4/dropout_1/GreaterEqualЊ
lstm_cell_4/dropout_1/CastCast&lstm_cell_4/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_1/CastГ
lstm_cell_4/dropout_1/Mul_1Mullstm_cell_4/dropout_1/Mul:z:0lstm_cell_4/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_1/Mul_1
lstm_cell_4/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_4/dropout_2/ConstЖ
lstm_cell_4/dropout_2/MulMullstm_cell_4/ones_like:output:0$lstm_cell_4/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_2/Mul
lstm_cell_4/dropout_2/ShapeShapelstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_4/dropout_2/Shapeў
2lstm_cell_4/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_4/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ыњы24
2lstm_cell_4/dropout_2/random_uniform/RandomUniform
$lstm_cell_4/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_4/dropout_2/GreaterEqual/yї
"lstm_cell_4/dropout_2/GreaterEqualGreaterEqual;lstm_cell_4/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_4/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_4/dropout_2/GreaterEqualЊ
lstm_cell_4/dropout_2/CastCast&lstm_cell_4/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_2/CastГ
lstm_cell_4/dropout_2/Mul_1Mullstm_cell_4/dropout_2/Mul:z:0lstm_cell_4/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_2/Mul_1
lstm_cell_4/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_4/dropout_3/ConstЖ
lstm_cell_4/dropout_3/MulMullstm_cell_4/ones_like:output:0$lstm_cell_4/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_3/Mul
lstm_cell_4/dropout_3/ShapeShapelstm_cell_4/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_4/dropout_3/Shapeў
2lstm_cell_4/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_4/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЏТ№24
2lstm_cell_4/dropout_3/random_uniform/RandomUniform
$lstm_cell_4/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_4/dropout_3/GreaterEqual/yї
"lstm_cell_4/dropout_3/GreaterEqualGreaterEqual;lstm_cell_4/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_4/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_4/dropout_3/GreaterEqualЊ
lstm_cell_4/dropout_3/CastCast&lstm_cell_4/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_3/CastГ
lstm_cell_4/dropout_3/Mul_1Mullstm_cell_4/dropout_3/Mul:z:0lstm_cell_4/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/dropout_3/Mul_1
lstm_cell_4/mulMulstrided_slice_2:output:0lstm_cell_4/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mulГ
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOpЅ
lstm_cell_4/MatMulMatMullstm_cell_4/mul:z:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/MatMulИ
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOpІ
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/MatMul_1
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/addБ
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOpЉ
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/BiasAdd|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dimя
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_cell_4/split
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid_1
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_1z
lstm_cell_4/ReluRelulstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Relu
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_2
lstm_cell_4/add_1AddV2lstm_cell_4/mul_1:z:0lstm_cell_4/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/add_1
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Sigmoid_2y
lstm_cell_4/Relu_1Relulstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/Relu_1
lstm_cell_4/mul_3Mullstm_cell_4/Sigmoid_2:y:0 lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_4/mul_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterы
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_319235*
condR
while_cond_319234*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeо
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ: : : 2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ш

B__inference_lstm_2_layer_call_and_return_conditional_losses_319781
inputs_0=
*lstm_cell_5_matmul_readvariableop_resource:	d?
,lstm_cell_5_matmul_1_readvariableop_resource:	d:
+lstm_cell_5_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_5/BiasAdd/ReadVariableOpЂ!lstm_cell_5/MatMul/ReadVariableOpЂ#lstm_cell_5/MatMul_1/ReadVariableOpЂwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2
lstm_cell_5/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like/ConstД
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/ones_like{
lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout/ConstЏ
lstm_cell_5/dropout/MulMullstm_cell_5/ones_like:output:0"lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout/Mul
lstm_cell_5/dropout/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout/Shapeї
0lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Осч22
0lstm_cell_5/dropout/random_uniform/RandomUniform
"lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2$
"lstm_cell_5/dropout/GreaterEqual/yю
 lstm_cell_5/dropout/GreaterEqualGreaterEqual9lstm_cell_5/dropout/random_uniform/RandomUniform:output:0+lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_cell_5/dropout/GreaterEqualЃ
lstm_cell_5/dropout/CastCast$lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout/CastЊ
lstm_cell_5/dropout/Mul_1Mullstm_cell_5/dropout/Mul:z:0lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout/Mul_1
lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_1/ConstЕ
lstm_cell_5/dropout_1/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_1/Mul
lstm_cell_5/dropout_1/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_1/Shape§
2lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2џЮ24
2lstm_cell_5/dropout_1/random_uniform/RandomUniform
$lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_5/dropout_1/GreaterEqual/yі
"lstm_cell_5/dropout_1/GreaterEqualGreaterEqual;lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_cell_5/dropout_1/GreaterEqualЉ
lstm_cell_5/dropout_1/CastCast&lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_1/CastВ
lstm_cell_5/dropout_1/Mul_1Mullstm_cell_5/dropout_1/Mul:z:0lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_1/Mul_1
lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_2/ConstЕ
lstm_cell_5/dropout_2/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_2/Mul
lstm_cell_5/dropout_2/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_2/Shape§
2lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2љЄЁ24
2lstm_cell_5/dropout_2/random_uniform/RandomUniform
$lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_5/dropout_2/GreaterEqual/yі
"lstm_cell_5/dropout_2/GreaterEqualGreaterEqual;lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_cell_5/dropout_2/GreaterEqualЉ
lstm_cell_5/dropout_2/CastCast&lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_2/CastВ
lstm_cell_5/dropout_2/Mul_1Mullstm_cell_5/dropout_2/Mul:z:0lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_2/Mul_1
lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_3/ConstЕ
lstm_cell_5/dropout_3/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_3/Mul
lstm_cell_5/dropout_3/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_3/Shapeќ
2lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Ћ(24
2lstm_cell_5/dropout_3/random_uniform/RandomUniform
$lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_5/dropout_3/GreaterEqual/yі
"lstm_cell_5/dropout_3/GreaterEqualGreaterEqual;lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_cell_5/dropout_3/GreaterEqualЉ
lstm_cell_5/dropout_3/CastCast&lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_3/CastВ
lstm_cell_5/dropout_3/Mul_1Mullstm_cell_5/dropout_3/Mul:z:0lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/dropout_3/Mul_1
lstm_cell_5/mulMulstrided_slice_2:output:0lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mulВ
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOpЅ
lstm_cell_5/MatMulMatMullstm_cell_5/mul:z:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/MatMulИ
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOpІ
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/MatMul_1
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/addБ
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOpЉ
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_5/BiasAdd|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dimя
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
lstm_cell_5/split
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid_1
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_1z
lstm_cell_5/ReluRelulstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Relu
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_2
lstm_cell_5/add_1AddV2lstm_cell_5/mul_1:z:0lstm_cell_5/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/add_1
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Sigmoid_2y
lstm_cell_5/Relu_1Relulstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/Relu_1
lstm_cell_5/mul_3Mullstm_cell_5/Sigmoid_2:y:0 lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_5/mul_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterы
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_319661*
condR
while_cond_319660*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeу
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
е
У
while_cond_318661
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_318661___redundant_placeholder04
0while_while_cond_318661___redundant_placeholder14
0while_while_cond_318661___redundant_placeholder24
0while_while_cond_318661___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
М

-__inference_sequential_1_layer_call_fn_316371
input_2
unknown:­
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	d
	unknown_7:	
	unknown_8:	d
	unknown_9:	d

unknown_10:	

unknown_11:d2

unknown_12:2

unknown_13:2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:2

unknown_18:
identityЂStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3163282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ­: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџ­
!
_user_specified_name	input_2"ЬL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Џ
serving_default
@
input_25
serving_default_input_2:0џџџџџџџџџ­;
softmax0
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Яч
g
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer_with_weights-6
layer-10
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
ц_default_save_signature
+ч&call_and_return_all_conditional_losses
ш__call__"эb
_tf_keras_sequentialЮb{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 15, 173]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}, {"class_name": "Conv1D", "config": {"name": "conv_1", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [15]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_2", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "fc1", "trainable": true, "dtype": "float32", "units": 50, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_3", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "softmax", "trainable": true, "dtype": "float32", "units": 12, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 173}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 173]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 15, 173]}, "float32", "input_2"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 15, 173]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "shared_object_id": 0}, {"class_name": "Conv1D", "config": {"name": "conv_1", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [15]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8}, {"class_name": "Activation", "config": {"name": "activation_2", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 10}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 15}, {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 20}, {"class_name": "Dense", "config": {"name": "fc1", "trainable": true, "dtype": "float32", "units": 50, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 27}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 28}, {"class_name": "Activation", "config": {"name": "activation_3", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 29}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 30}, {"class_name": "Dense", "config": {"name": "softmax", "trainable": true, "dtype": "float32", "units": 12, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 36}, {"class_name": "Recall", "config": {"name": "recall_1", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 37}, {"class_name": "Precision", "config": {"name": "precision_1", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 38}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Ч


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+щ&call_and_return_all_conditional_losses
ъ__call__" 	
_tf_keras_layer	{"name": "conv_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv_1", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [15]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 173}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 173]}}
Ф

axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
 	keras_api
+ы&call_and_return_all_conditional_losses
ь__call__"ю
_tf_keras_layerд{"name": "batch_normalization_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 256}}, "shared_object_id": 39}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 256]}}
ю
!	variables
"trainable_variables
#regularization_losses
$	keras_api
+э&call_and_return_all_conditional_losses
ю__call__"н
_tf_keras_layerУ{"name": "activation_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_2", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}
џ
%	variables
&trainable_variables
'regularization_losses
(	keras_api
+я&call_and_return_all_conditional_losses
№__call__"ю
_tf_keras_layerд{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 10}
И
)cell
*
state_spec
+trainable_variables
,	variables
-regularization_losses
.	keras_api
+ё&call_and_return_all_conditional_losses
ђ__call__"
_tf_keras_rnn_layerя
{"name": "lstm_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 15, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 256]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 40}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 256]}}
Й
/cell
0
state_spec
1trainable_variables
2	variables
3regularization_losses
4	keras_api
+ѓ&call_and_return_all_conditional_losses
є__call__"
_tf_keras_rnn_layer№
{"name": "lstm_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 20, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 100]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 41}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 100]}}
Ю

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
+ѕ&call_and_return_all_conditional_losses
і__call__"Ї
_tf_keras_layer{"name": "fc1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "fc1", "trainable": true, "dtype": "float32", "units": 50, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
Ф

;axis
	<gamma
=beta
>moving_mean
?moving_variance
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
+ї&call_and_return_all_conditional_losses
ј__call__"ю
_tf_keras_layerд{"name": "batch_normalization_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 27}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 50}}, "shared_object_id": 43}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
я
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
+љ&call_and_return_all_conditional_losses
њ__call__"о
_tf_keras_layerФ{"name": "activation_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_3", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 29}
џ
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
+ћ&call_and_return_all_conditional_losses
ќ__call__"ю
_tf_keras_layerд{"name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 30}
е

Lkernel
Mbias
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
+§&call_and_return_all_conditional_losses
ў__call__"Ў
_tf_keras_layer{"name": "softmax", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "softmax", "trainable": true, "dtype": "float32", "units": 12, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 44}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}

Riter

Sbeta_1

Tbeta_2
	Udecay
Vlearning_ratemЦmЧmШmЩ5mЪ6mЫ<mЬ=mЭLmЮMmЯWmаXmбYmвZmг[mд\mеvжvзvиvй5vк6vл<vм=vнLvоMvпWvрXvсYvтZvу[vф\vх"
	optimizer

0
1
2
3
W4
X5
Y6
Z7
[8
\9
510
611
<12
=13
L14
M15"
trackable_list_wrapper
Ж
0
1
2
3
4
5
W6
X7
Y8
Z9
[10
\11
512
613
<14
=15
>16
?17
L18
M19"
trackable_list_wrapper
 "
trackable_list_wrapper
Ю
trainable_variables
]non_trainable_variables

^layers
	variables
_layer_regularization_losses
`metrics
alayer_metrics
regularization_losses
ш__call__
ц_default_save_signature
+ч&call_and_return_all_conditional_losses
'ч"call_and_return_conditional_losses"
_generic_user_object
-
џserving_default"
signature_map
%:#­2conv_1/kernel
:2conv_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
bnon_trainable_variables

clayers
	variables
trainable_variables
dlayer_regularization_losses
emetrics
flayer_metrics
regularization_losses
ъ__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_2/gamma
):'2batch_normalization_2/beta
2:0 (2!batch_normalization_2/moving_mean
6:4 (2%batch_normalization_2/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
gnon_trainable_variables

hlayers
	variables
trainable_variables
ilayer_regularization_losses
jmetrics
klayer_metrics
regularization_losses
ь__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
lnon_trainable_variables

mlayers
!	variables
"trainable_variables
nlayer_regularization_losses
ometrics
player_metrics
#regularization_losses
ю__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
qnon_trainable_variables

rlayers
%	variables
&trainable_variables
slayer_regularization_losses
tmetrics
ulayer_metrics
'regularization_losses
№__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
	
v
state_size

Wkernel
Xrecurrent_kernel
Ybias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
+&call_and_return_all_conditional_losses
__call__"Ю
_tf_keras_layerД{"name": "lstm_cell_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_4", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 14}
 "
trackable_list_wrapper
5
W0
X1
Y2"
trackable_list_wrapper
5
W0
X1
Y2"
trackable_list_wrapper
 "
trackable_list_wrapper
Н
+trainable_variables
{non_trainable_variables
,	variables

|layers
}layer_regularization_losses
~metrics
layer_metrics
states
-regularization_losses
ђ__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
 	

state_size

Zkernel
[recurrent_kernel
\bias
	variables
trainable_variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__"Ю
_tf_keras_layerД{"name": "lstm_cell_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_5", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 19}
 "
trackable_list_wrapper
5
Z0
[1
\2"
trackable_list_wrapper
5
Z0
[1
\2"
trackable_list_wrapper
 "
trackable_list_wrapper
Т
1trainable_variables
non_trainable_variables
2	variables
layers
 layer_regularization_losses
metrics
layer_metrics
states
3regularization_losses
є__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
:d22
fc1/kernel
:22fc1/bias
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
layers
7	variables
8trainable_variables
 layer_regularization_losses
metrics
layer_metrics
9regularization_losses
і__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'22batch_normalization_3/gamma
(:&22batch_normalization_3/beta
1:/2 (2!batch_normalization_3/moving_mean
5:32 (2%batch_normalization_3/moving_variance
<
<0
=1
>2
?3"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
layers
@	variables
Atrainable_variables
 layer_regularization_losses
metrics
layer_metrics
Bregularization_losses
ј__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
layers
D	variables
Etrainable_variables
 layer_regularization_losses
metrics
layer_metrics
Fregularization_losses
њ__call__
+љ&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
layers
H	variables
Itrainable_variables
 layer_regularization_losses
metrics
layer_metrics
Jregularization_losses
ќ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses"
_generic_user_object
 :22softmax/kernel
:2softmax/bias
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
 non_trainable_variables
Ёlayers
N	variables
Otrainable_variables
 Ђlayer_regularization_losses
Ѓmetrics
Єlayer_metrics
Pregularization_losses
ў__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+
2lstm_1/lstm_cell_4/kernel
6:4	d2#lstm_1/lstm_cell_4/recurrent_kernel
&:$2lstm_1/lstm_cell_4/bias
,:*	d2lstm_2/lstm_cell_5/kernel
6:4	d2#lstm_2/lstm_cell_5/recurrent_kernel
&:$2lstm_2/lstm_cell_5/bias
<
0
1
>2
?3"
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
@
Ѕ0
І1
Ї2
Ј3"
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
.
0
1"
trackable_list_wrapper
 "
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
 "
trackable_list_wrapper
5
W0
X1
Y2"
trackable_list_wrapper
5
W0
X1
Y2"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Љnon_trainable_variables
Њlayers
w	variables
xtrainable_variables
 Ћlayer_regularization_losses
Ќmetrics
­layer_metrics
yregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
)0"
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
5
Z0
[1
\2"
trackable_list_wrapper
5
Z0
[1
\2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ўnon_trainable_variables
Џlayers
	variables
trainable_variables
 Аlayer_regularization_losses
Бmetrics
Вlayer_metrics
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
/0"
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
trackable_list_wrapper
 "
trackable_dict_wrapper
.
>0
?1"
trackable_list_wrapper
 "
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
и

Гtotal

Дcount
Е	variables
Ж	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 45}


Зtotal

Иcount
Й
_fn_kwargs
К	variables
Л	keras_api"а
_tf_keras_metricЕ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 36}
Л
М
thresholds
Нtrue_positives
Оfalse_negatives
П	variables
Р	keras_api"м
_tf_keras_metricС{"class_name": "Recall", "name": "recall_1", "dtype": "float32", "config": {"name": "recall_1", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 37}
Ф
С
thresholds
Тtrue_positives
Уfalse_positives
Ф	variables
Х	keras_api"х
_tf_keras_metricЪ{"class_name": "Precision", "name": "precision_1", "dtype": "float32", "config": {"name": "precision_1", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 38}
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
:  (2total
:  (2count
0
Г0
Д1"
trackable_list_wrapper
.
Е	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
З0
И1"
trackable_list_wrapper
.
К	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
0
Н0
О1"
trackable_list_wrapper
.
П	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
Т0
У1"
trackable_list_wrapper
.
Ф	variables"
_generic_user_object
*:(­2Adam/conv_1/kernel/m
:2Adam/conv_1/bias/m
/:-2"Adam/batch_normalization_2/gamma/m
.:,2!Adam/batch_normalization_2/beta/m
!:d22Adam/fc1/kernel/m
:22Adam/fc1/bias/m
.:,22"Adam/batch_normalization_3/gamma/m
-:+22!Adam/batch_normalization_3/beta/m
%:#22Adam/softmax/kernel/m
:2Adam/softmax/bias/m
2:0
2 Adam/lstm_1/lstm_cell_4/kernel/m
;:9	d2*Adam/lstm_1/lstm_cell_4/recurrent_kernel/m
+:)2Adam/lstm_1/lstm_cell_4/bias/m
1:/	d2 Adam/lstm_2/lstm_cell_5/kernel/m
;:9	d2*Adam/lstm_2/lstm_cell_5/recurrent_kernel/m
+:)2Adam/lstm_2/lstm_cell_5/bias/m
*:(­2Adam/conv_1/kernel/v
:2Adam/conv_1/bias/v
/:-2"Adam/batch_normalization_2/gamma/v
.:,2!Adam/batch_normalization_2/beta/v
!:d22Adam/fc1/kernel/v
:22Adam/fc1/bias/v
.:,22"Adam/batch_normalization_3/gamma/v
-:+22!Adam/batch_normalization_3/beta/v
%:#22Adam/softmax/kernel/v
:2Adam/softmax/bias/v
2:0
2 Adam/lstm_1/lstm_cell_4/kernel/v
;:9	d2*Adam/lstm_1/lstm_cell_4/recurrent_kernel/v
+:)2Adam/lstm_1/lstm_cell_4/bias/v
1:/	d2 Adam/lstm_2/lstm_cell_5/kernel/v
;:9	d2*Adam/lstm_2/lstm_cell_5/recurrent_kernel/v
+:)2Adam/lstm_2/lstm_cell_5/bias/v
ф2с
!__inference__wrapped_model_314204Л
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *+Ђ(
&#
input_2џџџџџџџџџ­
ю2ы
H__inference_sequential_1_layer_call_and_return_conditional_losses_317736
H__inference_sequential_1_layer_call_and_return_conditional_losses_318280
H__inference_sequential_1_layer_call_and_return_conditional_losses_317254
H__inference_sequential_1_layer_call_and_return_conditional_losses_317309Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2џ
-__inference_sequential_1_layer_call_fn_316371
-__inference_sequential_1_layer_call_fn_318325
-__inference_sequential_1_layer_call_fn_318370
-__inference_sequential_1_layer_call_fn_317199Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ь2щ
B__inference_conv_1_layer_call_and_return_conditional_losses_318385Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
б2Ю
'__inference_conv_1_layer_call_fn_318394Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_318414
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_318448
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_318468
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_318502Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
6__inference_batch_normalization_2_layer_call_fn_318515
6__inference_batch_normalization_2_layer_call_fn_318528
6__inference_batch_normalization_2_layer_call_fn_318541
6__inference_batch_normalization_2_layer_call_fn_318554Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ђ2я
H__inference_activation_2_layer_call_and_return_conditional_losses_318559Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
з2д
-__inference_activation_2_layer_call_fn_318564Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ш2Х
E__inference_dropout_1_layer_call_and_return_conditional_losses_318569
E__inference_dropout_1_layer_call_and_return_conditional_losses_318581Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
*__inference_dropout_1_layer_call_fn_318586
*__inference_dropout_1_layer_call_fn_318591Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ы2ш
B__inference_lstm_1_layer_call_and_return_conditional_losses_318750
B__inference_lstm_1_layer_call_and_return_conditional_losses_318973
B__inference_lstm_1_layer_call_and_return_conditional_losses_319132
B__inference_lstm_1_layer_call_and_return_conditional_losses_319355е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
џ2ќ
'__inference_lstm_1_layer_call_fn_319366
'__inference_lstm_1_layer_call_fn_319377
'__inference_lstm_1_layer_call_fn_319388
'__inference_lstm_1_layer_call_fn_319399е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ы2ш
B__inference_lstm_2_layer_call_and_return_conditional_losses_319558
B__inference_lstm_2_layer_call_and_return_conditional_losses_319781
B__inference_lstm_2_layer_call_and_return_conditional_losses_319940
B__inference_lstm_2_layer_call_and_return_conditional_losses_320163е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
џ2ќ
'__inference_lstm_2_layer_call_fn_320174
'__inference_lstm_2_layer_call_fn_320185
'__inference_lstm_2_layer_call_fn_320196
'__inference_lstm_2_layer_call_fn_320207е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
щ2ц
?__inference_fc1_layer_call_and_return_conditional_losses_320217Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ю2Ы
$__inference_fc1_layer_call_fn_320226Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
р2н
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_320246
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_320280Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Њ2Ї
6__inference_batch_normalization_3_layer_call_fn_320293
6__inference_batch_normalization_3_layer_call_fn_320306Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ђ2я
H__inference_activation_3_layer_call_and_return_conditional_losses_320311Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
з2д
-__inference_activation_3_layer_call_fn_320316Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ш2Х
E__inference_dropout_2_layer_call_and_return_conditional_losses_320321
E__inference_dropout_2_layer_call_and_return_conditional_losses_320333Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
*__inference_dropout_2_layer_call_fn_320338
*__inference_dropout_2_layer_call_fn_320343Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
э2ъ
C__inference_softmax_layer_call_and_return_conditional_losses_320354Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_softmax_layer_call_fn_320363Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЫBШ
$__inference_signature_wrapper_317362input_2"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_320399
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_320467О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 2
,__inference_lstm_cell_4_layer_call_fn_320484
,__inference_lstm_cell_4_layer_call_fn_320501О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ж2г
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_320537
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_320605О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 2
,__inference_lstm_cell_5_layer_call_fn_320622
,__inference_lstm_cell_5_layer_call_fn_320639О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 І
!__inference__wrapped_model_314204WXYZ[\56?<>=LM5Ђ2
+Ђ(
&#
input_2џџџџџџџџџ­
Њ "1Њ.
,
softmax!
softmaxџџџџџџџџџЎ
H__inference_activation_2_layer_call_and_return_conditional_losses_318559b4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ
Њ "*Ђ'
 
0џџџџџџџџџ
 
-__inference_activation_2_layer_call_fn_318564U4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ
Њ "џџџџџџџџџЄ
H__inference_activation_3_layer_call_and_return_conditional_losses_320311X/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ "%Ђ"

0џџџџџџџџџ2
 |
-__inference_activation_3_layer_call_fn_320316K/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ "џџџџџџџџџ2г
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_318414~AЂ>
7Ђ4
.+
inputsџџџџџџџџџџџџџџџџџџ
p 
Њ "3Ђ0
)&
0џџџџџџџџџџџџџџџџџџ
 г
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_318448~AЂ>
7Ђ4
.+
inputsџџџџџџџџџџџџџџџџџџ
p
Њ "3Ђ0
)&
0џџџџџџџџџџџџџџџџџџ
 С
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_318468l8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ
p 
Њ "*Ђ'
 
0џџџџџџџџџ
 С
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_318502l8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ
p
Њ "*Ђ'
 
0џџџџџџџџџ
 Ћ
6__inference_batch_normalization_2_layer_call_fn_318515qAЂ>
7Ђ4
.+
inputsџџџџџџџџџџџџџџџџџџ
p 
Њ "&#џџџџџџџџџџџџџџџџџџЋ
6__inference_batch_normalization_2_layer_call_fn_318528qAЂ>
7Ђ4
.+
inputsџџџџџџџџџџџџџџџџџџ
p
Њ "&#џџџџџџџџџџџџџџџџџџ
6__inference_batch_normalization_2_layer_call_fn_318541_8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ
p 
Њ "џџџџџџџџџ
6__inference_batch_normalization_2_layer_call_fn_318554_8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ
p
Њ "џџџџџџџџџЗ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_320246b?<>=3Ђ0
)Ђ&
 
inputsџџџџџџџџџ2
p 
Њ "%Ђ"

0џџџџџџџџџ2
 З
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_320280b>?<=3Ђ0
)Ђ&
 
inputsџџџџџџџџџ2
p
Њ "%Ђ"

0џџџџџџџџџ2
 
6__inference_batch_normalization_3_layer_call_fn_320293U?<>=3Ђ0
)Ђ&
 
inputsџџџџџџџџџ2
p 
Њ "џџџџџџџџџ2
6__inference_batch_normalization_3_layer_call_fn_320306U>?<=3Ђ0
)Ђ&
 
inputsџџџџџџџџџ2
p
Њ "џџџџџџџџџ2Ќ
B__inference_conv_1_layer_call_and_return_conditional_losses_318385f4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ­
Њ "*Ђ'
 
0џџџџџџџџџ
 
'__inference_conv_1_layer_call_fn_318394Y4Ђ1
*Ђ'
%"
inputsџџџџџџџџџ­
Њ "џџџџџџџџџЏ
E__inference_dropout_1_layer_call_and_return_conditional_losses_318569f8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ
p 
Њ "*Ђ'
 
0џџџџџџџџџ
 Џ
E__inference_dropout_1_layer_call_and_return_conditional_losses_318581f8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ
p
Њ "*Ђ'
 
0џџџџџџџџџ
 
*__inference_dropout_1_layer_call_fn_318586Y8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ
p 
Њ "џџџџџџџџџ
*__inference_dropout_1_layer_call_fn_318591Y8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ
p
Њ "џџџџџџџџџЅ
E__inference_dropout_2_layer_call_and_return_conditional_losses_320321\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ2
p 
Њ "%Ђ"

0џџџџџџџџџ2
 Ѕ
E__inference_dropout_2_layer_call_and_return_conditional_losses_320333\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ2
p
Њ "%Ђ"

0џџџџџџџџџ2
 }
*__inference_dropout_2_layer_call_fn_320338O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ2
p 
Њ "џџџџџџџџџ2}
*__inference_dropout_2_layer_call_fn_320343O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ2
p
Њ "џџџџџџџџџ2
?__inference_fc1_layer_call_and_return_conditional_losses_320217\56/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ "%Ђ"

0џџџџџџџџџ2
 w
$__inference_fc1_layer_call_fn_320226O56/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ "џџџџџџџџџ2в
B__inference_lstm_1_layer_call_and_return_conditional_losses_318750WXYPЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџd
 в
B__inference_lstm_1_layer_call_and_return_conditional_losses_318973WXYPЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџd
 И
B__inference_lstm_1_layer_call_and_return_conditional_losses_319132rWXY@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ

 
p 

 
Њ ")Ђ&

0џџџџџџџџџd
 И
B__inference_lstm_1_layer_call_and_return_conditional_losses_319355rWXY@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ

 
p

 
Њ ")Ђ&

0џџџџџџџџџd
 Љ
'__inference_lstm_1_layer_call_fn_319366~WXYPЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџdЉ
'__inference_lstm_1_layer_call_fn_319377~WXYPЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%"џџџџџџџџџџџџџџџџџџd
'__inference_lstm_1_layer_call_fn_319388eWXY@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџd
'__inference_lstm_1_layer_call_fn_319399eWXY@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџdУ
B__inference_lstm_2_layer_call_and_return_conditional_losses_319558}Z[\OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p 

 
Њ "%Ђ"

0џџџџџџџџџd
 У
B__inference_lstm_2_layer_call_and_return_conditional_losses_319781}Z[\OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p

 
Њ "%Ђ"

0џџџџџџџџџd
 Г
B__inference_lstm_2_layer_call_and_return_conditional_losses_319940mZ[\?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p 

 
Њ "%Ђ"

0џџџџџџџџџd
 Г
B__inference_lstm_2_layer_call_and_return_conditional_losses_320163mZ[\?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p

 
Њ "%Ђ"

0џџџџџџџџџd
 
'__inference_lstm_2_layer_call_fn_320174pZ[\OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p 

 
Њ "џџџџџџџџџd
'__inference_lstm_2_layer_call_fn_320185pZ[\OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p

 
Њ "џџџџџџџџџd
'__inference_lstm_2_layer_call_fn_320196`Z[\?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p 

 
Њ "џџџџџџџџџd
'__inference_lstm_2_layer_call_fn_320207`Z[\?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p

 
Њ "џџџџџџџџџdЪ
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_320399ўWXYЂ~
wЂt
!
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџd
EB

0/1/0џџџџџџџџџd

0/1/1џџџџџџџџџd
 Ъ
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_320467ўWXYЂ~
wЂt
!
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p
Њ "sЂp
iЂf

0/0џџџџџџџџџd
EB

0/1/0џџџџџџџџџd

0/1/1џџџџџџџџџd
 
,__inference_lstm_cell_4_layer_call_fn_320484юWXYЂ~
wЂt
!
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p 
Њ "cЂ`

0џџџџџџџџџd
A>

1/0џџџџџџџџџd

1/1џџџџџџџџџd
,__inference_lstm_cell_4_layer_call_fn_320501юWXYЂ~
wЂt
!
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p
Њ "cЂ`

0џџџџџџџџџd
A>

1/0џџџџџџџџџd

1/1џџџџџџџџџdЩ
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_320537§Z[\Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџd
EB

0/1/0џџџџџџџџџd

0/1/1џџџџџџџџџd
 Щ
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_320605§Z[\Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p
Њ "sЂp
iЂf

0/0џџџџџџџџџd
EB

0/1/0џџџџџџџџџd

0/1/1џџџџџџџџџd
 
,__inference_lstm_cell_5_layer_call_fn_320622эZ[\Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p 
Њ "cЂ`

0џџџџџџџџџd
A>

1/0џџџџџџџџџd

1/1џџџџџџџџџd
,__inference_lstm_cell_5_layer_call_fn_320639эZ[\Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p
Њ "cЂ`

0џџџџџџџџџd
A>

1/0џџџџџџџџџd

1/1џџџџџџџџџdШ
H__inference_sequential_1_layer_call_and_return_conditional_losses_317254|WXYZ[\56?<>=LM=Ђ:
3Ђ0
&#
input_2џџџџџџџџџ­
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ш
H__inference_sequential_1_layer_call_and_return_conditional_losses_317309|WXYZ[\56>?<=LM=Ђ:
3Ђ0
&#
input_2џџџџџџџџџ­
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ч
H__inference_sequential_1_layer_call_and_return_conditional_losses_317736{WXYZ[\56?<>=LM<Ђ9
2Ђ/
%"
inputsџџџџџџџџџ­
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ч
H__inference_sequential_1_layer_call_and_return_conditional_losses_318280{WXYZ[\56>?<=LM<Ђ9
2Ђ/
%"
inputsџџџџџџџџџ­
p

 
Њ "%Ђ"

0џџџџџџџџџ
  
-__inference_sequential_1_layer_call_fn_316371oWXYZ[\56?<>=LM=Ђ:
3Ђ0
&#
input_2џџџџџџџџџ­
p 

 
Њ "џџџџџџџџџ 
-__inference_sequential_1_layer_call_fn_317199oWXYZ[\56>?<=LM=Ђ:
3Ђ0
&#
input_2џџџџџџџџџ­
p

 
Њ "џџџџџџџџџ
-__inference_sequential_1_layer_call_fn_318325nWXYZ[\56?<>=LM<Ђ9
2Ђ/
%"
inputsџџџџџџџџџ­
p 

 
Њ "џџџџџџџџџ
-__inference_sequential_1_layer_call_fn_318370nWXYZ[\56>?<=LM<Ђ9
2Ђ/
%"
inputsџџџџџџџџџ­
p

 
Њ "џџџџџџџџџД
$__inference_signature_wrapper_317362WXYZ[\56?<>=LM@Ђ=
Ђ 
6Њ3
1
input_2&#
input_2џџџџџџџџџ­"1Њ.
,
softmax!
softmaxџџџџџџџџџЃ
C__inference_softmax_layer_call_and_return_conditional_losses_320354\LM/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ "%Ђ"

0џџџџџџџџџ
 {
(__inference_softmax_layer_call_fn_320363OLM/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ "џџџџџџџџџ