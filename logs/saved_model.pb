ó­
Ä
B
AssignVariableOp
resource
value"dtype"
dtypetype
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
¾
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.02v2.6.0-rc2-32-g919f693420e8ä
¦
$word2_vec_3/w2v_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 *5
shared_name&$word2_vec_3/w2v_embedding/embeddings

8word2_vec_3/w2v_embedding/embeddings/Read/ReadVariableOpReadVariableOp$word2_vec_3/w2v_embedding/embeddings* 
_output_shapes
:
 *
dtype0
¢
"word2_vec_3/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 *3
shared_name$"word2_vec_3/embedding_3/embeddings

6word2_vec_3/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp"word2_vec_3/embedding_3/embeddings* 
_output_shapes
:
 *
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
´
+Adam/word2_vec_3/w2v_embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 *<
shared_name-+Adam/word2_vec_3/w2v_embedding/embeddings/m
­
?Adam/word2_vec_3/w2v_embedding/embeddings/m/Read/ReadVariableOpReadVariableOp+Adam/word2_vec_3/w2v_embedding/embeddings/m* 
_output_shapes
:
 *
dtype0
°
)Adam/word2_vec_3/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 *:
shared_name+)Adam/word2_vec_3/embedding_3/embeddings/m
©
=Adam/word2_vec_3/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOp)Adam/word2_vec_3/embedding_3/embeddings/m* 
_output_shapes
:
 *
dtype0
´
+Adam/word2_vec_3/w2v_embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 *<
shared_name-+Adam/word2_vec_3/w2v_embedding/embeddings/v
­
?Adam/word2_vec_3/w2v_embedding/embeddings/v/Read/ReadVariableOpReadVariableOp+Adam/word2_vec_3/w2v_embedding/embeddings/v* 
_output_shapes
:
 *
dtype0
°
)Adam/word2_vec_3/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 *:
shared_name+)Adam/word2_vec_3/embedding_3/embeddings/v
©
=Adam/word2_vec_3/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOp)Adam/word2_vec_3/embedding_3/embeddings/v* 
_output_shapes
:
 *
dtype0

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ì
valueÂB¿ B¸

target_embedding
context_embedding
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
b
	
embeddings

trainable_variables
regularization_losses
	variables
	keras_api
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
d
iter

beta_1

beta_2
	decay
learning_rate	m2m3	v4v5

	0
1
 

	0
1
­
metrics
non_trainable_variables
trainable_variables
regularization_losses

layers
layer_metrics
	variables
layer_regularization_losses
 
pn
VARIABLE_VALUE$word2_vec_3/w2v_embedding/embeddings6target_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE

	0
 

	0
­
metrics
non_trainable_variables

trainable_variables
regularization_losses

layers
 layer_metrics
	variables
!layer_regularization_losses
om
VARIABLE_VALUE"word2_vec_3/embedding_3/embeddings7context_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
­
"metrics
#non_trainable_variables
trainable_variables
regularization_losses

$layers
%layer_metrics
	variables
&layer_regularization_losses
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

'0
(1
 

0
1
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
4
	)total
	*count
+	variables
,	keras_api
D
	-total
	.count
/
_fn_kwargs
0	variables
1	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

+	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

-0
.1

0	variables

VARIABLE_VALUE+Adam/word2_vec_3/w2v_embedding/embeddings/mRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE)Adam/word2_vec_3/embedding_3/embeddings/mScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/word2_vec_3/w2v_embedding/embeddings/vRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE)Adam/word2_vec_3/embedding_3/embeddings/vScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
z
serving_default_input_2Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2$word2_vec_3/w2v_embedding/embeddings"word2_vec_3/embedding_3/embeddings*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_618264
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
µ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename8word2_vec_3/w2v_embedding/embeddings/Read/ReadVariableOp6word2_vec_3/embedding_3/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp?Adam/word2_vec_3/w2v_embedding/embeddings/m/Read/ReadVariableOp=Adam/word2_vec_3/embedding_3/embeddings/m/Read/ReadVariableOp?Adam/word2_vec_3/w2v_embedding/embeddings/v/Read/ReadVariableOp=Adam/word2_vec_3/embedding_3/embeddings/v/Read/ReadVariableOpConst*
Tin
2	*
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
__inference__traced_save_618419

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename$word2_vec_3/w2v_embedding/embeddings"word2_vec_3/embedding_3/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1+Adam/word2_vec_3/w2v_embedding/embeddings/m)Adam/word2_vec_3/embedding_3/embeddings/m+Adam/word2_vec_3/w2v_embedding/embeddings/v)Adam/word2_vec_3/embedding_3/embeddings/v*
Tin
2*
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
"__inference__traced_restore_618474
ó
¨
G__inference_word2_vec_3_layer_call_and_return_conditional_losses_618318
input_1	
input_2	9
%w2v_embedding_embedding_lookup_618306:
 7
