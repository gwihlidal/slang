//TEST:CROSS_COMPILE: -profile ps_5_0 -entry main -target spirv-assembly

struct VS_OUT
{
	nointerpolation float drawID : DRAW_ID;	
};

float4 main(VS_OUT vsOut) : SV_Target
{
	return float4(vsOut.drawID);
}
