cbuffer ConstBufferDataMaterial:register(b0)
{
	float4 color;//�F(RGBA)
};
//3D�ϊ��s��
cbuffer ConstBufferDataTransform:register(b1)
{
	matrix mat;
};

struct VSOutput
{
	float4 svpos:SV_POSITION;//�V�X�e���p���_���W

	float3 normal:NORMAL;//�@���x�N�g��

	float2 uv:TEXCOORD;//uv���W
};