#embedding_3_embedding_lookup_618311:
 
identity¢embedding_3/embedding_lookup¢w2v_embedding/embedding_lookupk
SqueezeSqueezeinput_1*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2	
Squeezeº
w2v_embedding/embedding_lookupResourceGather%w2v_embedding_embedding_lookup_618306Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*8
_class.
,*loc:@w2v_embedding/embedding_lookup/618306*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02 
w2v_embedding/embedding_lookup¢
'w2v_embedding/embedding_lookup/IdentityIdentity'w2v_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*8
_class.
,*loc:@w2v_embedding/embedding_lookup/618306*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'w2v_embedding/embedding_lookup/IdentityÇ
)w2v_embedding/embedding_lookup/Identity_1Identity0w2v_embedding/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)w2v_embedding/embedding_lookup/Identity_1­
embedding_3/embedding_lookupResourceGather#embedding_3_embedding_lookup_618311input_2",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*6
_class,
*(loc:@embedding_3/embedding_lookup/618311*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_3/embedding_lookup
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_3/embedding_lookup/618311*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%embedding_3/embedding_lookup/IdentityÅ
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'embedding_3/embedding_lookup/Identity_1ã
einsum/EinsumEinsum2w2v_embedding/embedding_lookup/Identity_1:output:00embedding_3/embedding_lookup/Identity_1:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equation
be,bce->bc2
einsum/Einsumq
IdentityIdentityeinsum/Einsum:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^embedding_3/embedding_lookup^w2v_embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2@
w2v_embedding/embedding_lookupw2v_embedding/embedding_lookup:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
û	
¨
I__inference_w2v_embedding_layer_call_and_return_conditional_losses_618181

inputs	+
embedding_lookup_618175:
 
identity¢embedding_lookupø
embedding_lookupResourceGatherembedding_lookup_618175inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/618175*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupê
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/618175*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï

.__inference_w2v_embedding_layer_call_fn_618325

inputs	
unknown:
 
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_w2v_embedding_layer_call_and_return_conditional_losses_6181812
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®
²
!__inference__wrapped_model_618162
input_1	
input_2	E
1word2_vec_3_w2v_embedding_embedding_lookup_618150:
 C
/word2_vec_3_embedding_3_embedding_lookup_618155:
 
identity¢(word2_vec_3/embedding_3/embedding_lookup¢*word2_vec_3/w2v_embedding/embedding_lookup
word2_vec_3/SqueezeSqueezeinput_1*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2
word2_vec_3/Squeezeö
*word2_vec_3/w2v_embedding/embedding_lookupResourceGather1word2_vec_3_w2v_embedding_embedding_lookup_618150word2_vec_3/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*D
_class:
86loc:@word2_vec_3/w2v_embedding/embedding_lookup/618150*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02,
*word2_vec_3/w2v_embedding/embedding_lookupÒ
3word2_vec_3/w2v_embedding/embedding_lookup/IdentityIdentity3word2_vec_3/w2v_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@word2_vec_3/w2v_embedding/embedding_lookup/618150*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3word2_vec_3/w2v_embedding/embedding_lookup/Identityë
5word2_vec_3/w2v_embedding/embedding_lookup/Identity_1Identity<word2_vec_3/w2v_embedding/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5word2_vec_3/w2v_embedding/embedding_lookup/Identity_1Ý
(word2_vec_3/embedding_3/embedding_lookupResourceGather/word2_vec_3_embedding_3_embedding_lookup_618155input_2",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*B
_class8
64loc:@word2_vec_3/embedding_3/embedding_lookup/618155*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02*
(word2_vec_3/embedding_3/embedding_lookupÎ
1word2_vec_3/embedding_3/embedding_lookup/IdentityIdentity1word2_vec_3/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*B
_class8
64loc:@word2_vec_3/embedding_3/embedding_lookup/618155*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1word2_vec_3/embedding_3/embedding_lookup/Identityé
3word2_vec_3/embedding_3/embedding_lookup/Identity_1Identity:word2_vec_3/embedding_3/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3word2_vec_3/embedding_3/embedding_lookup/Identity_1
word2_vec_3/einsum/EinsumEinsum>word2_vec_3/w2v_embedding/embedding_lookup/Identity_1:output:0<word2_vec_3/embedding_3/embedding_lookup/Identity_1:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equation
be,bce->bc2
word2_vec_3/einsum/Einsum}
IdentityIdentity"word2_vec_3/einsum/Einsum:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¦
NoOpNoOp)^word2_vec_3/embedding_3/embedding_lookup+^word2_vec_3/w2v_embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2T
(word2_vec_3/embedding_3/embedding_lookup(word2_vec_3/embedding_3/embedding_lookup2X
*word2_vec_3/w2v_embedding/embedding_lookup*word2_vec_3/w2v_embedding/embedding_lookup:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
ø
­
,__inference_word2_vec_3_layer_call_fn_618284

pair_0	

pair_1	
unknown:
 
	unknown_0:
 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallpair_0pair_1unknown	unknown_0*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_word2_vec_3_layer_call_and_return_conditional_losses_6182002
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namepair/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namepair/1
í
¦
G__inference_word2_vec_3_layer_call_and_return_conditional_losses_618301

pair_0	

pair_1	9
%w2v_embedding_embedding_lookup_618289:
 7
#embedding_3_embedding_lookup_618294:
 
identity¢embedding_3/embedding_lookup¢w2v_embedding/embedding_lookupj
SqueezeSqueezepair_0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2	
Squeezeº
w2v_embedding/embedding_lookupResourceGather%w2v_embedding_embedding_lookup_618289Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*8
_class.
,*loc:@w2v_embedding/embedding_lookup/618289*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02 
w2v_embedding/embedding_lookup¢
'w2v_embedding/embedding_lookup/IdentityIdentity'w2v_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*8
_class.
,*loc:@w2v_embedding/embedding_lookup/618289*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'w2v_embedding/embedding_lookup/IdentityÇ
)w2v_embedding/embedding_lookup/Identity_1Identity0w2v_embedding/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)w2v_embedding/embedding_lookup/Identity_1¬
embedding_3/embedding_lookupResourceGather#embedding_3_embedding_lookup_618294pair_1",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*6
_class,
*(loc:@embedding_3/embedding_lookup/618294*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_3/embedding_lookup
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_3/embedding_lookup/618294*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%embedding_3/embedding_lookup/IdentityÅ
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'embedding_3/embedding_lookup/Identity_1ã
einsum/EinsumEinsum2w2v_embedding/embedding_lookup/Identity_1:output:00embedding_3/embedding_lookup/Identity_1:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equation
be,bce->bc2
einsum/Einsumq
IdentityIdentityeinsum/Einsum:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^embedding_3/embedding_lookup^w2v_embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2@
w2v_embedding/embedding_lookupw2v_embedding/embedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namepair/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namepair/1
E
Ø	
"__inference__traced_restore_618474
file_prefixI
5assignvariableop_word2_vec_3_w2v_embedding_embeddings:
 I
5assignvariableop_1_word2_vec_3_embedding_3_embeddings:
 &
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: "
assignvariableop_7_total: "
assignvariableop_8_count: $
assignvariableop_9_total_1: %
assignvariableop_10_count_1: S
?assignvariableop_11_adam_word2_vec_3_w2v_embedding_embeddings_m:
 Q
=assignvariableop_12_adam_word2_vec_3_embedding_3_embeddings_m:
 S
?assignvariableop_13_adam_word2_vec_3_w2v_embedding_embeddings_v:
 Q
=assignvariableop_14_adam_word2_vec_3_embedding_3_embeddings_v:
 
identity_16¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9§
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*³
value©B¦B6target_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB7context_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names®
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesû
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity´
AssignVariableOpAssignVariableOp5assignvariableop_word2_vec_3_w2v_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1º
AssignVariableOp_1AssignVariableOp5assignvariableop_1_word2_vec_3_embedding_3_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2¡
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3£
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¢
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6ª
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7
AssignVariableOp_7AssignVariableOpassignvariableop_7_totalIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8
AssignVariableOp_8AssignVariableOpassignvariableop_8_countIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10£
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ç
AssignVariableOp_11AssignVariableOp?assignvariableop_11_adam_word2_vec_3_w2v_embedding_embeddings_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Å
AssignVariableOp_12AssignVariableOp=assignvariableop_12_adam_word2_vec_3_embedding_3_embeddings_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ç
AssignVariableOp_13AssignVariableOp?assignvariableop_13_adam_word2_vec_3_w2v_embedding_embeddings_vIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Å
AssignVariableOp_14AssignVariableOp=assignvariableop_14_adam_word2_vec_3_embedding_3_embeddings_vIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_149
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp¨
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_15f
Identity_16IdentityIdentity_15:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_16
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_16Identity_16:output:0*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
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
þ
¯
,__inference_word2_vec_3_layer_call_fn_618274
input_1	
input_2	
unknown:
 
	unknown_0:
 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_word2_vec_3_layer_call_and_return_conditional_losses_6182002
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
û	
¨
I__inference_w2v_embedding_layer_call_and_return_conditional_losses_618334

inputs	+
embedding_lookup_618328:
 
identity¢embedding_lookupø
embedding_lookupResourceGatherembedding_lookup_618328inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/618328*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupê
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/618328*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
§
$__inference_signature_wrapper_618264
input_1	
input_2	
unknown:
 
	unknown_0:
 
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_6181622
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
Ù+

__inference__traced_save_618419
file_prefixC
?savev2_word2_vec_3_w2v_embedding_embeddings_read_readvariableopA
=savev2_word2_vec_3_embedding_3_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopJ
Fsavev2_adam_word2_vec_3_w2v_embedding_embeddings_m_read_readvariableopH
Dsavev2_adam_word2_vec_3_embedding_3_embeddings_m_read_readvariableopJ
Fsavev2_adam_word2_vec_3_w2v_embedding_embeddings_v_read_readvariableopH
Dsavev2_adam_word2_vec_3_embedding_3_embeddings_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¡
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*³
value©B¦B6target_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB7context_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names¨
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices½
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0?savev2_word2_vec_3_w2v_embedding_embeddings_read_readvariableop=savev2_word2_vec_3_embedding_3_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopFsavev2_adam_word2_vec_3_w2v_embedding_embeddings_m_read_readvariableopDsavev2_adam_word2_vec_3_embedding_3_embeddings_m_read_readvariableopFsavev2_adam_word2_vec_3_w2v_embedding_embeddings_v_read_readvariableopDsavev2_adam_word2_vec_3_embedding_3_embeddings_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*q
_input_shapes`
^: :
 :
 : : : : : : : : : :
 :
 :
 :
 : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
 :&"
 
_output_shapes
:
 :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
 :&"
 
_output_shapes
:
 :&"
 
_output_shapes
:
 :&"
 
_output_shapes
:
 :

_output_shapes
: 


¦
G__inference_embedding_3_layer_call_and_return_conditional_losses_618350

inputs	+
embedding_lookup_618344:
 
identity¢embedding_lookupü
embedding_lookupResourceGatherembedding_lookup_618344inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/618344*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupî
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/618344*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity¡
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


¦
G__inference_embedding_3_layer_call_and_return_conditional_losses_618194

inputs	+
embedding_lookup_618188:
 
identity¢embedding_lookupü
embedding_lookupResourceGatherembedding_lookup_618188inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/618188*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupî
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/618188*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity¡
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü

,__inference_embedding_3_layer_call_fn_618341

inputs	
unknown:
 
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_6181942
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç

G__inference_word2_vec_3_layer_call_and_return_conditional_losses_618200
pair	

pair_1	(
w2v_embedding_618182:
 &
embedding_3_618195:
 
identity¢#embedding_3/StatefulPartitionedCall¢%w2v_embedding/StatefulPartitionedCallh
SqueezeSqueezepair*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2	
Squeeze 
%w2v_embedding/StatefulPartitionedCallStatefulPartitionedCallSqueeze:output:0w2v_embedding_618182*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_w2v_embedding_layer_call_and_return_conditional_losses_6181812'
%w2v_embedding/StatefulPartitionedCall
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallpair_1embedding_3_618195*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_6181942%
#embedding_3/StatefulPartitionedCallÛ
einsum/EinsumEinsum.w2v_embedding/StatefulPartitionedCall:output:0,embedding_3/StatefulPartitionedCall:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equation
be,bce->bc2
einsum/Einsumq
IdentityIdentityeinsum/Einsum:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp$^embedding_3/StatefulPartitionedCall&^w2v_embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2N
%w2v_embedding/StatefulPartitionedCall%w2v_embedding/StatefulPartitionedCall:M I
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namepair:MI
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namepair"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*è
serving_defaultÔ
;
input_10
serving_default_input_1:0	ÿÿÿÿÿÿÿÿÿ
;
input_20
serving_default_input_2:0	ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:9

target_embedding
context_embedding
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
6_default_save_signature
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_model
µ
	
embeddings

trainable_variables
regularization_losses
	variables
	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
µ

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
w
iter

beta_1

beta_2
	decay
learning_rate	m2m3	v4v5"
	optimizer
.
	0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
	0
1"
trackable_list_wrapper
Ê
metrics
non_trainable_variables
trainable_variables
regularization_losses

layers
layer_metrics
	variables
layer_regularization_losses
7__call__
6_default_save_signature
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
,
=serving_default"
signature_map
8:6
 2$word2_vec_3/w2v_embedding/embeddings
'
	0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
	0"
trackable_list_wrapper
­
metrics
non_trainable_variables

trainable_variables
regularization_losses

layers
 layer_metrics
	variables
!layer_regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
6:4
 2"word2_vec_3/embedding_3/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
"metrics
#non_trainable_variables
trainable_variables
regularization_losses

$layers
%layer_metrics
	variables
&layer_regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
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
N
	)total
	*count
+	variables
,	keras_api"
_tf_keras_metric
^
	-total
	.count
/
_fn_kwargs
0	variables
1	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
)0
*1"
trackable_list_wrapper
-
+	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
-0
.1"
trackable_list_wrapper
-
0	variables"
_generic_user_object
=:;
 2+Adam/word2_vec_3/w2v_embedding/embeddings/m
;:9
 2)Adam/word2_vec_3/embedding_3/embeddings/m
=:;
 2+Adam/word2_vec_3/w2v_embedding/embeddings/v
;:9
 2)Adam/word2_vec_3/embedding_3/embeddings/v
ÕBÒ
!__inference__wrapped_model_618162input_1input_2"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2ÿ
,__inference_word2_vec_3_layer_call_fn_618274
,__inference_word2_vec_3_layer_call_fn_618284 
²
FullArgSpec
args
jself
jpair
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¸2µ
G__inference_word2_vec_3_layer_call_and_return_conditional_losses_618301
G__inference_word2_vec_3_layer_call_and_return_conditional_losses_618318 
²
FullArgSpec
args
jself
jpair
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_w2v_embedding_layer_call_fn_618325¢
²
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
annotationsª *
 
ó2ð
I__inference_w2v_embedding_layer_call_and_return_conditional_losses_618334¢
²
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
annotationsª *
 
Ö2Ó
,__inference_embedding_3_layer_call_fn_618341¢
²
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
annotationsª *
 
ñ2î
G__inference_embedding_3_layer_call_and_return_conditional_losses_618350¢
²
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
annotationsª *
 
ÒBÏ
$__inference_signature_wrapper_618264input_1input_2"
²
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
annotationsª *
 ¹
!__inference__wrapped_model_618162	X¢U
N¢K
I¢F
!
input_1ÿÿÿÿÿÿÿÿÿ	
!
input_2ÿÿÿÿÿÿÿÿÿ	
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ«
G__inference_embedding_3_layer_call_and_return_conditional_losses_618350`/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
,__inference_embedding_3_layer_call_fn_618341S/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿÍ
$__inference_signature_wrapper_618264¤	i¢f
¢ 
_ª\
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ	
,
input_2!
input_2ÿÿÿÿÿÿÿÿÿ	"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ¥
I__inference_w2v_embedding_layer_call_and_return_conditional_losses_618334X	+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
.__inference_w2v_embedding_layer_call_fn_618325K	+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿÏ
G__inference_word2_vec_3_layer_call_and_return_conditional_losses_618301	V¢S
L¢I
G¢D
 
pair/0ÿÿÿÿÿÿÿÿÿ	
 
pair/1ÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ñ
G__inference_word2_vec_3_layer_call_and_return_conditional_losses_618318	X¢U
N¢K
I¢F
!
input_1ÿÿÿÿÿÿÿÿÿ	
!
input_2ÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¨
,__inference_word2_vec_3_layer_call_fn_618274x	X¢U
N¢K
I¢F
!
input_1ÿÿÿÿÿÿÿÿÿ	
!
input_2ÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ¦
,__inference_word2_vec_3_layer_call_fn_618284v	V¢S
L¢I
G¢D
 
pair/0ÿÿÿÿÿÿÿÿÿ	
 
pair/1ÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