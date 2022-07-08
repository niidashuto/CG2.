cbuffer ConstBufferDataMaterial:register(b0)
{
	float4 color;//色(RGBA)
};
//3D変換行列
cbuffer ConstBufferDataTransform:register(b1)
{
	matrix mat;
};

struct VSOutput
{
	float4 svpos:SV_POSITION;//システム用頂点座標

	float3 normal:NORMAL;//法線ベクトル

	float2 uv:TEXCOORD;//uv座標
};