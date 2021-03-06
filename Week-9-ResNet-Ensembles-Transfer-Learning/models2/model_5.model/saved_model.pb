??!
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
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
list(type)(0?
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
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
@
StaticRegexFullMatch	
input

output
"
patternstring
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
?
conv2d_1203/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameconv2d_1203/kernel
?
&conv2d_1203/kernel/Read/ReadVariableOpReadVariableOpconv2d_1203/kernel*&
_output_shapes
: *
dtype0
x
conv2d_1203/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_1203/bias
q
$conv2d_1203/bias/Read/ReadVariableOpReadVariableOpconv2d_1203/bias*
_output_shapes
: *
dtype0
?
batch_normalization_1253/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name batch_normalization_1253/gamma
?
2batch_normalization_1253/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1253/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_1253/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_1253/beta
?
1batch_normalization_1253/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1253/beta*
_output_shapes
: *
dtype0
?
$batch_normalization_1253/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$batch_normalization_1253/moving_mean
?
8batch_normalization_1253/moving_mean/Read/ReadVariableOpReadVariableOp$batch_normalization_1253/moving_mean*
_output_shapes
: *
dtype0
?
(batch_normalization_1253/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(batch_normalization_1253/moving_variance
?
<batch_normalization_1253/moving_variance/Read/ReadVariableOpReadVariableOp(batch_normalization_1253/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_1204/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *#
shared_nameconv2d_1204/kernel
?
&conv2d_1204/kernel/Read/ReadVariableOpReadVariableOpconv2d_1204/kernel*&
_output_shapes
:  *
dtype0
x
conv2d_1204/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_1204/bias
q
$conv2d_1204/bias/Read/ReadVariableOpReadVariableOpconv2d_1204/bias*
_output_shapes
: *
dtype0
?
batch_normalization_1254/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name batch_normalization_1254/gamma
?
2batch_normalization_1254/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1254/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_1254/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_1254/beta
?
1batch_normalization_1254/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1254/beta*
_output_shapes
: *
dtype0
?
$batch_normalization_1254/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$batch_normalization_1254/moving_mean
?
8batch_normalization_1254/moving_mean/Read/ReadVariableOpReadVariableOp$batch_normalization_1254/moving_mean*
_output_shapes
: *
dtype0
?
(batch_normalization_1254/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(batch_normalization_1254/moving_variance
?
<batch_normalization_1254/moving_variance/Read/ReadVariableOpReadVariableOp(batch_normalization_1254/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_1205/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*#
shared_nameconv2d_1205/kernel
?
&conv2d_1205/kernel/Read/ReadVariableOpReadVariableOpconv2d_1205/kernel*&
_output_shapes
: @*
dtype0
x
conv2d_1205/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_1205/bias
q
$conv2d_1205/bias/Read/ReadVariableOpReadVariableOpconv2d_1205/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_1255/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name batch_normalization_1255/gamma
?
2batch_normalization_1255/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1255/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_1255/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_1255/beta
?
1batch_normalization_1255/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1255/beta*
_output_shapes
:@*
dtype0
?
$batch_normalization_1255/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$batch_normalization_1255/moving_mean
?
8batch_normalization_1255/moving_mean/Read/ReadVariableOpReadVariableOp$batch_normalization_1255/moving_mean*
_output_shapes
:@*
dtype0
?
(batch_normalization_1255/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(batch_normalization_1255/moving_variance
?
<batch_normalization_1255/moving_variance/Read/ReadVariableOpReadVariableOp(batch_normalization_1255/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_1206/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*#
shared_nameconv2d_1206/kernel
?
&conv2d_1206/kernel/Read/ReadVariableOpReadVariableOpconv2d_1206/kernel*&
_output_shapes
:@@*
dtype0
x
conv2d_1206/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_1206/bias
q
$conv2d_1206/bias/Read/ReadVariableOpReadVariableOpconv2d_1206/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_1256/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name batch_normalization_1256/gamma
?
2batch_normalization_1256/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1256/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_1256/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_1256/beta
?
1batch_normalization_1256/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1256/beta*
_output_shapes
:@*
dtype0
?
$batch_normalization_1256/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$batch_normalization_1256/moving_mean
?
8batch_normalization_1256/moving_mean/Read/ReadVariableOpReadVariableOp$batch_normalization_1256/moving_mean*
_output_shapes
:@*
dtype0
?
(batch_normalization_1256/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(batch_normalization_1256/moving_variance
?
<batch_normalization_1256/moving_variance/Read/ReadVariableOpReadVariableOp(batch_normalization_1256/moving_variance*
_output_shapes
:@*
dtype0
~
dense_152/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
? ?*!
shared_namedense_152/kernel
w
$dense_152/kernel/Read/ReadVariableOpReadVariableOpdense_152/kernel* 
_output_shapes
:
? ?*
dtype0
u
dense_152/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_152/bias
n
"dense_152/bias/Read/ReadVariableOpReadVariableOpdense_152/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_1257/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name batch_normalization_1257/gamma
?
2batch_normalization_1257/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1257/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_1257/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_1257/beta
?
1batch_normalization_1257/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1257/beta*
_output_shapes	
:?*
dtype0
?
$batch_normalization_1257/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$batch_normalization_1257/moving_mean
?
8batch_normalization_1257/moving_mean/Read/ReadVariableOpReadVariableOp$batch_normalization_1257/moving_mean*
_output_shapes	
:?*
dtype0
?
(batch_normalization_1257/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*9
shared_name*(batch_normalization_1257/moving_variance
?
<batch_normalization_1257/moving_variance/Read/ReadVariableOpReadVariableOp(batch_normalization_1257/moving_variance*
_output_shapes	
:?*
dtype0
}
dense_153/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*!
shared_namedense_153/kernel
v
$dense_153/kernel/Read/ReadVariableOpReadVariableOpdense_153/kernel*
_output_shapes
:	?
*
dtype0
t
dense_153/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_153/bias
m
"dense_153/bias/Read/ReadVariableOpReadVariableOpdense_153/bias*
_output_shapes
:
*
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
?
Adam/conv2d_1203/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/conv2d_1203/kernel/m
?
-Adam/conv2d_1203/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1203/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_1203/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_1203/bias/m

+Adam/conv2d_1203/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1203/bias/m*
_output_shapes
: *
dtype0
?
%Adam/batch_normalization_1253/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/batch_normalization_1253/gamma/m
?
9Adam/batch_normalization_1253/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1253/gamma/m*
_output_shapes
: *
dtype0
?
$Adam/batch_normalization_1253/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_1253/beta/m
?
8Adam/batch_normalization_1253/beta/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1253/beta/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_1204/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  **
shared_nameAdam/conv2d_1204/kernel/m
?
-Adam/conv2d_1204/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1204/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_1204/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_1204/bias/m

+Adam/conv2d_1204/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1204/bias/m*
_output_shapes
: *
dtype0
?
%Adam/batch_normalization_1254/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/batch_normalization_1254/gamma/m
?
9Adam/batch_normalization_1254/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1254/gamma/m*
_output_shapes
: *
dtype0
?
$Adam/batch_normalization_1254/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_1254/beta/m
?
8Adam/batch_normalization_1254/beta/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1254/beta/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_1205/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameAdam/conv2d_1205/kernel/m
?
-Adam/conv2d_1205/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1205/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_1205/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_1205/bias/m

+Adam/conv2d_1205/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1205/bias/m*
_output_shapes
:@*
dtype0
?
%Adam/batch_normalization_1255/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/batch_normalization_1255/gamma/m
?
9Adam/batch_normalization_1255/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1255/gamma/m*
_output_shapes
:@*
dtype0
?
$Adam/batch_normalization_1255/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_1255/beta/m
?
8Adam/batch_normalization_1255/beta/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1255/beta/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_1206/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@**
shared_nameAdam/conv2d_1206/kernel/m
?
-Adam/conv2d_1206/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1206/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_1206/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_1206/bias/m

+Adam/conv2d_1206/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1206/bias/m*
_output_shapes
:@*
dtype0
?
%Adam/batch_normalization_1256/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/batch_normalization_1256/gamma/m
?
9Adam/batch_normalization_1256/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1256/gamma/m*
_output_shapes
:@*
dtype0
?
$Adam/batch_normalization_1256/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_1256/beta/m
?
8Adam/batch_normalization_1256/beta/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1256/beta/m*
_output_shapes
:@*
dtype0
?
Adam/dense_152/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
? ?*(
shared_nameAdam/dense_152/kernel/m
?
+Adam/dense_152/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_152/kernel/m* 
_output_shapes
:
? ?*
dtype0
?
Adam/dense_152/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_152/bias/m
|
)Adam/dense_152/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_152/bias/m*
_output_shapes	
:?*
dtype0
?
%Adam/batch_normalization_1257/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/batch_normalization_1257/gamma/m
?
9Adam/batch_normalization_1257/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1257/gamma/m*
_output_shapes	
:?*
dtype0
?
$Adam/batch_normalization_1257/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/batch_normalization_1257/beta/m
?
8Adam/batch_normalization_1257/beta/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1257/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_153/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*(
shared_nameAdam/dense_153/kernel/m
?
+Adam/dense_153/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_153/kernel/m*
_output_shapes
:	?
*
dtype0
?
Adam/dense_153/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_153/bias/m
{
)Adam/dense_153/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_153/bias/m*
_output_shapes
:
*
dtype0
?
Adam/conv2d_1203/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/conv2d_1203/kernel/v
?
-Adam/conv2d_1203/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1203/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_1203/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_1203/bias/v

+Adam/conv2d_1203/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1203/bias/v*
_output_shapes
: *
dtype0
?
%Adam/batch_normalization_1253/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/batch_normalization_1253/gamma/v
?
9Adam/batch_normalization_1253/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1253/gamma/v*
_output_shapes
: *
dtype0
?
$Adam/batch_normalization_1253/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_1253/beta/v
?
8Adam/batch_normalization_1253/beta/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1253/beta/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_1204/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  **
shared_nameAdam/conv2d_1204/kernel/v
?
-Adam/conv2d_1204/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1204/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_1204/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_1204/bias/v

+Adam/conv2d_1204/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1204/bias/v*
_output_shapes
: *
dtype0
?
%Adam/batch_normalization_1254/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/batch_normalization_1254/gamma/v
?
9Adam/batch_normalization_1254/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1254/gamma/v*
_output_shapes
: *
dtype0
?
$Adam/batch_normalization_1254/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_1254/beta/v
?
8Adam/batch_normalization_1254/beta/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1254/beta/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_1205/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameAdam/conv2d_1205/kernel/v
?
-Adam/conv2d_1205/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1205/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_1205/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_1205/bias/v

+Adam/conv2d_1205/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1205/bias/v*
_output_shapes
:@*
dtype0
?
%Adam/batch_normalization_1255/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/batch_normalization_1255/gamma/v
?
9Adam/batch_normalization_1255/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1255/gamma/v*
_output_shapes
:@*
dtype0
?
$Adam/batch_normalization_1255/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_1255/beta/v
?
8Adam/batch_normalization_1255/beta/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1255/beta/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_1206/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@**
shared_nameAdam/conv2d_1206/kernel/v
?
-Adam/conv2d_1206/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1206/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_1206/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_1206/bias/v

+Adam/conv2d_1206/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1206/bias/v*
_output_shapes
:@*
dtype0
?
%Adam/batch_normalization_1256/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/batch_normalization_1256/gamma/v
?
9Adam/batch_normalization_1256/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1256/gamma/v*
_output_shapes
:@*
dtype0
?
$Adam/batch_normalization_1256/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_1256/beta/v
?
8Adam/batch_normalization_1256/beta/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1256/beta/v*
_output_shapes
:@*
dtype0
?
Adam/dense_152/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
? ?*(
shared_nameAdam/dense_152/kernel/v
?
+Adam/dense_152/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_152/kernel/v* 
_output_shapes
:
? ?*
dtype0
?
Adam/dense_152/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_152/bias/v
|
)Adam/dense_152/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_152/bias/v*
_output_shapes	
:?*
dtype0
?
%Adam/batch_normalization_1257/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/batch_normalization_1257/gamma/v
?
9Adam/batch_normalization_1257/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1257/gamma/v*
_output_shapes	
:?*
dtype0
?
$Adam/batch_normalization_1257/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/batch_normalization_1257/beta/v
?
8Adam/batch_normalization_1257/beta/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1257/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_153/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*(
shared_nameAdam/dense_153/kernel/v
?
+Adam/dense_153/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_153/kernel/v*
_output_shapes
:	?
*
dtype0
?
Adam/dense_153/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_153/bias/v
{
)Adam/dense_153/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_153/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Û
value??B?? B??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
layer-22
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
 	variables
!regularization_losses
"trainable_variables
#	keras_api
R
$	variables
%regularization_losses
&trainable_variables
'	keras_api
?
(axis
	)gamma
*beta
+moving_mean
,moving_variance
-	variables
.regularization_losses
/trainable_variables
0	keras_api
h

1kernel
2bias
3	variables
4regularization_losses
5trainable_variables
6	keras_api
R
7	variables
8regularization_losses
9trainable_variables
:	keras_api
?
;axis
	<gamma
=beta
>moving_mean
?moving_variance
@	variables
Aregularization_losses
Btrainable_variables
C	keras_api
R
D	variables
Eregularization_losses
Ftrainable_variables
G	keras_api
R
H	variables
Iregularization_losses
Jtrainable_variables
K	keras_api
h

Lkernel
Mbias
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
R
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
?
Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance
[	variables
\regularization_losses
]trainable_variables
^	keras_api
h

_kernel
`bias
a	variables
bregularization_losses
ctrainable_variables
d	keras_api
R
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
?
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance
n	variables
oregularization_losses
ptrainable_variables
q	keras_api
R
r	variables
sregularization_losses
ttrainable_variables
u	keras_api
R
v	variables
wregularization_losses
xtrainable_variables
y	keras_api
R
z	variables
{regularization_losses
|trainable_variables
}	keras_api
l

~kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_ratem?m?)m?*m?1m?2m?<m?=m?Lm?Mm?Wm?Xm?_m?`m?jm?km?~m?m?	?m?	?m?	?m?	?m?v?v?)v?*v?1v?2v?<v?=v?Lv?Mv?Wv?Xv?_v?`v?jv?kv?~v?v?	?v?	?v?	?v?	?v?
?
0
1
)2
*3
+4
,5
16
27
<8
=9
>10
?11
L12
M13
W14
X15
Y16
Z17
_18
`19
j20
k21
l22
m23
~24
25
?26
?27
?28
?29
?30
?31
 
?
0
1
)2
*3
14
25
<6
=7
L8
M9
W10
X11
_12
`13
j14
k15
~16
17
?18
?19
?20
?21
?
?non_trainable_variables
?metrics
?layer_metrics
 ?layer_regularization_losses
	variables
regularization_losses
?layers
trainable_variables
 
^\
VARIABLE_VALUEconv2d_1203/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1203/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
 	variables
!regularization_losses
?layers
"trainable_variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
$	variables
%regularization_losses
?layers
&trainable_variables
 
ig
VARIABLE_VALUEbatch_normalization_1253/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_1253/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE$batch_normalization_1253/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE(batch_normalization_1253/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

)0
*1
+2
,3
 

)0
*1
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
-	variables
.regularization_losses
?layers
/trainable_variables
^\
VARIABLE_VALUEconv2d_1204/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1204/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21
 

10
21
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
3	variables
4regularization_losses
?layers
5trainable_variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
7	variables
8regularization_losses
?layers
9trainable_variables
 
ig
VARIABLE_VALUEbatch_normalization_1254/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_1254/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE$batch_normalization_1254/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE(batch_normalization_1254/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
>2
?3
 

<0
=1
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
@	variables
Aregularization_losses
?layers
Btrainable_variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
D	variables
Eregularization_losses
?layers
Ftrainable_variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
H	variables
Iregularization_losses
?layers
Jtrainable_variables
^\
VARIABLE_VALUEconv2d_1205/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1205/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

L0
M1
 

L0
M1
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
N	variables
Oregularization_losses
?layers
Ptrainable_variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
R	variables
Sregularization_losses
?layers
Ttrainable_variables
 
ig
VARIABLE_VALUEbatch_normalization_1255/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_1255/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE$batch_normalization_1255/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE(batch_normalization_1255/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

W0
X1
Y2
Z3
 

W0
X1
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
[	variables
\regularization_losses
?layers
]trainable_variables
^\
VARIABLE_VALUEconv2d_1206/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1206/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

_0
`1
 

_0
`1
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
a	variables
bregularization_losses
?layers
ctrainable_variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
e	variables
fregularization_losses
?layers
gtrainable_variables
 
ig
VARIABLE_VALUEbatch_normalization_1256/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_1256/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE$batch_normalization_1256/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE(batch_normalization_1256/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

j0
k1
l2
m3
 

j0
k1
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
n	variables
oregularization_losses
?layers
ptrainable_variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
r	variables
sregularization_losses
?layers
ttrainable_variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
v	variables
wregularization_losses
?layers
xtrainable_variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
z	variables
{regularization_losses
?layers
|trainable_variables
\Z
VARIABLE_VALUEdense_152/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_152/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

~0
1
 

~0
1
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?	variables
?regularization_losses
?layers
?trainable_variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?	variables
?regularization_losses
?layers
?trainable_variables
 
ig
VARIABLE_VALUEbatch_normalization_1257/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_1257/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE$batch_normalization_1257/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE(batch_normalization_1257/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3
 

?0
?1
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?	variables
?regularization_losses
?layers
?trainable_variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?	variables
?regularization_losses
?layers
?trainable_variables
][
VARIABLE_VALUEdense_153/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_153/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?	variables
?regularization_losses
?layers
?trainable_variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?	variables
?regularization_losses
?layers
?trainable_variables
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
H
+0
,1
>2
?3
Y4
Z5
l6
m7
?8
?9

?0
?1
 
 
?
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
11
12
13
14
15
16
17
18
19
20
21
22
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

+0
,1
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
 
 
 
 
 

Y0
Z1
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

l0
m1
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
 
 
 
 

?0
?1
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

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
?
VARIABLE_VALUEAdam/conv2d_1203/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1203/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/batch_normalization_1253/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_1253/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_1204/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1204/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/batch_normalization_1254/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_1254/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_1205/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1205/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/batch_normalization_1255/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_1255/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_1206/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1206/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/batch_normalization_1256/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_1256/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_152/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_152/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/batch_normalization_1257/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_1257/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dense_153/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_153/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_1203/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1203/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/batch_normalization_1253/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_1253/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_1204/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1204/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/batch_normalization_1254/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_1254/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_1205/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1205/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/batch_normalization_1255/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_1255/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_1206/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1206/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/batch_normalization_1256/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_1256/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_152/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_152/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/batch_normalization_1257/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_1257/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dense_153/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_153/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
!serving_default_conv2d_1203_inputPlaceholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?

StatefulPartitionedCallStatefulPartitionedCall!serving_default_conv2d_1203_inputconv2d_1203/kernelconv2d_1203/biasbatch_normalization_1253/gammabatch_normalization_1253/beta$batch_normalization_1253/moving_mean(batch_normalization_1253/moving_varianceconv2d_1204/kernelconv2d_1204/biasbatch_normalization_1254/gammabatch_normalization_1254/beta$batch_normalization_1254/moving_mean(batch_normalization_1254/moving_varianceconv2d_1205/kernelconv2d_1205/biasbatch_normalization_1255/gammabatch_normalization_1255/beta$batch_normalization_1255/moving_mean(batch_normalization_1255/moving_varianceconv2d_1206/kernelconv2d_1206/biasbatch_normalization_1256/gammabatch_normalization_1256/beta$batch_normalization_1256/moving_mean(batch_normalization_1256/moving_variancedense_152/kerneldense_152/bias(batch_normalization_1257/moving_variancebatch_normalization_1257/gamma$batch_normalization_1257/moving_meanbatch_normalization_1257/betadense_153/kerneldense_153/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_4455240
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?#
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&conv2d_1203/kernel/Read/ReadVariableOp$conv2d_1203/bias/Read/ReadVariableOp2batch_normalization_1253/gamma/Read/ReadVariableOp1batch_normalization_1253/beta/Read/ReadVariableOp8batch_normalization_1253/moving_mean/Read/ReadVariableOp<batch_normalization_1253/moving_variance/Read/ReadVariableOp&conv2d_1204/kernel/Read/ReadVariableOp$conv2d_1204/bias/Read/ReadVariableOp2batch_normalization_1254/gamma/Read/ReadVariableOp1batch_normalization_1254/beta/Read/ReadVariableOp8batch_normalization_1254/moving_mean/Read/ReadVariableOp<batch_normalization_1254/moving_variance/Read/ReadVariableOp&conv2d_1205/kernel/Read/ReadVariableOp$conv2d_1205/bias/Read/ReadVariableOp2batch_normalization_1255/gamma/Read/ReadVariableOp1batch_normalization_1255/beta/Read/ReadVariableOp8batch_normalization_1255/moving_mean/Read/ReadVariableOp<batch_normalization_1255/moving_variance/Read/ReadVariableOp&conv2d_1206/kernel/Read/ReadVariableOp$conv2d_1206/bias/Read/ReadVariableOp2batch_normalization_1256/gamma/Read/ReadVariableOp1batch_normalization_1256/beta/Read/ReadVariableOp8batch_normalization_1256/moving_mean/Read/ReadVariableOp<batch_normalization_1256/moving_variance/Read/ReadVariableOp$dense_152/kernel/Read/ReadVariableOp"dense_152/bias/Read/ReadVariableOp2batch_normalization_1257/gamma/Read/ReadVariableOp1batch_normalization_1257/beta/Read/ReadVariableOp8batch_normalization_1257/moving_mean/Read/ReadVariableOp<batch_normalization_1257/moving_variance/Read/ReadVariableOp$dense_153/kernel/Read/ReadVariableOp"dense_153/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adam/conv2d_1203/kernel/m/Read/ReadVariableOp+Adam/conv2d_1203/bias/m/Read/ReadVariableOp9Adam/batch_normalization_1253/gamma/m/Read/ReadVariableOp8Adam/batch_normalization_1253/beta/m/Read/ReadVariableOp-Adam/conv2d_1204/kernel/m/Read/ReadVariableOp+Adam/conv2d_1204/bias/m/Read/ReadVariableOp9Adam/batch_normalization_1254/gamma/m/Read/ReadVariableOp8Adam/batch_normalization_1254/beta/m/Read/ReadVariableOp-Adam/conv2d_1205/kernel/m/Read/ReadVariableOp+Adam/conv2d_1205/bias/m/Read/ReadVariableOp9Adam/batch_normalization_1255/gamma/m/Read/ReadVariableOp8Adam/batch_normalization_1255/beta/m/Read/ReadVariableOp-Adam/conv2d_1206/kernel/m/Read/ReadVariableOp+Adam/conv2d_1206/bias/m/Read/ReadVariableOp9Adam/batch_normalization_1256/gamma/m/Read/ReadVariableOp8Adam/batch_normalization_1256/beta/m/Read/ReadVariableOp+Adam/dense_152/kernel/m/Read/ReadVariableOp)Adam/dense_152/bias/m/Read/ReadVariableOp9Adam/batch_normalization_1257/gamma/m/Read/ReadVariableOp8Adam/batch_normalization_1257/beta/m/Read/ReadVariableOp+Adam/dense_153/kernel/m/Read/ReadVariableOp)Adam/dense_153/bias/m/Read/ReadVariableOp-Adam/conv2d_1203/kernel/v/Read/ReadVariableOp+Adam/conv2d_1203/bias/v/Read/ReadVariableOp9Adam/batch_normalization_1253/gamma/v/Read/ReadVariableOp8Adam/batch_normalization_1253/beta/v/Read/ReadVariableOp-Adam/conv2d_1204/kernel/v/Read/ReadVariableOp+Adam/conv2d_1204/bias/v/Read/ReadVariableOp9Adam/batch_normalization_1254/gamma/v/Read/ReadVariableOp8Adam/batch_normalization_1254/beta/v/Read/ReadVariableOp-Adam/conv2d_1205/kernel/v/Read/ReadVariableOp+Adam/conv2d_1205/bias/v/Read/ReadVariableOp9Adam/batch_normalization_1255/gamma/v/Read/ReadVariableOp8Adam/batch_normalization_1255/beta/v/Read/ReadVariableOp-Adam/conv2d_1206/kernel/v/Read/ReadVariableOp+Adam/conv2d_1206/bias/v/Read/ReadVariableOp9Adam/batch_normalization_1256/gamma/v/Read/ReadVariableOp8Adam/batch_normalization_1256/beta/v/Read/ReadVariableOp+Adam/dense_152/kernel/v/Read/ReadVariableOp)Adam/dense_152/bias/v/Read/ReadVariableOp9Adam/batch_normalization_1257/gamma/v/Read/ReadVariableOp8Adam/batch_normalization_1257/beta/v/Read/ReadVariableOp+Adam/dense_153/kernel/v/Read/ReadVariableOp)Adam/dense_153/bias/v/Read/ReadVariableOpConst*b
Tin[
Y2W	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_4456783
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_1203/kernelconv2d_1203/biasbatch_normalization_1253/gammabatch_normalization_1253/beta$batch_normalization_1253/moving_mean(batch_normalization_1253/moving_varianceconv2d_1204/kernelconv2d_1204/biasbatch_normalization_1254/gammabatch_normalization_1254/beta$batch_normalization_1254/moving_mean(batch_normalization_1254/moving_varianceconv2d_1205/kernelconv2d_1205/biasbatch_normalization_1255/gammabatch_normalization_1255/beta$batch_normalization_1255/moving_mean(batch_normalization_1255/moving_varianceconv2d_1206/kernelconv2d_1206/biasbatch_normalization_1256/gammabatch_normalization_1256/beta$batch_normalization_1256/moving_mean(batch_normalization_1256/moving_variancedense_152/kerneldense_152/biasbatch_normalization_1257/gammabatch_normalization_1257/beta$batch_normalization_1257/moving_mean(batch_normalization_1257/moving_variancedense_153/kerneldense_153/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_1203/kernel/mAdam/conv2d_1203/bias/m%Adam/batch_normalization_1253/gamma/m$Adam/batch_normalization_1253/beta/mAdam/conv2d_1204/kernel/mAdam/conv2d_1204/bias/m%Adam/batch_normalization_1254/gamma/m$Adam/batch_normalization_1254/beta/mAdam/conv2d_1205/kernel/mAdam/conv2d_1205/bias/m%Adam/batch_normalization_1255/gamma/m$Adam/batch_normalization_1255/beta/mAdam/conv2d_1206/kernel/mAdam/conv2d_1206/bias/m%Adam/batch_normalization_1256/gamma/m$Adam/batch_normalization_1256/beta/mAdam/dense_152/kernel/mAdam/dense_152/bias/m%Adam/batch_normalization_1257/gamma/m$Adam/batch_normalization_1257/beta/mAdam/dense_153/kernel/mAdam/dense_153/bias/mAdam/conv2d_1203/kernel/vAdam/conv2d_1203/bias/v%Adam/batch_normalization_1253/gamma/v$Adam/batch_normalization_1253/beta/vAdam/conv2d_1204/kernel/vAdam/conv2d_1204/bias/v%Adam/batch_normalization_1254/gamma/v$Adam/batch_normalization_1254/beta/vAdam/conv2d_1205/kernel/vAdam/conv2d_1205/bias/v%Adam/batch_normalization_1255/gamma/v$Adam/batch_normalization_1255/beta/vAdam/conv2d_1206/kernel/vAdam/conv2d_1206/bias/v%Adam/batch_normalization_1256/gamma/v$Adam/batch_normalization_1256/beta/vAdam/dense_152/kernel/vAdam/dense_152/bias/v%Adam/batch_normalization_1257/gamma/v$Adam/batch_normalization_1257/beta/vAdam/dense_153/kernel/vAdam/dense_153/bias/v*a
TinZ
X2V*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_4457048??
?

?
H__inference_conv2d_1203_layer_call_and_return_conditional_losses_4453992

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
M
1__inference_activation_1352_layer_call_fn_4456178

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1352_layer_call_and_return_conditional_losses_44541612
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4455365

inputsD
*conv2d_1203_conv2d_readvariableop_resource: 9
+conv2d_1203_biasadd_readvariableop_resource: >
0batch_normalization_1253_readvariableop_resource: @
2batch_normalization_1253_readvariableop_1_resource: O
Abatch_normalization_1253_fusedbatchnormv3_readvariableop_resource: Q
Cbatch_normalization_1253_fusedbatchnormv3_readvariableop_1_resource: D
*conv2d_1204_conv2d_readvariableop_resource:  9
+conv2d_1204_biasadd_readvariableop_resource: >
0batch_normalization_1254_readvariableop_resource: @
2batch_normalization_1254_readvariableop_1_resource: O
Abatch_normalization_1254_fusedbatchnormv3_readvariableop_resource: Q
Cbatch_normalization_1254_fusedbatchnormv3_readvariableop_1_resource: D
*conv2d_1205_conv2d_readvariableop_resource: @9
+conv2d_1205_biasadd_readvariableop_resource:@>
0batch_normalization_1255_readvariableop_resource:@@
2batch_normalization_1255_readvariableop_1_resource:@O
Abatch_normalization_1255_fusedbatchnormv3_readvariableop_resource:@Q
Cbatch_normalization_1255_fusedbatchnormv3_readvariableop_1_resource:@D
*conv2d_1206_conv2d_readvariableop_resource:@@9
+conv2d_1206_biasadd_readvariableop_resource:@>
0batch_normalization_1256_readvariableop_resource:@@
2batch_normalization_1256_readvariableop_1_resource:@O
Abatch_normalization_1256_fusedbatchnormv3_readvariableop_resource:@Q
Cbatch_normalization_1256_fusedbatchnormv3_readvariableop_1_resource:@<
(dense_152_matmul_readvariableop_resource:
? ?8
)dense_152_biasadd_readvariableop_resource:	?I
:batch_normalization_1257_batchnorm_readvariableop_resource:	?M
>batch_normalization_1257_batchnorm_mul_readvariableop_resource:	?K
<batch_normalization_1257_batchnorm_readvariableop_1_resource:	?K
<batch_normalization_1257_batchnorm_readvariableop_2_resource:	?;
(dense_153_matmul_readvariableop_resource:	?
7
)dense_153_biasadd_readvariableop_resource:

identity??8batch_normalization_1253/FusedBatchNormV3/ReadVariableOp?:batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1?'batch_normalization_1253/ReadVariableOp?)batch_normalization_1253/ReadVariableOp_1?8batch_normalization_1254/FusedBatchNormV3/ReadVariableOp?:batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1?'batch_normalization_1254/ReadVariableOp?)batch_normalization_1254/ReadVariableOp_1?8batch_normalization_1255/FusedBatchNormV3/ReadVariableOp?:batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1?'batch_normalization_1255/ReadVariableOp?)batch_normalization_1255/ReadVariableOp_1?8batch_normalization_1256/FusedBatchNormV3/ReadVariableOp?:batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1?'batch_normalization_1256/ReadVariableOp?)batch_normalization_1256/ReadVariableOp_1?1batch_normalization_1257/batchnorm/ReadVariableOp?3batch_normalization_1257/batchnorm/ReadVariableOp_1?3batch_normalization_1257/batchnorm/ReadVariableOp_2?5batch_normalization_1257/batchnorm/mul/ReadVariableOp?"conv2d_1203/BiasAdd/ReadVariableOp?!conv2d_1203/Conv2D/ReadVariableOp?"conv2d_1204/BiasAdd/ReadVariableOp?!conv2d_1204/Conv2D/ReadVariableOp?"conv2d_1205/BiasAdd/ReadVariableOp?!conv2d_1205/Conv2D/ReadVariableOp?"conv2d_1206/BiasAdd/ReadVariableOp?!conv2d_1206/Conv2D/ReadVariableOp? dense_152/BiasAdd/ReadVariableOp?dense_152/MatMul/ReadVariableOp? dense_153/BiasAdd/ReadVariableOp?dense_153/MatMul/ReadVariableOp?
!conv2d_1203/Conv2D/ReadVariableOpReadVariableOp*conv2d_1203_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02#
!conv2d_1203/Conv2D/ReadVariableOp?
conv2d_1203/Conv2DConv2Dinputs)conv2d_1203/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_1203/Conv2D?
"conv2d_1203/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1203_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"conv2d_1203/BiasAdd/ReadVariableOp?
conv2d_1203/BiasAddBiasAddconv2d_1203/Conv2D:output:0*conv2d_1203/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_1203/BiasAdd?
activation_1349/ReluReluconv2d_1203/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_1349/Relu?
'batch_normalization_1253/ReadVariableOpReadVariableOp0batch_normalization_1253_readvariableop_resource*
_output_shapes
: *
dtype02)
'batch_normalization_1253/ReadVariableOp?
)batch_normalization_1253/ReadVariableOp_1ReadVariableOp2batch_normalization_1253_readvariableop_1_resource*
_output_shapes
: *
dtype02+
)batch_normalization_1253/ReadVariableOp_1?
8batch_normalization_1253/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1253_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02:
8batch_normalization_1253/FusedBatchNormV3/ReadVariableOp?
:batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1253_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1?
)batch_normalization_1253/FusedBatchNormV3FusedBatchNormV3"activation_1349/Relu:activations:0/batch_normalization_1253/ReadVariableOp:value:01batch_normalization_1253/ReadVariableOp_1:value:0@batch_normalization_1253/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( 2+
)batch_normalization_1253/FusedBatchNormV3?
!conv2d_1204/Conv2D/ReadVariableOpReadVariableOp*conv2d_1204_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02#
!conv2d_1204/Conv2D/ReadVariableOp?
conv2d_1204/Conv2DConv2D-batch_normalization_1253/FusedBatchNormV3:y:0)conv2d_1204/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_1204/Conv2D?
"conv2d_1204/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1204_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"conv2d_1204/BiasAdd/ReadVariableOp?
conv2d_1204/BiasAddBiasAddconv2d_1204/Conv2D:output:0*conv2d_1204/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_1204/BiasAdd?
activation_1350/ReluReluconv2d_1204/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_1350/Relu?
'batch_normalization_1254/ReadVariableOpReadVariableOp0batch_normalization_1254_readvariableop_resource*
_output_shapes
: *
dtype02)
'batch_normalization_1254/ReadVariableOp?
)batch_normalization_1254/ReadVariableOp_1ReadVariableOp2batch_normalization_1254_readvariableop_1_resource*
_output_shapes
: *
dtype02+
)batch_normalization_1254/ReadVariableOp_1?
8batch_normalization_1254/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1254_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02:
8batch_normalization_1254/FusedBatchNormV3/ReadVariableOp?
:batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1254_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1?
)batch_normalization_1254/FusedBatchNormV3FusedBatchNormV3"activation_1350/Relu:activations:0/batch_normalization_1254/ReadVariableOp:value:01batch_normalization_1254/ReadVariableOp_1:value:0@batch_normalization_1254/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( 2+
)batch_normalization_1254/FusedBatchNormV3?
max_pooling2d_194/MaxPoolMaxPool-batch_normalization_1254/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_194/MaxPool?
dropout_204/IdentityIdentity"max_pooling2d_194/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2
dropout_204/Identity?
!conv2d_1205/Conv2D/ReadVariableOpReadVariableOp*conv2d_1205_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02#
!conv2d_1205/Conv2D/ReadVariableOp?
conv2d_1205/Conv2DConv2Ddropout_204/Identity:output:0)conv2d_1205/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_1205/Conv2D?
"conv2d_1205/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1205_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"conv2d_1205/BiasAdd/ReadVariableOp?
conv2d_1205/BiasAddBiasAddconv2d_1205/Conv2D:output:0*conv2d_1205/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_1205/BiasAdd?
activation_1351/ReluReluconv2d_1205/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_1351/Relu?
'batch_normalization_1255/ReadVariableOpReadVariableOp0batch_normalization_1255_readvariableop_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_1255/ReadVariableOp?
)batch_normalization_1255/ReadVariableOp_1ReadVariableOp2batch_normalization_1255_readvariableop_1_resource*
_output_shapes
:@*
dtype02+
)batch_normalization_1255/ReadVariableOp_1?
8batch_normalization_1255/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1255_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_1255/FusedBatchNormV3/ReadVariableOp?
:batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1255_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02<
:batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1?
)batch_normalization_1255/FusedBatchNormV3FusedBatchNormV3"activation_1351/Relu:activations:0/batch_normalization_1255/ReadVariableOp:value:01batch_normalization_1255/ReadVariableOp_1:value:0@batch_normalization_1255/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2+
)batch_normalization_1255/FusedBatchNormV3?
!conv2d_1206/Conv2D/ReadVariableOpReadVariableOp*conv2d_1206_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02#
!conv2d_1206/Conv2D/ReadVariableOp?
conv2d_1206/Conv2DConv2D-batch_normalization_1255/FusedBatchNormV3:y:0)conv2d_1206/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_1206/Conv2D?
"conv2d_1206/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1206_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"conv2d_1206/BiasAdd/ReadVariableOp?
conv2d_1206/BiasAddBiasAddconv2d_1206/Conv2D:output:0*conv2d_1206/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_1206/BiasAdd?
activation_1352/ReluReluconv2d_1206/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_1352/Relu?
'batch_normalization_1256/ReadVariableOpReadVariableOp0batch_normalization_1256_readvariableop_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_1256/ReadVariableOp?
)batch_normalization_1256/ReadVariableOp_1ReadVariableOp2batch_normalization_1256_readvariableop_1_resource*
_output_shapes
:@*
dtype02+
)batch_normalization_1256/ReadVariableOp_1?
8batch_normalization_1256/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1256_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_1256/FusedBatchNormV3/ReadVariableOp?
:batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1256_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02<
:batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1?
)batch_normalization_1256/FusedBatchNormV3FusedBatchNormV3"activation_1352/Relu:activations:0/batch_normalization_1256/ReadVariableOp:value:01batch_normalization_1256/ReadVariableOp_1:value:0@batch_normalization_1256/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2+
)batch_normalization_1256/FusedBatchNormV3?
max_pooling2d_195/MaxPoolMaxPool-batch_normalization_1256/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_195/MaxPool?
dropout_205/IdentityIdentity"max_pooling2d_195/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout_205/Identityu
flatten_98/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_98/Const?
flatten_98/ReshapeReshapedropout_205/Identity:output:0flatten_98/Const:output:0*
T0*(
_output_shapes
:?????????? 2
flatten_98/Reshape?
dense_152/MatMul/ReadVariableOpReadVariableOp(dense_152_matmul_readvariableop_resource* 
_output_shapes
:
? ?*
dtype02!
dense_152/MatMul/ReadVariableOp?
dense_152/MatMulMatMulflatten_98/Reshape:output:0'dense_152/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_152/MatMul?
 dense_152/BiasAdd/ReadVariableOpReadVariableOp)dense_152_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_152/BiasAdd/ReadVariableOp?
dense_152/BiasAddBiasAdddense_152/MatMul:product:0(dense_152/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_152/BiasAdd?
activation_1353/ReluReludense_152/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
activation_1353/Relu?
1batch_normalization_1257/batchnorm/ReadVariableOpReadVariableOp:batch_normalization_1257_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_1257/batchnorm/ReadVariableOp?
(batch_normalization_1257/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2*
(batch_normalization_1257/batchnorm/add/y?
&batch_normalization_1257/batchnorm/addAddV29batch_normalization_1257/batchnorm/ReadVariableOp:value:01batch_normalization_1257/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2(
&batch_normalization_1257/batchnorm/add?
(batch_normalization_1257/batchnorm/RsqrtRsqrt*batch_normalization_1257/batchnorm/add:z:0*
T0*
_output_shapes	
:?2*
(batch_normalization_1257/batchnorm/Rsqrt?
5batch_normalization_1257/batchnorm/mul/ReadVariableOpReadVariableOp>batch_normalization_1257_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_1257/batchnorm/mul/ReadVariableOp?
&batch_normalization_1257/batchnorm/mulMul,batch_normalization_1257/batchnorm/Rsqrt:y:0=batch_normalization_1257/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2(
&batch_normalization_1257/batchnorm/mul?
(batch_normalization_1257/batchnorm/mul_1Mul"activation_1353/Relu:activations:0*batch_normalization_1257/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2*
(batch_normalization_1257/batchnorm/mul_1?
3batch_normalization_1257/batchnorm/ReadVariableOp_1ReadVariableOp<batch_normalization_1257_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_1257/batchnorm/ReadVariableOp_1?
(batch_normalization_1257/batchnorm/mul_2Mul;batch_normalization_1257/batchnorm/ReadVariableOp_1:value:0*batch_normalization_1257/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2*
(batch_normalization_1257/batchnorm/mul_2?
3batch_normalization_1257/batchnorm/ReadVariableOp_2ReadVariableOp<batch_normalization_1257_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_1257/batchnorm/ReadVariableOp_2?
&batch_normalization_1257/batchnorm/subSub;batch_normalization_1257/batchnorm/ReadVariableOp_2:value:0,batch_normalization_1257/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_1257/batchnorm/sub?
(batch_normalization_1257/batchnorm/add_1AddV2,batch_normalization_1257/batchnorm/mul_1:z:0*batch_normalization_1257/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2*
(batch_normalization_1257/batchnorm/add_1?
dropout_206/IdentityIdentity,batch_normalization_1257/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
dropout_206/Identity?
dense_153/MatMul/ReadVariableOpReadVariableOp(dense_153_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_153/MatMul/ReadVariableOp?
dense_153/MatMulMatMuldropout_206/Identity:output:0'dense_153/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_153/MatMul?
 dense_153/BiasAdd/ReadVariableOpReadVariableOp)dense_153_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_153/BiasAdd/ReadVariableOp?
dense_153/BiasAddBiasAdddense_153/MatMul:product:0(dense_153/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_153/BiasAdd?
activation_1354/SoftmaxSoftmaxdense_153/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_1354/Softmax?
IdentityIdentity!activation_1354/Softmax:softmax:09^batch_normalization_1253/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1253/ReadVariableOp*^batch_normalization_1253/ReadVariableOp_19^batch_normalization_1254/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1254/ReadVariableOp*^batch_normalization_1254/ReadVariableOp_19^batch_normalization_1255/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1255/ReadVariableOp*^batch_normalization_1255/ReadVariableOp_19^batch_normalization_1256/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1256/ReadVariableOp*^batch_normalization_1256/ReadVariableOp_12^batch_normalization_1257/batchnorm/ReadVariableOp4^batch_normalization_1257/batchnorm/ReadVariableOp_14^batch_normalization_1257/batchnorm/ReadVariableOp_26^batch_normalization_1257/batchnorm/mul/ReadVariableOp#^conv2d_1203/BiasAdd/ReadVariableOp"^conv2d_1203/Conv2D/ReadVariableOp#^conv2d_1204/BiasAdd/ReadVariableOp"^conv2d_1204/Conv2D/ReadVariableOp#^conv2d_1205/BiasAdd/ReadVariableOp"^conv2d_1205/Conv2D/ReadVariableOp#^conv2d_1206/BiasAdd/ReadVariableOp"^conv2d_1206/Conv2D/ReadVariableOp!^dense_152/BiasAdd/ReadVariableOp ^dense_152/MatMul/ReadVariableOp!^dense_153/BiasAdd/ReadVariableOp ^dense_153/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2t
8batch_normalization_1253/FusedBatchNormV3/ReadVariableOp8batch_normalization_1253/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1253/ReadVariableOp'batch_normalization_1253/ReadVariableOp2V
)batch_normalization_1253/ReadVariableOp_1)batch_normalization_1253/ReadVariableOp_12t
8batch_normalization_1254/FusedBatchNormV3/ReadVariableOp8batch_normalization_1254/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1254/ReadVariableOp'batch_normalization_1254/ReadVariableOp2V
)batch_normalization_1254/ReadVariableOp_1)batch_normalization_1254/ReadVariableOp_12t
8batch_normalization_1255/FusedBatchNormV3/ReadVariableOp8batch_normalization_1255/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1255/ReadVariableOp'batch_normalization_1255/ReadVariableOp2V
)batch_normalization_1255/ReadVariableOp_1)batch_normalization_1255/ReadVariableOp_12t
8batch_normalization_1256/FusedBatchNormV3/ReadVariableOp8batch_normalization_1256/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1256/ReadVariableOp'batch_normalization_1256/ReadVariableOp2V
)batch_normalization_1256/ReadVariableOp_1)batch_normalization_1256/ReadVariableOp_12f
1batch_normalization_1257/batchnorm/ReadVariableOp1batch_normalization_1257/batchnorm/ReadVariableOp2j
3batch_normalization_1257/batchnorm/ReadVariableOp_13batch_normalization_1257/batchnorm/ReadVariableOp_12j
3batch_normalization_1257/batchnorm/ReadVariableOp_23batch_normalization_1257/batchnorm/ReadVariableOp_22n
5batch_normalization_1257/batchnorm/mul/ReadVariableOp5batch_normalization_1257/batchnorm/mul/ReadVariableOp2H
"conv2d_1203/BiasAdd/ReadVariableOp"conv2d_1203/BiasAdd/ReadVariableOp2F
!conv2d_1203/Conv2D/ReadVariableOp!conv2d_1203/Conv2D/ReadVariableOp2H
"conv2d_1204/BiasAdd/ReadVariableOp"conv2d_1204/BiasAdd/ReadVariableOp2F
!conv2d_1204/Conv2D/ReadVariableOp!conv2d_1204/Conv2D/ReadVariableOp2H
"conv2d_1205/BiasAdd/ReadVariableOp"conv2d_1205/BiasAdd/ReadVariableOp2F
!conv2d_1205/Conv2D/ReadVariableOp!conv2d_1205/Conv2D/ReadVariableOp2H
"conv2d_1206/BiasAdd/ReadVariableOp"conv2d_1206/BiasAdd/ReadVariableOp2F
!conv2d_1206/Conv2D/ReadVariableOp!conv2d_1206/Conv2D/ReadVariableOp2D
 dense_152/BiasAdd/ReadVariableOp dense_152/BiasAdd/ReadVariableOp2B
dense_152/MatMul/ReadVariableOpdense_152/MatMul/ReadVariableOp2D
 dense_153/BiasAdd/ReadVariableOp dense_153/BiasAdd/ReadVariableOp2B
dense_153/MatMul/ReadVariableOpdense_153/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4455899

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?	
?
F__inference_dense_153_layer_call_and_return_conditional_losses_4454255

inputs1
matmul_readvariableop_resource:	?
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_4455240
conv2d_1203_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:
? ?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?


unknown_30:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_1203_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_44532852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:?????????  
+
_user_specified_nameconv2d_1203_input
?
?
,__inference_MiniVGGNet_layer_call_fn_4454981
conv2d_1203_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:
? ?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?


unknown_30:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_1203_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*8
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_44548452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:?????????  
+
_user_specified_nameconv2d_1203_input
??
?(
 __inference__traced_save_4456783
file_prefix1
-savev2_conv2d_1203_kernel_read_readvariableop/
+savev2_conv2d_1203_bias_read_readvariableop=
9savev2_batch_normalization_1253_gamma_read_readvariableop<
8savev2_batch_normalization_1253_beta_read_readvariableopC
?savev2_batch_normalization_1253_moving_mean_read_readvariableopG
Csavev2_batch_normalization_1253_moving_variance_read_readvariableop1
-savev2_conv2d_1204_kernel_read_readvariableop/
+savev2_conv2d_1204_bias_read_readvariableop=
9savev2_batch_normalization_1254_gamma_read_readvariableop<
8savev2_batch_normalization_1254_beta_read_readvariableopC
?savev2_batch_normalization_1254_moving_mean_read_readvariableopG
Csavev2_batch_normalization_1254_moving_variance_read_readvariableop1
-savev2_conv2d_1205_kernel_read_readvariableop/
+savev2_conv2d_1205_bias_read_readvariableop=
9savev2_batch_normalization_1255_gamma_read_readvariableop<
8savev2_batch_normalization_1255_beta_read_readvariableopC
?savev2_batch_normalization_1255_moving_mean_read_readvariableopG
Csavev2_batch_normalization_1255_moving_variance_read_readvariableop1
-savev2_conv2d_1206_kernel_read_readvariableop/
+savev2_conv2d_1206_bias_read_readvariableop=
9savev2_batch_normalization_1256_gamma_read_readvariableop<
8savev2_batch_normalization_1256_beta_read_readvariableopC
?savev2_batch_normalization_1256_moving_mean_read_readvariableopG
Csavev2_batch_normalization_1256_moving_variance_read_readvariableop/
+savev2_dense_152_kernel_read_readvariableop-
)savev2_dense_152_bias_read_readvariableop=
9savev2_batch_normalization_1257_gamma_read_readvariableop<
8savev2_batch_normalization_1257_beta_read_readvariableopC
?savev2_batch_normalization_1257_moving_mean_read_readvariableopG
Csavev2_batch_normalization_1257_moving_variance_read_readvariableop/
+savev2_dense_153_kernel_read_readvariableop-
)savev2_dense_153_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adam_conv2d_1203_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1203_bias_m_read_readvariableopD
@savev2_adam_batch_normalization_1253_gamma_m_read_readvariableopC
?savev2_adam_batch_normalization_1253_beta_m_read_readvariableop8
4savev2_adam_conv2d_1204_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1204_bias_m_read_readvariableopD
@savev2_adam_batch_normalization_1254_gamma_m_read_readvariableopC
?savev2_adam_batch_normalization_1254_beta_m_read_readvariableop8
4savev2_adam_conv2d_1205_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1205_bias_m_read_readvariableopD
@savev2_adam_batch_normalization_1255_gamma_m_read_readvariableopC
?savev2_adam_batch_normalization_1255_beta_m_read_readvariableop8
4savev2_adam_conv2d_1206_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1206_bias_m_read_readvariableopD
@savev2_adam_batch_normalization_1256_gamma_m_read_readvariableopC
?savev2_adam_batch_normalization_1256_beta_m_read_readvariableop6
2savev2_adam_dense_152_kernel_m_read_readvariableop4
0savev2_adam_dense_152_bias_m_read_readvariableopD
@savev2_adam_batch_normalization_1257_gamma_m_read_readvariableopC
?savev2_adam_batch_normalization_1257_beta_m_read_readvariableop6
2savev2_adam_dense_153_kernel_m_read_readvariableop4
0savev2_adam_dense_153_bias_m_read_readvariableop8
4savev2_adam_conv2d_1203_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1203_bias_v_read_readvariableopD
@savev2_adam_batch_normalization_1253_gamma_v_read_readvariableopC
?savev2_adam_batch_normalization_1253_beta_v_read_readvariableop8
4savev2_adam_conv2d_1204_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1204_bias_v_read_readvariableopD
@savev2_adam_batch_normalization_1254_gamma_v_read_readvariableopC
?savev2_adam_batch_normalization_1254_beta_v_read_readvariableop8
4savev2_adam_conv2d_1205_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1205_bias_v_read_readvariableopD
@savev2_adam_batch_normalization_1255_gamma_v_read_readvariableopC
?savev2_adam_batch_normalization_1255_beta_v_read_readvariableop8
4savev2_adam_conv2d_1206_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1206_bias_v_read_readvariableopD
@savev2_adam_batch_normalization_1256_gamma_v_read_readvariableopC
?savev2_adam_batch_normalization_1256_beta_v_read_readvariableop6
2savev2_adam_dense_152_kernel_v_read_readvariableop4
0savev2_adam_dense_152_bias_v_read_readvariableopD
@savev2_adam_batch_normalization_1257_gamma_v_read_readvariableopC
?savev2_adam_batch_normalization_1257_beta_v_read_readvariableop6
2savev2_adam_dense_153_kernel_v_read_readvariableop4
0savev2_adam_dense_153_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?/
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?.
value?.B?.VB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?
value?B?VB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?&
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_conv2d_1203_kernel_read_readvariableop+savev2_conv2d_1203_bias_read_readvariableop9savev2_batch_normalization_1253_gamma_read_readvariableop8savev2_batch_normalization_1253_beta_read_readvariableop?savev2_batch_normalization_1253_moving_mean_read_readvariableopCsavev2_batch_normalization_1253_moving_variance_read_readvariableop-savev2_conv2d_1204_kernel_read_readvariableop+savev2_conv2d_1204_bias_read_readvariableop9savev2_batch_normalization_1254_gamma_read_readvariableop8savev2_batch_normalization_1254_beta_read_readvariableop?savev2_batch_normalization_1254_moving_mean_read_readvariableopCsavev2_batch_normalization_1254_moving_variance_read_readvariableop-savev2_conv2d_1205_kernel_read_readvariableop+savev2_conv2d_1205_bias_read_readvariableop9savev2_batch_normalization_1255_gamma_read_readvariableop8savev2_batch_normalization_1255_beta_read_readvariableop?savev2_batch_normalization_1255_moving_mean_read_readvariableopCsavev2_batch_normalization_1255_moving_variance_read_readvariableop-savev2_conv2d_1206_kernel_read_readvariableop+savev2_conv2d_1206_bias_read_readvariableop9savev2_batch_normalization_1256_gamma_read_readvariableop8savev2_batch_normalization_1256_beta_read_readvariableop?savev2_batch_normalization_1256_moving_mean_read_readvariableopCsavev2_batch_normalization_1256_moving_variance_read_readvariableop+savev2_dense_152_kernel_read_readvariableop)savev2_dense_152_bias_read_readvariableop9savev2_batch_normalization_1257_gamma_read_readvariableop8savev2_batch_normalization_1257_beta_read_readvariableop?savev2_batch_normalization_1257_moving_mean_read_readvariableopCsavev2_batch_normalization_1257_moving_variance_read_readvariableop+savev2_dense_153_kernel_read_readvariableop)savev2_dense_153_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adam_conv2d_1203_kernel_m_read_readvariableop2savev2_adam_conv2d_1203_bias_m_read_readvariableop@savev2_adam_batch_normalization_1253_gamma_m_read_readvariableop?savev2_adam_batch_normalization_1253_beta_m_read_readvariableop4savev2_adam_conv2d_1204_kernel_m_read_readvariableop2savev2_adam_conv2d_1204_bias_m_read_readvariableop@savev2_adam_batch_normalization_1254_gamma_m_read_readvariableop?savev2_adam_batch_normalization_1254_beta_m_read_readvariableop4savev2_adam_conv2d_1205_kernel_m_read_readvariableop2savev2_adam_conv2d_1205_bias_m_read_readvariableop@savev2_adam_batch_normalization_1255_gamma_m_read_readvariableop?savev2_adam_batch_normalization_1255_beta_m_read_readvariableop4savev2_adam_conv2d_1206_kernel_m_read_readvariableop2savev2_adam_conv2d_1206_bias_m_read_readvariableop@savev2_adam_batch_normalization_1256_gamma_m_read_readvariableop?savev2_adam_batch_normalization_1256_beta_m_read_readvariableop2savev2_adam_dense_152_kernel_m_read_readvariableop0savev2_adam_dense_152_bias_m_read_readvariableop@savev2_adam_batch_normalization_1257_gamma_m_read_readvariableop?savev2_adam_batch_normalization_1257_beta_m_read_readvariableop2savev2_adam_dense_153_kernel_m_read_readvariableop0savev2_adam_dense_153_bias_m_read_readvariableop4savev2_adam_conv2d_1203_kernel_v_read_readvariableop2savev2_adam_conv2d_1203_bias_v_read_readvariableop@savev2_adam_batch_normalization_1253_gamma_v_read_readvariableop?savev2_adam_batch_normalization_1253_beta_v_read_readvariableop4savev2_adam_conv2d_1204_kernel_v_read_readvariableop2savev2_adam_conv2d_1204_bias_v_read_readvariableop@savev2_adam_batch_normalization_1254_gamma_v_read_readvariableop?savev2_adam_batch_normalization_1254_beta_v_read_readvariableop4savev2_adam_conv2d_1205_kernel_v_read_readvariableop2savev2_adam_conv2d_1205_bias_v_read_readvariableop@savev2_adam_batch_normalization_1255_gamma_v_read_readvariableop?savev2_adam_batch_normalization_1255_beta_v_read_readvariableop4savev2_adam_conv2d_1206_kernel_v_read_readvariableop2savev2_adam_conv2d_1206_bias_v_read_readvariableop@savev2_adam_batch_normalization_1256_gamma_v_read_readvariableop?savev2_adam_batch_normalization_1256_beta_v_read_readvariableop2savev2_adam_dense_152_kernel_v_read_readvariableop0savev2_adam_dense_152_bias_v_read_readvariableop@savev2_adam_batch_normalization_1257_gamma_v_read_readvariableop?savev2_adam_batch_normalization_1257_beta_v_read_readvariableop2savev2_adam_dense_153_kernel_v_read_readvariableop0savev2_adam_dense_153_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *d
dtypesZ
X2V	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : :  : : : : : : @:@:@:@:@:@:@@:@:@:@:@:@:
? ?:?:?:?:?:?:	?
:
: : : : : : : : : : : : : :  : : : : @:@:@:@:@@:@:@:@:
? ?:?:?:?:	?
:
: : : : :  : : : : @:@:@:@:@@:@:@:@:
? ?:?:?:?:	?
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:&"
 
_output_shapes
:
? ?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?
:  

_output_shapes
:
:!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :,*(
&
_output_shapes
: : +

_output_shapes
: : ,

_output_shapes
: : -

_output_shapes
: :,.(
&
_output_shapes
:  : /

_output_shapes
: : 0

_output_shapes
: : 1

_output_shapes
: :,2(
&
_output_shapes
: @: 3

_output_shapes
:@: 4

_output_shapes
:@: 5

_output_shapes
:@:,6(
&
_output_shapes
:@@: 7

_output_shapes
:@: 8

_output_shapes
:@: 9

_output_shapes
:@:&:"
 
_output_shapes
:
? ?:!;

_output_shapes	
:?:!<

_output_shapes	
:?:!=

_output_shapes	
:?:%>!

_output_shapes
:	?
: ?

_output_shapes
:
:,@(
&
_output_shapes
: : A

_output_shapes
: : B

_output_shapes
: : C

_output_shapes
: :,D(
&
_output_shapes
:  : E

_output_shapes
: : F

_output_shapes
: : G

_output_shapes
: :,H(
&
_output_shapes
: @: I

_output_shapes
:@: J

_output_shapes
:@: K

_output_shapes
:@:,L(
&
_output_shapes
:@@: M

_output_shapes
:@: N

_output_shapes
:@: O

_output_shapes
:@:&P"
 
_output_shapes
:
? ?:!Q

_output_shapes	
:?:!R

_output_shapes	
:?:!S

_output_shapes	
:?:%T!

_output_shapes
:	?
: U

_output_shapes
:
:V

_output_shapes
: 
?
h
L__inference_activation_1354_layer_call_and_return_conditional_losses_4454266

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????
:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
f
-__inference_dropout_205_layer_call_fn_4456329

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_205_layer_call_and_return_conditional_losses_44544172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
h
L__inference_activation_1349_layer_call_and_return_conditional_losses_4455687

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4456079

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
-__inference_conv2d_1205_layer_call_fn_4456015

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1205_layer_call_and_return_conditional_losses_44541002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
-__inference_conv2d_1206_layer_call_fn_4456168

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1206_layer_call_and_return_conditional_losses_44541502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4454130

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
h
L__inference_activation_1352_layer_call_and_return_conditional_losses_4456173

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
M
1__inference_activation_1349_layer_call_fn_4455692

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1349_layer_call_and_return_conditional_losses_44540032
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4455764

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4454596

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4453697

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
h
L__inference_activation_1350_layer_call_and_return_conditional_losses_4454053

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
I
-__inference_dropout_206_layer_call_fn_4456471

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_206_layer_call_and_return_conditional_losses_44542432
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
H__inference_conv2d_1205_layer_call_and_return_conditional_losses_4456006

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
H__inference_conv2d_1206_layer_call_and_return_conditional_losses_4454150

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1255_layer_call_fn_4456110

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_44535712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
H__inference_conv2d_1204_layer_call_and_return_conditional_losses_4454042

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
g
H__inference_dropout_204_layer_call_and_return_conditional_losses_4455986

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1257_layer_call_and_return_conditional_losses_4453837

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4455917

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4456232

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
+__inference_dense_152_layer_call_fn_4456359

inputs
unknown:
? ?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_152_layer_call_and_return_conditional_losses_44542162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
f
H__inference_dropout_205_layer_call_and_return_conditional_losses_4456307

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1256_layer_call_fn_4456289

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_44541802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
I
-__inference_dropout_205_layer_call_fn_4456324

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_205_layer_call_and_return_conditional_losses_44541962
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
H__inference_conv2d_1206_layer_call_and_return_conditional_losses_4456159

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4454513

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1254_layer_call_fn_4455969

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_44545962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1254_layer_call_fn_4455956

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_44540722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
h
L__inference_activation_1351_layer_call_and_return_conditional_losses_4454111

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?v
?
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4454845

inputs-
conv2d_1203_4454757: !
conv2d_1203_4454759: .
 batch_normalization_1253_4454763: .
 batch_normalization_1253_4454765: .
 batch_normalization_1253_4454767: .
 batch_normalization_1253_4454769: -
conv2d_1204_4454772:  !
conv2d_1204_4454774: .
 batch_normalization_1254_4454778: .
 batch_normalization_1254_4454780: .
 batch_normalization_1254_4454782: .
 batch_normalization_1254_4454784: -
conv2d_1205_4454789: @!
conv2d_1205_4454791:@.
 batch_normalization_1255_4454795:@.
 batch_normalization_1255_4454797:@.
 batch_normalization_1255_4454799:@.
 batch_normalization_1255_4454801:@-
conv2d_1206_4454804:@@!
conv2d_1206_4454806:@.
 batch_normalization_1256_4454810:@.
 batch_normalization_1256_4454812:@.
 batch_normalization_1256_4454814:@.
 batch_normalization_1256_4454816:@%
dense_152_4454822:
? ? 
dense_152_4454824:	?/
 batch_normalization_1257_4454828:	?/
 batch_normalization_1257_4454830:	?/
 batch_normalization_1257_4454832:	?/
 batch_normalization_1257_4454834:	?$
dense_153_4454838:	?

dense_153_4454840:

identity??0batch_normalization_1253/StatefulPartitionedCall?0batch_normalization_1254/StatefulPartitionedCall?0batch_normalization_1255/StatefulPartitionedCall?0batch_normalization_1256/StatefulPartitionedCall?0batch_normalization_1257/StatefulPartitionedCall?#conv2d_1203/StatefulPartitionedCall?#conv2d_1204/StatefulPartitionedCall?#conv2d_1205/StatefulPartitionedCall?#conv2d_1206/StatefulPartitionedCall?!dense_152/StatefulPartitionedCall?!dense_153/StatefulPartitionedCall?#dropout_204/StatefulPartitionedCall?#dropout_205/StatefulPartitionedCall?#dropout_206/StatefulPartitionedCall?
#conv2d_1203/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1203_4454757conv2d_1203_4454759*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1203_layer_call_and_return_conditional_losses_44539922%
#conv2d_1203/StatefulPartitionedCall?
activation_1349/PartitionedCallPartitionedCall,conv2d_1203/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1349_layer_call_and_return_conditional_losses_44540032!
activation_1349/PartitionedCall?
0batch_normalization_1253/StatefulPartitionedCallStatefulPartitionedCall(activation_1349/PartitionedCall:output:0 batch_normalization_1253_4454763 batch_normalization_1253_4454765 batch_normalization_1253_4454767 batch_normalization_1253_4454769*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_445465622
0batch_normalization_1253/StatefulPartitionedCall?
#conv2d_1204/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1253/StatefulPartitionedCall:output:0conv2d_1204_4454772conv2d_1204_4454774*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1204_layer_call_and_return_conditional_losses_44540422%
#conv2d_1204/StatefulPartitionedCall?
activation_1350/PartitionedCallPartitionedCall,conv2d_1204/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1350_layer_call_and_return_conditional_losses_44540532!
activation_1350/PartitionedCall?
0batch_normalization_1254/StatefulPartitionedCallStatefulPartitionedCall(activation_1350/PartitionedCall:output:0 batch_normalization_1254_4454778 batch_normalization_1254_4454780 batch_normalization_1254_4454782 batch_normalization_1254_4454784*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_445459622
0batch_normalization_1254/StatefulPartitionedCall?
!max_pooling2d_194/PartitionedCallPartitionedCall9batch_normalization_1254/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_194_layer_call_and_return_conditional_losses_44535432#
!max_pooling2d_194/PartitionedCall?
#dropout_204/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_194/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_204_layer_call_and_return_conditional_losses_44545602%
#dropout_204/StatefulPartitionedCall?
#conv2d_1205/StatefulPartitionedCallStatefulPartitionedCall,dropout_204/StatefulPartitionedCall:output:0conv2d_1205_4454789conv2d_1205_4454791*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1205_layer_call_and_return_conditional_losses_44541002%
#conv2d_1205/StatefulPartitionedCall?
activation_1351/PartitionedCallPartitionedCall,conv2d_1205/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1351_layer_call_and_return_conditional_losses_44541112!
activation_1351/PartitionedCall?
0batch_normalization_1255/StatefulPartitionedCallStatefulPartitionedCall(activation_1351/PartitionedCall:output:0 batch_normalization_1255_4454795 batch_normalization_1255_4454797 batch_normalization_1255_4454799 batch_normalization_1255_4454801*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_445451322
0batch_normalization_1255/StatefulPartitionedCall?
#conv2d_1206/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1255/StatefulPartitionedCall:output:0conv2d_1206_4454804conv2d_1206_4454806*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1206_layer_call_and_return_conditional_losses_44541502%
#conv2d_1206/StatefulPartitionedCall?
activation_1352/PartitionedCallPartitionedCall,conv2d_1206/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1352_layer_call_and_return_conditional_losses_44541612!
activation_1352/PartitionedCall?
0batch_normalization_1256/StatefulPartitionedCallStatefulPartitionedCall(activation_1352/PartitionedCall:output:0 batch_normalization_1256_4454810 batch_normalization_1256_4454812 batch_normalization_1256_4454814 batch_normalization_1256_4454816*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_445445322
0batch_normalization_1256/StatefulPartitionedCall?
!max_pooling2d_195/PartitionedCallPartitionedCall9batch_normalization_1256/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_195_layer_call_and_return_conditional_losses_44538072#
!max_pooling2d_195/PartitionedCall?
#dropout_205/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_195/PartitionedCall:output:0$^dropout_204/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_205_layer_call_and_return_conditional_losses_44544172%
#dropout_205/StatefulPartitionedCall?
flatten_98/PartitionedCallPartitionedCall,dropout_205/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_98_layer_call_and_return_conditional_losses_44542042
flatten_98/PartitionedCall?
!dense_152/StatefulPartitionedCallStatefulPartitionedCall#flatten_98/PartitionedCall:output:0dense_152_4454822dense_152_4454824*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_152_layer_call_and_return_conditional_losses_44542162#
!dense_152/StatefulPartitionedCall?
activation_1353/PartitionedCallPartitionedCall*dense_152/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1353_layer_call_and_return_conditional_losses_44542272!
activation_1353/PartitionedCall?
0batch_normalization_1257/StatefulPartitionedCallStatefulPartitionedCall(activation_1353/PartitionedCall:output:0 batch_normalization_1257_4454828 batch_normalization_1257_4454830 batch_normalization_1257_4454832 batch_normalization_1257_4454834*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1257_layer_call_and_return_conditional_losses_445389722
0batch_normalization_1257/StatefulPartitionedCall?
#dropout_206/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1257/StatefulPartitionedCall:output:0$^dropout_205/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_206_layer_call_and_return_conditional_losses_44543722%
#dropout_206/StatefulPartitionedCall?
!dense_153/StatefulPartitionedCallStatefulPartitionedCall,dropout_206/StatefulPartitionedCall:output:0dense_153_4454838dense_153_4454840*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_153_layer_call_and_return_conditional_losses_44542552#
!dense_153/StatefulPartitionedCall?
activation_1354/PartitionedCallPartitionedCall*dense_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1354_layer_call_and_return_conditional_losses_44542662!
activation_1354/PartitionedCall?
IdentityIdentity(activation_1354/PartitionedCall:output:01^batch_normalization_1253/StatefulPartitionedCall1^batch_normalization_1254/StatefulPartitionedCall1^batch_normalization_1255/StatefulPartitionedCall1^batch_normalization_1256/StatefulPartitionedCall1^batch_normalization_1257/StatefulPartitionedCall$^conv2d_1203/StatefulPartitionedCall$^conv2d_1204/StatefulPartitionedCall$^conv2d_1205/StatefulPartitionedCall$^conv2d_1206/StatefulPartitionedCall"^dense_152/StatefulPartitionedCall"^dense_153/StatefulPartitionedCall$^dropout_204/StatefulPartitionedCall$^dropout_205/StatefulPartitionedCall$^dropout_206/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2d
0batch_normalization_1253/StatefulPartitionedCall0batch_normalization_1253/StatefulPartitionedCall2d
0batch_normalization_1254/StatefulPartitionedCall0batch_normalization_1254/StatefulPartitionedCall2d
0batch_normalization_1255/StatefulPartitionedCall0batch_normalization_1255/StatefulPartitionedCall2d
0batch_normalization_1256/StatefulPartitionedCall0batch_normalization_1256/StatefulPartitionedCall2d
0batch_normalization_1257/StatefulPartitionedCall0batch_normalization_1257/StatefulPartitionedCall2J
#conv2d_1203/StatefulPartitionedCall#conv2d_1203/StatefulPartitionedCall2J
#conv2d_1204/StatefulPartitionedCall#conv2d_1204/StatefulPartitionedCall2J
#conv2d_1205/StatefulPartitionedCall#conv2d_1205/StatefulPartitionedCall2J
#conv2d_1206/StatefulPartitionedCall#conv2d_1206/StatefulPartitionedCall2F
!dense_152/StatefulPartitionedCall!dense_152/StatefulPartitionedCall2F
!dense_153/StatefulPartitionedCall!dense_153/StatefulPartitionedCall2J
#dropout_204/StatefulPartitionedCall#dropout_204/StatefulPartitionedCall2J
#dropout_205/StatefulPartitionedCall#dropout_205/StatefulPartitionedCall2J
#dropout_206/StatefulPartitionedCall#dropout_206/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4456043

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
F__inference_dense_153_layer_call_and_return_conditional_losses_4456486

inputs1
matmul_readvariableop_resource:	?
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4454022

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
M
1__inference_activation_1354_layer_call_fn_4456505

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1354_layer_call_and_return_conditional_losses_44542662
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????
:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1253_layer_call_fn_4455777

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_44533072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4453571

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4456196

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
-__inference_conv2d_1203_layer_call_fn_4455682

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1203_layer_call_and_return_conditional_losses_44539922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
,__inference_MiniVGGNet_layer_call_fn_4455594

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:
? ?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?


unknown_30:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_44542692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1254_layer_call_fn_4455930

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_44534332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1253_layer_call_fn_4455803

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_44540222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1256_layer_call_fn_4456276

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_44537412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4454180

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
h
L__inference_activation_1351_layer_call_and_return_conditional_losses_4456020

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4455881

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4456061

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
h
L__inference_activation_1353_layer_call_and_return_conditional_losses_4456364

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
H__inference_dropout_204_layer_call_and_return_conditional_losses_4454088

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
M
1__inference_activation_1353_layer_call_fn_4456369

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1353_layer_call_and_return_conditional_losses_44542272
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4456097

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
g
H__inference_dropout_205_layer_call_and_return_conditional_losses_4456319

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4453433

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4453615

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?9
#__inference__traced_restore_4457048
file_prefix=
#assignvariableop_conv2d_1203_kernel: 1
#assignvariableop_1_conv2d_1203_bias: ?
1assignvariableop_2_batch_normalization_1253_gamma: >
0assignvariableop_3_batch_normalization_1253_beta: E
7assignvariableop_4_batch_normalization_1253_moving_mean: I
;assignvariableop_5_batch_normalization_1253_moving_variance: ?
%assignvariableop_6_conv2d_1204_kernel:  1
#assignvariableop_7_conv2d_1204_bias: ?
1assignvariableop_8_batch_normalization_1254_gamma: >
0assignvariableop_9_batch_normalization_1254_beta: F
8assignvariableop_10_batch_normalization_1254_moving_mean: J
<assignvariableop_11_batch_normalization_1254_moving_variance: @
&assignvariableop_12_conv2d_1205_kernel: @2
$assignvariableop_13_conv2d_1205_bias:@@
2assignvariableop_14_batch_normalization_1255_gamma:@?
1assignvariableop_15_batch_normalization_1255_beta:@F
8assignvariableop_16_batch_normalization_1255_moving_mean:@J
<assignvariableop_17_batch_normalization_1255_moving_variance:@@
&assignvariableop_18_conv2d_1206_kernel:@@2
$assignvariableop_19_conv2d_1206_bias:@@
2assignvariableop_20_batch_normalization_1256_gamma:@?
1assignvariableop_21_batch_normalization_1256_beta:@F
8assignvariableop_22_batch_normalization_1256_moving_mean:@J
<assignvariableop_23_batch_normalization_1256_moving_variance:@8
$assignvariableop_24_dense_152_kernel:
? ?1
"assignvariableop_25_dense_152_bias:	?A
2assignvariableop_26_batch_normalization_1257_gamma:	?@
1assignvariableop_27_batch_normalization_1257_beta:	?G
8assignvariableop_28_batch_normalization_1257_moving_mean:	?K
<assignvariableop_29_batch_normalization_1257_moving_variance:	?7
$assignvariableop_30_dense_153_kernel:	?
0
"assignvariableop_31_dense_153_bias:
'
assignvariableop_32_adam_iter:	 )
assignvariableop_33_adam_beta_1: )
assignvariableop_34_adam_beta_2: (
assignvariableop_35_adam_decay: 0
&assignvariableop_36_adam_learning_rate: #
assignvariableop_37_total: #
assignvariableop_38_count: %
assignvariableop_39_total_1: %
assignvariableop_40_count_1: G
-assignvariableop_41_adam_conv2d_1203_kernel_m: 9
+assignvariableop_42_adam_conv2d_1203_bias_m: G
9assignvariableop_43_adam_batch_normalization_1253_gamma_m: F
8assignvariableop_44_adam_batch_normalization_1253_beta_m: G
-assignvariableop_45_adam_conv2d_1204_kernel_m:  9
+assignvariableop_46_adam_conv2d_1204_bias_m: G
9assignvariableop_47_adam_batch_normalization_1254_gamma_m: F
8assignvariableop_48_adam_batch_normalization_1254_beta_m: G
-assignvariableop_49_adam_conv2d_1205_kernel_m: @9
+assignvariableop_50_adam_conv2d_1205_bias_m:@G
9assignvariableop_51_adam_batch_normalization_1255_gamma_m:@F
8assignvariableop_52_adam_batch_normalization_1255_beta_m:@G
-assignvariableop_53_adam_conv2d_1206_kernel_m:@@9
+assignvariableop_54_adam_conv2d_1206_bias_m:@G
9assignvariableop_55_adam_batch_normalization_1256_gamma_m:@F
8assignvariableop_56_adam_batch_normalization_1256_beta_m:@?
+assignvariableop_57_adam_dense_152_kernel_m:
? ?8
)assignvariableop_58_adam_dense_152_bias_m:	?H
9assignvariableop_59_adam_batch_normalization_1257_gamma_m:	?G
8assignvariableop_60_adam_batch_normalization_1257_beta_m:	?>
+assignvariableop_61_adam_dense_153_kernel_m:	?
7
)assignvariableop_62_adam_dense_153_bias_m:
G
-assignvariableop_63_adam_conv2d_1203_kernel_v: 9
+assignvariableop_64_adam_conv2d_1203_bias_v: G
9assignvariableop_65_adam_batch_normalization_1253_gamma_v: F
8assignvariableop_66_adam_batch_normalization_1253_beta_v: G
-assignvariableop_67_adam_conv2d_1204_kernel_v:  9
+assignvariableop_68_adam_conv2d_1204_bias_v: G
9assignvariableop_69_adam_batch_normalization_1254_gamma_v: F
8assignvariableop_70_adam_batch_normalization_1254_beta_v: G
-assignvariableop_71_adam_conv2d_1205_kernel_v: @9
+assignvariableop_72_adam_conv2d_1205_bias_v:@G
9assignvariableop_73_adam_batch_normalization_1255_gamma_v:@F
8assignvariableop_74_adam_batch_normalization_1255_beta_v:@G
-assignvariableop_75_adam_conv2d_1206_kernel_v:@@9
+assignvariableop_76_adam_conv2d_1206_bias_v:@G
9assignvariableop_77_adam_batch_normalization_1256_gamma_v:@F
8assignvariableop_78_adam_batch_normalization_1256_beta_v:@?
+assignvariableop_79_adam_dense_152_kernel_v:
? ?8
)assignvariableop_80_adam_dense_152_bias_v:	?H
9assignvariableop_81_adam_batch_normalization_1257_gamma_v:	?G
8assignvariableop_82_adam_batch_normalization_1257_beta_v:	?>
+assignvariableop_83_adam_dense_153_kernel_v:	?
7
)assignvariableop_84_adam_dense_153_bias_v:

identity_86??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_9?/
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?.
value?.B?.VB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?
value?B?VB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*d
dtypesZ
X2V	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp#assignvariableop_conv2d_1203_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp#assignvariableop_1_conv2d_1203_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp1assignvariableop_2_batch_normalization_1253_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp0assignvariableop_3_batch_normalization_1253_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp7assignvariableop_4_batch_normalization_1253_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp;assignvariableop_5_batch_normalization_1253_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_conv2d_1204_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp#assignvariableop_7_conv2d_1204_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp1assignvariableop_8_batch_normalization_1254_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp0assignvariableop_9_batch_normalization_1254_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp8assignvariableop_10_batch_normalization_1254_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp<assignvariableop_11_batch_normalization_1254_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_conv2d_1205_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp$assignvariableop_13_conv2d_1205_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp2assignvariableop_14_batch_normalization_1255_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp1assignvariableop_15_batch_normalization_1255_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp8assignvariableop_16_batch_normalization_1255_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp<assignvariableop_17_batch_normalization_1255_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp&assignvariableop_18_conv2d_1206_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp$assignvariableop_19_conv2d_1206_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp2assignvariableop_20_batch_normalization_1256_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp1assignvariableop_21_batch_normalization_1256_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp8assignvariableop_22_batch_normalization_1256_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp<assignvariableop_23_batch_normalization_1256_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp$assignvariableop_24_dense_152_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp"assignvariableop_25_dense_152_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp2assignvariableop_26_batch_normalization_1257_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp1assignvariableop_27_batch_normalization_1257_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp8assignvariableop_28_batch_normalization_1257_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp<assignvariableop_29_batch_normalization_1257_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp$assignvariableop_30_dense_153_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp"assignvariableop_31_dense_153_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpassignvariableop_32_adam_iterIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpassignvariableop_33_adam_beta_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpassignvariableop_34_adam_beta_2Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpassignvariableop_35_adam_decayIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp&assignvariableop_36_adam_learning_rateIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpassignvariableop_37_totalIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpassignvariableop_38_countIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_1Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp-assignvariableop_41_adam_conv2d_1203_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adam_conv2d_1203_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp9assignvariableop_43_adam_batch_normalization_1253_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp8assignvariableop_44_adam_batch_normalization_1253_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp-assignvariableop_45_adam_conv2d_1204_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_conv2d_1204_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp9assignvariableop_47_adam_batch_normalization_1254_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp8assignvariableop_48_adam_batch_normalization_1254_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp-assignvariableop_49_adam_conv2d_1205_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp+assignvariableop_50_adam_conv2d_1205_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp9assignvariableop_51_adam_batch_normalization_1255_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp8assignvariableop_52_adam_batch_normalization_1255_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp-assignvariableop_53_adam_conv2d_1206_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp+assignvariableop_54_adam_conv2d_1206_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp9assignvariableop_55_adam_batch_normalization_1256_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp8assignvariableop_56_adam_batch_normalization_1256_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp+assignvariableop_57_adam_dense_152_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_dense_152_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp9assignvariableop_59_adam_batch_normalization_1257_gamma_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp8assignvariableop_60_adam_batch_normalization_1257_beta_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_dense_153_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_dense_153_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp-assignvariableop_63_adam_conv2d_1203_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp+assignvariableop_64_adam_conv2d_1203_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp9assignvariableop_65_adam_batch_normalization_1253_gamma_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp8assignvariableop_66_adam_batch_normalization_1253_beta_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp-assignvariableop_67_adam_conv2d_1204_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp+assignvariableop_68_adam_conv2d_1204_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp9assignvariableop_69_adam_batch_normalization_1254_gamma_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp8assignvariableop_70_adam_batch_normalization_1254_beta_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp-assignvariableop_71_adam_conv2d_1205_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp+assignvariableop_72_adam_conv2d_1205_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp9assignvariableop_73_adam_batch_normalization_1255_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp8assignvariableop_74_adam_batch_normalization_1255_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp-assignvariableop_75_adam_conv2d_1206_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp+assignvariableop_76_adam_conv2d_1206_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp9assignvariableop_77_adam_batch_normalization_1256_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp8assignvariableop_78_adam_batch_normalization_1256_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp+assignvariableop_79_adam_dense_152_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_dense_152_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp9assignvariableop_81_adam_batch_normalization_1257_gamma_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp8assignvariableop_82_adam_batch_normalization_1257_beta_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp+assignvariableop_83_adam_dense_153_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp)assignvariableop_84_adam_dense_153_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_849
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_85Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_85?
Identity_86IdentityIdentity_85:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_86"#
identity_86Identity_86:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
h
L__inference_activation_1350_layer_call_and_return_conditional_losses_4455840

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4454656

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_194_layer_call_fn_4453549

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_194_layer_call_and_return_conditional_losses_44535432
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?*
?
U__inference_batch_normalization_1257_layer_call_and_return_conditional_losses_4453897

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
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
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
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
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4453477

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1257_layer_call_fn_4456436

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1257_layer_call_and_return_conditional_losses_44538372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_MiniVGGNet_layer_call_fn_4455663

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:
? ?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?


unknown_30:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*8
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_44548452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
f
-__inference_dropout_206_layer_call_fn_4456476

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_206_layer_call_and_return_conditional_losses_44543722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1257_layer_call_fn_4456449

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1257_layer_call_and_return_conditional_losses_44538972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
G__inference_flatten_98_layer_call_and_return_conditional_losses_4456335

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????? 2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
H__inference_conv2d_1203_layer_call_and_return_conditional_losses_4455673

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
f
H__inference_dropout_204_layer_call_and_return_conditional_losses_4455974

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?*
?
U__inference_batch_normalization_1257_layer_call_and_return_conditional_losses_4456423

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
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
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
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
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_activation_1353_layer_call_and_return_conditional_losses_4454227

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4455746

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?	
?
F__inference_dense_152_layer_call_and_return_conditional_losses_4454216

inputs2
matmul_readvariableop_resource:
? ?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
? ?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
-__inference_conv2d_1204_layer_call_fn_4455835

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1204_layer_call_and_return_conditional_losses_44540422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_195_layer_call_and_return_conditional_losses_4453807

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_152_layer_call_and_return_conditional_losses_4456350

inputs2
matmul_readvariableop_resource:
? ?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
? ?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1257_layer_call_and_return_conditional_losses_4456389

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
I
-__inference_dropout_204_layer_call_fn_4455991

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_204_layer_call_and_return_conditional_losses_44540882
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4453741

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?w
?
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4455163
conv2d_1203_input-
conv2d_1203_4455075: !
conv2d_1203_4455077: .
 batch_normalization_1253_4455081: .
 batch_normalization_1253_4455083: .
 batch_normalization_1253_4455085: .
 batch_normalization_1253_4455087: -
conv2d_1204_4455090:  !
conv2d_1204_4455092: .
 batch_normalization_1254_4455096: .
 batch_normalization_1254_4455098: .
 batch_normalization_1254_4455100: .
 batch_normalization_1254_4455102: -
conv2d_1205_4455107: @!
conv2d_1205_4455109:@.
 batch_normalization_1255_4455113:@.
 batch_normalization_1255_4455115:@.
 batch_normalization_1255_4455117:@.
 batch_normalization_1255_4455119:@-
conv2d_1206_4455122:@@!
conv2d_1206_4455124:@.
 batch_normalization_1256_4455128:@.
 batch_normalization_1256_4455130:@.
 batch_normalization_1256_4455132:@.
 batch_normalization_1256_4455134:@%
dense_152_4455140:
? ? 
dense_152_4455142:	?/
 batch_normalization_1257_4455146:	?/
 batch_normalization_1257_4455148:	?/
 batch_normalization_1257_4455150:	?/
 batch_normalization_1257_4455152:	?$
dense_153_4455156:	?

dense_153_4455158:

identity??0batch_normalization_1253/StatefulPartitionedCall?0batch_normalization_1254/StatefulPartitionedCall?0batch_normalization_1255/StatefulPartitionedCall?0batch_normalization_1256/StatefulPartitionedCall?0batch_normalization_1257/StatefulPartitionedCall?#conv2d_1203/StatefulPartitionedCall?#conv2d_1204/StatefulPartitionedCall?#conv2d_1205/StatefulPartitionedCall?#conv2d_1206/StatefulPartitionedCall?!dense_152/StatefulPartitionedCall?!dense_153/StatefulPartitionedCall?#dropout_204/StatefulPartitionedCall?#dropout_205/StatefulPartitionedCall?#dropout_206/StatefulPartitionedCall?
#conv2d_1203/StatefulPartitionedCallStatefulPartitionedCallconv2d_1203_inputconv2d_1203_4455075conv2d_1203_4455077*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1203_layer_call_and_return_conditional_losses_44539922%
#conv2d_1203/StatefulPartitionedCall?
activation_1349/PartitionedCallPartitionedCall,conv2d_1203/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1349_layer_call_and_return_conditional_losses_44540032!
activation_1349/PartitionedCall?
0batch_normalization_1253/StatefulPartitionedCallStatefulPartitionedCall(activation_1349/PartitionedCall:output:0 batch_normalization_1253_4455081 batch_normalization_1253_4455083 batch_normalization_1253_4455085 batch_normalization_1253_4455087*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_445465622
0batch_normalization_1253/StatefulPartitionedCall?
#conv2d_1204/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1253/StatefulPartitionedCall:output:0conv2d_1204_4455090conv2d_1204_4455092*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1204_layer_call_and_return_conditional_losses_44540422%
#conv2d_1204/StatefulPartitionedCall?
activation_1350/PartitionedCallPartitionedCall,conv2d_1204/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1350_layer_call_and_return_conditional_losses_44540532!
activation_1350/PartitionedCall?
0batch_normalization_1254/StatefulPartitionedCallStatefulPartitionedCall(activation_1350/PartitionedCall:output:0 batch_normalization_1254_4455096 batch_normalization_1254_4455098 batch_normalization_1254_4455100 batch_normalization_1254_4455102*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_445459622
0batch_normalization_1254/StatefulPartitionedCall?
!max_pooling2d_194/PartitionedCallPartitionedCall9batch_normalization_1254/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_194_layer_call_and_return_conditional_losses_44535432#
!max_pooling2d_194/PartitionedCall?
#dropout_204/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_194/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_204_layer_call_and_return_conditional_losses_44545602%
#dropout_204/StatefulPartitionedCall?
#conv2d_1205/StatefulPartitionedCallStatefulPartitionedCall,dropout_204/StatefulPartitionedCall:output:0conv2d_1205_4455107conv2d_1205_4455109*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1205_layer_call_and_return_conditional_losses_44541002%
#conv2d_1205/StatefulPartitionedCall?
activation_1351/PartitionedCallPartitionedCall,conv2d_1205/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1351_layer_call_and_return_conditional_losses_44541112!
activation_1351/PartitionedCall?
0batch_normalization_1255/StatefulPartitionedCallStatefulPartitionedCall(activation_1351/PartitionedCall:output:0 batch_normalization_1255_4455113 batch_normalization_1255_4455115 batch_normalization_1255_4455117 batch_normalization_1255_4455119*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_445451322
0batch_normalization_1255/StatefulPartitionedCall?
#conv2d_1206/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1255/StatefulPartitionedCall:output:0conv2d_1206_4455122conv2d_1206_4455124*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1206_layer_call_and_return_conditional_losses_44541502%
#conv2d_1206/StatefulPartitionedCall?
activation_1352/PartitionedCallPartitionedCall,conv2d_1206/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1352_layer_call_and_return_conditional_losses_44541612!
activation_1352/PartitionedCall?
0batch_normalization_1256/StatefulPartitionedCallStatefulPartitionedCall(activation_1352/PartitionedCall:output:0 batch_normalization_1256_4455128 batch_normalization_1256_4455130 batch_normalization_1256_4455132 batch_normalization_1256_4455134*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_445445322
0batch_normalization_1256/StatefulPartitionedCall?
!max_pooling2d_195/PartitionedCallPartitionedCall9batch_normalization_1256/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_195_layer_call_and_return_conditional_losses_44538072#
!max_pooling2d_195/PartitionedCall?
#dropout_205/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_195/PartitionedCall:output:0$^dropout_204/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_205_layer_call_and_return_conditional_losses_44544172%
#dropout_205/StatefulPartitionedCall?
flatten_98/PartitionedCallPartitionedCall,dropout_205/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_98_layer_call_and_return_conditional_losses_44542042
flatten_98/PartitionedCall?
!dense_152/StatefulPartitionedCallStatefulPartitionedCall#flatten_98/PartitionedCall:output:0dense_152_4455140dense_152_4455142*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_152_layer_call_and_return_conditional_losses_44542162#
!dense_152/StatefulPartitionedCall?
activation_1353/PartitionedCallPartitionedCall*dense_152/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1353_layer_call_and_return_conditional_losses_44542272!
activation_1353/PartitionedCall?
0batch_normalization_1257/StatefulPartitionedCallStatefulPartitionedCall(activation_1353/PartitionedCall:output:0 batch_normalization_1257_4455146 batch_normalization_1257_4455148 batch_normalization_1257_4455150 batch_normalization_1257_4455152*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1257_layer_call_and_return_conditional_losses_445389722
0batch_normalization_1257/StatefulPartitionedCall?
#dropout_206/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1257/StatefulPartitionedCall:output:0$^dropout_205/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_206_layer_call_and_return_conditional_losses_44543722%
#dropout_206/StatefulPartitionedCall?
!dense_153/StatefulPartitionedCallStatefulPartitionedCall,dropout_206/StatefulPartitionedCall:output:0dense_153_4455156dense_153_4455158*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_153_layer_call_and_return_conditional_losses_44542552#
!dense_153/StatefulPartitionedCall?
activation_1354/PartitionedCallPartitionedCall*dense_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1354_layer_call_and_return_conditional_losses_44542662!
activation_1354/PartitionedCall?
IdentityIdentity(activation_1354/PartitionedCall:output:01^batch_normalization_1253/StatefulPartitionedCall1^batch_normalization_1254/StatefulPartitionedCall1^batch_normalization_1255/StatefulPartitionedCall1^batch_normalization_1256/StatefulPartitionedCall1^batch_normalization_1257/StatefulPartitionedCall$^conv2d_1203/StatefulPartitionedCall$^conv2d_1204/StatefulPartitionedCall$^conv2d_1205/StatefulPartitionedCall$^conv2d_1206/StatefulPartitionedCall"^dense_152/StatefulPartitionedCall"^dense_153/StatefulPartitionedCall$^dropout_204/StatefulPartitionedCall$^dropout_205/StatefulPartitionedCall$^dropout_206/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2d
0batch_normalization_1253/StatefulPartitionedCall0batch_normalization_1253/StatefulPartitionedCall2d
0batch_normalization_1254/StatefulPartitionedCall0batch_normalization_1254/StatefulPartitionedCall2d
0batch_normalization_1255/StatefulPartitionedCall0batch_normalization_1255/StatefulPartitionedCall2d
0batch_normalization_1256/StatefulPartitionedCall0batch_normalization_1256/StatefulPartitionedCall2d
0batch_normalization_1257/StatefulPartitionedCall0batch_normalization_1257/StatefulPartitionedCall2J
#conv2d_1203/StatefulPartitionedCall#conv2d_1203/StatefulPartitionedCall2J
#conv2d_1204/StatefulPartitionedCall#conv2d_1204/StatefulPartitionedCall2J
#conv2d_1205/StatefulPartitionedCall#conv2d_1205/StatefulPartitionedCall2J
#conv2d_1206/StatefulPartitionedCall#conv2d_1206/StatefulPartitionedCall2F
!dense_152/StatefulPartitionedCall!dense_152/StatefulPartitionedCall2F
!dense_153/StatefulPartitionedCall!dense_153/StatefulPartitionedCall2J
#dropout_204/StatefulPartitionedCall#dropout_204/StatefulPartitionedCall2J
#dropout_205/StatefulPartitionedCall#dropout_205/StatefulPartitionedCall2J
#dropout_206/StatefulPartitionedCall#dropout_206/StatefulPartitionedCall:b ^
/
_output_shapes
:?????????  
+
_user_specified_nameconv2d_1203_input
?
h
L__inference_activation_1354_layer_call_and_return_conditional_losses_4456500

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????
:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1253_layer_call_fn_4455816

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_44546562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
M
1__inference_activation_1351_layer_call_fn_4456025

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1351_layer_call_and_return_conditional_losses_44541112
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4453307

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
g
H__inference_dropout_206_layer_call_and_return_conditional_losses_4454372

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4453351

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
c
G__inference_flatten_98_layer_call_and_return_conditional_losses_4454204

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????? 2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4454453

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
h
L__inference_activation_1349_layer_call_and_return_conditional_losses_4454003

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4455863

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
f
H__inference_dropout_206_layer_call_and_return_conditional_losses_4456454

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
H
,__inference_flatten_98_layer_call_fn_4456340

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_98_layer_call_and_return_conditional_losses_44542042
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?q
?
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4454269

inputs-
conv2d_1203_4453993: !
conv2d_1203_4453995: .
 batch_normalization_1253_4454023: .
 batch_normalization_1253_4454025: .
 batch_normalization_1253_4454027: .
 batch_normalization_1253_4454029: -
conv2d_1204_4454043:  !
conv2d_1204_4454045: .
 batch_normalization_1254_4454073: .
 batch_normalization_1254_4454075: .
 batch_normalization_1254_4454077: .
 batch_normalization_1254_4454079: -
conv2d_1205_4454101: @!
conv2d_1205_4454103:@.
 batch_normalization_1255_4454131:@.
 batch_normalization_1255_4454133:@.
 batch_normalization_1255_4454135:@.
 batch_normalization_1255_4454137:@-
conv2d_1206_4454151:@@!
conv2d_1206_4454153:@.
 batch_normalization_1256_4454181:@.
 batch_normalization_1256_4454183:@.
 batch_normalization_1256_4454185:@.
 batch_normalization_1256_4454187:@%
dense_152_4454217:
? ? 
dense_152_4454219:	?/
 batch_normalization_1257_4454229:	?/
 batch_normalization_1257_4454231:	?/
 batch_normalization_1257_4454233:	?/
 batch_normalization_1257_4454235:	?$
dense_153_4454256:	?

dense_153_4454258:

identity??0batch_normalization_1253/StatefulPartitionedCall?0batch_normalization_1254/StatefulPartitionedCall?0batch_normalization_1255/StatefulPartitionedCall?0batch_normalization_1256/StatefulPartitionedCall?0batch_normalization_1257/StatefulPartitionedCall?#conv2d_1203/StatefulPartitionedCall?#conv2d_1204/StatefulPartitionedCall?#conv2d_1205/StatefulPartitionedCall?#conv2d_1206/StatefulPartitionedCall?!dense_152/StatefulPartitionedCall?!dense_153/StatefulPartitionedCall?
#conv2d_1203/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1203_4453993conv2d_1203_4453995*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1203_layer_call_and_return_conditional_losses_44539922%
#conv2d_1203/StatefulPartitionedCall?
activation_1349/PartitionedCallPartitionedCall,conv2d_1203/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1349_layer_call_and_return_conditional_losses_44540032!
activation_1349/PartitionedCall?
0batch_normalization_1253/StatefulPartitionedCallStatefulPartitionedCall(activation_1349/PartitionedCall:output:0 batch_normalization_1253_4454023 batch_normalization_1253_4454025 batch_normalization_1253_4454027 batch_normalization_1253_4454029*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_445402222
0batch_normalization_1253/StatefulPartitionedCall?
#conv2d_1204/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1253/StatefulPartitionedCall:output:0conv2d_1204_4454043conv2d_1204_4454045*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1204_layer_call_and_return_conditional_losses_44540422%
#conv2d_1204/StatefulPartitionedCall?
activation_1350/PartitionedCallPartitionedCall,conv2d_1204/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1350_layer_call_and_return_conditional_losses_44540532!
activation_1350/PartitionedCall?
0batch_normalization_1254/StatefulPartitionedCallStatefulPartitionedCall(activation_1350/PartitionedCall:output:0 batch_normalization_1254_4454073 batch_normalization_1254_4454075 batch_normalization_1254_4454077 batch_normalization_1254_4454079*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_445407222
0batch_normalization_1254/StatefulPartitionedCall?
!max_pooling2d_194/PartitionedCallPartitionedCall9batch_normalization_1254/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_194_layer_call_and_return_conditional_losses_44535432#
!max_pooling2d_194/PartitionedCall?
dropout_204/PartitionedCallPartitionedCall*max_pooling2d_194/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_204_layer_call_and_return_conditional_losses_44540882
dropout_204/PartitionedCall?
#conv2d_1205/StatefulPartitionedCallStatefulPartitionedCall$dropout_204/PartitionedCall:output:0conv2d_1205_4454101conv2d_1205_4454103*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1205_layer_call_and_return_conditional_losses_44541002%
#conv2d_1205/StatefulPartitionedCall?
activation_1351/PartitionedCallPartitionedCall,conv2d_1205/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1351_layer_call_and_return_conditional_losses_44541112!
activation_1351/PartitionedCall?
0batch_normalization_1255/StatefulPartitionedCallStatefulPartitionedCall(activation_1351/PartitionedCall:output:0 batch_normalization_1255_4454131 batch_normalization_1255_4454133 batch_normalization_1255_4454135 batch_normalization_1255_4454137*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_445413022
0batch_normalization_1255/StatefulPartitionedCall?
#conv2d_1206/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1255/StatefulPartitionedCall:output:0conv2d_1206_4454151conv2d_1206_4454153*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1206_layer_call_and_return_conditional_losses_44541502%
#conv2d_1206/StatefulPartitionedCall?
activation_1352/PartitionedCallPartitionedCall,conv2d_1206/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1352_layer_call_and_return_conditional_losses_44541612!
activation_1352/PartitionedCall?
0batch_normalization_1256/StatefulPartitionedCallStatefulPartitionedCall(activation_1352/PartitionedCall:output:0 batch_normalization_1256_4454181 batch_normalization_1256_4454183 batch_normalization_1256_4454185 batch_normalization_1256_4454187*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_445418022
0batch_normalization_1256/StatefulPartitionedCall?
!max_pooling2d_195/PartitionedCallPartitionedCall9batch_normalization_1256/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_195_layer_call_and_return_conditional_losses_44538072#
!max_pooling2d_195/PartitionedCall?
dropout_205/PartitionedCallPartitionedCall*max_pooling2d_195/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_205_layer_call_and_return_conditional_losses_44541962
dropout_205/PartitionedCall?
flatten_98/PartitionedCallPartitionedCall$dropout_205/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_98_layer_call_and_return_conditional_losses_44542042
flatten_98/PartitionedCall?
!dense_152/StatefulPartitionedCallStatefulPartitionedCall#flatten_98/PartitionedCall:output:0dense_152_4454217dense_152_4454219*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_152_layer_call_and_return_conditional_losses_44542162#
!dense_152/StatefulPartitionedCall?
activation_1353/PartitionedCallPartitionedCall*dense_152/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1353_layer_call_and_return_conditional_losses_44542272!
activation_1353/PartitionedCall?
0batch_normalization_1257/StatefulPartitionedCallStatefulPartitionedCall(activation_1353/PartitionedCall:output:0 batch_normalization_1257_4454229 batch_normalization_1257_4454231 batch_normalization_1257_4454233 batch_normalization_1257_4454235*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1257_layer_call_and_return_conditional_losses_445383722
0batch_normalization_1257/StatefulPartitionedCall?
dropout_206/PartitionedCallPartitionedCall9batch_normalization_1257/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_206_layer_call_and_return_conditional_losses_44542432
dropout_206/PartitionedCall?
!dense_153/StatefulPartitionedCallStatefulPartitionedCall$dropout_206/PartitionedCall:output:0dense_153_4454256dense_153_4454258*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_153_layer_call_and_return_conditional_losses_44542552#
!dense_153/StatefulPartitionedCall?
activation_1354/PartitionedCallPartitionedCall*dense_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1354_layer_call_and_return_conditional_losses_44542662!
activation_1354/PartitionedCall?
IdentityIdentity(activation_1354/PartitionedCall:output:01^batch_normalization_1253/StatefulPartitionedCall1^batch_normalization_1254/StatefulPartitionedCall1^batch_normalization_1255/StatefulPartitionedCall1^batch_normalization_1256/StatefulPartitionedCall1^batch_normalization_1257/StatefulPartitionedCall$^conv2d_1203/StatefulPartitionedCall$^conv2d_1204/StatefulPartitionedCall$^conv2d_1205/StatefulPartitionedCall$^conv2d_1206/StatefulPartitionedCall"^dense_152/StatefulPartitionedCall"^dense_153/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2d
0batch_normalization_1253/StatefulPartitionedCall0batch_normalization_1253/StatefulPartitionedCall2d
0batch_normalization_1254/StatefulPartitionedCall0batch_normalization_1254/StatefulPartitionedCall2d
0batch_normalization_1255/StatefulPartitionedCall0batch_normalization_1255/StatefulPartitionedCall2d
0batch_normalization_1256/StatefulPartitionedCall0batch_normalization_1256/StatefulPartitionedCall2d
0batch_normalization_1257/StatefulPartitionedCall0batch_normalization_1257/StatefulPartitionedCall2J
#conv2d_1203/StatefulPartitionedCall#conv2d_1203/StatefulPartitionedCall2J
#conv2d_1204/StatefulPartitionedCall#conv2d_1204/StatefulPartitionedCall2J
#conv2d_1205/StatefulPartitionedCall#conv2d_1205/StatefulPartitionedCall2J
#conv2d_1206/StatefulPartitionedCall#conv2d_1206/StatefulPartitionedCall2F
!dense_152/StatefulPartitionedCall!dense_152/StatefulPartitionedCall2F
!dense_153/StatefulPartitionedCall!dense_153/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4454072

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1256_layer_call_fn_4456263

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_44536972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
g
H__inference_dropout_204_layer_call_and_return_conditional_losses_4454560

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1253_layer_call_fn_4455790

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_44533512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1256_layer_call_fn_4456302

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_44544532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4456250

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?r
?
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4455072
conv2d_1203_input-
conv2d_1203_4454984: !
conv2d_1203_4454986: .
 batch_normalization_1253_4454990: .
 batch_normalization_1253_4454992: .
 batch_normalization_1253_4454994: .
 batch_normalization_1253_4454996: -
conv2d_1204_4454999:  !
conv2d_1204_4455001: .
 batch_normalization_1254_4455005: .
 batch_normalization_1254_4455007: .
 batch_normalization_1254_4455009: .
 batch_normalization_1254_4455011: -
conv2d_1205_4455016: @!
conv2d_1205_4455018:@.
 batch_normalization_1255_4455022:@.
 batch_normalization_1255_4455024:@.
 batch_normalization_1255_4455026:@.
 batch_normalization_1255_4455028:@-
conv2d_1206_4455031:@@!
conv2d_1206_4455033:@.
 batch_normalization_1256_4455037:@.
 batch_normalization_1256_4455039:@.
 batch_normalization_1256_4455041:@.
 batch_normalization_1256_4455043:@%
dense_152_4455049:
? ? 
dense_152_4455051:	?/
 batch_normalization_1257_4455055:	?/
 batch_normalization_1257_4455057:	?/
 batch_normalization_1257_4455059:	?/
 batch_normalization_1257_4455061:	?$
dense_153_4455065:	?

dense_153_4455067:

identity??0batch_normalization_1253/StatefulPartitionedCall?0batch_normalization_1254/StatefulPartitionedCall?0batch_normalization_1255/StatefulPartitionedCall?0batch_normalization_1256/StatefulPartitionedCall?0batch_normalization_1257/StatefulPartitionedCall?#conv2d_1203/StatefulPartitionedCall?#conv2d_1204/StatefulPartitionedCall?#conv2d_1205/StatefulPartitionedCall?#conv2d_1206/StatefulPartitionedCall?!dense_152/StatefulPartitionedCall?!dense_153/StatefulPartitionedCall?
#conv2d_1203/StatefulPartitionedCallStatefulPartitionedCallconv2d_1203_inputconv2d_1203_4454984conv2d_1203_4454986*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1203_layer_call_and_return_conditional_losses_44539922%
#conv2d_1203/StatefulPartitionedCall?
activation_1349/PartitionedCallPartitionedCall,conv2d_1203/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1349_layer_call_and_return_conditional_losses_44540032!
activation_1349/PartitionedCall?
0batch_normalization_1253/StatefulPartitionedCallStatefulPartitionedCall(activation_1349/PartitionedCall:output:0 batch_normalization_1253_4454990 batch_normalization_1253_4454992 batch_normalization_1253_4454994 batch_normalization_1253_4454996*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_445402222
0batch_normalization_1253/StatefulPartitionedCall?
#conv2d_1204/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1253/StatefulPartitionedCall:output:0conv2d_1204_4454999conv2d_1204_4455001*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1204_layer_call_and_return_conditional_losses_44540422%
#conv2d_1204/StatefulPartitionedCall?
activation_1350/PartitionedCallPartitionedCall,conv2d_1204/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1350_layer_call_and_return_conditional_losses_44540532!
activation_1350/PartitionedCall?
0batch_normalization_1254/StatefulPartitionedCallStatefulPartitionedCall(activation_1350/PartitionedCall:output:0 batch_normalization_1254_4455005 batch_normalization_1254_4455007 batch_normalization_1254_4455009 batch_normalization_1254_4455011*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_445407222
0batch_normalization_1254/StatefulPartitionedCall?
!max_pooling2d_194/PartitionedCallPartitionedCall9batch_normalization_1254/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_194_layer_call_and_return_conditional_losses_44535432#
!max_pooling2d_194/PartitionedCall?
dropout_204/PartitionedCallPartitionedCall*max_pooling2d_194/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_204_layer_call_and_return_conditional_losses_44540882
dropout_204/PartitionedCall?
#conv2d_1205/StatefulPartitionedCallStatefulPartitionedCall$dropout_204/PartitionedCall:output:0conv2d_1205_4455016conv2d_1205_4455018*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1205_layer_call_and_return_conditional_losses_44541002%
#conv2d_1205/StatefulPartitionedCall?
activation_1351/PartitionedCallPartitionedCall,conv2d_1205/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1351_layer_call_and_return_conditional_losses_44541112!
activation_1351/PartitionedCall?
0batch_normalization_1255/StatefulPartitionedCallStatefulPartitionedCall(activation_1351/PartitionedCall:output:0 batch_normalization_1255_4455022 batch_normalization_1255_4455024 batch_normalization_1255_4455026 batch_normalization_1255_4455028*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_445413022
0batch_normalization_1255/StatefulPartitionedCall?
#conv2d_1206/StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_1255/StatefulPartitionedCall:output:0conv2d_1206_4455031conv2d_1206_4455033*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_conv2d_1206_layer_call_and_return_conditional_losses_44541502%
#conv2d_1206/StatefulPartitionedCall?
activation_1352/PartitionedCallPartitionedCall,conv2d_1206/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1352_layer_call_and_return_conditional_losses_44541612!
activation_1352/PartitionedCall?
0batch_normalization_1256/StatefulPartitionedCallStatefulPartitionedCall(activation_1352/PartitionedCall:output:0 batch_normalization_1256_4455037 batch_normalization_1256_4455039 batch_normalization_1256_4455041 batch_normalization_1256_4455043*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_445418022
0batch_normalization_1256/StatefulPartitionedCall?
!max_pooling2d_195/PartitionedCallPartitionedCall9batch_normalization_1256/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_195_layer_call_and_return_conditional_losses_44538072#
!max_pooling2d_195/PartitionedCall?
dropout_205/PartitionedCallPartitionedCall*max_pooling2d_195/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_205_layer_call_and_return_conditional_losses_44541962
dropout_205/PartitionedCall?
flatten_98/PartitionedCallPartitionedCall$dropout_205/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_98_layer_call_and_return_conditional_losses_44542042
flatten_98/PartitionedCall?
!dense_152/StatefulPartitionedCallStatefulPartitionedCall#flatten_98/PartitionedCall:output:0dense_152_4455049dense_152_4455051*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_152_layer_call_and_return_conditional_losses_44542162#
!dense_152/StatefulPartitionedCall?
activation_1353/PartitionedCallPartitionedCall*dense_152/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1353_layer_call_and_return_conditional_losses_44542272!
activation_1353/PartitionedCall?
0batch_normalization_1257/StatefulPartitionedCallStatefulPartitionedCall(activation_1353/PartitionedCall:output:0 batch_normalization_1257_4455055 batch_normalization_1257_4455057 batch_normalization_1257_4455059 batch_normalization_1257_4455061*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1257_layer_call_and_return_conditional_losses_445383722
0batch_normalization_1257/StatefulPartitionedCall?
dropout_206/PartitionedCallPartitionedCall9batch_normalization_1257/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_206_layer_call_and_return_conditional_losses_44542432
dropout_206/PartitionedCall?
!dense_153/StatefulPartitionedCallStatefulPartitionedCall$dropout_206/PartitionedCall:output:0dense_153_4455065dense_153_4455067*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_153_layer_call_and_return_conditional_losses_44542552#
!dense_153/StatefulPartitionedCall?
activation_1354/PartitionedCallPartitionedCall*dense_153/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1354_layer_call_and_return_conditional_losses_44542662!
activation_1354/PartitionedCall?
IdentityIdentity(activation_1354/PartitionedCall:output:01^batch_normalization_1253/StatefulPartitionedCall1^batch_normalization_1254/StatefulPartitionedCall1^batch_normalization_1255/StatefulPartitionedCall1^batch_normalization_1256/StatefulPartitionedCall1^batch_normalization_1257/StatefulPartitionedCall$^conv2d_1203/StatefulPartitionedCall$^conv2d_1204/StatefulPartitionedCall$^conv2d_1205/StatefulPartitionedCall$^conv2d_1206/StatefulPartitionedCall"^dense_152/StatefulPartitionedCall"^dense_153/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2d
0batch_normalization_1253/StatefulPartitionedCall0batch_normalization_1253/StatefulPartitionedCall2d
0batch_normalization_1254/StatefulPartitionedCall0batch_normalization_1254/StatefulPartitionedCall2d
0batch_normalization_1255/StatefulPartitionedCall0batch_normalization_1255/StatefulPartitionedCall2d
0batch_normalization_1256/StatefulPartitionedCall0batch_normalization_1256/StatefulPartitionedCall2d
0batch_normalization_1257/StatefulPartitionedCall0batch_normalization_1257/StatefulPartitionedCall2J
#conv2d_1203/StatefulPartitionedCall#conv2d_1203/StatefulPartitionedCall2J
#conv2d_1204/StatefulPartitionedCall#conv2d_1204/StatefulPartitionedCall2J
#conv2d_1205/StatefulPartitionedCall#conv2d_1205/StatefulPartitionedCall2J
#conv2d_1206/StatefulPartitionedCall#conv2d_1206/StatefulPartitionedCall2F
!dense_152/StatefulPartitionedCall!dense_152/StatefulPartitionedCall2F
!dense_153/StatefulPartitionedCall!dense_153/StatefulPartitionedCall:b ^
/
_output_shapes
:?????????  
+
_user_specified_nameconv2d_1203_input
?
j
N__inference_max_pooling2d_194_layer_call_and_return_conditional_losses_4453543

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
H__inference_conv2d_1205_layer_call_and_return_conditional_losses_4454100

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
ە
?!
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4455525

inputsD
*conv2d_1203_conv2d_readvariableop_resource: 9
+conv2d_1203_biasadd_readvariableop_resource: >
0batch_normalization_1253_readvariableop_resource: @
2batch_normalization_1253_readvariableop_1_resource: O
Abatch_normalization_1253_fusedbatchnormv3_readvariableop_resource: Q
Cbatch_normalization_1253_fusedbatchnormv3_readvariableop_1_resource: D
*conv2d_1204_conv2d_readvariableop_resource:  9
+conv2d_1204_biasadd_readvariableop_resource: >
0batch_normalization_1254_readvariableop_resource: @
2batch_normalization_1254_readvariableop_1_resource: O
Abatch_normalization_1254_fusedbatchnormv3_readvariableop_resource: Q
Cbatch_normalization_1254_fusedbatchnormv3_readvariableop_1_resource: D
*conv2d_1205_conv2d_readvariableop_resource: @9
+conv2d_1205_biasadd_readvariableop_resource:@>
0batch_normalization_1255_readvariableop_resource:@@
2batch_normalization_1255_readvariableop_1_resource:@O
Abatch_normalization_1255_fusedbatchnormv3_readvariableop_resource:@Q
Cbatch_normalization_1255_fusedbatchnormv3_readvariableop_1_resource:@D
*conv2d_1206_conv2d_readvariableop_resource:@@9
+conv2d_1206_biasadd_readvariableop_resource:@>
0batch_normalization_1256_readvariableop_resource:@@
2batch_normalization_1256_readvariableop_1_resource:@O
Abatch_normalization_1256_fusedbatchnormv3_readvariableop_resource:@Q
Cbatch_normalization_1256_fusedbatchnormv3_readvariableop_1_resource:@<
(dense_152_matmul_readvariableop_resource:
? ?8
)dense_152_biasadd_readvariableop_resource:	?O
@batch_normalization_1257_assignmovingavg_readvariableop_resource:	?Q
Bbatch_normalization_1257_assignmovingavg_1_readvariableop_resource:	?M
>batch_normalization_1257_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_1257_batchnorm_readvariableop_resource:	?;
(dense_153_matmul_readvariableop_resource:	?
7
)dense_153_biasadd_readvariableop_resource:

identity??'batch_normalization_1253/AssignNewValue?)batch_normalization_1253/AssignNewValue_1?8batch_normalization_1253/FusedBatchNormV3/ReadVariableOp?:batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1?'batch_normalization_1253/ReadVariableOp?)batch_normalization_1253/ReadVariableOp_1?'batch_normalization_1254/AssignNewValue?)batch_normalization_1254/AssignNewValue_1?8batch_normalization_1254/FusedBatchNormV3/ReadVariableOp?:batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1?'batch_normalization_1254/ReadVariableOp?)batch_normalization_1254/ReadVariableOp_1?'batch_normalization_1255/AssignNewValue?)batch_normalization_1255/AssignNewValue_1?8batch_normalization_1255/FusedBatchNormV3/ReadVariableOp?:batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1?'batch_normalization_1255/ReadVariableOp?)batch_normalization_1255/ReadVariableOp_1?'batch_normalization_1256/AssignNewValue?)batch_normalization_1256/AssignNewValue_1?8batch_normalization_1256/FusedBatchNormV3/ReadVariableOp?:batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1?'batch_normalization_1256/ReadVariableOp?)batch_normalization_1256/ReadVariableOp_1?(batch_normalization_1257/AssignMovingAvg?7batch_normalization_1257/AssignMovingAvg/ReadVariableOp?*batch_normalization_1257/AssignMovingAvg_1?9batch_normalization_1257/AssignMovingAvg_1/ReadVariableOp?1batch_normalization_1257/batchnorm/ReadVariableOp?5batch_normalization_1257/batchnorm/mul/ReadVariableOp?"conv2d_1203/BiasAdd/ReadVariableOp?!conv2d_1203/Conv2D/ReadVariableOp?"conv2d_1204/BiasAdd/ReadVariableOp?!conv2d_1204/Conv2D/ReadVariableOp?"conv2d_1205/BiasAdd/ReadVariableOp?!conv2d_1205/Conv2D/ReadVariableOp?"conv2d_1206/BiasAdd/ReadVariableOp?!conv2d_1206/Conv2D/ReadVariableOp? dense_152/BiasAdd/ReadVariableOp?dense_152/MatMul/ReadVariableOp? dense_153/BiasAdd/ReadVariableOp?dense_153/MatMul/ReadVariableOp?
!conv2d_1203/Conv2D/ReadVariableOpReadVariableOp*conv2d_1203_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02#
!conv2d_1203/Conv2D/ReadVariableOp?
conv2d_1203/Conv2DConv2Dinputs)conv2d_1203/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_1203/Conv2D?
"conv2d_1203/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1203_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"conv2d_1203/BiasAdd/ReadVariableOp?
conv2d_1203/BiasAddBiasAddconv2d_1203/Conv2D:output:0*conv2d_1203/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_1203/BiasAdd?
activation_1349/ReluReluconv2d_1203/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_1349/Relu?
'batch_normalization_1253/ReadVariableOpReadVariableOp0batch_normalization_1253_readvariableop_resource*
_output_shapes
: *
dtype02)
'batch_normalization_1253/ReadVariableOp?
)batch_normalization_1253/ReadVariableOp_1ReadVariableOp2batch_normalization_1253_readvariableop_1_resource*
_output_shapes
: *
dtype02+
)batch_normalization_1253/ReadVariableOp_1?
8batch_normalization_1253/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1253_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02:
8batch_normalization_1253/FusedBatchNormV3/ReadVariableOp?
:batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1253_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1?
)batch_normalization_1253/FusedBatchNormV3FusedBatchNormV3"activation_1349/Relu:activations:0/batch_normalization_1253/ReadVariableOp:value:01batch_normalization_1253/ReadVariableOp_1:value:0@batch_normalization_1253/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2+
)batch_normalization_1253/FusedBatchNormV3?
'batch_normalization_1253/AssignNewValueAssignVariableOpAbatch_normalization_1253_fusedbatchnormv3_readvariableop_resource6batch_normalization_1253/FusedBatchNormV3:batch_mean:09^batch_normalization_1253/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1253/AssignNewValue?
)batch_normalization_1253/AssignNewValue_1AssignVariableOpCbatch_normalization_1253_fusedbatchnormv3_readvariableop_1_resource:batch_normalization_1253/FusedBatchNormV3:batch_variance:0;^batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02+
)batch_normalization_1253/AssignNewValue_1?
!conv2d_1204/Conv2D/ReadVariableOpReadVariableOp*conv2d_1204_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02#
!conv2d_1204/Conv2D/ReadVariableOp?
conv2d_1204/Conv2DConv2D-batch_normalization_1253/FusedBatchNormV3:y:0)conv2d_1204/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_1204/Conv2D?
"conv2d_1204/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1204_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"conv2d_1204/BiasAdd/ReadVariableOp?
conv2d_1204/BiasAddBiasAddconv2d_1204/Conv2D:output:0*conv2d_1204/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_1204/BiasAdd?
activation_1350/ReluReluconv2d_1204/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_1350/Relu?
'batch_normalization_1254/ReadVariableOpReadVariableOp0batch_normalization_1254_readvariableop_resource*
_output_shapes
: *
dtype02)
'batch_normalization_1254/ReadVariableOp?
)batch_normalization_1254/ReadVariableOp_1ReadVariableOp2batch_normalization_1254_readvariableop_1_resource*
_output_shapes
: *
dtype02+
)batch_normalization_1254/ReadVariableOp_1?
8batch_normalization_1254/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1254_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02:
8batch_normalization_1254/FusedBatchNormV3/ReadVariableOp?
:batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1254_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1?
)batch_normalization_1254/FusedBatchNormV3FusedBatchNormV3"activation_1350/Relu:activations:0/batch_normalization_1254/ReadVariableOp:value:01batch_normalization_1254/ReadVariableOp_1:value:0@batch_normalization_1254/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2+
)batch_normalization_1254/FusedBatchNormV3?
'batch_normalization_1254/AssignNewValueAssignVariableOpAbatch_normalization_1254_fusedbatchnormv3_readvariableop_resource6batch_normalization_1254/FusedBatchNormV3:batch_mean:09^batch_normalization_1254/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1254/AssignNewValue?
)batch_normalization_1254/AssignNewValue_1AssignVariableOpCbatch_normalization_1254_fusedbatchnormv3_readvariableop_1_resource:batch_normalization_1254/FusedBatchNormV3:batch_variance:0;^batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02+
)batch_normalization_1254/AssignNewValue_1?
max_pooling2d_194/MaxPoolMaxPool-batch_normalization_1254/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_194/MaxPool{
dropout_204/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_204/dropout/Const?
dropout_204/dropout/MulMul"max_pooling2d_194/MaxPool:output:0"dropout_204/dropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout_204/dropout/Mul?
dropout_204/dropout/ShapeShape"max_pooling2d_194/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_204/dropout/Shape?
0dropout_204/dropout/random_uniform/RandomUniformRandomUniform"dropout_204/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype022
0dropout_204/dropout/random_uniform/RandomUniform?
"dropout_204/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2$
"dropout_204/dropout/GreaterEqual/y?
 dropout_204/dropout/GreaterEqualGreaterEqual9dropout_204/dropout/random_uniform/RandomUniform:output:0+dropout_204/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2"
 dropout_204/dropout/GreaterEqual?
dropout_204/dropout/CastCast$dropout_204/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout_204/dropout/Cast?
dropout_204/dropout/Mul_1Muldropout_204/dropout/Mul:z:0dropout_204/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout_204/dropout/Mul_1?
!conv2d_1205/Conv2D/ReadVariableOpReadVariableOp*conv2d_1205_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02#
!conv2d_1205/Conv2D/ReadVariableOp?
conv2d_1205/Conv2DConv2Ddropout_204/dropout/Mul_1:z:0)conv2d_1205/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_1205/Conv2D?
"conv2d_1205/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1205_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"conv2d_1205/BiasAdd/ReadVariableOp?
conv2d_1205/BiasAddBiasAddconv2d_1205/Conv2D:output:0*conv2d_1205/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_1205/BiasAdd?
activation_1351/ReluReluconv2d_1205/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_1351/Relu?
'batch_normalization_1255/ReadVariableOpReadVariableOp0batch_normalization_1255_readvariableop_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_1255/ReadVariableOp?
)batch_normalization_1255/ReadVariableOp_1ReadVariableOp2batch_normalization_1255_readvariableop_1_resource*
_output_shapes
:@*
dtype02+
)batch_normalization_1255/ReadVariableOp_1?
8batch_normalization_1255/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1255_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_1255/FusedBatchNormV3/ReadVariableOp?
:batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1255_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02<
:batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1?
)batch_normalization_1255/FusedBatchNormV3FusedBatchNormV3"activation_1351/Relu:activations:0/batch_normalization_1255/ReadVariableOp:value:01batch_normalization_1255/ReadVariableOp_1:value:0@batch_normalization_1255/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2+
)batch_normalization_1255/FusedBatchNormV3?
'batch_normalization_1255/AssignNewValueAssignVariableOpAbatch_normalization_1255_fusedbatchnormv3_readvariableop_resource6batch_normalization_1255/FusedBatchNormV3:batch_mean:09^batch_normalization_1255/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1255/AssignNewValue?
)batch_normalization_1255/AssignNewValue_1AssignVariableOpCbatch_normalization_1255_fusedbatchnormv3_readvariableop_1_resource:batch_normalization_1255/FusedBatchNormV3:batch_variance:0;^batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02+
)batch_normalization_1255/AssignNewValue_1?
!conv2d_1206/Conv2D/ReadVariableOpReadVariableOp*conv2d_1206_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02#
!conv2d_1206/Conv2D/ReadVariableOp?
conv2d_1206/Conv2DConv2D-batch_normalization_1255/FusedBatchNormV3:y:0)conv2d_1206/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_1206/Conv2D?
"conv2d_1206/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1206_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"conv2d_1206/BiasAdd/ReadVariableOp?
conv2d_1206/BiasAddBiasAddconv2d_1206/Conv2D:output:0*conv2d_1206/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_1206/BiasAdd?
activation_1352/ReluReluconv2d_1206/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_1352/Relu?
'batch_normalization_1256/ReadVariableOpReadVariableOp0batch_normalization_1256_readvariableop_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_1256/ReadVariableOp?
)batch_normalization_1256/ReadVariableOp_1ReadVariableOp2batch_normalization_1256_readvariableop_1_resource*
_output_shapes
:@*
dtype02+
)batch_normalization_1256/ReadVariableOp_1?
8batch_normalization_1256/FusedBatchNormV3/ReadVariableOpReadVariableOpAbatch_normalization_1256_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_1256/FusedBatchNormV3/ReadVariableOp?
:batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCbatch_normalization_1256_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02<
:batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1?
)batch_normalization_1256/FusedBatchNormV3FusedBatchNormV3"activation_1352/Relu:activations:0/batch_normalization_1256/ReadVariableOp:value:01batch_normalization_1256/ReadVariableOp_1:value:0@batch_normalization_1256/FusedBatchNormV3/ReadVariableOp:value:0Bbatch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2+
)batch_normalization_1256/FusedBatchNormV3?
'batch_normalization_1256/AssignNewValueAssignVariableOpAbatch_normalization_1256_fusedbatchnormv3_readvariableop_resource6batch_normalization_1256/FusedBatchNormV3:batch_mean:09^batch_normalization_1256/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1256/AssignNewValue?
)batch_normalization_1256/AssignNewValue_1AssignVariableOpCbatch_normalization_1256_fusedbatchnormv3_readvariableop_1_resource:batch_normalization_1256/FusedBatchNormV3:batch_variance:0;^batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02+
)batch_normalization_1256/AssignNewValue_1?
max_pooling2d_195/MaxPoolMaxPool-batch_normalization_1256/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_195/MaxPool{
dropout_205/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_205/dropout/Const?
dropout_205/dropout/MulMul"max_pooling2d_195/MaxPool:output:0"dropout_205/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_205/dropout/Mul?
dropout_205/dropout/ShapeShape"max_pooling2d_195/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_205/dropout/Shape?
0dropout_205/dropout/random_uniform/RandomUniformRandomUniform"dropout_205/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype022
0dropout_205/dropout/random_uniform/RandomUniform?
"dropout_205/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2$
"dropout_205/dropout/GreaterEqual/y?
 dropout_205/dropout/GreaterEqualGreaterEqual9dropout_205/dropout/random_uniform/RandomUniform:output:0+dropout_205/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2"
 dropout_205/dropout/GreaterEqual?
dropout_205/dropout/CastCast$dropout_205/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_205/dropout/Cast?
dropout_205/dropout/Mul_1Muldropout_205/dropout/Mul:z:0dropout_205/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_205/dropout/Mul_1u
flatten_98/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_98/Const?
flatten_98/ReshapeReshapedropout_205/dropout/Mul_1:z:0flatten_98/Const:output:0*
T0*(
_output_shapes
:?????????? 2
flatten_98/Reshape?
dense_152/MatMul/ReadVariableOpReadVariableOp(dense_152_matmul_readvariableop_resource* 
_output_shapes
:
? ?*
dtype02!
dense_152/MatMul/ReadVariableOp?
dense_152/MatMulMatMulflatten_98/Reshape:output:0'dense_152/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_152/MatMul?
 dense_152/BiasAdd/ReadVariableOpReadVariableOp)dense_152_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_152/BiasAdd/ReadVariableOp?
dense_152/BiasAddBiasAdddense_152/MatMul:product:0(dense_152/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_152/BiasAdd?
activation_1353/ReluReludense_152/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
activation_1353/Relu?
7batch_normalization_1257/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 29
7batch_normalization_1257/moments/mean/reduction_indices?
%batch_normalization_1257/moments/meanMean"activation_1353/Relu:activations:0@batch_normalization_1257/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2'
%batch_normalization_1257/moments/mean?
-batch_normalization_1257/moments/StopGradientStopGradient.batch_normalization_1257/moments/mean:output:0*
T0*
_output_shapes
:	?2/
-batch_normalization_1257/moments/StopGradient?
2batch_normalization_1257/moments/SquaredDifferenceSquaredDifference"activation_1353/Relu:activations:06batch_normalization_1257/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????24
2batch_normalization_1257/moments/SquaredDifference?
;batch_normalization_1257/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2=
;batch_normalization_1257/moments/variance/reduction_indices?
)batch_normalization_1257/moments/varianceMean6batch_normalization_1257/moments/SquaredDifference:z:0Dbatch_normalization_1257/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2+
)batch_normalization_1257/moments/variance?
(batch_normalization_1257/moments/SqueezeSqueeze.batch_normalization_1257/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_1257/moments/Squeeze?
*batch_normalization_1257/moments/Squeeze_1Squeeze2batch_normalization_1257/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2,
*batch_normalization_1257/moments/Squeeze_1?
.batch_normalization_1257/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_1257/AssignMovingAvg/decay?
7batch_normalization_1257/AssignMovingAvg/ReadVariableOpReadVariableOp@batch_normalization_1257_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_1257/AssignMovingAvg/ReadVariableOp?
,batch_normalization_1257/AssignMovingAvg/subSub?batch_normalization_1257/AssignMovingAvg/ReadVariableOp:value:01batch_normalization_1257/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_1257/AssignMovingAvg/sub?
,batch_normalization_1257/AssignMovingAvg/mulMul0batch_normalization_1257/AssignMovingAvg/sub:z:07batch_normalization_1257/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_1257/AssignMovingAvg/mul?
(batch_normalization_1257/AssignMovingAvgAssignSubVariableOp@batch_normalization_1257_assignmovingavg_readvariableop_resource0batch_normalization_1257/AssignMovingAvg/mul:z:08^batch_normalization_1257/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_1257/AssignMovingAvg?
0batch_normalization_1257/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<22
0batch_normalization_1257/AssignMovingAvg_1/decay?
9batch_normalization_1257/AssignMovingAvg_1/ReadVariableOpReadVariableOpBbatch_normalization_1257_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_1257/AssignMovingAvg_1/ReadVariableOp?
.batch_normalization_1257/AssignMovingAvg_1/subSubAbatch_normalization_1257/AssignMovingAvg_1/ReadVariableOp:value:03batch_normalization_1257/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?20
.batch_normalization_1257/AssignMovingAvg_1/sub?
.batch_normalization_1257/AssignMovingAvg_1/mulMul2batch_normalization_1257/AssignMovingAvg_1/sub:z:09batch_normalization_1257/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?20
.batch_normalization_1257/AssignMovingAvg_1/mul?
*batch_normalization_1257/AssignMovingAvg_1AssignSubVariableOpBbatch_normalization_1257_assignmovingavg_1_readvariableop_resource2batch_normalization_1257/AssignMovingAvg_1/mul:z:0:^batch_normalization_1257/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02,
*batch_normalization_1257/AssignMovingAvg_1?
(batch_normalization_1257/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2*
(batch_normalization_1257/batchnorm/add/y?
&batch_normalization_1257/batchnorm/addAddV23batch_normalization_1257/moments/Squeeze_1:output:01batch_normalization_1257/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2(
&batch_normalization_1257/batchnorm/add?
(batch_normalization_1257/batchnorm/RsqrtRsqrt*batch_normalization_1257/batchnorm/add:z:0*
T0*
_output_shapes	
:?2*
(batch_normalization_1257/batchnorm/Rsqrt?
5batch_normalization_1257/batchnorm/mul/ReadVariableOpReadVariableOp>batch_normalization_1257_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_1257/batchnorm/mul/ReadVariableOp?
&batch_normalization_1257/batchnorm/mulMul,batch_normalization_1257/batchnorm/Rsqrt:y:0=batch_normalization_1257/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2(
&batch_normalization_1257/batchnorm/mul?
(batch_normalization_1257/batchnorm/mul_1Mul"activation_1353/Relu:activations:0*batch_normalization_1257/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2*
(batch_normalization_1257/batchnorm/mul_1?
(batch_normalization_1257/batchnorm/mul_2Mul1batch_normalization_1257/moments/Squeeze:output:0*batch_normalization_1257/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2*
(batch_normalization_1257/batchnorm/mul_2?
1batch_normalization_1257/batchnorm/ReadVariableOpReadVariableOp:batch_normalization_1257_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_1257/batchnorm/ReadVariableOp?
&batch_normalization_1257/batchnorm/subSub9batch_normalization_1257/batchnorm/ReadVariableOp:value:0,batch_normalization_1257/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_1257/batchnorm/sub?
(batch_normalization_1257/batchnorm/add_1AddV2,batch_normalization_1257/batchnorm/mul_1:z:0*batch_normalization_1257/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2*
(batch_normalization_1257/batchnorm/add_1{
dropout_206/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_206/dropout/Const?
dropout_206/dropout/MulMul,batch_normalization_1257/batchnorm/add_1:z:0"dropout_206/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_206/dropout/Mul?
dropout_206/dropout/ShapeShape,batch_normalization_1257/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_206/dropout/Shape?
0dropout_206/dropout/random_uniform/RandomUniformRandomUniform"dropout_206/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype022
0dropout_206/dropout/random_uniform/RandomUniform?
"dropout_206/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_206/dropout/GreaterEqual/y?
 dropout_206/dropout/GreaterEqualGreaterEqual9dropout_206/dropout/random_uniform/RandomUniform:output:0+dropout_206/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 dropout_206/dropout/GreaterEqual?
dropout_206/dropout/CastCast$dropout_206/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_206/dropout/Cast?
dropout_206/dropout/Mul_1Muldropout_206/dropout/Mul:z:0dropout_206/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_206/dropout/Mul_1?
dense_153/MatMul/ReadVariableOpReadVariableOp(dense_153_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_153/MatMul/ReadVariableOp?
dense_153/MatMulMatMuldropout_206/dropout/Mul_1:z:0'dense_153/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_153/MatMul?
 dense_153/BiasAdd/ReadVariableOpReadVariableOp)dense_153_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_153/BiasAdd/ReadVariableOp?
dense_153/BiasAddBiasAdddense_153/MatMul:product:0(dense_153/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_153/BiasAdd?
activation_1354/SoftmaxSoftmaxdense_153/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_1354/Softmax?
IdentityIdentity!activation_1354/Softmax:softmax:0(^batch_normalization_1253/AssignNewValue*^batch_normalization_1253/AssignNewValue_19^batch_normalization_1253/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1253/ReadVariableOp*^batch_normalization_1253/ReadVariableOp_1(^batch_normalization_1254/AssignNewValue*^batch_normalization_1254/AssignNewValue_19^batch_normalization_1254/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1254/ReadVariableOp*^batch_normalization_1254/ReadVariableOp_1(^batch_normalization_1255/AssignNewValue*^batch_normalization_1255/AssignNewValue_19^batch_normalization_1255/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1255/ReadVariableOp*^batch_normalization_1255/ReadVariableOp_1(^batch_normalization_1256/AssignNewValue*^batch_normalization_1256/AssignNewValue_19^batch_normalization_1256/FusedBatchNormV3/ReadVariableOp;^batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1(^batch_normalization_1256/ReadVariableOp*^batch_normalization_1256/ReadVariableOp_1)^batch_normalization_1257/AssignMovingAvg8^batch_normalization_1257/AssignMovingAvg/ReadVariableOp+^batch_normalization_1257/AssignMovingAvg_1:^batch_normalization_1257/AssignMovingAvg_1/ReadVariableOp2^batch_normalization_1257/batchnorm/ReadVariableOp6^batch_normalization_1257/batchnorm/mul/ReadVariableOp#^conv2d_1203/BiasAdd/ReadVariableOp"^conv2d_1203/Conv2D/ReadVariableOp#^conv2d_1204/BiasAdd/ReadVariableOp"^conv2d_1204/Conv2D/ReadVariableOp#^conv2d_1205/BiasAdd/ReadVariableOp"^conv2d_1205/Conv2D/ReadVariableOp#^conv2d_1206/BiasAdd/ReadVariableOp"^conv2d_1206/Conv2D/ReadVariableOp!^dense_152/BiasAdd/ReadVariableOp ^dense_152/MatMul/ReadVariableOp!^dense_153/BiasAdd/ReadVariableOp ^dense_153/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'batch_normalization_1253/AssignNewValue'batch_normalization_1253/AssignNewValue2V
)batch_normalization_1253/AssignNewValue_1)batch_normalization_1253/AssignNewValue_12t
8batch_normalization_1253/FusedBatchNormV3/ReadVariableOp8batch_normalization_1253/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1253/ReadVariableOp'batch_normalization_1253/ReadVariableOp2V
)batch_normalization_1253/ReadVariableOp_1)batch_normalization_1253/ReadVariableOp_12R
'batch_normalization_1254/AssignNewValue'batch_normalization_1254/AssignNewValue2V
)batch_normalization_1254/AssignNewValue_1)batch_normalization_1254/AssignNewValue_12t
8batch_normalization_1254/FusedBatchNormV3/ReadVariableOp8batch_normalization_1254/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1254/ReadVariableOp'batch_normalization_1254/ReadVariableOp2V
)batch_normalization_1254/ReadVariableOp_1)batch_normalization_1254/ReadVariableOp_12R
'batch_normalization_1255/AssignNewValue'batch_normalization_1255/AssignNewValue2V
)batch_normalization_1255/AssignNewValue_1)batch_normalization_1255/AssignNewValue_12t
8batch_normalization_1255/FusedBatchNormV3/ReadVariableOp8batch_normalization_1255/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1255/ReadVariableOp'batch_normalization_1255/ReadVariableOp2V
)batch_normalization_1255/ReadVariableOp_1)batch_normalization_1255/ReadVariableOp_12R
'batch_normalization_1256/AssignNewValue'batch_normalization_1256/AssignNewValue2V
)batch_normalization_1256/AssignNewValue_1)batch_normalization_1256/AssignNewValue_12t
8batch_normalization_1256/FusedBatchNormV3/ReadVariableOp8batch_normalization_1256/FusedBatchNormV3/ReadVariableOp2x
:batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1:batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_12R
'batch_normalization_1256/ReadVariableOp'batch_normalization_1256/ReadVariableOp2V
)batch_normalization_1256/ReadVariableOp_1)batch_normalization_1256/ReadVariableOp_12T
(batch_normalization_1257/AssignMovingAvg(batch_normalization_1257/AssignMovingAvg2r
7batch_normalization_1257/AssignMovingAvg/ReadVariableOp7batch_normalization_1257/AssignMovingAvg/ReadVariableOp2X
*batch_normalization_1257/AssignMovingAvg_1*batch_normalization_1257/AssignMovingAvg_12v
9batch_normalization_1257/AssignMovingAvg_1/ReadVariableOp9batch_normalization_1257/AssignMovingAvg_1/ReadVariableOp2f
1batch_normalization_1257/batchnorm/ReadVariableOp1batch_normalization_1257/batchnorm/ReadVariableOp2n
5batch_normalization_1257/batchnorm/mul/ReadVariableOp5batch_normalization_1257/batchnorm/mul/ReadVariableOp2H
"conv2d_1203/BiasAdd/ReadVariableOp"conv2d_1203/BiasAdd/ReadVariableOp2F
!conv2d_1203/Conv2D/ReadVariableOp!conv2d_1203/Conv2D/ReadVariableOp2H
"conv2d_1204/BiasAdd/ReadVariableOp"conv2d_1204/BiasAdd/ReadVariableOp2F
!conv2d_1204/Conv2D/ReadVariableOp!conv2d_1204/Conv2D/ReadVariableOp2H
"conv2d_1205/BiasAdd/ReadVariableOp"conv2d_1205/BiasAdd/ReadVariableOp2F
!conv2d_1205/Conv2D/ReadVariableOp!conv2d_1205/Conv2D/ReadVariableOp2H
"conv2d_1206/BiasAdd/ReadVariableOp"conv2d_1206/BiasAdd/ReadVariableOp2F
!conv2d_1206/Conv2D/ReadVariableOp!conv2d_1206/Conv2D/ReadVariableOp2D
 dense_152/BiasAdd/ReadVariableOp dense_152/BiasAdd/ReadVariableOp2B
dense_152/MatMul/ReadVariableOpdense_152/MatMul/ReadVariableOp2D
 dense_153/BiasAdd/ReadVariableOp dense_153/BiasAdd/ReadVariableOp2B
dense_153/MatMul/ReadVariableOpdense_153/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
??
?#
"__inference__wrapped_model_4453285
conv2d_1203_inputO
5minivggnet_conv2d_1203_conv2d_readvariableop_resource: D
6minivggnet_conv2d_1203_biasadd_readvariableop_resource: I
;minivggnet_batch_normalization_1253_readvariableop_resource: K
=minivggnet_batch_normalization_1253_readvariableop_1_resource: Z
Lminivggnet_batch_normalization_1253_fusedbatchnormv3_readvariableop_resource: \
Nminivggnet_batch_normalization_1253_fusedbatchnormv3_readvariableop_1_resource: O
5minivggnet_conv2d_1204_conv2d_readvariableop_resource:  D
6minivggnet_conv2d_1204_biasadd_readvariableop_resource: I
;minivggnet_batch_normalization_1254_readvariableop_resource: K
=minivggnet_batch_normalization_1254_readvariableop_1_resource: Z
Lminivggnet_batch_normalization_1254_fusedbatchnormv3_readvariableop_resource: \
Nminivggnet_batch_normalization_1254_fusedbatchnormv3_readvariableop_1_resource: O
5minivggnet_conv2d_1205_conv2d_readvariableop_resource: @D
6minivggnet_conv2d_1205_biasadd_readvariableop_resource:@I
;minivggnet_batch_normalization_1255_readvariableop_resource:@K
=minivggnet_batch_normalization_1255_readvariableop_1_resource:@Z
Lminivggnet_batch_normalization_1255_fusedbatchnormv3_readvariableop_resource:@\
Nminivggnet_batch_normalization_1255_fusedbatchnormv3_readvariableop_1_resource:@O
5minivggnet_conv2d_1206_conv2d_readvariableop_resource:@@D
6minivggnet_conv2d_1206_biasadd_readvariableop_resource:@I
;minivggnet_batch_normalization_1256_readvariableop_resource:@K
=minivggnet_batch_normalization_1256_readvariableop_1_resource:@Z
Lminivggnet_batch_normalization_1256_fusedbatchnormv3_readvariableop_resource:@\
Nminivggnet_batch_normalization_1256_fusedbatchnormv3_readvariableop_1_resource:@G
3minivggnet_dense_152_matmul_readvariableop_resource:
? ?C
4minivggnet_dense_152_biasadd_readvariableop_resource:	?T
Eminivggnet_batch_normalization_1257_batchnorm_readvariableop_resource:	?X
Iminivggnet_batch_normalization_1257_batchnorm_mul_readvariableop_resource:	?V
Gminivggnet_batch_normalization_1257_batchnorm_readvariableop_1_resource:	?V
Gminivggnet_batch_normalization_1257_batchnorm_readvariableop_2_resource:	?F
3minivggnet_dense_153_matmul_readvariableop_resource:	?
B
4minivggnet_dense_153_biasadd_readvariableop_resource:

identity??CMiniVGGNet/batch_normalization_1253/FusedBatchNormV3/ReadVariableOp?EMiniVGGNet/batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1?2MiniVGGNet/batch_normalization_1253/ReadVariableOp?4MiniVGGNet/batch_normalization_1253/ReadVariableOp_1?CMiniVGGNet/batch_normalization_1254/FusedBatchNormV3/ReadVariableOp?EMiniVGGNet/batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1?2MiniVGGNet/batch_normalization_1254/ReadVariableOp?4MiniVGGNet/batch_normalization_1254/ReadVariableOp_1?CMiniVGGNet/batch_normalization_1255/FusedBatchNormV3/ReadVariableOp?EMiniVGGNet/batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1?2MiniVGGNet/batch_normalization_1255/ReadVariableOp?4MiniVGGNet/batch_normalization_1255/ReadVariableOp_1?CMiniVGGNet/batch_normalization_1256/FusedBatchNormV3/ReadVariableOp?EMiniVGGNet/batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1?2MiniVGGNet/batch_normalization_1256/ReadVariableOp?4MiniVGGNet/batch_normalization_1256/ReadVariableOp_1?<MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp?>MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp_1?>MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp_2?@MiniVGGNet/batch_normalization_1257/batchnorm/mul/ReadVariableOp?-MiniVGGNet/conv2d_1203/BiasAdd/ReadVariableOp?,MiniVGGNet/conv2d_1203/Conv2D/ReadVariableOp?-MiniVGGNet/conv2d_1204/BiasAdd/ReadVariableOp?,MiniVGGNet/conv2d_1204/Conv2D/ReadVariableOp?-MiniVGGNet/conv2d_1205/BiasAdd/ReadVariableOp?,MiniVGGNet/conv2d_1205/Conv2D/ReadVariableOp?-MiniVGGNet/conv2d_1206/BiasAdd/ReadVariableOp?,MiniVGGNet/conv2d_1206/Conv2D/ReadVariableOp?+MiniVGGNet/dense_152/BiasAdd/ReadVariableOp?*MiniVGGNet/dense_152/MatMul/ReadVariableOp?+MiniVGGNet/dense_153/BiasAdd/ReadVariableOp?*MiniVGGNet/dense_153/MatMul/ReadVariableOp?
,MiniVGGNet/conv2d_1203/Conv2D/ReadVariableOpReadVariableOp5minivggnet_conv2d_1203_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,MiniVGGNet/conv2d_1203/Conv2D/ReadVariableOp?
MiniVGGNet/conv2d_1203/Conv2DConv2Dconv2d_1203_input4MiniVGGNet/conv2d_1203/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
MiniVGGNet/conv2d_1203/Conv2D?
-MiniVGGNet/conv2d_1203/BiasAdd/ReadVariableOpReadVariableOp6minivggnet_conv2d_1203_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-MiniVGGNet/conv2d_1203/BiasAdd/ReadVariableOp?
MiniVGGNet/conv2d_1203/BiasAddBiasAdd&MiniVGGNet/conv2d_1203/Conv2D:output:05MiniVGGNet/conv2d_1203/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2 
MiniVGGNet/conv2d_1203/BiasAdd?
MiniVGGNet/activation_1349/ReluRelu'MiniVGGNet/conv2d_1203/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2!
MiniVGGNet/activation_1349/Relu?
2MiniVGGNet/batch_normalization_1253/ReadVariableOpReadVariableOp;minivggnet_batch_normalization_1253_readvariableop_resource*
_output_shapes
: *
dtype024
2MiniVGGNet/batch_normalization_1253/ReadVariableOp?
4MiniVGGNet/batch_normalization_1253/ReadVariableOp_1ReadVariableOp=minivggnet_batch_normalization_1253_readvariableop_1_resource*
_output_shapes
: *
dtype026
4MiniVGGNet/batch_normalization_1253/ReadVariableOp_1?
CMiniVGGNet/batch_normalization_1253/FusedBatchNormV3/ReadVariableOpReadVariableOpLminivggnet_batch_normalization_1253_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02E
CMiniVGGNet/batch_normalization_1253/FusedBatchNormV3/ReadVariableOp?
EMiniVGGNet/batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNminivggnet_batch_normalization_1253_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02G
EMiniVGGNet/batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1?
4MiniVGGNet/batch_normalization_1253/FusedBatchNormV3FusedBatchNormV3-MiniVGGNet/activation_1349/Relu:activations:0:MiniVGGNet/batch_normalization_1253/ReadVariableOp:value:0<MiniVGGNet/batch_normalization_1253/ReadVariableOp_1:value:0KMiniVGGNet/batch_normalization_1253/FusedBatchNormV3/ReadVariableOp:value:0MMiniVGGNet/batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( 26
4MiniVGGNet/batch_normalization_1253/FusedBatchNormV3?
,MiniVGGNet/conv2d_1204/Conv2D/ReadVariableOpReadVariableOp5minivggnet_conv2d_1204_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02.
,MiniVGGNet/conv2d_1204/Conv2D/ReadVariableOp?
MiniVGGNet/conv2d_1204/Conv2DConv2D8MiniVGGNet/batch_normalization_1253/FusedBatchNormV3:y:04MiniVGGNet/conv2d_1204/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
MiniVGGNet/conv2d_1204/Conv2D?
-MiniVGGNet/conv2d_1204/BiasAdd/ReadVariableOpReadVariableOp6minivggnet_conv2d_1204_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-MiniVGGNet/conv2d_1204/BiasAdd/ReadVariableOp?
MiniVGGNet/conv2d_1204/BiasAddBiasAdd&MiniVGGNet/conv2d_1204/Conv2D:output:05MiniVGGNet/conv2d_1204/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2 
MiniVGGNet/conv2d_1204/BiasAdd?
MiniVGGNet/activation_1350/ReluRelu'MiniVGGNet/conv2d_1204/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2!
MiniVGGNet/activation_1350/Relu?
2MiniVGGNet/batch_normalization_1254/ReadVariableOpReadVariableOp;minivggnet_batch_normalization_1254_readvariableop_resource*
_output_shapes
: *
dtype024
2MiniVGGNet/batch_normalization_1254/ReadVariableOp?
4MiniVGGNet/batch_normalization_1254/ReadVariableOp_1ReadVariableOp=minivggnet_batch_normalization_1254_readvariableop_1_resource*
_output_shapes
: *
dtype026
4MiniVGGNet/batch_normalization_1254/ReadVariableOp_1?
CMiniVGGNet/batch_normalization_1254/FusedBatchNormV3/ReadVariableOpReadVariableOpLminivggnet_batch_normalization_1254_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02E
CMiniVGGNet/batch_normalization_1254/FusedBatchNormV3/ReadVariableOp?
EMiniVGGNet/batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNminivggnet_batch_normalization_1254_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02G
EMiniVGGNet/batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1?
4MiniVGGNet/batch_normalization_1254/FusedBatchNormV3FusedBatchNormV3-MiniVGGNet/activation_1350/Relu:activations:0:MiniVGGNet/batch_normalization_1254/ReadVariableOp:value:0<MiniVGGNet/batch_normalization_1254/ReadVariableOp_1:value:0KMiniVGGNet/batch_normalization_1254/FusedBatchNormV3/ReadVariableOp:value:0MMiniVGGNet/batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( 26
4MiniVGGNet/batch_normalization_1254/FusedBatchNormV3?
$MiniVGGNet/max_pooling2d_194/MaxPoolMaxPool8MiniVGGNet/batch_normalization_1254/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2&
$MiniVGGNet/max_pooling2d_194/MaxPool?
MiniVGGNet/dropout_204/IdentityIdentity-MiniVGGNet/max_pooling2d_194/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2!
MiniVGGNet/dropout_204/Identity?
,MiniVGGNet/conv2d_1205/Conv2D/ReadVariableOpReadVariableOp5minivggnet_conv2d_1205_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,MiniVGGNet/conv2d_1205/Conv2D/ReadVariableOp?
MiniVGGNet/conv2d_1205/Conv2DConv2D(MiniVGGNet/dropout_204/Identity:output:04MiniVGGNet/conv2d_1205/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
MiniVGGNet/conv2d_1205/Conv2D?
-MiniVGGNet/conv2d_1205/BiasAdd/ReadVariableOpReadVariableOp6minivggnet_conv2d_1205_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-MiniVGGNet/conv2d_1205/BiasAdd/ReadVariableOp?
MiniVGGNet/conv2d_1205/BiasAddBiasAdd&MiniVGGNet/conv2d_1205/Conv2D:output:05MiniVGGNet/conv2d_1205/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2 
MiniVGGNet/conv2d_1205/BiasAdd?
MiniVGGNet/activation_1351/ReluRelu'MiniVGGNet/conv2d_1205/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2!
MiniVGGNet/activation_1351/Relu?
2MiniVGGNet/batch_normalization_1255/ReadVariableOpReadVariableOp;minivggnet_batch_normalization_1255_readvariableop_resource*
_output_shapes
:@*
dtype024
2MiniVGGNet/batch_normalization_1255/ReadVariableOp?
4MiniVGGNet/batch_normalization_1255/ReadVariableOp_1ReadVariableOp=minivggnet_batch_normalization_1255_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4MiniVGGNet/batch_normalization_1255/ReadVariableOp_1?
CMiniVGGNet/batch_normalization_1255/FusedBatchNormV3/ReadVariableOpReadVariableOpLminivggnet_batch_normalization_1255_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
CMiniVGGNet/batch_normalization_1255/FusedBatchNormV3/ReadVariableOp?
EMiniVGGNet/batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNminivggnet_batch_normalization_1255_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
EMiniVGGNet/batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1?
4MiniVGGNet/batch_normalization_1255/FusedBatchNormV3FusedBatchNormV3-MiniVGGNet/activation_1351/Relu:activations:0:MiniVGGNet/batch_normalization_1255/ReadVariableOp:value:0<MiniVGGNet/batch_normalization_1255/ReadVariableOp_1:value:0KMiniVGGNet/batch_normalization_1255/FusedBatchNormV3/ReadVariableOp:value:0MMiniVGGNet/batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 26
4MiniVGGNet/batch_normalization_1255/FusedBatchNormV3?
,MiniVGGNet/conv2d_1206/Conv2D/ReadVariableOpReadVariableOp5minivggnet_conv2d_1206_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,MiniVGGNet/conv2d_1206/Conv2D/ReadVariableOp?
MiniVGGNet/conv2d_1206/Conv2DConv2D8MiniVGGNet/batch_normalization_1255/FusedBatchNormV3:y:04MiniVGGNet/conv2d_1206/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
MiniVGGNet/conv2d_1206/Conv2D?
-MiniVGGNet/conv2d_1206/BiasAdd/ReadVariableOpReadVariableOp6minivggnet_conv2d_1206_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-MiniVGGNet/conv2d_1206/BiasAdd/ReadVariableOp?
MiniVGGNet/conv2d_1206/BiasAddBiasAdd&MiniVGGNet/conv2d_1206/Conv2D:output:05MiniVGGNet/conv2d_1206/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2 
MiniVGGNet/conv2d_1206/BiasAdd?
MiniVGGNet/activation_1352/ReluRelu'MiniVGGNet/conv2d_1206/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2!
MiniVGGNet/activation_1352/Relu?
2MiniVGGNet/batch_normalization_1256/ReadVariableOpReadVariableOp;minivggnet_batch_normalization_1256_readvariableop_resource*
_output_shapes
:@*
dtype024
2MiniVGGNet/batch_normalization_1256/ReadVariableOp?
4MiniVGGNet/batch_normalization_1256/ReadVariableOp_1ReadVariableOp=minivggnet_batch_normalization_1256_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4MiniVGGNet/batch_normalization_1256/ReadVariableOp_1?
CMiniVGGNet/batch_normalization_1256/FusedBatchNormV3/ReadVariableOpReadVariableOpLminivggnet_batch_normalization_1256_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
CMiniVGGNet/batch_normalization_1256/FusedBatchNormV3/ReadVariableOp?
EMiniVGGNet/batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNminivggnet_batch_normalization_1256_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
EMiniVGGNet/batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1?
4MiniVGGNet/batch_normalization_1256/FusedBatchNormV3FusedBatchNormV3-MiniVGGNet/activation_1352/Relu:activations:0:MiniVGGNet/batch_normalization_1256/ReadVariableOp:value:0<MiniVGGNet/batch_normalization_1256/ReadVariableOp_1:value:0KMiniVGGNet/batch_normalization_1256/FusedBatchNormV3/ReadVariableOp:value:0MMiniVGGNet/batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 26
4MiniVGGNet/batch_normalization_1256/FusedBatchNormV3?
$MiniVGGNet/max_pooling2d_195/MaxPoolMaxPool8MiniVGGNet/batch_normalization_1256/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2&
$MiniVGGNet/max_pooling2d_195/MaxPool?
MiniVGGNet/dropout_205/IdentityIdentity-MiniVGGNet/max_pooling2d_195/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2!
MiniVGGNet/dropout_205/Identity?
MiniVGGNet/flatten_98/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
MiniVGGNet/flatten_98/Const?
MiniVGGNet/flatten_98/ReshapeReshape(MiniVGGNet/dropout_205/Identity:output:0$MiniVGGNet/flatten_98/Const:output:0*
T0*(
_output_shapes
:?????????? 2
MiniVGGNet/flatten_98/Reshape?
*MiniVGGNet/dense_152/MatMul/ReadVariableOpReadVariableOp3minivggnet_dense_152_matmul_readvariableop_resource* 
_output_shapes
:
? ?*
dtype02,
*MiniVGGNet/dense_152/MatMul/ReadVariableOp?
MiniVGGNet/dense_152/MatMulMatMul&MiniVGGNet/flatten_98/Reshape:output:02MiniVGGNet/dense_152/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MiniVGGNet/dense_152/MatMul?
+MiniVGGNet/dense_152/BiasAdd/ReadVariableOpReadVariableOp4minivggnet_dense_152_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+MiniVGGNet/dense_152/BiasAdd/ReadVariableOp?
MiniVGGNet/dense_152/BiasAddBiasAdd%MiniVGGNet/dense_152/MatMul:product:03MiniVGGNet/dense_152/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MiniVGGNet/dense_152/BiasAdd?
MiniVGGNet/activation_1353/ReluRelu%MiniVGGNet/dense_152/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
MiniVGGNet/activation_1353/Relu?
<MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOpReadVariableOpEminivggnet_batch_normalization_1257_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp?
3MiniVGGNet/batch_normalization_1257/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:25
3MiniVGGNet/batch_normalization_1257/batchnorm/add/y?
1MiniVGGNet/batch_normalization_1257/batchnorm/addAddV2DMiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp:value:0<MiniVGGNet/batch_normalization_1257/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?23
1MiniVGGNet/batch_normalization_1257/batchnorm/add?
3MiniVGGNet/batch_normalization_1257/batchnorm/RsqrtRsqrt5MiniVGGNet/batch_normalization_1257/batchnorm/add:z:0*
T0*
_output_shapes	
:?25
3MiniVGGNet/batch_normalization_1257/batchnorm/Rsqrt?
@MiniVGGNet/batch_normalization_1257/batchnorm/mul/ReadVariableOpReadVariableOpIminivggnet_batch_normalization_1257_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@MiniVGGNet/batch_normalization_1257/batchnorm/mul/ReadVariableOp?
1MiniVGGNet/batch_normalization_1257/batchnorm/mulMul7MiniVGGNet/batch_normalization_1257/batchnorm/Rsqrt:y:0HMiniVGGNet/batch_normalization_1257/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?23
1MiniVGGNet/batch_normalization_1257/batchnorm/mul?
3MiniVGGNet/batch_normalization_1257/batchnorm/mul_1Mul-MiniVGGNet/activation_1353/Relu:activations:05MiniVGGNet/batch_normalization_1257/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????25
3MiniVGGNet/batch_normalization_1257/batchnorm/mul_1?
>MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp_1ReadVariableOpGminivggnet_batch_normalization_1257_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02@
>MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp_1?
3MiniVGGNet/batch_normalization_1257/batchnorm/mul_2MulFMiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp_1:value:05MiniVGGNet/batch_normalization_1257/batchnorm/mul:z:0*
T0*
_output_shapes	
:?25
3MiniVGGNet/batch_normalization_1257/batchnorm/mul_2?
>MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp_2ReadVariableOpGminivggnet_batch_normalization_1257_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02@
>MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp_2?
1MiniVGGNet/batch_normalization_1257/batchnorm/subSubFMiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp_2:value:07MiniVGGNet/batch_normalization_1257/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?23
1MiniVGGNet/batch_normalization_1257/batchnorm/sub?
3MiniVGGNet/batch_normalization_1257/batchnorm/add_1AddV27MiniVGGNet/batch_normalization_1257/batchnorm/mul_1:z:05MiniVGGNet/batch_normalization_1257/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????25
3MiniVGGNet/batch_normalization_1257/batchnorm/add_1?
MiniVGGNet/dropout_206/IdentityIdentity7MiniVGGNet/batch_normalization_1257/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2!
MiniVGGNet/dropout_206/Identity?
*MiniVGGNet/dense_153/MatMul/ReadVariableOpReadVariableOp3minivggnet_dense_153_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02,
*MiniVGGNet/dense_153/MatMul/ReadVariableOp?
MiniVGGNet/dense_153/MatMulMatMul(MiniVGGNet/dropout_206/Identity:output:02MiniVGGNet/dense_153/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MiniVGGNet/dense_153/MatMul?
+MiniVGGNet/dense_153/BiasAdd/ReadVariableOpReadVariableOp4minivggnet_dense_153_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+MiniVGGNet/dense_153/BiasAdd/ReadVariableOp?
MiniVGGNet/dense_153/BiasAddBiasAdd%MiniVGGNet/dense_153/MatMul:product:03MiniVGGNet/dense_153/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MiniVGGNet/dense_153/BiasAdd?
"MiniVGGNet/activation_1354/SoftmaxSoftmax%MiniVGGNet/dense_153/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2$
"MiniVGGNet/activation_1354/Softmax?
IdentityIdentity,MiniVGGNet/activation_1354/Softmax:softmax:0D^MiniVGGNet/batch_normalization_1253/FusedBatchNormV3/ReadVariableOpF^MiniVGGNet/batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_13^MiniVGGNet/batch_normalization_1253/ReadVariableOp5^MiniVGGNet/batch_normalization_1253/ReadVariableOp_1D^MiniVGGNet/batch_normalization_1254/FusedBatchNormV3/ReadVariableOpF^MiniVGGNet/batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_13^MiniVGGNet/batch_normalization_1254/ReadVariableOp5^MiniVGGNet/batch_normalization_1254/ReadVariableOp_1D^MiniVGGNet/batch_normalization_1255/FusedBatchNormV3/ReadVariableOpF^MiniVGGNet/batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_13^MiniVGGNet/batch_normalization_1255/ReadVariableOp5^MiniVGGNet/batch_normalization_1255/ReadVariableOp_1D^MiniVGGNet/batch_normalization_1256/FusedBatchNormV3/ReadVariableOpF^MiniVGGNet/batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_13^MiniVGGNet/batch_normalization_1256/ReadVariableOp5^MiniVGGNet/batch_normalization_1256/ReadVariableOp_1=^MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp?^MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp_1?^MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp_2A^MiniVGGNet/batch_normalization_1257/batchnorm/mul/ReadVariableOp.^MiniVGGNet/conv2d_1203/BiasAdd/ReadVariableOp-^MiniVGGNet/conv2d_1203/Conv2D/ReadVariableOp.^MiniVGGNet/conv2d_1204/BiasAdd/ReadVariableOp-^MiniVGGNet/conv2d_1204/Conv2D/ReadVariableOp.^MiniVGGNet/conv2d_1205/BiasAdd/ReadVariableOp-^MiniVGGNet/conv2d_1205/Conv2D/ReadVariableOp.^MiniVGGNet/conv2d_1206/BiasAdd/ReadVariableOp-^MiniVGGNet/conv2d_1206/Conv2D/ReadVariableOp,^MiniVGGNet/dense_152/BiasAdd/ReadVariableOp+^MiniVGGNet/dense_152/MatMul/ReadVariableOp,^MiniVGGNet/dense_153/BiasAdd/ReadVariableOp+^MiniVGGNet/dense_153/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
CMiniVGGNet/batch_normalization_1253/FusedBatchNormV3/ReadVariableOpCMiniVGGNet/batch_normalization_1253/FusedBatchNormV3/ReadVariableOp2?
EMiniVGGNet/batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_1EMiniVGGNet/batch_normalization_1253/FusedBatchNormV3/ReadVariableOp_12h
2MiniVGGNet/batch_normalization_1253/ReadVariableOp2MiniVGGNet/batch_normalization_1253/ReadVariableOp2l
4MiniVGGNet/batch_normalization_1253/ReadVariableOp_14MiniVGGNet/batch_normalization_1253/ReadVariableOp_12?
CMiniVGGNet/batch_normalization_1254/FusedBatchNormV3/ReadVariableOpCMiniVGGNet/batch_normalization_1254/FusedBatchNormV3/ReadVariableOp2?
EMiniVGGNet/batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_1EMiniVGGNet/batch_normalization_1254/FusedBatchNormV3/ReadVariableOp_12h
2MiniVGGNet/batch_normalization_1254/ReadVariableOp2MiniVGGNet/batch_normalization_1254/ReadVariableOp2l
4MiniVGGNet/batch_normalization_1254/ReadVariableOp_14MiniVGGNet/batch_normalization_1254/ReadVariableOp_12?
CMiniVGGNet/batch_normalization_1255/FusedBatchNormV3/ReadVariableOpCMiniVGGNet/batch_normalization_1255/FusedBatchNormV3/ReadVariableOp2?
EMiniVGGNet/batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_1EMiniVGGNet/batch_normalization_1255/FusedBatchNormV3/ReadVariableOp_12h
2MiniVGGNet/batch_normalization_1255/ReadVariableOp2MiniVGGNet/batch_normalization_1255/ReadVariableOp2l
4MiniVGGNet/batch_normalization_1255/ReadVariableOp_14MiniVGGNet/batch_normalization_1255/ReadVariableOp_12?
CMiniVGGNet/batch_normalization_1256/FusedBatchNormV3/ReadVariableOpCMiniVGGNet/batch_normalization_1256/FusedBatchNormV3/ReadVariableOp2?
EMiniVGGNet/batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_1EMiniVGGNet/batch_normalization_1256/FusedBatchNormV3/ReadVariableOp_12h
2MiniVGGNet/batch_normalization_1256/ReadVariableOp2MiniVGGNet/batch_normalization_1256/ReadVariableOp2l
4MiniVGGNet/batch_normalization_1256/ReadVariableOp_14MiniVGGNet/batch_normalization_1256/ReadVariableOp_12|
<MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp<MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp2?
>MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp_1>MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp_12?
>MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp_2>MiniVGGNet/batch_normalization_1257/batchnorm/ReadVariableOp_22?
@MiniVGGNet/batch_normalization_1257/batchnorm/mul/ReadVariableOp@MiniVGGNet/batch_normalization_1257/batchnorm/mul/ReadVariableOp2^
-MiniVGGNet/conv2d_1203/BiasAdd/ReadVariableOp-MiniVGGNet/conv2d_1203/BiasAdd/ReadVariableOp2\
,MiniVGGNet/conv2d_1203/Conv2D/ReadVariableOp,MiniVGGNet/conv2d_1203/Conv2D/ReadVariableOp2^
-MiniVGGNet/conv2d_1204/BiasAdd/ReadVariableOp-MiniVGGNet/conv2d_1204/BiasAdd/ReadVariableOp2\
,MiniVGGNet/conv2d_1204/Conv2D/ReadVariableOp,MiniVGGNet/conv2d_1204/Conv2D/ReadVariableOp2^
-MiniVGGNet/conv2d_1205/BiasAdd/ReadVariableOp-MiniVGGNet/conv2d_1205/BiasAdd/ReadVariableOp2\
,MiniVGGNet/conv2d_1205/Conv2D/ReadVariableOp,MiniVGGNet/conv2d_1205/Conv2D/ReadVariableOp2^
-MiniVGGNet/conv2d_1206/BiasAdd/ReadVariableOp-MiniVGGNet/conv2d_1206/BiasAdd/ReadVariableOp2\
,MiniVGGNet/conv2d_1206/Conv2D/ReadVariableOp,MiniVGGNet/conv2d_1206/Conv2D/ReadVariableOp2Z
+MiniVGGNet/dense_152/BiasAdd/ReadVariableOp+MiniVGGNet/dense_152/BiasAdd/ReadVariableOp2X
*MiniVGGNet/dense_152/MatMul/ReadVariableOp*MiniVGGNet/dense_152/MatMul/ReadVariableOp2Z
+MiniVGGNet/dense_153/BiasAdd/ReadVariableOp+MiniVGGNet/dense_153/BiasAdd/ReadVariableOp2X
*MiniVGGNet/dense_153/MatMul/ReadVariableOp*MiniVGGNet/dense_153/MatMul/ReadVariableOp:b ^
/
_output_shapes
:?????????  
+
_user_specified_nameconv2d_1203_input
?
?
+__inference_dense_153_layer_call_fn_4456495

inputs
unknown:	?

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_153_layer_call_and_return_conditional_losses_44542552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_MiniVGGNet_layer_call_fn_4454336
conv2d_1203_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:
? ?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?


unknown_30:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_1203_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_44542692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:?????????  
+
_user_specified_nameconv2d_1203_input
?
O
3__inference_max_pooling2d_195_layer_call_fn_4453813

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_195_layer_call_and_return_conditional_losses_44538072
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
f
H__inference_dropout_205_layer_call_and_return_conditional_losses_4454196

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1255_layer_call_fn_4456136

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_44541302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1255_layer_call_fn_4456123

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_44536152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
f
H__inference_dropout_206_layer_call_and_return_conditional_losses_4454243

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4456214

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4455710

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
g
H__inference_dropout_205_layer_call_and_return_conditional_losses_4454417

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
g
H__inference_dropout_206_layer_call_and_return_conditional_losses_4456466

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_activation_1350_layer_call_fn_4455845

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_activation_1350_layer_call_and_return_conditional_losses_44540532
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1254_layer_call_fn_4455943

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_44534772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_1255_layer_call_fn_4456149

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_44545132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
f
-__inference_dropout_204_layer_call_fn_4455996

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_dropout_204_layer_call_and_return_conditional_losses_44545602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
h
L__inference_activation_1352_layer_call_and_return_conditional_losses_4454161

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
H__inference_conv2d_1204_layer_call_and_return_conditional_losses_4455826

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4455728

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
W
conv2d_1203_inputB
#serving_default_conv2d_1203_input:0?????????  C
activation_13540
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
ơ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
layer-22
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"??
_tf_keras_sequential??{"name": "MiniVGGNet", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "MiniVGGNet", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1203_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1203", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1349", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1253", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1204", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1350", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1254", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_194", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_204", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1205", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1351", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1255", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1206", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1352", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1256", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_195", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_205", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_98", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_152", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1353", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1257", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_206", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_153", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1354", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "shared_object_id": 56, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 57}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "float32", "conv2d_1203_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "MiniVGGNet", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1203_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_1203", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Activation", "config": {"name": "activation_1349", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 4}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1253", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 6}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 8}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 9}, {"class_name": "Conv2D", "config": {"name": "conv2d_1204", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "Activation", "config": {"name": "activation_1350", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 13}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1254", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 18}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_194", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 19}, {"class_name": "Dropout", "config": {"name": "dropout_204", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 20}, {"class_name": "Conv2D", "config": {"name": "conv2d_1205", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23}, {"class_name": "Activation", "config": {"name": "activation_1351", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 24}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1255", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 29}, {"class_name": "Conv2D", "config": {"name": "conv2d_1206", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 32}, {"class_name": "Activation", "config": {"name": "activation_1352", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 33}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1256", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 35}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 37}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 38}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_195", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 39}, {"class_name": "Dropout", "config": {"name": "dropout_205", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 40}, {"class_name": "Flatten", "config": {"name": "flatten_98", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 41}, {"class_name": "Dense", "config": {"name": "dense_152", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 42}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 44}, {"class_name": "Activation", "config": {"name": "activation_1353", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 45}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1257", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 47}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 49}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 50}, {"class_name": "Dropout", "config": {"name": "dropout_206", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 51}, {"class_name": "Dense", "config": {"name": "dense_153", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 52}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 54}, {"class_name": "Activation", "config": {"name": "activation_1354", "trainable": true, "dtype": "float32", "activation": "softmax"}, "shared_object_id": 55}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 58}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

kernel
bias
 	variables
!regularization_losses
"trainable_variables
#	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?
{"name": "conv2d_1203", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1203", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 57}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
$	variables
%regularization_losses
&trainable_variables
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "activation_1349", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_1349", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 4}
?

(axis
	)gamma
*beta
+moving_mean
,moving_variance
-	variables
.regularization_losses
/trainable_variables
0	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_1253", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1253", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 6}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 8}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 59}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
?


1kernel
2bias
3	variables
4regularization_losses
5trainable_variables
6	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_1204", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1204", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 60}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
?
7	variables
8regularization_losses
9trainable_variables
:	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "activation_1350", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_1350", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 13}
?

;axis
	<gamma
=beta
>moving_mean
?moving_variance
@	variables
Aregularization_losses
Btrainable_variables
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_1254", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1254", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 61}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
?
D	variables
Eregularization_losses
Ftrainable_variables
G	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling2d_194", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_194", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 62}}
?
H	variables
Iregularization_losses
Jtrainable_variables
K	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_204", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_204", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 20}
?


Lkernel
Mbias
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_1205", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1205", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 63}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "activation_1351", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_1351", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 24}
?

Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance
[	variables
\regularization_losses
]trainable_variables
^	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_1255", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1255", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 64}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
?


_kernel
`bias
a	variables
bregularization_losses
ctrainable_variables
d	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_1206", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1206", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 65}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
?
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "activation_1352", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_1352", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 33}
?

iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance
n	variables
oregularization_losses
ptrainable_variables
q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_1256", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1256", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 35}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 37}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 38, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 66}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
?
r	variables
sregularization_losses
ttrainable_variables
u	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling2d_195", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_195", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 67}}
?
v	variables
wregularization_losses
xtrainable_variables
y	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_205", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_205", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 40}
?
z	variables
{regularization_losses
|trainable_variables
}	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "flatten_98", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_98", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 41, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 68}}
?

~kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_152", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_152", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 42}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 44, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4096}}, "shared_object_id": 69}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4096]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "activation_1353", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_1353", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 45}
?

	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_1257", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1257", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 47}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 49}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 50, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 512}}, "shared_object_id": 70}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_206", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_206", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 51}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_153", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_153", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 52}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 54, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 71}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "activation_1354", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_1354", "trainable": true, "dtype": "float32", "activation": "softmax"}, "shared_object_id": 55}
?
	?iter
?beta_1
?beta_2

?decay
?learning_ratem?m?)m?*m?1m?2m?<m?=m?Lm?Mm?Wm?Xm?_m?`m?jm?km?~m?m?	?m?	?m?	?m?	?m?v?v?)v?*v?1v?2v?<v?=v?Lv?Mv?Wv?Xv?_v?`v?jv?kv?~v?v?	?v?	?v?	?v?	?v?"
	optimizer
?
0
1
)2
*3
+4
,5
16
27
<8
=9
>10
?11
L12
M13
W14
X15
Y16
Z17
_18
`19
j20
k21
l22
m23
~24
25
?26
?27
?28
?29
?30
?31"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
1
)2
*3
14
25
<6
=7
L8
M9
W10
X11
_12
`13
j14
k15
~16
17
?18
?19
?20
?21"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?layer_metrics
 ?layer_regularization_losses
	variables
regularization_losses
?layers
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
,:* 2conv2d_1203/kernel
: 2conv2d_1203/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
 	variables
!regularization_losses
?layers
"trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
$	variables
%regularization_losses
?layers
&trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:* 2batch_normalization_1253/gamma
+:) 2batch_normalization_1253/beta
4:2  (2$batch_normalization_1253/moving_mean
8:6  (2(batch_normalization_1253/moving_variance
<
)0
*1
+2
,3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
-	variables
.regularization_losses
?layers
/trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*  2conv2d_1204/kernel
: 2conv2d_1204/bias
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
3	variables
4regularization_losses
?layers
5trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
7	variables
8regularization_losses
?layers
9trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:* 2batch_normalization_1254/gamma
+:) 2batch_normalization_1254/beta
4:2  (2$batch_normalization_1254/moving_mean
8:6  (2(batch_normalization_1254/moving_variance
<
<0
=1
>2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
@	variables
Aregularization_losses
?layers
Btrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
D	variables
Eregularization_losses
?layers
Ftrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
H	variables
Iregularization_losses
?layers
Jtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:* @2conv2d_1205/kernel
:@2conv2d_1205/bias
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
N	variables
Oregularization_losses
?layers
Ptrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
R	variables
Sregularization_losses
?layers
Ttrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*@2batch_normalization_1255/gamma
+:)@2batch_normalization_1255/beta
4:2@ (2$batch_normalization_1255/moving_mean
8:6@ (2(batch_normalization_1255/moving_variance
<
W0
X1
Y2
Z3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
[	variables
\regularization_losses
?layers
]trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*@@2conv2d_1206/kernel
:@2conv2d_1206/bias
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
a	variables
bregularization_losses
?layers
ctrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
e	variables
fregularization_losses
?layers
gtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*@2batch_normalization_1256/gamma
+:)@2batch_normalization_1256/beta
4:2@ (2$batch_normalization_1256/moving_mean
8:6@ (2(batch_normalization_1256/moving_variance
<
j0
k1
l2
m3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
n	variables
oregularization_losses
?layers
ptrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
r	variables
sregularization_losses
?layers
ttrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
v	variables
wregularization_losses
?layers
xtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
z	variables
{regularization_losses
?layers
|trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
? ?2dense_152/kernel
:?2dense_152/bias
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?	variables
?regularization_losses
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?	variables
?regularization_losses
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
-:+?2batch_normalization_1257/gamma
,:*?2batch_normalization_1257/beta
5:3? (2$batch_normalization_1257/moving_mean
9:7? (2(batch_normalization_1257/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?	variables
?regularization_losses
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?	variables
?regularization_losses
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?
2dense_153/kernel
:
2dense_153/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?	variables
?regularization_losses
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?	variables
?regularization_losses
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
h
+0
,1
>2
?3
Y4
Z5
l6
m7
?8
?9"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
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
11
12
13
14
15
16
17
18
19
20
21
22"
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
.
+0
,1"
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
.
>0
?1"
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
.
Y0
Z1"
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
.
l0
m1"
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
0
?0
?1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 72}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 58}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
1:/ 2Adam/conv2d_1203/kernel/m
#:! 2Adam/conv2d_1203/bias/m
1:/ 2%Adam/batch_normalization_1253/gamma/m
0:. 2$Adam/batch_normalization_1253/beta/m
1:/  2Adam/conv2d_1204/kernel/m
#:! 2Adam/conv2d_1204/bias/m
1:/ 2%Adam/batch_normalization_1254/gamma/m
0:. 2$Adam/batch_normalization_1254/beta/m
1:/ @2Adam/conv2d_1205/kernel/m
#:!@2Adam/conv2d_1205/bias/m
1:/@2%Adam/batch_normalization_1255/gamma/m
0:.@2$Adam/batch_normalization_1255/beta/m
1:/@@2Adam/conv2d_1206/kernel/m
#:!@2Adam/conv2d_1206/bias/m
1:/@2%Adam/batch_normalization_1256/gamma/m
0:.@2$Adam/batch_normalization_1256/beta/m
):'
? ?2Adam/dense_152/kernel/m
": ?2Adam/dense_152/bias/m
2:0?2%Adam/batch_normalization_1257/gamma/m
1:/?2$Adam/batch_normalization_1257/beta/m
(:&	?
2Adam/dense_153/kernel/m
!:
2Adam/dense_153/bias/m
1:/ 2Adam/conv2d_1203/kernel/v
#:! 2Adam/conv2d_1203/bias/v
1:/ 2%Adam/batch_normalization_1253/gamma/v
0:. 2$Adam/batch_normalization_1253/beta/v
1:/  2Adam/conv2d_1204/kernel/v
#:! 2Adam/conv2d_1204/bias/v
1:/ 2%Adam/batch_normalization_1254/gamma/v
0:. 2$Adam/batch_normalization_1254/beta/v
1:/ @2Adam/conv2d_1205/kernel/v
#:!@2Adam/conv2d_1205/bias/v
1:/@2%Adam/batch_normalization_1255/gamma/v
0:.@2$Adam/batch_normalization_1255/beta/v
1:/@@2Adam/conv2d_1206/kernel/v
#:!@2Adam/conv2d_1206/bias/v
1:/@2%Adam/batch_normalization_1256/gamma/v
0:.@2$Adam/batch_normalization_1256/beta/v
):'
? ?2Adam/dense_152/kernel/v
": ?2Adam/dense_152/bias/v
2:0?2%Adam/batch_normalization_1257/gamma/v
1:/?2$Adam/batch_normalization_1257/beta/v
(:&	?
2Adam/dense_153/kernel/v
!:
2Adam/dense_153/bias/v
?2?
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4455365
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4455525
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4455072
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4455163?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
"__inference__wrapped_model_4453285?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0
conv2d_1203_input?????????  
?2?
,__inference_MiniVGGNet_layer_call_fn_4454336
,__inference_MiniVGGNet_layer_call_fn_4455594
,__inference_MiniVGGNet_layer_call_fn_4455663
,__inference_MiniVGGNet_layer_call_fn_4454981?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_conv2d_1203_layer_call_and_return_conditional_losses_4455673?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_conv2d_1203_layer_call_fn_4455682?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_activation_1349_layer_call_and_return_conditional_losses_4455687?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_activation_1349_layer_call_fn_4455692?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4455710
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4455728
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4455746
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4455764?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
:__inference_batch_normalization_1253_layer_call_fn_4455777
:__inference_batch_normalization_1253_layer_call_fn_4455790
:__inference_batch_normalization_1253_layer_call_fn_4455803
:__inference_batch_normalization_1253_layer_call_fn_4455816?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_conv2d_1204_layer_call_and_return_conditional_losses_4455826?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_conv2d_1204_layer_call_fn_4455835?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_activation_1350_layer_call_and_return_conditional_losses_4455840?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_activation_1350_layer_call_fn_4455845?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4455863
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4455881
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4455899
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4455917?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
:__inference_batch_normalization_1254_layer_call_fn_4455930
:__inference_batch_normalization_1254_layer_call_fn_4455943
:__inference_batch_normalization_1254_layer_call_fn_4455956
:__inference_batch_normalization_1254_layer_call_fn_4455969?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_max_pooling2d_194_layer_call_and_return_conditional_losses_4453543?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
3__inference_max_pooling2d_194_layer_call_fn_4453549?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
H__inference_dropout_204_layer_call_and_return_conditional_losses_4455974
H__inference_dropout_204_layer_call_and_return_conditional_losses_4455986?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_dropout_204_layer_call_fn_4455991
-__inference_dropout_204_layer_call_fn_4455996?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_conv2d_1205_layer_call_and_return_conditional_losses_4456006?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_conv2d_1205_layer_call_fn_4456015?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_activation_1351_layer_call_and_return_conditional_losses_4456020?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_activation_1351_layer_call_fn_4456025?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4456043
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4456061
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4456079
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4456097?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
:__inference_batch_normalization_1255_layer_call_fn_4456110
:__inference_batch_normalization_1255_layer_call_fn_4456123
:__inference_batch_normalization_1255_layer_call_fn_4456136
:__inference_batch_normalization_1255_layer_call_fn_4456149?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_conv2d_1206_layer_call_and_return_conditional_losses_4456159?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_conv2d_1206_layer_call_fn_4456168?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_activation_1352_layer_call_and_return_conditional_losses_4456173?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_activation_1352_layer_call_fn_4456178?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4456196
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4456214
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4456232
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4456250?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
:__inference_batch_normalization_1256_layer_call_fn_4456263
:__inference_batch_normalization_1256_layer_call_fn_4456276
:__inference_batch_normalization_1256_layer_call_fn_4456289
:__inference_batch_normalization_1256_layer_call_fn_4456302?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_max_pooling2d_195_layer_call_and_return_conditional_losses_4453807?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
3__inference_max_pooling2d_195_layer_call_fn_4453813?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
H__inference_dropout_205_layer_call_and_return_conditional_losses_4456307
H__inference_dropout_205_layer_call_and_return_conditional_losses_4456319?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_dropout_205_layer_call_fn_4456324
-__inference_dropout_205_layer_call_fn_4456329?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_flatten_98_layer_call_and_return_conditional_losses_4456335?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_flatten_98_layer_call_fn_4456340?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_152_layer_call_and_return_conditional_losses_4456350?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_152_layer_call_fn_4456359?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_activation_1353_layer_call_and_return_conditional_losses_4456364?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_activation_1353_layer_call_fn_4456369?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
U__inference_batch_normalization_1257_layer_call_and_return_conditional_losses_4456389
U__inference_batch_normalization_1257_layer_call_and_return_conditional_losses_4456423?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
:__inference_batch_normalization_1257_layer_call_fn_4456436
:__inference_batch_normalization_1257_layer_call_fn_4456449?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_dropout_206_layer_call_and_return_conditional_losses_4456454
H__inference_dropout_206_layer_call_and_return_conditional_losses_4456466?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_dropout_206_layer_call_fn_4456471
-__inference_dropout_206_layer_call_fn_4456476?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dense_153_layer_call_and_return_conditional_losses_4456486?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_153_layer_call_fn_4456495?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_activation_1354_layer_call_and_return_conditional_losses_4456500?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_activation_1354_layer_call_fn_4456505?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_4455240conv2d_1203_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4455072?&)*+,12<=>?LMWXYZ_`jklm~??????J?G
@?=
3?0
conv2d_1203_input?????????  
p 

 
? "%?"
?
0?????????

? ?
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4455163?&)*+,12<=>?LMWXYZ_`jklm~??????J?G
@?=
3?0
conv2d_1203_input?????????  
p

 
? "%?"
?
0?????????

? ?
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4455365?&)*+,12<=>?LMWXYZ_`jklm~????????<
5?2
(?%
inputs?????????  
p 

 
? "%?"
?
0?????????

? ?
G__inference_MiniVGGNet_layer_call_and_return_conditional_losses_4455525?&)*+,12<=>?LMWXYZ_`jklm~????????<
5?2
(?%
inputs?????????  
p

 
? "%?"
?
0?????????

? ?
,__inference_MiniVGGNet_layer_call_fn_4454336?&)*+,12<=>?LMWXYZ_`jklm~??????J?G
@?=
3?0
conv2d_1203_input?????????  
p 

 
? "??????????
?
,__inference_MiniVGGNet_layer_call_fn_4454981?&)*+,12<=>?LMWXYZ_`jklm~??????J?G
@?=
3?0
conv2d_1203_input?????????  
p

 
? "??????????
?
,__inference_MiniVGGNet_layer_call_fn_4455594?&)*+,12<=>?LMWXYZ_`jklm~????????<
5?2
(?%
inputs?????????  
p 

 
? "??????????
?
,__inference_MiniVGGNet_layer_call_fn_4455663?&)*+,12<=>?LMWXYZ_`jklm~????????<
5?2
(?%
inputs?????????  
p

 
? "??????????
?
"__inference__wrapped_model_4453285?&)*+,12<=>?LMWXYZ_`jklm~??????B??
8?5
3?0
conv2d_1203_input?????????  
? "A?>
<
activation_1354)?&
activation_1354?????????
?
L__inference_activation_1349_layer_call_and_return_conditional_losses_4455687h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
1__inference_activation_1349_layer_call_fn_4455692[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
L__inference_activation_1350_layer_call_and_return_conditional_losses_4455840h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
1__inference_activation_1350_layer_call_fn_4455845[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
L__inference_activation_1351_layer_call_and_return_conditional_losses_4456020h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
1__inference_activation_1351_layer_call_fn_4456025[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
L__inference_activation_1352_layer_call_and_return_conditional_losses_4456173h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
1__inference_activation_1352_layer_call_fn_4456178[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
L__inference_activation_1353_layer_call_and_return_conditional_losses_4456364Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
1__inference_activation_1353_layer_call_fn_4456369M0?-
&?#
!?
inputs??????????
? "????????????
L__inference_activation_1354_layer_call_and_return_conditional_losses_4456500X/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? ?
1__inference_activation_1354_layer_call_fn_4456505K/?,
%?"
 ?
inputs?????????

? "??????????
?
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4455710?)*+,M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4455728?)*+,M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4455746r)*+,;?8
1?.
(?%
inputs?????????   
p 
? "-?*
#? 
0?????????   
? ?
U__inference_batch_normalization_1253_layer_call_and_return_conditional_losses_4455764r)*+,;?8
1?.
(?%
inputs?????????   
p
? "-?*
#? 
0?????????   
? ?
:__inference_batch_normalization_1253_layer_call_fn_4455777?)*+,M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
:__inference_batch_normalization_1253_layer_call_fn_4455790?)*+,M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
:__inference_batch_normalization_1253_layer_call_fn_4455803e)*+,;?8
1?.
(?%
inputs?????????   
p 
? " ??????????   ?
:__inference_batch_normalization_1253_layer_call_fn_4455816e)*+,;?8
1?.
(?%
inputs?????????   
p
? " ??????????   ?
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4455863?<=>?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4455881?<=>?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4455899r<=>?;?8
1?.
(?%
inputs?????????   
p 
? "-?*
#? 
0?????????   
? ?
U__inference_batch_normalization_1254_layer_call_and_return_conditional_losses_4455917r<=>?;?8
1?.
(?%
inputs?????????   
p
? "-?*
#? 
0?????????   
? ?
:__inference_batch_normalization_1254_layer_call_fn_4455930?<=>?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
:__inference_batch_normalization_1254_layer_call_fn_4455943?<=>?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
:__inference_batch_normalization_1254_layer_call_fn_4455956e<=>?;?8
1?.
(?%
inputs?????????   
p 
? " ??????????   ?
:__inference_batch_normalization_1254_layer_call_fn_4455969e<=>?;?8
1?.
(?%
inputs?????????   
p
? " ??????????   ?
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4456043?WXYZM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4456061?WXYZM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4456079rWXYZ;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
U__inference_batch_normalization_1255_layer_call_and_return_conditional_losses_4456097rWXYZ;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
:__inference_batch_normalization_1255_layer_call_fn_4456110?WXYZM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
:__inference_batch_normalization_1255_layer_call_fn_4456123?WXYZM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
:__inference_batch_normalization_1255_layer_call_fn_4456136eWXYZ;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
:__inference_batch_normalization_1255_layer_call_fn_4456149eWXYZ;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4456196?jklmM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4456214?jklmM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4456232rjklm;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
U__inference_batch_normalization_1256_layer_call_and_return_conditional_losses_4456250rjklm;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
:__inference_batch_normalization_1256_layer_call_fn_4456263?jklmM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
:__inference_batch_normalization_1256_layer_call_fn_4456276?jklmM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
:__inference_batch_normalization_1256_layer_call_fn_4456289ejklm;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
:__inference_batch_normalization_1256_layer_call_fn_4456302ejklm;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
U__inference_batch_normalization_1257_layer_call_and_return_conditional_losses_4456389h????4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
U__inference_batch_normalization_1257_layer_call_and_return_conditional_losses_4456423h????4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
:__inference_batch_normalization_1257_layer_call_fn_4456436[????4?1
*?'
!?
inputs??????????
p 
? "????????????
:__inference_batch_normalization_1257_layer_call_fn_4456449[????4?1
*?'
!?
inputs??????????
p
? "????????????
H__inference_conv2d_1203_layer_call_and_return_conditional_losses_4455673l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????   
? ?
-__inference_conv2d_1203_layer_call_fn_4455682_7?4
-?*
(?%
inputs?????????  
? " ??????????   ?
H__inference_conv2d_1204_layer_call_and_return_conditional_losses_4455826l127?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
-__inference_conv2d_1204_layer_call_fn_4455835_127?4
-?*
(?%
inputs?????????   
? " ??????????   ?
H__inference_conv2d_1205_layer_call_and_return_conditional_losses_4456006lLM7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
-__inference_conv2d_1205_layer_call_fn_4456015_LM7?4
-?*
(?%
inputs????????? 
? " ??????????@?
H__inference_conv2d_1206_layer_call_and_return_conditional_losses_4456159l_`7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
-__inference_conv2d_1206_layer_call_fn_4456168__`7?4
-?*
(?%
inputs?????????@
? " ??????????@?
F__inference_dense_152_layer_call_and_return_conditional_losses_4456350^~0?-
&?#
!?
inputs?????????? 
? "&?#
?
0??????????
? ?
+__inference_dense_152_layer_call_fn_4456359Q~0?-
&?#
!?
inputs?????????? 
? "????????????
F__inference_dense_153_layer_call_and_return_conditional_losses_4456486_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? ?
+__inference_dense_153_layer_call_fn_4456495R??0?-
&?#
!?
inputs??????????
? "??????????
?
H__inference_dropout_204_layer_call_and_return_conditional_losses_4455974l;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
H__inference_dropout_204_layer_call_and_return_conditional_losses_4455986l;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
-__inference_dropout_204_layer_call_fn_4455991_;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
-__inference_dropout_204_layer_call_fn_4455996_;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
H__inference_dropout_205_layer_call_and_return_conditional_losses_4456307l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
H__inference_dropout_205_layer_call_and_return_conditional_losses_4456319l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
-__inference_dropout_205_layer_call_fn_4456324_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
-__inference_dropout_205_layer_call_fn_4456329_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
H__inference_dropout_206_layer_call_and_return_conditional_losses_4456454^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
H__inference_dropout_206_layer_call_and_return_conditional_losses_4456466^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
-__inference_dropout_206_layer_call_fn_4456471Q4?1
*?'
!?
inputs??????????
p 
? "????????????
-__inference_dropout_206_layer_call_fn_4456476Q4?1
*?'
!?
inputs??????????
p
? "????????????
G__inference_flatten_98_layer_call_and_return_conditional_losses_4456335a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0?????????? 
? ?
,__inference_flatten_98_layer_call_fn_4456340T7?4
-?*
(?%
inputs?????????@
? "??????????? ?
N__inference_max_pooling2d_194_layer_call_and_return_conditional_losses_4453543?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_194_layer_call_fn_4453549?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
N__inference_max_pooling2d_195_layer_call_and_return_conditional_losses_4453807?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_195_layer_call_fn_4453813?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
%__inference_signature_wrapper_4455240?&)*+,12<=>?LMWXYZ_`jklm~??????W?T
? 
M?J
H
conv2d_1203_input3?0
conv2d_1203_input?????????  "A?>
<
activation_1354)?&
activation_1354?????????
