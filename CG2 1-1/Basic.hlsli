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
	float4 svpos:SV_POSITION;

	float2 uv:TEXCOORD;
};