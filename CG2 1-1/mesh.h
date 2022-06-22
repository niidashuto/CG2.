#pragma once
#include<d3d12.h>
#include<dxgi1_6.h>
#include<cassert>
#include<d3dcompiler.h>
#include<DirectXMath.h>
using namespace DirectX;
#pragma comment(lib,"d3dcompiler.lib")
#pragma comment(lib,"d3d12.lib")
#pragma comment(lib,"dxgi.lib")
#include<Windows.h>
#include<vector>
#include<string>
#define DIRECTINPUT_VERSION 0x0800
#include<dinput.h>
#pragma comment(lib,"dinput8.lib")
#pragma comment(lib,"dxguid.lib")

class Mesh {
public:
	Mesh(ID3D12Device* device);
    void Draw(ID3D12GraphicsCommandList* commandList);
	
private:
	HRESULT result;
	D3D12_VERTEX_BUFFER_VIEW vbView{};
	D3D12_INDEX_BUFFER_VIEW ibView{};
	ID3D12Resource* constBuffMaterial;
	ID3D12PipelineState* pipelineState;
	//���[�g�V�O�l�`��
	ID3D12RootSignature* rootSignature;
	uint16_t indices[3];
};
