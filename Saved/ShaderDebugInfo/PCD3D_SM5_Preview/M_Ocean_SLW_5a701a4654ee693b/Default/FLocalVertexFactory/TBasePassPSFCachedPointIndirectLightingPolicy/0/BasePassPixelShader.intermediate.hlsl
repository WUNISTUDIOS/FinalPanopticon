#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _456 = 0.0f.xxx;
static float3 _539 = 0.0f.xxx;
static uint3 _540 = uint3(0u, 0u, 0u);
static float4 _541 = 0.0f.xxxx;
static float4x4 _542 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
static float3 _543 = 0.0f.xxx;
static float _550 = 0.0f;
static uint3 _551 = uint3(0u, 0u, 0u);
static float4 _552 = 0.0f.xxxx;
static float3 _553 = 0.0f.xxx;
static float2 _554 = 0.0f.xx;

cbuffer View
{
    row_major float4x4 View_View_TranslatedWorldToView : packoffset(c12);
    row_major float4x4 View_View_ViewToClip : packoffset(c28);
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c44);
    float3 View_View_ViewTilePosition : packoffset(c60);
    float3 View_View_ViewForward : packoffset(c62);
    float4 View_View_InvDeviceZToWorldZTransform : packoffset(c67);
    float4 View_View_ScreenPositionScaleBias : packoffset(c68);
    float3 View_View_RelativeWorldCameraOrigin : packoffset(c69);
    float3 View_View_RelativePreViewTranslation : packoffset(c72);
    float4 View_View_ViewRectMin : packoffset(c124);
    float4 View_View_ViewSizeAndInvSize : packoffset(c125);
    float4 View_View_LightProbeSizeRatioAndInvSizeRatio : packoffset(c127);
    float4 View_View_BufferSizeAndInvSize : packoffset(c128);
    float View_View_PreExposure : packoffset(c132.z);
    float View_View_OneOverPreExposure : packoffset(c132.w);
    float4 View_View_DiffuseOverrideParameter : packoffset(c133);
    float4 View_View_SpecularOverrideParameter : packoffset(c134);
    float2 View_View_RoughnessOverrideParameter : packoffset(c136);
    float View_View_OutOfBoundsMask : packoffset(c137);
    float View_View_GameTime : packoffset(c139.y);
    uint View_View_StateFrameIndexMod8 : packoffset(c141.y);
    float View_View_UnlitViewmodeMask : packoffset(c142.z);
    float4 View_View_DirectionalLightColor : packoffset(c143);
    float3 View_View_DirectionalLightDirection : packoffset(c144);
    float3 View_View_PrecomputedIndirectLightingColorScale : packoffset(c155);
    float View_View_RenderingReflectionCaptureMask : packoffset(c179.w);
    float4 View_View_GlobalVolumeTranslatedCenterAndExtent[6] : packoffset(c195);
    float4 View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[6] : packoffset(c201);
    int View_View_GlobalDistanceFieldClipmapSizeInPages : packoffset(c219.z);
    float3 View_View_GlobalDistanceFieldInvPageAtlasSize : packoffset(c220);
    float View_View_GlobalVolumeTexelSize : packoffset(c222);
    uint View_View_NumGlobalSDFClipmaps : packoffset(c222.z);
    float View_View_bCheckerboardSubsurfaceProfileRendering : packoffset(c224.z);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c231);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c232);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c233);
    float View_View_VolumetricLightmapBrickSize : packoffset(c233.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c234);
    float View_View_IndirectLightingCacheShowFlag : packoffset(c234.w);
    float View_View_MinRoughness : packoffset(c243.z);
    uint View_View_bShadingEnergyConservation : packoffset(c322.z);
    uint View_View_bShadingEnergyPreservation : packoffset(c322.w);
};

cbuffer SingleLayerWater
{
    float4 SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV : packoffset(c4);
    float4 SingleLayerWater_SingleLayerWater_DistortionParams : packoffset(c5);
    float2 SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterTextureSize : packoffset(c6);
    uint SingleLayerWater_SingleLayerWater_bMainDirectionalLightVSMFiltering : packoffset(c7);
    uint SingleLayerWater_SingleLayerWater_bSeparateMainDirLightLuminance : packoffset(c7.y);
};

StructuredBuffer<float4> Scene_GPUScene_GPUScenePrimitiveSceneData;
cbuffer OpaqueBasePass
{
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : packoffset(c0);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight : packoffset(c0.z);
    int3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize : packoffset(c1);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift : packoffset(c2);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams : packoffset(c3);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection : packoffset(c4);
    float OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius : packoffset(c4.w);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor : packoffset(c5);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask : packoffset(c6);
    float2 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD : packoffset(c6.z);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades : packoffset(c7);
    int OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM : packoffset(c7.y);
    float4 OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths : packoffset(c8);
    row_major float4x4 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[4] : packoffset(c9);
    float4 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[4] : packoffset(c25);
    float4 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize : packoffset(c29);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag : packoffset(c37);
    int OpaqueBasePass_OpaqueBasePass_Strata_FirstSliceStoringStrataSSSDataWithoutMRT : packoffset(c142.y);
    int OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask : packoffset(c144);
};

StructuredBuffer<float4> OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer;
StructuredBuffer<uint> OpaqueBasePass_Shared_Forward_NumCulledLightsGrid;
cbuffer IndirectLightingCache
{
    float IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing : packoffset(c5);
    float4 IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[3] : packoffset(c6);
    float4 IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[3] : packoffset(c9);
    float4 IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2 : packoffset(c12);
};

ByteAddressBuffer VirtualShadowMap_ProjectionData;
StructuredBuffer<uint> VirtualShadowMap_PageTable;
cbuffer MaterialCollection0
{
    float4 MaterialCollection0_MaterialCollection0_Vectors[5] : packoffset(c0);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[109] : packoffset(c0);
};

Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_DirectionalLightShadowingBrickTexture;
Texture3D<float4> View_GlobalDistanceFieldPageAtlasTexture;
Texture3D<uint4> View_GlobalDistanceFieldPageTableTexture;
Texture3D<float4> View_PerlinNoise3DTexture;
SamplerState View_PerlinNoise3DTextureSampler;
SamplerState View_SharedBilinearClampedSampler;
SamplerState View_SharedTrilinearWrappedSampler;
Texture2D<float4> View_ShadingEnergyGGXSpecTexture;
SamplerState View_ShadingEnergySampler;
Texture3D<float4> View_SimpleVolumeEnvTexture;
SamplerState View_SimpleVolumeEnvTextureSampler;
Texture2D<float4> SingleLayerWater_SceneColorWithoutSingleLayerWaterTexture;
Texture2D<float4> SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture;
Texture2D<float4> OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlas;
SamplerState OpaqueBasePass_Shared_Forward_ShadowmapSampler;
Buffer<uint4> OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit;
RWTexture2DArray<uint> OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs;
Texture2D<float4> OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture;
Texture2D<float4> OpaqueBasePass_PreIntegratedGFTexture;
Texture2DArray<uint4> VirtualShadowMap_PhysicalPagePool;

static float4 gl_FragCoord;
static float4 in_var_TEXCOORD10_centroid;
static float4 in_var_TEXCOORD11_centroid;
static uint in_var_PRIMITIVE_ID;
static float3 in_var_TEXCOORD9;
static float4 out_var_SV_Target0;
static float4 out_var_SV_Target1;
static float4 out_var_SV_Target2;
static uint out_var_SV_Target3;
static uint out_var_SV_Target4;
static uint out_var_SV_Target5;
static uint out_var_SV_Target6;

struct SPIRV_Cross_Input
{
    float4 in_var_TEXCOORD10_centroid : TEXCOORD10_centroid;
    float4 in_var_TEXCOORD11_centroid : TEXCOORD11_centroid;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float3 in_var_TEXCOORD9 : TEXCOORD9;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
    float4 out_var_SV_Target1 : SV_Target1;
    float4 out_var_SV_Target2 : SV_Target2;
    uint out_var_SV_Target3 : SV_Target3;
    uint out_var_SV_Target4 : SV_Target4;
    uint out_var_SV_Target5 : SV_Target5;
    uint out_var_SV_Target6 : SV_Target6;
};

uint spvPackHalf2x16(float2 value)
{
    uint2 Packed = f32tof16(value);
    return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value)
{
    return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main()
{
    float _585 = 1.0f / gl_FragCoord.w;
    float2 _624 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _631 = float4(mad(_624, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _550, 1.0f) * _585;
    float4 _636 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _640 = _636.xyz / _636.w.xxx;
    float3 _641 = _640 - View_View_RelativePreViewTranslation;
    float3 _642 = in_var_TEXCOORD9 - View_View_RelativePreViewTranslation;
    float _644 = _631.w;
    float3 _658 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _658 = -View_View_ViewForward;
    }
    else
    {
        _658 = normalize(-_640);
    }
    float3 _665 = View_View_ViewTilePosition * float3(-1.0f, -1.0f, -0.0f);
    float3 _667 = mad(-_641, float3(1.0f, 1.0f, 0.0f), float3(MaterialCollection0_MaterialCollection0_Vectors[4].xyz));
    float _668 = _665.x;
    float _669 = _667.x;
    float _672 = _665.y;
    float _673 = _667.y;
    float _678 = _665.z;
    float _679 = _667.z;
    float3 _699 = Material_Material_PreshaderBuffer[86].z.xxx;
    float3 _711 = 0.0f.xxx;
    float _716 = 0.0f;
    _711 = mad(_641, _699, mad(View_View_ViewTilePosition, _699, -floor(mad(View_View_ViewTilePosition, _699, ((_641 * _699) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _716 = 0.0f;
    float _714 = 1.0f;
    uint _718 = 0u;
    [loop]
    for (; _718 < 6u; )
    {
        float3 _722 = _711 * 0.066666670143604278564453125f.xxx;
        float3 _724 = frac(_722) * 15.0f;
        float3 _725 = frac(_724);
        float4 _730 = float4(_725, 0.0f);
        float4 _743 = View_PerlinNoise3DTexture.SampleLevel(View_PerlinNoise3DTextureSampler, mad((_724 - _725) + (((_730 * _730) * _730) * mad(_730, (_730 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx)).xyz, 0.0625f.xxx, 0.03125f.xxx), 0.0f);
        float _717 = mad(abs(dot(_724, mad(_743.xyz * 255.0f, 0.0078740157186985015869140625f.xxx, (-1.0f).xxx)) - mad(_743.w, 255.0f, -127.0f)), _714, _716);
        _711 *= 2.0f;
        _714 *= 0.5f;
        _716 = _717;
        _718++;
        continue;
    }
    float _773 = clamp(mad(-length((mad(View_View_ViewTilePosition, float3(1.0f, 1.0f, 0.0f), _665) * 2097152.0f) + mad(View_View_RelativeWorldCameraOrigin, float3(1.0f, 1.0f, 0.0f), _641 * float3(-1.0f, -1.0f, -0.0f))), 1.0f / max(9.9999997473787516355514526367188e-06f, MaterialCollection0_MaterialCollection0_Vectors[0].x * Material_Material_PreshaderBuffer[85].y), 1.0f) * Material_Material_PreshaderBuffer[86].y, 0.0f, 1.0f);
    float _774 = lerp(clamp(lerp(-1.0f, 1.0f, _716), 0.0f, 1.0f), 1.0f, _773);
    float3 _777 = ((View_View_ViewTilePosition + (-View_View_ViewTilePosition)) * 2097152.0f) + _640;
    uint3 _779 = uint3(0u, 0u, 0u);
    _779 = _540;
    float _785 = 0.0f;
    uint3 _780 = uint3(0u, 0u, 0u);
    float _876 = 0.0f;
    uint _782 = 0u;
    float _784 = 0.0f;
    uint _787 = 0u;
    for (;;)
    {
        _787 = View_View_NumGlobalSDFClipmaps;
        if (_782 < _787)
        {
            float3 _801 = min(max((_777 - View_View_GlobalVolumeTranslatedCenterAndExtent[_782].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_782].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_782].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_782].www) - _777, 0.0f.xxx));
            float _811 = View_View_GlobalVolumeTranslatedCenterAndExtent[_782].w * View_View_GlobalVolumeTexelSize;
            _785 = 8.0f * _811;
            if (min(_801.x, min(_801.y, _801.z)) > _811)
            {
                float3 _821 = frac(frac(mad(_777, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_782].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_782].xyz)));
                float _825 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _832 = (clamp(_821, 0.0f.xxx, 1.0f.xxx) * _825) + float3(int3(0, 0, int(_782 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                uint4 _842 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_832.x), int(_832.y), int(_832.z), 0).xyz, 0));
                uint _843 = _842.x;
                uint _844 = _843 & 16777215u;
                uint3 _875 = uint3(0u, 0u, 0u);
                if (_843 < 4294967295u)
                {
                    uint3 _849 = _779;
                    _849.x = _844 & 127u;
                    _849.y = (_844 >> 7u) & 127u;
                    _849.z = _844 >> 14u;
                    float4 _868 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_849 * uint3(8u, 8u, 8u)) + (frac(_821 * _825) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f);
                    float _869 = _868.x;
                    if (_869 < 1.0f)
                    {
                        _876 = mad(_869, 2.0f, -1.0f) * _785;
                        break;
                    }
                    _875 = _849;
                }
                else
                {
                    _875 = _779;
                }
                _780 = _875;
            }
            else
            {
                _780 = _779;
            }
            _779 = _780;
            _782++;
            _784 = _785;
            continue;
        }
        else
        {
            _876 = _784;
            break;
        }
    }
    float _887 = clamp(mad(mad(_876, Material_Material_PreshaderBuffer[87].x, -Material_Material_PreshaderBuffer[87].y) * Material_Material_PreshaderBuffer[88].x, -1.0f, 1.0f), 0.0f, 1.0f);
    uint3 _889 = uint3(0u, 0u, 0u);
    _889 = _540;
    uint3 _890 = uint3(0u, 0u, 0u);
    float3 _1147 = 0.0f.xxx;
    uint _892 = 0u;
    for (;;)
    {
        if (_892 < _787)
        {
            float _902 = View_View_GlobalVolumeTranslatedCenterAndExtent[_892].w * View_View_GlobalVolumeTexelSize;
            float3 _912 = min(max((_777 - View_View_GlobalVolumeTranslatedCenterAndExtent[_892].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_892].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_892].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_892].www) - _777, 0.0f.xxx));
            if (min(_912.x, min(_912.y, _912.z)) >= _902)
            {
                float3 _927 = frac(frac(mad(_777, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_892].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_892].xyz)));
                float _931 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _937 = float3(int3(0, 0, int(_892 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                float3 _938 = (clamp(_927, 0.0f.xxx, 1.0f.xxx) * _931) + _937;
                uint4 _948 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_938.x), int(_938.y), int(_938.z), 0).xyz, 0));
                uint _949 = _948.x;
                uint _950 = _949 & 16777215u;
                uint3 _1146 = uint3(0u, 0u, 0u);
                if (_949 < 4294967295u)
                {
                    uint3 _955 = _889;
                    _955.x = _950 & 127u;
                    _955.y = (_950 >> 7u) & 127u;
                    _955.z = _950 >> 14u;
                    if (View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_955 * uint3(8u, 8u, 8u)) + (frac(_927 * _931) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x < 0.89999997615814208984375f)
                    {
                        float _979 = 0.5f * View_View_GlobalVolumeTexelSize;
                        float3 _982 = frac(_927 + float3(_979, 0.0f, 0.0f));
                        float3 _985 = (clamp(_982, 0.0f.xxx, 1.0f.xxx) * _931) + _937;
                        uint4 _994 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_985.x), int(_985.y), int(_985.z), 0).xyz, 0));
                        uint _995 = _994.x;
                        uint _996 = _995 & 16777215u;
                        float _1018 = 0.0f;
                        if (_995 < 4294967295u)
                        {
                            uint3 _1001 = uint3(0u, 0u, 0u);
                            _1001.x = _996 & 127u;
                            _1001.y = (_996 >> 7u) & 127u;
                            _1001.z = _996 >> 14u;
                            _1018 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1001 * uint3(8u, 8u, 8u)) + (frac(_982 * _931) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1018 = 1.0f;
                        }
                        float _1019 = View_View_GlobalVolumeTexelSize * (-0.5f);
                        float3 _1022 = frac(_927 + float3(_1019, 0.0f, 0.0f));
                        float3 _1025 = (clamp(_1022, 0.0f.xxx, 1.0f.xxx) * _931) + _937;
                        uint4 _1034 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1025.x), int(_1025.y), int(_1025.z), 0).xyz, 0));
                        uint _1035 = _1034.x;
                        uint _1036 = _1035 & 16777215u;
                        float _1058 = 0.0f;
                        if (_1035 < 4294967295u)
                        {
                            uint3 _1041 = uint3(0u, 0u, 0u);
                            _1041.x = _1036 & 127u;
                            _1041.y = (_1036 >> 7u) & 127u;
                            _1041.z = _1036 >> 14u;
                            _1058 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1041 * uint3(8u, 8u, 8u)) + (frac(_1022 * _931) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1058 = 1.0f;
                        }
                        float3 _1061 = frac(_927 + float3(0.0f, _979, 0.0f));
                        float3 _1064 = (clamp(_1061, 0.0f.xxx, 1.0f.xxx) * _931) + _937;
                        uint4 _1073 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1064.x), int(_1064.y), int(_1064.z), 0).xyz, 0));
                        uint _1074 = _1073.x;
                        uint _1075 = _1074 & 16777215u;
                        float _1097 = 0.0f;
                        if (_1074 < 4294967295u)
                        {
                            uint3 _1080 = uint3(0u, 0u, 0u);
                            _1080.x = _1075 & 127u;
                            _1080.y = (_1075 >> 7u) & 127u;
                            _1080.z = _1075 >> 14u;
                            _1097 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1080 * uint3(8u, 8u, 8u)) + (frac(_1061 * _931) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1097 = 1.0f;
                        }
                        float3 _1100 = frac(_927 + float3(0.0f, _1019, 0.0f));
                        float3 _1103 = (clamp(_1100, 0.0f.xxx, 1.0f.xxx) * _931) + _937;
                        uint4 _1112 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1103.x), int(_1103.y), int(_1103.z), 0).xyz, 0));
                        uint _1113 = _1112.x;
                        uint _1114 = _1113 & 16777215u;
                        float _1136 = 0.0f;
                        if (_1113 < 4294967295u)
                        {
                            uint3 _1119 = uint3(0u, 0u, 0u);
                            _1119.x = _1114 & 127u;
                            _1119.y = (_1114 >> 7u) & 127u;
                            _1119.z = _1114 >> 14u;
                            _1136 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1119 * uint3(8u, 8u, 8u)) + (frac(_1100 * _931) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1136 = 1.0f;
                        }
                        _1147 = (float3(_1018 - _1058, _1097 - _1136, _550) * (_902 * 16.0f)) / (View_View_GlobalVolumeTranslatedCenterAndExtent[_892].w * (128.0f * View_View_GlobalVolumeTexelSize)).xxx;
                        break;
                    }
                    _1146 = _955;
                }
                else
                {
                    _1146 = _889;
                }
                _890 = _1146;
            }
            else
            {
                _890 = _889;
            }
            _889 = _890;
            _892++;
            continue;
        }
        else
        {
            _1147 = float3(0.0f, 0.0f, 0.001000000047497451305389404296875f);
            break;
        }
    }
    float3 _1154 = Material_Material_PreshaderBuffer[88].w.xxx;
    float _1161 = lerp(View_View_GameTime, MaterialCollection0_MaterialCollection0_Vectors[0].z, MaterialCollection0_MaterialCollection0_Vectors[0].w);
    float3 _1172 = float3((View_View_ViewTilePosition * _1154).xy, 0.0f);
    float3 _1173 = float3((mad(_1147, Material_Material_PreshaderBuffer[88].z.xxx, _642) * _1154).xy, ((_1161 * Material_Material_PreshaderBuffer[89].y).xx + float2(1.0f, 0.0f)).x);
    float3 _1183 = 0.0f.xxx;
    float _1188 = 0.0f;
    _1183 = (((_1172 - floor(_1172 + ((_1173 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _1173) * 1.0f;
    _1188 = 0.0f;
    float _1186 = 1.0f;
    uint _1190 = 0u;
    [loop]
    for (; _1190 < 10u; )
    {
        float3 _1194 = frac(_1183);
        float _1196 = dot(floor(_1183), float3(19.0f, 47.0f, 101.0f));
        uint3 _1208 = (uint3(int3(int(_1196), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1209 = _1208.y;
        uint _1210 = _1208.z;
        uint _1213 = _1208.x + (_1209 * _1210);
        uint _1215 = _1209 + (_1210 * _1213);
        uint3 _1220 = uint3(0u, 0u, 0u);
        _1220.x = _1213 + (_1215 * (_1210 + (_1213 * _1215)));
        uint3 _1221 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _1234 = (uint3(int3(int(_1196 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1235 = _1234.y;
        uint _1236 = _1234.z;
        uint _1239 = _1234.x + (_1235 * _1236);
        uint _1241 = _1235 + (_1236 * _1239);
        uint3 _1246 = uint3(0u, 0u, 0u);
        _1246.x = _1239 + (_1241 * (_1236 + (_1239 * _1241)));
        uint3 _1259 = (uint3(int3(int(_1196 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1260 = _1259.y;
        uint _1261 = _1259.z;
        uint _1264 = _1259.x + (_1260 * _1261);
        uint _1266 = _1260 + (_1261 * _1264);
        uint3 _1271 = uint3(0u, 0u, 0u);
        _1271.x = _1264 + (_1266 * (_1261 + (_1264 * _1266)));
        uint3 _1284 = (uint3(int3(int(_1196 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1285 = _1284.y;
        uint _1286 = _1284.z;
        uint _1289 = _1284.x + (_1285 * _1286);
        uint _1291 = _1285 + (_1286 * _1289);
        uint3 _1296 = uint3(0u, 0u, 0u);
        _1296.x = _1289 + (_1291 * (_1286 + (_1289 * _1291)));
        uint3 _1309 = (uint3(int3(int(_1196 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1310 = _1309.y;
        uint _1311 = _1309.z;
        uint _1314 = _1309.x + (_1310 * _1311);
        uint _1316 = _1310 + (_1311 * _1314);
        uint3 _1321 = uint3(0u, 0u, 0u);
        _1321.x = _1314 + (_1316 * (_1311 + (_1314 * _1316)));
        uint3 _1334 = (uint3(int3(int(_1196 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1335 = _1334.y;
        uint _1336 = _1334.z;
        uint _1339 = _1334.x + (_1335 * _1336);
        uint _1341 = _1335 + (_1336 * _1339);
        uint3 _1346 = uint3(0u, 0u, 0u);
        _1346.x = _1339 + (_1341 * (_1336 + (_1339 * _1341)));
        uint3 _1359 = (uint3(int3(int(_1196 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1360 = _1359.y;
        uint _1361 = _1359.z;
        uint _1364 = _1359.x + (_1360 * _1361);
        uint _1366 = _1360 + (_1361 * _1364);
        uint3 _1371 = uint3(0u, 0u, 0u);
        _1371.x = _1364 + (_1366 * (_1361 + (_1364 * _1366)));
        uint3 _1384 = (uint3(int3(int(_1196 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1385 = _1384.y;
        uint _1386 = _1384.z;
        uint _1389 = _1384.x + (_1385 * _1386);
        uint _1391 = _1385 + (_1386 * _1389);
        uint3 _1396 = uint3(0u, 0u, 0u);
        _1396.x = _1389 + (_1391 * (_1386 + (_1389 * _1391)));
        float4 _1407 = float4(_1194, 0.0f);
        float4 _1413 = ((_1407 * _1407) * _1407) * mad(_1407, (_1407 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _1414 = _1413.x;
        float _1417 = _1413.y;
        float _1424 = abs(lerp(lerp(lerp(dot(mad(float3((_1220 >> _1221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1194), dot(mad(float3((_1246 >> _1221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1194 - float3(1.0f, 0.0f, 0.0f)), _1414), lerp(dot(mad(float3((_1271 >> _1221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1194 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_1296 >> _1221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1194 - float3(1.0f, 1.0f, 0.0f)), _1414), _1417), lerp(lerp(dot(mad(float3((_1321 >> _1221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1194 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_1346 >> _1221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1194 - float3(1.0f, 0.0f, 1.0f)), _1414), lerp(dot(mad(float3((_1371 >> _1221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1194 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_1396 >> _1221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1194 - 1.0f.xxx), _1414), _1417), _1413.z));
        float _1189 = mad(_1424, _1186, _1188);
        _1183 *= 2.0f;
        _1186 *= 0.5f;
        _1188 = _1189;
        _1190++;
        continue;
    }
    float _1428 = -_887;
    float _1434 = clamp(mad(mad(_1428, Material_Material_PreshaderBuffer[89].z, lerp(0.0f, 1.0f, _1188)) / mad(_1428, Material_Material_PreshaderBuffer[89].z, mad(_887, Material_Material_PreshaderBuffer[89].z, 1.0f)), -1.0f, 1.0f), 0.0f, 1.0f);
    float _1443 = clamp(lerp(Material_Material_PreshaderBuffer[90].x, Material_Material_PreshaderBuffer[89].w, (_1434 <= 0.0f) ? 0.0f : pow(_1434, 2.0f)), 0.0f, 1.0f);
    float _1444 = _887 * _1443;
    float3 _1447 = Material_Material_PreshaderBuffer[90].y.xxx;
    float3 _1448 = View_View_ViewTilePosition * _1447;
    float3 _1449 = _642 * _1447;
    float3 _1460 = 0.0f.xxx;
    float3 _1463 = 0.0f.xxx;
    float _1467 = 0.0f;
    _1460 = _543;
    _1463 = mad(_642, _1447, mad(View_View_ViewTilePosition, _1447, -floor(mad(View_View_ViewTilePosition, _1447, (_1449 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _1467 = 0.0f;
    float3 _1464 = 0.0f.xxx;
    float _1466 = 0.0f;
    float _1468 = 0.0f;
    float3 _1461 = 0.0f.xxx;
    float _1465 = 1.0f;
    uint _1469 = 0u;
    [loop]
    for (; _1469 < 1u; _1460 = _1461, _1463 = _1464, _1465 = _1466, _1467 = _1468, _1469++)
    {
        float3 _1474 = frac(_1463);
        float3 _1475 = floor(_1463);
        float3 _1476 = _1460;
        _1476.x = 0.0f;
        float4 _1478 = 0.0f.xxxx;
        _1478 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _1461 = _1476;
        float3 _1481 = 0.0f.xxx;
        float4 _1479 = 0.0f.xxxx;
        float3 _1488 = 0.0f.xxx;
        for (; _1461.x <= 1.0f; _1481 = _1488, _1481.x = _1488.x + 1.0f, _1478 = _1479, _1461 = _1481)
        {
            float3 _1486 = _1461;
            _1486.y = 0.0f;
            _1488 = _1486;
            _1479 = _1478;
            float3 _1489 = 0.0f.xxx;
            float4 _1491 = 0.0f.xxxx;
            float3 _1500 = 0.0f.xxx;
            for (; _1488.y <= 1.0f; _1489 = _1500, _1489.y = _1500.y + 1.0f, _1488 = _1489, _1479 = _1491)
            {
                float3 _1496 = _1488;
                _1496.z = 0.0f;
                _1491 = _1479;
                _1500 = _1496;
                for (; _1500.z <= 1.0f; )
                {
                    float3 _1505 = _1475 + _1500;
                    uint3 _1510 = (uint3(int3(float3(_1505.x, _1505.y, _1505.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _1511 = _1510.y;
                    uint _1512 = _1510.z;
                    uint _1515 = _1510.x + (_1511 * _1512);
                    uint _1517 = _1511 + (_1512 * _1515);
                    uint _1519 = _1512 + (_1515 * _1517);
                    uint _1521 = _1515 + (_1517 * _1519);
                    uint3 _1522 = _1510;
                    _1522.x = _1521;
                    uint _1524 = _1517 + (_1519 * _1521);
                    _1522.y = _1524;
                    _1522.z = _1519 + (_1521 * _1524);
                    float3 _1536 = _1474 - (_1500 + (normalize(mad(float3(_1522 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _1501 = _1500;
                    _1501.z = _1500.z + 1.0f;
                    _1491 = float4(0.0f, 0.0f, 0.0f, min(_1491.w, dot(_1536, _1536)));
                    _1500 = _1501;
                    continue;
                }
            }
        }
        _1468 = mad(abs(mad(sqrt(_1478.w), 2.0f, -1.0f)), _1465, _1467);
        _1464 = _1463 * 2.0f;
        _1466 = _1465 * 0.5f;
    }
    float3 _1562 = 0.0f.xxx;
    float3 _1565 = 0.0f.xxx;
    float _1569 = 0.0f;
    _1562 = _543;
    _1565 = mad(_1449, 1.2000000476837158203125f.xxx, mad(_1448, 1.2000000476837158203125f.xxx, -floor(mad(_1448, 1.2000000476837158203125f.xxx, ((_1449 * 1.2000000476837158203125f.xxx) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _1569 = 0.0f;
    float3 _1566 = 0.0f.xxx;
    float _1568 = 0.0f;
    float _1570 = 0.0f;
    float3 _1563 = 0.0f.xxx;
    float _1567 = 1.0f;
    uint _1571 = 0u;
    [loop]
    for (; _1571 < 1u; _1562 = _1563, _1565 = _1566, _1567 = _1568, _1569 = _1570, _1571++)
    {
        float3 _1576 = frac(_1565);
        float3 _1577 = floor(_1565);
        float3 _1578 = _1562;
        _1578.x = 0.0f;
        float4 _1580 = 0.0f.xxxx;
        _1580 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _1563 = _1578;
        float3 _1583 = 0.0f.xxx;
        float4 _1581 = 0.0f.xxxx;
        float3 _1590 = 0.0f.xxx;
        for (; _1563.x <= 1.0f; _1583 = _1590, _1583.x = _1590.x + 1.0f, _1580 = _1581, _1563 = _1583)
        {
            float3 _1588 = _1563;
            _1588.y = 0.0f;
            _1590 = _1588;
            _1581 = _1580;
            float3 _1591 = 0.0f.xxx;
            float4 _1593 = 0.0f.xxxx;
            float3 _1602 = 0.0f.xxx;
            for (; _1590.y <= 1.0f; _1591 = _1602, _1591.y = _1602.y + 1.0f, _1590 = _1591, _1581 = _1593)
            {
                float3 _1598 = _1590;
                _1598.z = 0.0f;
                _1593 = _1581;
                _1602 = _1598;
                for (; _1602.z <= 1.0f; )
                {
                    float3 _1607 = _1577 + _1602;
                    uint3 _1612 = (uint3(int3(float3(_1607.x, _1607.y, _1607.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _1613 = _1612.y;
                    uint _1614 = _1612.z;
                    uint _1617 = _1612.x + (_1613 * _1614);
                    uint _1619 = _1613 + (_1614 * _1617);
                    uint _1621 = _1614 + (_1617 * _1619);
                    uint _1623 = _1617 + (_1619 * _1621);
                    uint3 _1624 = _1612;
                    _1624.x = _1623;
                    uint _1626 = _1619 + (_1621 * _1623);
                    _1624.y = _1626;
                    _1624.z = _1621 + (_1623 * _1626);
                    float3 _1638 = _1576 - (_1602 + (normalize(mad(float3(_1624 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _1603 = _1602;
                    _1603.z = _1602.z + 1.0f;
                    _1593 = float4(0.0f, 0.0f, 0.0f, min(_1593.w, dot(_1638, _1638)));
                    _1602 = _1603;
                    continue;
                }
            }
        }
        _1570 = mad(abs(mad(sqrt(_1580.w), 2.0f, -1.0f)), _1567, _1569);
        _1566 = _1565 * 2.0f;
        _1568 = _1567 * 0.5f;
    }
    float _1653 = clamp(lerp(-1.0f, 1.0f, _1467), 0.0f, 1.0f) + clamp(lerp(-1.0f, 1.0f, _1569), 0.0f, 1.0f);
    float _1667 = (abs(Material_Material_PreshaderBuffer[2].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[2].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[2].x : Material_Material_PreshaderBuffer[2].y) : Material_Material_PreshaderBuffer[2].x;
    float _1675 = (abs(_1667 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_1667 >= 1.0f) ? Material_Material_PreshaderBuffer[2].z : Material_Material_PreshaderBuffer[2].x) : Material_Material_PreshaderBuffer[2].x;
    float3 _1685 = float3(min(max((abs(_1675) > 9.9999997473787516355514526367188e-06f) ? ((_1675 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[4].w, 0.0f);
    float2 _1696 = float2(View_View_ViewTilePosition.xy);
    float2 _1697 = float2(_642.xy);
    float2 _1700 = float2(min(max(_1685 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _1701 = _1696 * _1700;
    float2 _1702 = _1700 * _1697;
    float _1707 = _1701.x + _1701.y;
    float _1711 = _1707 * Material_Material_PreshaderBuffer[9].x;
    float _1714 = _1161 - Material_Material_PreshaderBuffer[9].z;
    float3 _1717 = Material_Material_PreshaderBuffer[9].w.xxx;
    float3 _1722 = Material_Material_PreshaderBuffer[10].x.xxx;
    float3 _1726 = MaterialCollection0_MaterialCollection0_Vectors[0].y.xxx;
    float3 _1727 = ((View_View_ViewTilePosition * _1717) * _1722) * _1726;
    float3 _1729 = (((_1717 * _642) * _1722) * _1726) * 0.100000001490116119384765625f.xxx;
    float3 _1740 = float3(_1729.xy, ((_1161 * Material_Material_PreshaderBuffer[10].z).xx + _1729.z.xx).x);
    float3 _1751 = 0.0f.xxx;
    float _1756 = 0.0f;
    _1751 = ((mad(_1727, 0.100000001490116119384765625f.xxx, -floor(mad(_1727, 0.100000001490116119384765625f.xxx, (_1740 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _1740) * 1.0f;
    _1756 = 0.0f;
    float _1754 = 1.0f;
    uint _1758 = 0u;
    [loop]
    for (; _1758 < 6u; )
    {
        float3 _1762 = frac(_1751);
        float _1764 = dot(floor(_1751), float3(19.0f, 47.0f, 101.0f));
        uint3 _1776 = (uint3(int3(int(_1764), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1777 = _1776.y;
        uint _1778 = _1776.z;
        uint _1781 = _1776.x + (_1777 * _1778);
        uint _1783 = _1777 + (_1778 * _1781);
        uint3 _1788 = uint3(0u, 0u, 0u);
        _1788.x = _1781 + (_1783 * (_1778 + (_1781 * _1783)));
        uint3 _1789 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _1802 = (uint3(int3(int(_1764 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1803 = _1802.y;
        uint _1804 = _1802.z;
        uint _1807 = _1802.x + (_1803 * _1804);
        uint _1809 = _1803 + (_1804 * _1807);
        uint3 _1814 = uint3(0u, 0u, 0u);
        _1814.x = _1807 + (_1809 * (_1804 + (_1807 * _1809)));
        uint3 _1827 = (uint3(int3(int(_1764 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1828 = _1827.y;
        uint _1829 = _1827.z;
        uint _1832 = _1827.x + (_1828 * _1829);
        uint _1834 = _1828 + (_1829 * _1832);
        uint3 _1839 = uint3(0u, 0u, 0u);
        _1839.x = _1832 + (_1834 * (_1829 + (_1832 * _1834)));
        uint3 _1852 = (uint3(int3(int(_1764 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1853 = _1852.y;
        uint _1854 = _1852.z;
        uint _1857 = _1852.x + (_1853 * _1854);
        uint _1859 = _1853 + (_1854 * _1857);
        uint3 _1864 = uint3(0u, 0u, 0u);
        _1864.x = _1857 + (_1859 * (_1854 + (_1857 * _1859)));
        uint3 _1877 = (uint3(int3(int(_1764 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1878 = _1877.y;
        uint _1879 = _1877.z;
        uint _1882 = _1877.x + (_1878 * _1879);
        uint _1884 = _1878 + (_1879 * _1882);
        uint3 _1889 = uint3(0u, 0u, 0u);
        _1889.x = _1882 + (_1884 * (_1879 + (_1882 * _1884)));
        uint3 _1902 = (uint3(int3(int(_1764 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1903 = _1902.y;
        uint _1904 = _1902.z;
        uint _1907 = _1902.x + (_1903 * _1904);
        uint _1909 = _1903 + (_1904 * _1907);
        uint3 _1914 = uint3(0u, 0u, 0u);
        _1914.x = _1907 + (_1909 * (_1904 + (_1907 * _1909)));
        uint3 _1927 = (uint3(int3(int(_1764 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1928 = _1927.y;
        uint _1929 = _1927.z;
        uint _1932 = _1927.x + (_1928 * _1929);
        uint _1934 = _1928 + (_1929 * _1932);
        uint3 _1939 = uint3(0u, 0u, 0u);
        _1939.x = _1932 + (_1934 * (_1929 + (_1932 * _1934)));
        uint3 _1952 = (uint3(int3(int(_1764 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1953 = _1952.y;
        uint _1954 = _1952.z;
        uint _1957 = _1952.x + (_1953 * _1954);
        uint _1959 = _1953 + (_1954 * _1957);
        uint3 _1964 = uint3(0u, 0u, 0u);
        _1964.x = _1957 + (_1959 * (_1954 + (_1957 * _1959)));
        float4 _1975 = float4(_1762, 0.0f);
        float4 _1981 = ((_1975 * _1975) * _1975) * mad(_1975, (_1975 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _1982 = _1981.x;
        float _1985 = _1981.y;
        float _1757 = mad(lerp(lerp(lerp(dot(mad(float3((_1788 >> _1789).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1762), dot(mad(float3((_1814 >> _1789).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1762 - float3(1.0f, 0.0f, 0.0f)), _1982), lerp(dot(mad(float3((_1839 >> _1789).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1762 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_1864 >> _1789).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1762 - float3(1.0f, 1.0f, 0.0f)), _1982), _1985), lerp(lerp(dot(mad(float3((_1889 >> _1789).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1762 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_1914 >> _1789).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1762 - float3(1.0f, 0.0f, 1.0f)), _1982), lerp(dot(mad(float3((_1939 >> _1789).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1762 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_1964 >> _1789).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1762 - 1.0f.xxx), _1982), _1985), _1981.z), _1754, _1756);
        _1751 *= 2.0f;
        _1754 *= 0.5f;
        _1756 = _1757;
        _1758++;
        continue;
    }
    float _1995 = lerp(_1161, _1714, clamp(lerp(0.0f, 1.0f, mad(_1756, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _1999 = mad(_1702.x + _1702.y, Material_Material_PreshaderBuffer[9].x, Material_Material_PreshaderBuffer[10].w * _1995);
    float _2000 = floor(_1711);
    float3 _2012 = Material_Material_PreshaderBuffer[12].x.xxx;
    float3 _2017 = Material_Material_PreshaderBuffer[12].y.xxx;
    float3 _2018 = (View_View_ViewTilePosition * _2012) * _2017;
    float3 _2019 = (_2012 * _642) * _2017;
    float3 _2020 = _2019 * 0.0001000000047497451305389404296875f.xxx;
    float2 _2027 = (_1161 * Material_Material_PreshaderBuffer[12].w).xx;
    float3 _2031 = float3(_2020.xy, (_2027 + _2020.z.xx).x);
    float3 _2042 = 0.0f.xxx;
    float _2047 = 0.0f;
    _2042 = ((mad(_2018, 0.0001000000047497451305389404296875f.xxx, -floor(mad(_2018, 0.0001000000047497451305389404296875f.xxx, (_2031 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _2031) * 1.0f;
    _2047 = 0.0f;
    float _2045 = 1.0f;
    uint _2049 = 0u;
    [loop]
    for (; _2049 < 10u; )
    {
        float3 _2053 = frac(_2042);
        float _2055 = dot(floor(_2042), float3(19.0f, 47.0f, 101.0f));
        uint3 _2067 = (uint3(int3(int(_2055), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2068 = _2067.y;
        uint _2069 = _2067.z;
        uint _2072 = _2067.x + (_2068 * _2069);
        uint _2074 = _2068 + (_2069 * _2072);
        uint3 _2079 = uint3(0u, 0u, 0u);
        _2079.x = _2072 + (_2074 * (_2069 + (_2072 * _2074)));
        uint3 _2080 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _2093 = (uint3(int3(int(_2055 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2094 = _2093.y;
        uint _2095 = _2093.z;
        uint _2098 = _2093.x + (_2094 * _2095);
        uint _2100 = _2094 + (_2095 * _2098);
        uint3 _2105 = uint3(0u, 0u, 0u);
        _2105.x = _2098 + (_2100 * (_2095 + (_2098 * _2100)));
        uint3 _2118 = (uint3(int3(int(_2055 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2119 = _2118.y;
        uint _2120 = _2118.z;
        uint _2123 = _2118.x + (_2119 * _2120);
        uint _2125 = _2119 + (_2120 * _2123);
        uint3 _2130 = uint3(0u, 0u, 0u);
        _2130.x = _2123 + (_2125 * (_2120 + (_2123 * _2125)));
        uint3 _2143 = (uint3(int3(int(_2055 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2144 = _2143.y;
        uint _2145 = _2143.z;
        uint _2148 = _2143.x + (_2144 * _2145);
        uint _2150 = _2144 + (_2145 * _2148);
        uint3 _2155 = uint3(0u, 0u, 0u);
        _2155.x = _2148 + (_2150 * (_2145 + (_2148 * _2150)));
        uint3 _2168 = (uint3(int3(int(_2055 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2169 = _2168.y;
        uint _2170 = _2168.z;
        uint _2173 = _2168.x + (_2169 * _2170);
        uint _2175 = _2169 + (_2170 * _2173);
        uint3 _2180 = uint3(0u, 0u, 0u);
        _2180.x = _2173 + (_2175 * (_2170 + (_2173 * _2175)));
        uint3 _2193 = (uint3(int3(int(_2055 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2194 = _2193.y;
        uint _2195 = _2193.z;
        uint _2198 = _2193.x + (_2194 * _2195);
        uint _2200 = _2194 + (_2195 * _2198);
        uint3 _2205 = uint3(0u, 0u, 0u);
        _2205.x = _2198 + (_2200 * (_2195 + (_2198 * _2200)));
        uint3 _2218 = (uint3(int3(int(_2055 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2219 = _2218.y;
        uint _2220 = _2218.z;
        uint _2223 = _2218.x + (_2219 * _2220);
        uint _2225 = _2219 + (_2220 * _2223);
        uint3 _2230 = uint3(0u, 0u, 0u);
        _2230.x = _2223 + (_2225 * (_2220 + (_2223 * _2225)));
        uint3 _2243 = (uint3(int3(int(_2055 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2244 = _2243.y;
        uint _2245 = _2243.z;
        uint _2248 = _2243.x + (_2244 * _2245);
        uint _2250 = _2244 + (_2245 * _2248);
        uint3 _2255 = uint3(0u, 0u, 0u);
        _2255.x = _2248 + (_2250 * (_2245 + (_2248 * _2250)));
        float4 _2266 = float4(_2053, 0.0f);
        float4 _2272 = ((_2266 * _2266) * _2266) * mad(_2266, (_2266 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _2273 = _2272.x;
        float _2276 = _2272.y;
        float _2283 = abs(lerp(lerp(lerp(dot(mad(float3((_2079 >> _2080).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2053), dot(mad(float3((_2105 >> _2080).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2053 - float3(1.0f, 0.0f, 0.0f)), _2273), lerp(dot(mad(float3((_2130 >> _2080).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2053 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_2155 >> _2080).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2053 - float3(1.0f, 1.0f, 0.0f)), _2273), _2276), lerp(lerp(dot(mad(float3((_2180 >> _2080).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2053 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_2205 >> _2080).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2053 - float3(1.0f, 0.0f, 1.0f)), _2273), lerp(dot(mad(float3((_2230 >> _2080).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2053 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_2255 >> _2080).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2053 - 1.0f.xxx), _2273), _2276), _2272.z));
        float _2048 = mad(_2283, _2045, _2047);
        _2042 *= 2.0f;
        _2045 *= 0.5f;
        _2047 = _2048;
        _2049++;
        continue;
    }
    float3 _2285 = _2019 * 0.000200000009499490261077880859375f.xxx;
    float3 _2292 = float3(_2285.xy, (_2027 + _2285.z.xx).x);
    float3 _2303 = 0.0f.xxx;
    float _2308 = 0.0f;
    _2303 = ((mad(_2018, 0.000200000009499490261077880859375f.xxx, -floor(mad(_2018, 0.000200000009499490261077880859375f.xxx, (_2292 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _2292) * 1.0f;
    _2308 = 0.0f;
    float _2306 = 1.0f;
    uint _2310 = 0u;
    [loop]
    for (; _2310 < 10u; )
    {
        float3 _2314 = frac(_2303);
        float _2316 = dot(floor(_2303), float3(19.0f, 47.0f, 101.0f));
        uint3 _2328 = (uint3(int3(int(_2316), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2329 = _2328.y;
        uint _2330 = _2328.z;
        uint _2333 = _2328.x + (_2329 * _2330);
        uint _2335 = _2329 + (_2330 * _2333);
        uint3 _2340 = uint3(0u, 0u, 0u);
        _2340.x = _2333 + (_2335 * (_2330 + (_2333 * _2335)));
        uint3 _2341 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _2354 = (uint3(int3(int(_2316 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2355 = _2354.y;
        uint _2356 = _2354.z;
        uint _2359 = _2354.x + (_2355 * _2356);
        uint _2361 = _2355 + (_2356 * _2359);
        uint3 _2366 = uint3(0u, 0u, 0u);
        _2366.x = _2359 + (_2361 * (_2356 + (_2359 * _2361)));
        uint3 _2379 = (uint3(int3(int(_2316 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2380 = _2379.y;
        uint _2381 = _2379.z;
        uint _2384 = _2379.x + (_2380 * _2381);
        uint _2386 = _2380 + (_2381 * _2384);
        uint3 _2391 = uint3(0u, 0u, 0u);
        _2391.x = _2384 + (_2386 * (_2381 + (_2384 * _2386)));
        uint3 _2404 = (uint3(int3(int(_2316 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2405 = _2404.y;
        uint _2406 = _2404.z;
        uint _2409 = _2404.x + (_2405 * _2406);
        uint _2411 = _2405 + (_2406 * _2409);
        uint3 _2416 = uint3(0u, 0u, 0u);
        _2416.x = _2409 + (_2411 * (_2406 + (_2409 * _2411)));
        uint3 _2429 = (uint3(int3(int(_2316 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2430 = _2429.y;
        uint _2431 = _2429.z;
        uint _2434 = _2429.x + (_2430 * _2431);
        uint _2436 = _2430 + (_2431 * _2434);
        uint3 _2441 = uint3(0u, 0u, 0u);
        _2441.x = _2434 + (_2436 * (_2431 + (_2434 * _2436)));
        uint3 _2454 = (uint3(int3(int(_2316 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2455 = _2454.y;
        uint _2456 = _2454.z;
        uint _2459 = _2454.x + (_2455 * _2456);
        uint _2461 = _2455 + (_2456 * _2459);
        uint3 _2466 = uint3(0u, 0u, 0u);
        _2466.x = _2459 + (_2461 * (_2456 + (_2459 * _2461)));
        uint3 _2479 = (uint3(int3(int(_2316 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2480 = _2479.y;
        uint _2481 = _2479.z;
        uint _2484 = _2479.x + (_2480 * _2481);
        uint _2486 = _2480 + (_2481 * _2484);
        uint3 _2491 = uint3(0u, 0u, 0u);
        _2491.x = _2484 + (_2486 * (_2481 + (_2484 * _2486)));
        uint3 _2504 = (uint3(int3(int(_2316 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2505 = _2504.y;
        uint _2506 = _2504.z;
        uint _2509 = _2504.x + (_2505 * _2506);
        uint _2511 = _2505 + (_2506 * _2509);
        uint3 _2516 = uint3(0u, 0u, 0u);
        _2516.x = _2509 + (_2511 * (_2506 + (_2509 * _2511)));
        float4 _2527 = float4(_2314, 0.0f);
        float4 _2533 = ((_2527 * _2527) * _2527) * mad(_2527, (_2527 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _2534 = _2533.x;
        float _2537 = _2533.y;
        float _2544 = abs(lerp(lerp(lerp(dot(mad(float3((_2340 >> _2341).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2314), dot(mad(float3((_2366 >> _2341).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2314 - float3(1.0f, 0.0f, 0.0f)), _2534), lerp(dot(mad(float3((_2391 >> _2341).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2314 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_2416 >> _2341).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2314 - float3(1.0f, 1.0f, 0.0f)), _2534), _2537), lerp(lerp(dot(mad(float3((_2441 >> _2341).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2314 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_2466 >> _2341).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2314 - float3(1.0f, 0.0f, 1.0f)), _2534), lerp(dot(mad(float3((_2491 >> _2341).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2314 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_2516 >> _2341).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2314 - 1.0f.xxx), _2534), _2537), _2533.z));
        float _2309 = mad(_2544, _2306, _2308);
        _2303 *= 2.0f;
        _2306 *= 0.5f;
        _2308 = _2309;
        _2310++;
        continue;
    }
    float _2556 = lerp(Material_Material_PreshaderBuffer[11].w, Material_Material_PreshaderBuffer[13].z, lerp(0.0f, 1.0f, _2047) * mad(lerp(0.0f, 1.0f, _2308), Material_Material_PreshaderBuffer[13].y, Material_Material_PreshaderBuffer[13].x));
    float2 _2567 = float2(min(max(_1685 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2568 = _1696 * _2567;
    float2 _2569 = _2567 * _1697;
    float _2574 = _2568.x + _2568.y;
    float _2578 = _2574 * Material_Material_PreshaderBuffer[16].y;
    float _2582 = mad(_2569.x + _2569.y, Material_Material_PreshaderBuffer[16].y, Material_Material_PreshaderBuffer[17].x * _1995);
    float _2583 = floor(_2578);
    float _2595 = _2556 * Material_Material_PreshaderBuffer[17].z;
    float2 _2606 = float2(min(max(_1685 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2607 = _1696 * _2606;
    float2 _2608 = _2606 * _1697;
    float _2613 = _2607.x + _2607.y;
    float _2617 = _2613 * Material_Material_PreshaderBuffer[18].y;
    float _2621 = mad(_2608.x + _2608.y, Material_Material_PreshaderBuffer[18].y, Material_Material_PreshaderBuffer[18].w * _1995);
    float _2622 = floor(_2617);
    float _2632 = _2595 * Material_Material_PreshaderBuffer[17].z;
    float2 _2642 = float2(min(max(_1685 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2643 = _1696 * _2642;
    float2 _2644 = _2642 * _1697;
    float _2649 = _2643.x + _2643.y;
    float _2653 = _2649 * Material_Material_PreshaderBuffer[19].z;
    float _2657 = mad(_2644.x + _2644.y, Material_Material_PreshaderBuffer[19].z, Material_Material_PreshaderBuffer[20].x * _1995);
    float _2658 = floor(_2653);
    float _2668 = _2632 * Material_Material_PreshaderBuffer[17].z;
    float _2682 = (abs(Material_Material_PreshaderBuffer[20].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[20].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[20].w : Material_Material_PreshaderBuffer[21].x) : Material_Material_PreshaderBuffer[20].w;
    float _2690 = (abs(_2682 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_2682 >= 1.0f) ? Material_Material_PreshaderBuffer[21].y : Material_Material_PreshaderBuffer[20].w) : Material_Material_PreshaderBuffer[20].w;
    float3 _2700 = float3(min(max((abs(_2690) > 9.9999997473787516355514526367188e-06f) ? ((_2690 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[22].z, 0.0f);
    float2 _2706 = float2(min(max(_2700 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2707 = _1696 * _2706;
    float2 _2708 = _2706 * _1697;
    float _2713 = _2707.x + _2707.y;
    float _2717 = _2713 * Material_Material_PreshaderBuffer[24].w;
    float _2721 = mad(_2708.x + _2708.y, Material_Material_PreshaderBuffer[24].w, Material_Material_PreshaderBuffer[25].z * _1995);
    float _2722 = floor(_2717);
    float _2734 = _2556 * Material_Material_PreshaderBuffer[25].w;
    float2 _2742 = float2(min(max(_2700 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2743 = _1696 * _2742;
    float2 _2744 = _2742 * _1697;
    float _2749 = _2743.x + _2743.y;
    float _2753 = _2749 * Material_Material_PreshaderBuffer[26].y;
    float _2757 = mad(_2744.x + _2744.y, Material_Material_PreshaderBuffer[26].y, Material_Material_PreshaderBuffer[26].w * _1995);
    float _2758 = floor(_2753);
    float _2768 = _2734 * Material_Material_PreshaderBuffer[17].z;
    float2 _2779 = float2(min(max(_2700 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2780 = _1696 * _2779;
    float2 _2781 = _2779 * _1697;
    float _2786 = _2780.x + _2780.y;
    float _2790 = _2786 * Material_Material_PreshaderBuffer[27].y;
    float _2794 = mad(_2781.x + _2781.y, Material_Material_PreshaderBuffer[27].y, Material_Material_PreshaderBuffer[27].w * _1995);
    float _2795 = floor(_2790);
    float _2805 = _2768 * Material_Material_PreshaderBuffer[17].z;
    float2 _2815 = float2(min(max(_2700 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2816 = _1696 * _2815;
    float2 _2817 = _2815 * _1697;
    float _2822 = _2816.x + _2816.y;
    float _2826 = _2822 * Material_Material_PreshaderBuffer[28].y;
    float _2830 = mad(_2817.x + _2817.y, Material_Material_PreshaderBuffer[28].y, Material_Material_PreshaderBuffer[28].w * _1995);
    float _2831 = floor(_2826);
    float _2841 = _2805 * Material_Material_PreshaderBuffer[17].z;
    float3 _2846 = (((float3(_550, _550, sin(mad(mad(_1711, 6.283185482025146484375f, _2000 * (-6.283185482025146484375f)), 2097152.0f, mad(_1999, 6.283185482025146484375f, floor(mad(mad(_1707, Material_Material_PreshaderBuffer[9].x, -_2000), 2097152.0f, _1999)) * (-6.283185482025146484375f)))) * _2556) + float3(_550, _550, sin(mad(mad(_2578, 6.283185482025146484375f, _2583 * (-6.283185482025146484375f)), 2097152.0f, mad(_2582, 6.283185482025146484375f, floor(mad(mad(_2574, Material_Material_PreshaderBuffer[16].y, -_2583), 2097152.0f, _2582)) * (-6.283185482025146484375f)))) * _2595)) + float3(_550, _550, sin(mad(mad(_2617, 6.283185482025146484375f, _2622 * (-6.283185482025146484375f)), 2097152.0f, mad(_2621, 6.283185482025146484375f, floor(mad(mad(_2613, Material_Material_PreshaderBuffer[18].y, -_2622), 2097152.0f, _2621)) * (-6.283185482025146484375f)))) * _2632)) + float3(_550, _550, sin(mad(mad(_2653, 6.283185482025146484375f, _2658 * (-6.283185482025146484375f)), 2097152.0f, mad(_2657, 6.283185482025146484375f, floor(mad(mad(_2649, Material_Material_PreshaderBuffer[19].z, -_2658), 2097152.0f, _2657)) * (-6.283185482025146484375f)))) * _2668)) + (((float3(_550, _550, sin(mad(mad(_2717, 6.283185482025146484375f, _2722 * (-6.283185482025146484375f)), 2097152.0f, mad(_2721, 6.283185482025146484375f, floor(mad(mad(_2713, Material_Material_PreshaderBuffer[24].w, -_2722), 2097152.0f, _2721)) * (-6.283185482025146484375f)))) * _2734) + float3(_550, _550, sin(mad(mad(_2753, 6.283185482025146484375f, _2758 * (-6.283185482025146484375f)), 2097152.0f, mad(_2757, 6.283185482025146484375f, floor(mad(mad(_2749, Material_Material_PreshaderBuffer[26].y, -_2758), 2097152.0f, _2757)) * (-6.283185482025146484375f)))) * _2768)) + float3(_550, _550, sin(mad(mad(_2790, 6.283185482025146484375f, _2795 * (-6.283185482025146484375f)), 2097152.0f, mad(_2794, 6.283185482025146484375f, floor(mad(mad(_2786, Material_Material_PreshaderBuffer[27].y, -_2795), 2097152.0f, _2794)) * (-6.283185482025146484375f)))) * _2805)) + float3(_550, _550, sin(mad(mad(_2826, 6.283185482025146484375f, _2831 * (-6.283185482025146484375f)), 2097152.0f, mad(_2830, 6.283185482025146484375f, floor(mad(mad(_2822, Material_Material_PreshaderBuffer[28].y, -_2831), 2097152.0f, _2830)) * (-6.283185482025146484375f)))) * _2841));
    float _2856 = (abs(Material_Material_PreshaderBuffer[29].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[29].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[29].x : Material_Material_PreshaderBuffer[29].y) : Material_Material_PreshaderBuffer[29].x;
    float _2864 = (abs(_2856 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_2856 >= 1.0f) ? Material_Material_PreshaderBuffer[29].z : Material_Material_PreshaderBuffer[29].x) : Material_Material_PreshaderBuffer[29].x;
    float3 _2874 = float3(min(max((abs(_2864) > 9.9999997473787516355514526367188e-06f) ? ((_2864 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[30].w, 0.0f);
    float2 _2880 = float2(min(max(_2874 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2881 = _1696 * _2880;
    float2 _2882 = _2880 * _1697;
    float _2887 = _2881.x + _2881.y;
    float _2891 = _2887 * Material_Material_PreshaderBuffer[32].z;
    float _2895 = mad(_2882.x + _2882.y, Material_Material_PreshaderBuffer[32].z, Material_Material_PreshaderBuffer[32].w * _1995);
    float _2896 = floor(_2891);
    float2 _2913 = float2(min(max(_2874 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2914 = _1696 * _2913;
    float2 _2915 = _2913 * _1697;
    float _2920 = _2914.x + _2914.y;
    float _2924 = _2920 * Material_Material_PreshaderBuffer[33].y;
    float _2928 = mad(_2915.x + _2915.y, Material_Material_PreshaderBuffer[33].y, Material_Material_PreshaderBuffer[33].z * _1995);
    float _2929 = floor(_2924);
    float2 _2949 = float2(min(max(_2874 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2950 = _1696 * _2949;
    float2 _2951 = _2949 * _1697;
    float _2956 = _2950.x + _2950.y;
    float _2960 = _2956 * Material_Material_PreshaderBuffer[34].x;
    float _2964 = mad(_2951.x + _2951.y, Material_Material_PreshaderBuffer[34].x, Material_Material_PreshaderBuffer[34].y * _1995);
    float _2965 = floor(_2960);
    float2 _2984 = float2(min(max(_2874 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2985 = _1696 * _2984;
    float2 _2986 = _2984 * _1697;
    float _2991 = _2985.x + _2985.y;
    float _2995 = _2991 * Material_Material_PreshaderBuffer[34].w;
    float _2999 = mad(_2986.x + _2986.y, Material_Material_PreshaderBuffer[34].w, Material_Material_PreshaderBuffer[35].x * _1995);
    float _3000 = floor(_2995);
    float3 _3014 = _2846 + (((float3(_550, _550, sin(mad(mad(_2891, 6.283185482025146484375f, _2896 * (-6.283185482025146484375f)), 2097152.0f, mad(_2895, 6.283185482025146484375f, floor(mad(mad(_2887, Material_Material_PreshaderBuffer[32].z, -_2896), 2097152.0f, _2895)) * (-6.283185482025146484375f)))) * _2734) + float3(_550, _550, sin(mad(mad(_2924, 6.283185482025146484375f, _2929 * (-6.283185482025146484375f)), 2097152.0f, mad(_2928, 6.283185482025146484375f, floor(mad(mad(_2920, Material_Material_PreshaderBuffer[33].y, -_2929), 2097152.0f, _2928)) * (-6.283185482025146484375f)))) * _2768)) + float3(_550, _550, sin(mad(mad(_2960, 6.283185482025146484375f, _2965 * (-6.283185482025146484375f)), 2097152.0f, mad(_2964, 6.283185482025146484375f, floor(mad(mad(_2956, Material_Material_PreshaderBuffer[34].x, -_2965), 2097152.0f, _2964)) * (-6.283185482025146484375f)))) * _2805)) + float3(_550, _550, sin(mad(mad(_2995, 6.283185482025146484375f, _3000 * (-6.283185482025146484375f)), 2097152.0f, mad(_2999, 6.283185482025146484375f, floor(mad(mad(_2991, Material_Material_PreshaderBuffer[34].w, -_3000), 2097152.0f, _2999)) * (-6.283185482025146484375f)))) * _2841));
    float _3024 = (abs(Material_Material_PreshaderBuffer[35].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[35].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[35].y : Material_Material_PreshaderBuffer[35].z) : Material_Material_PreshaderBuffer[35].y;
    float _3032 = (abs(_3024 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3024 >= 1.0f) ? Material_Material_PreshaderBuffer[35].w : Material_Material_PreshaderBuffer[35].y) : Material_Material_PreshaderBuffer[35].y;
    float3 _3042 = float3(min(max((abs(_3032) > 9.9999997473787516355514526367188e-06f) ? ((_3032 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[37].x, 0.0f);
    float2 _3048 = float2(min(max(_3042 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3049 = _1696 * _3048;
    float2 _3050 = _3048 * _1697;
    float _3055 = _3049.x + _3049.y;
    float _3059 = _3055 * Material_Material_PreshaderBuffer[38].w;
    float _3063 = mad(_3050.x + _3050.y, Material_Material_PreshaderBuffer[38].w, Material_Material_PreshaderBuffer[39].x * _1995);
    float _3064 = floor(_3059);
    float2 _3081 = float2(min(max(_3042 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3082 = _1696 * _3081;
    float2 _3083 = _3081 * _1697;
    float _3088 = _3082.x + _3082.y;
    float _3092 = _3088 * Material_Material_PreshaderBuffer[39].z;
    float _3096 = mad(_3083.x + _3083.y, Material_Material_PreshaderBuffer[39].z, Material_Material_PreshaderBuffer[39].w * _1995);
    float _3097 = floor(_3092);
    float2 _3117 = float2(min(max(_3042 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3118 = _1696 * _3117;
    float2 _3119 = _3117 * _1697;
    float _3124 = _3118.x + _3118.y;
    float _3128 = _3124 * Material_Material_PreshaderBuffer[40].y;
    float _3132 = mad(_3119.x + _3119.y, Material_Material_PreshaderBuffer[40].y, Material_Material_PreshaderBuffer[40].z * _1995);
    float _3133 = floor(_3128);
    float2 _3152 = float2(min(max(_3042 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3153 = _1696 * _3152;
    float2 _3154 = _3152 * _1697;
    float _3159 = _3153.x + _3153.y;
    float _3163 = _3159 * Material_Material_PreshaderBuffer[41].x;
    float _3167 = mad(_3154.x + _3154.y, Material_Material_PreshaderBuffer[41].x, Material_Material_PreshaderBuffer[41].y * _1995);
    float _3168 = floor(_3163);
    float _3191 = (abs(Material_Material_PreshaderBuffer[41].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[41].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[41].z : Material_Material_PreshaderBuffer[41].w) : Material_Material_PreshaderBuffer[41].z;
    float _3199 = (abs(_3191 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3191 >= 1.0f) ? Material_Material_PreshaderBuffer[42].x : Material_Material_PreshaderBuffer[41].z) : Material_Material_PreshaderBuffer[41].z;
    float3 _3209 = float3(min(max((abs(_3199) > 9.9999997473787516355514526367188e-06f) ? ((_3199 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[43].y, 0.0f);
    float2 _3215 = float2(min(max(_3209 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3216 = _1696 * _3215;
    float2 _3217 = _3215 * _1697;
    float _3222 = _3216.x + _3216.y;
    float _3226 = _3222 * Material_Material_PreshaderBuffer[45].x;
    float _3230 = mad(_3217.x + _3217.y, Material_Material_PreshaderBuffer[45].x, Material_Material_PreshaderBuffer[45].y * _1995);
    float _3231 = floor(_3226);
    float2 _3248 = float2(min(max(_3209 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3249 = _1696 * _3248;
    float2 _3250 = _3248 * _1697;
    float _3255 = _3249.x + _3249.y;
    float _3259 = _3255 * Material_Material_PreshaderBuffer[45].w;
    float _3263 = mad(_3250.x + _3250.y, Material_Material_PreshaderBuffer[45].w, Material_Material_PreshaderBuffer[46].x * _1995);
    float _3264 = floor(_3259);
    float2 _3284 = float2(min(max(_3209 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3285 = _1696 * _3284;
    float2 _3286 = _3284 * _1697;
    float _3291 = _3285.x + _3285.y;
    float _3295 = _3291 * Material_Material_PreshaderBuffer[46].z;
    float _3299 = mad(_3286.x + _3286.y, Material_Material_PreshaderBuffer[46].z, Material_Material_PreshaderBuffer[46].w * _1995);
    float _3300 = floor(_3295);
    float2 _3319 = float2(min(max(_3209 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3320 = _1696 * _3319;
    float2 _3321 = _3319 * _1697;
    float _3326 = _3320.x + _3320.y;
    float _3330 = _3326 * Material_Material_PreshaderBuffer[47].y;
    float _3334 = mad(_3321.x + _3321.y, Material_Material_PreshaderBuffer[47].y, Material_Material_PreshaderBuffer[47].z * _1995);
    float _3335 = floor(_3330);
    float3 _3349 = (((float3(_550, _550, sin(mad(mad(_3059, 6.283185482025146484375f, _3064 * (-6.283185482025146484375f)), 2097152.0f, mad(_3063, 6.283185482025146484375f, floor(mad(mad(_3055, Material_Material_PreshaderBuffer[38].w, -_3064), 2097152.0f, _3063)) * (-6.283185482025146484375f)))) * _2556) + float3(_550, _550, sin(mad(mad(_3092, 6.283185482025146484375f, _3097 * (-6.283185482025146484375f)), 2097152.0f, mad(_3096, 6.283185482025146484375f, floor(mad(mad(_3088, Material_Material_PreshaderBuffer[39].z, -_3097), 2097152.0f, _3096)) * (-6.283185482025146484375f)))) * _2595)) + float3(_550, _550, sin(mad(mad(_3128, 6.283185482025146484375f, _3133 * (-6.283185482025146484375f)), 2097152.0f, mad(_3132, 6.283185482025146484375f, floor(mad(mad(_3124, Material_Material_PreshaderBuffer[40].y, -_3133), 2097152.0f, _3132)) * (-6.283185482025146484375f)))) * _2632)) + float3(_550, _550, sin(mad(mad(_3163, 6.283185482025146484375f, _3168 * (-6.283185482025146484375f)), 2097152.0f, mad(_3167, 6.283185482025146484375f, floor(mad(mad(_3159, Material_Material_PreshaderBuffer[41].x, -_3168), 2097152.0f, _3167)) * (-6.283185482025146484375f)))) * _2668)) + (((float3(_550, _550, sin(mad(mad(_3226, 6.283185482025146484375f, _3231 * (-6.283185482025146484375f)), 2097152.0f, mad(_3230, 6.283185482025146484375f, floor(mad(mad(_3222, Material_Material_PreshaderBuffer[45].x, -_3231), 2097152.0f, _3230)) * (-6.283185482025146484375f)))) * _2734) + float3(_550, _550, sin(mad(mad(_3259, 6.283185482025146484375f, _3264 * (-6.283185482025146484375f)), 2097152.0f, mad(_3263, 6.283185482025146484375f, floor(mad(mad(_3255, Material_Material_PreshaderBuffer[45].w, -_3264), 2097152.0f, _3263)) * (-6.283185482025146484375f)))) * _2768)) + float3(_550, _550, sin(mad(mad(_3295, 6.283185482025146484375f, _3300 * (-6.283185482025146484375f)), 2097152.0f, mad(_3299, 6.283185482025146484375f, floor(mad(mad(_3291, Material_Material_PreshaderBuffer[46].z, -_3300), 2097152.0f, _3299)) * (-6.283185482025146484375f)))) * _2805)) + float3(_550, _550, sin(mad(mad(_3330, 6.283185482025146484375f, _3335 * (-6.283185482025146484375f)), 2097152.0f, mad(_3334, 6.283185482025146484375f, floor(mad(mad(_3326, Material_Material_PreshaderBuffer[47].y, -_3335), 2097152.0f, _3334)) * (-6.283185482025146484375f)))) * _2841));
    float _3359 = (abs(Material_Material_PreshaderBuffer[47].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[47].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[47].w : Material_Material_PreshaderBuffer[48].x) : Material_Material_PreshaderBuffer[47].w;
    float _3367 = (abs(_3359 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3359 >= 1.0f) ? Material_Material_PreshaderBuffer[48].y : Material_Material_PreshaderBuffer[47].w) : Material_Material_PreshaderBuffer[47].w;
    float3 _3377 = float3(min(max((abs(_3367) > 9.9999997473787516355514526367188e-06f) ? ((_3367 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[49].z, 0.0f);
    float2 _3383 = float2(min(max(_3377 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3384 = _1696 * _3383;
    float2 _3385 = _3383 * _1697;
    float _3390 = _3384.x + _3384.y;
    float _3394 = _3390 * Material_Material_PreshaderBuffer[51].y;
    float _3398 = mad(_3385.x + _3385.y, Material_Material_PreshaderBuffer[51].y, Material_Material_PreshaderBuffer[51].z * _1995);
    float _3399 = floor(_3394);
    float2 _3416 = float2(min(max(_3377 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3417 = _1696 * _3416;
    float2 _3418 = _3416 * _1697;
    float _3423 = _3417.x + _3417.y;
    float _3427 = _3423 * Material_Material_PreshaderBuffer[52].x;
    float _3431 = mad(_3418.x + _3418.y, Material_Material_PreshaderBuffer[52].x, Material_Material_PreshaderBuffer[52].y * _1995);
    float _3432 = floor(_3427);
    float2 _3452 = float2(min(max(_3377 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3453 = _1696 * _3452;
    float2 _3454 = _3452 * _1697;
    float _3459 = _3453.x + _3453.y;
    float _3463 = _3459 * Material_Material_PreshaderBuffer[52].w;
    float _3467 = mad(_3454.x + _3454.y, Material_Material_PreshaderBuffer[52].w, Material_Material_PreshaderBuffer[53].x * _1995);
    float _3468 = floor(_3463);
    float2 _3487 = float2(min(max(_3377 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3488 = _1696 * _3487;
    float2 _3489 = _3487 * _1697;
    float _3494 = _3488.x + _3488.y;
    float _3498 = _3494 * Material_Material_PreshaderBuffer[53].z;
    float _3502 = mad(_3489.x + _3489.y, Material_Material_PreshaderBuffer[53].z, Material_Material_PreshaderBuffer[53].w * _1995);
    float _3503 = floor(_3498);
    float3 _3517 = _3349 + (((float3(_550, _550, sin(mad(mad(_3394, 6.283185482025146484375f, _3399 * (-6.283185482025146484375f)), 2097152.0f, mad(_3398, 6.283185482025146484375f, floor(mad(mad(_3390, Material_Material_PreshaderBuffer[51].y, -_3399), 2097152.0f, _3398)) * (-6.283185482025146484375f)))) * _2734) + float3(_550, _550, sin(mad(mad(_3427, 6.283185482025146484375f, _3432 * (-6.283185482025146484375f)), 2097152.0f, mad(_3431, 6.283185482025146484375f, floor(mad(mad(_3423, Material_Material_PreshaderBuffer[52].x, -_3432), 2097152.0f, _3431)) * (-6.283185482025146484375f)))) * _2768)) + float3(_550, _550, sin(mad(mad(_3463, 6.283185482025146484375f, _3468 * (-6.283185482025146484375f)), 2097152.0f, mad(_3467, 6.283185482025146484375f, floor(mad(mad(_3459, Material_Material_PreshaderBuffer[52].w, -_3468), 2097152.0f, _3467)) * (-6.283185482025146484375f)))) * _2805)) + float3(_550, _550, sin(mad(mad(_3498, 6.283185482025146484375f, _3503 * (-6.283185482025146484375f)), 2097152.0f, mad(_3502, 6.283185482025146484375f, floor(mad(mad(_3494, Material_Material_PreshaderBuffer[53].z, -_3503), 2097152.0f, _3502)) * (-6.283185482025146484375f)))) * _2841));
    float3 _3518 = _3014 + _3517;
    float _3531 = (abs(Material_Material_PreshaderBuffer[54].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[54].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[54].y : Material_Material_PreshaderBuffer[54].z) : Material_Material_PreshaderBuffer[54].y;
    float _3539 = (abs(_3531 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3531 >= 1.0f) ? Material_Material_PreshaderBuffer[54].w : Material_Material_PreshaderBuffer[54].y) : Material_Material_PreshaderBuffer[54].y;
    float3 _3549 = float3(min(max((abs(_3539) > 9.9999997473787516355514526367188e-06f) ? ((_3539 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[56].x, 0.0f);
    float2 _3555 = float2(min(max(_3549 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3556 = _1696 * _3555;
    float2 _3557 = _3555 * _1697;
    float _3562 = _3556.x + _3556.y;
    float _3563 = _3557.x + _3557.y;
    float _3566 = Material_Material_PreshaderBuffer[57].y * MaterialCollection0_MaterialCollection0_Vectors[0].y;
    float _3569 = Material_Material_PreshaderBuffer[57].z * _3566;
    float _3570 = 2.0f / _3569;
    float _3571 = _3562 * _3570;
    float3 _3577 = Material_Material_PreshaderBuffer[58].x.xxx;
    float3 _3582 = Material_Material_PreshaderBuffer[58].y.xxx;
    float3 _3583 = (View_View_ViewTilePosition * _3577) * _3582;
    float3 _3586 = (1.0f / MaterialCollection0_MaterialCollection0_Vectors[0].y).xxx;
    float3 _3587 = ((_3577 * _642) * _3582) * _3586;
    float2 _3594 = (_1161 * Material_Material_PreshaderBuffer[58].w).xx;
    float3 _3598 = float3(_3587.xy, (_3594 + _3587.z.xx).x);
    float3 _3609 = 0.0f.xxx;
    float _3614 = 0.0f;
    _3609 = ((mad(_3583, _3586, -floor(mad(_3583, _3586, (_3598 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _3598) * 1.0f;
    _3614 = 0.0f;
    float _3612 = 1.0f;
    uint _3616 = 0u;
    [loop]
    for (; _3616 < 6u; )
    {
        float3 _3620 = frac(_3609);
        float _3622 = dot(floor(_3609), float3(19.0f, 47.0f, 101.0f));
        uint3 _3634 = (uint3(int3(int(_3622), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3635 = _3634.y;
        uint _3636 = _3634.z;
        uint _3639 = _3634.x + (_3635 * _3636);
        uint _3641 = _3635 + (_3636 * _3639);
        uint3 _3646 = uint3(0u, 0u, 0u);
        _3646.x = _3639 + (_3641 * (_3636 + (_3639 * _3641)));
        uint3 _3647 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _3660 = (uint3(int3(int(_3622 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3661 = _3660.y;
        uint _3662 = _3660.z;
        uint _3665 = _3660.x + (_3661 * _3662);
        uint _3667 = _3661 + (_3662 * _3665);
        uint3 _3672 = uint3(0u, 0u, 0u);
        _3672.x = _3665 + (_3667 * (_3662 + (_3665 * _3667)));
        uint3 _3685 = (uint3(int3(int(_3622 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3686 = _3685.y;
        uint _3687 = _3685.z;
        uint _3690 = _3685.x + (_3686 * _3687);
        uint _3692 = _3686 + (_3687 * _3690);
        uint3 _3697 = uint3(0u, 0u, 0u);
        _3697.x = _3690 + (_3692 * (_3687 + (_3690 * _3692)));
        uint3 _3710 = (uint3(int3(int(_3622 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3711 = _3710.y;
        uint _3712 = _3710.z;
        uint _3715 = _3710.x + (_3711 * _3712);
        uint _3717 = _3711 + (_3712 * _3715);
        uint3 _3722 = uint3(0u, 0u, 0u);
        _3722.x = _3715 + (_3717 * (_3712 + (_3715 * _3717)));
        uint3 _3735 = (uint3(int3(int(_3622 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3736 = _3735.y;
        uint _3737 = _3735.z;
        uint _3740 = _3735.x + (_3736 * _3737);
        uint _3742 = _3736 + (_3737 * _3740);
        uint3 _3747 = uint3(0u, 0u, 0u);
        _3747.x = _3740 + (_3742 * (_3737 + (_3740 * _3742)));
        uint3 _3760 = (uint3(int3(int(_3622 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3761 = _3760.y;
        uint _3762 = _3760.z;
        uint _3765 = _3760.x + (_3761 * _3762);
        uint _3767 = _3761 + (_3762 * _3765);
        uint3 _3772 = uint3(0u, 0u, 0u);
        _3772.x = _3765 + (_3767 * (_3762 + (_3765 * _3767)));
        uint3 _3785 = (uint3(int3(int(_3622 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3786 = _3785.y;
        uint _3787 = _3785.z;
        uint _3790 = _3785.x + (_3786 * _3787);
        uint _3792 = _3786 + (_3787 * _3790);
        uint3 _3797 = uint3(0u, 0u, 0u);
        _3797.x = _3790 + (_3792 * (_3787 + (_3790 * _3792)));
        uint3 _3810 = (uint3(int3(int(_3622 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3811 = _3810.y;
        uint _3812 = _3810.z;
        uint _3815 = _3810.x + (_3811 * _3812);
        uint _3817 = _3811 + (_3812 * _3815);
        uint3 _3822 = uint3(0u, 0u, 0u);
        _3822.x = _3815 + (_3817 * (_3812 + (_3815 * _3817)));
        float4 _3833 = float4(_3620, 0.0f);
        float4 _3839 = ((_3833 * _3833) * _3833) * mad(_3833, (_3833 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _3840 = _3839.x;
        float _3843 = _3839.y;
        float _3615 = mad(lerp(lerp(lerp(dot(mad(float3((_3646 >> _3647).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3620), dot(mad(float3((_3672 >> _3647).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3620 - float3(1.0f, 0.0f, 0.0f)), _3840), lerp(dot(mad(float3((_3697 >> _3647).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3620 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_3722 >> _3647).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3620 - float3(1.0f, 1.0f, 0.0f)), _3840), _3843), lerp(lerp(dot(mad(float3((_3747 >> _3647).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3620 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_3772 >> _3647).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3620 - float3(1.0f, 0.0f, 1.0f)), _3840), lerp(dot(mad(float3((_3797 >> _3647).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3620 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_3822 >> _3647).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3620 - 1.0f.xxx), _3840), _3843), _3839.z), _3612, _3614);
        _3609 *= 2.0f;
        _3612 *= 0.5f;
        _3614 = _3615;
        _3616++;
        continue;
    }
    float _3853 = lerp(_1161, _1714, clamp(lerp(0.0f, 1.0f, mad(_3614, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _3855 = mad(_3563, _3570, (_3570 * Material_Material_PreshaderBuffer[57].w) * _3853);
    float _3856 = floor(_3571);
    float _3868 = Material_Material_PreshaderBuffer[59].x * MaterialCollection0_MaterialCollection0_Vectors[0].y;
    float _3873 = mad(Material_Material_PreshaderBuffer[59].x, MaterialCollection0_MaterialCollection0_Vectors[0].y, -(Material_Material_PreshaderBuffer[59].y * MaterialCollection0_MaterialCollection0_Vectors[0].y));
    float3 _3876 = Material_Material_PreshaderBuffer[59].z.xxx;
    float3 _3881 = Material_Material_PreshaderBuffer[59].w.xxx;
    float3 _3882 = (View_View_ViewTilePosition * _3876) * _3881;
    float3 _3884 = ((_3876 * _642) * _3881) * _3586;
    float2 _3891 = (_1161 * Material_Material_PreshaderBuffer[60].y).xx;
    float3 _3895 = float3(_3884.xy, (_3891 + _3884.z.xx).x);
    float3 _3906 = 0.0f.xxx;
    float _3911 = 0.0f;
    _3906 = ((mad(_3882, _3586, -floor(mad(_3882, _3586, (_3895 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _3895) * 1.0f;
    _3911 = 0.0f;
    float _3909 = 1.0f;
    uint _3913 = 0u;
    [loop]
    for (; _3913 < 10u; )
    {
        float3 _3917 = frac(_3906);
        float _3919 = dot(floor(_3906), float3(19.0f, 47.0f, 101.0f));
        uint3 _3931 = (uint3(int3(int(_3919), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3932 = _3931.y;
        uint _3933 = _3931.z;
        uint _3936 = _3931.x + (_3932 * _3933);
        uint _3938 = _3932 + (_3933 * _3936);
        uint3 _3943 = uint3(0u, 0u, 0u);
        _3943.x = _3936 + (_3938 * (_3933 + (_3936 * _3938)));
        uint3 _3944 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _3957 = (uint3(int3(int(_3919 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3958 = _3957.y;
        uint _3959 = _3957.z;
        uint _3962 = _3957.x + (_3958 * _3959);
        uint _3964 = _3958 + (_3959 * _3962);
        uint3 _3969 = uint3(0u, 0u, 0u);
        _3969.x = _3962 + (_3964 * (_3959 + (_3962 * _3964)));
        uint3 _3982 = (uint3(int3(int(_3919 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3983 = _3982.y;
        uint _3984 = _3982.z;
        uint _3987 = _3982.x + (_3983 * _3984);
        uint _3989 = _3983 + (_3984 * _3987);
        uint3 _3994 = uint3(0u, 0u, 0u);
        _3994.x = _3987 + (_3989 * (_3984 + (_3987 * _3989)));
        uint3 _4007 = (uint3(int3(int(_3919 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4008 = _4007.y;
        uint _4009 = _4007.z;
        uint _4012 = _4007.x + (_4008 * _4009);
        uint _4014 = _4008 + (_4009 * _4012);
        uint3 _4019 = uint3(0u, 0u, 0u);
        _4019.x = _4012 + (_4014 * (_4009 + (_4012 * _4014)));
        uint3 _4032 = (uint3(int3(int(_3919 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4033 = _4032.y;
        uint _4034 = _4032.z;
        uint _4037 = _4032.x + (_4033 * _4034);
        uint _4039 = _4033 + (_4034 * _4037);
        uint3 _4044 = uint3(0u, 0u, 0u);
        _4044.x = _4037 + (_4039 * (_4034 + (_4037 * _4039)));
        uint3 _4057 = (uint3(int3(int(_3919 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4058 = _4057.y;
        uint _4059 = _4057.z;
        uint _4062 = _4057.x + (_4058 * _4059);
        uint _4064 = _4058 + (_4059 * _4062);
        uint3 _4069 = uint3(0u, 0u, 0u);
        _4069.x = _4062 + (_4064 * (_4059 + (_4062 * _4064)));
        uint3 _4082 = (uint3(int3(int(_3919 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4083 = _4082.y;
        uint _4084 = _4082.z;
        uint _4087 = _4082.x + (_4083 * _4084);
        uint _4089 = _4083 + (_4084 * _4087);
        uint3 _4094 = uint3(0u, 0u, 0u);
        _4094.x = _4087 + (_4089 * (_4084 + (_4087 * _4089)));
        uint3 _4107 = (uint3(int3(int(_3919 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4108 = _4107.y;
        uint _4109 = _4107.z;
        uint _4112 = _4107.x + (_4108 * _4109);
        uint _4114 = _4108 + (_4109 * _4112);
        uint3 _4119 = uint3(0u, 0u, 0u);
        _4119.x = _4112 + (_4114 * (_4109 + (_4112 * _4114)));
        float4 _4130 = float4(_3917, 0.0f);
        float4 _4136 = ((_4130 * _4130) * _4130) * mad(_4130, (_4130 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _4137 = _4136.x;
        float _4140 = _4136.y;
        float _4147 = abs(lerp(lerp(lerp(dot(mad(float3((_3943 >> _3944).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3917), dot(mad(float3((_3969 >> _3944).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3917 - float3(1.0f, 0.0f, 0.0f)), _4137), lerp(dot(mad(float3((_3994 >> _3944).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3917 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_4019 >> _3944).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3917 - float3(1.0f, 1.0f, 0.0f)), _4137), _4140), lerp(lerp(dot(mad(float3((_4044 >> _3944).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3917 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_4069 >> _3944).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3917 - float3(1.0f, 0.0f, 1.0f)), _4137), lerp(dot(mad(float3((_4094 >> _3944).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3917 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_4119 >> _3944).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3917 - 1.0f.xxx), _4137), _4140), _4136.z));
        float _3912 = mad(_4147, _3909, _3911);
        _3906 *= 2.0f;
        _3909 *= 0.5f;
        _3911 = _3912;
        _3913++;
        continue;
    }
    float3 _4151 = Material_Material_PreshaderBuffer[60].z.xxx;
    float3 _4156 = Material_Material_PreshaderBuffer[60].w.xxx;
    float3 _4157 = (View_View_ViewTilePosition * _4151) * _4156;
    float3 _4159 = ((_4151 * _642) * _4156) * _3586;
    float2 _4166 = (_1161 * Material_Material_PreshaderBuffer[61].y).xx;
    float3 _4170 = float3(_4159.xy, (_4166 + _4159.z.xx).x);
    float3 _4181 = 0.0f.xxx;
    float _4186 = 0.0f;
    _4181 = ((mad(_4157, _3586, -floor(mad(_4157, _3586, (_4170 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _4170) * 1.0f;
    _4186 = 0.0f;
    float _4184 = 1.0f;
    uint _4188 = 0u;
    [loop]
    for (; _4188 < 10u; )
    {
        float3 _4192 = frac(_4181);
        float _4194 = dot(floor(_4181), float3(19.0f, 47.0f, 101.0f));
        uint3 _4206 = (uint3(int3(int(_4194), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4207 = _4206.y;
        uint _4208 = _4206.z;
        uint _4211 = _4206.x + (_4207 * _4208);
        uint _4213 = _4207 + (_4208 * _4211);
        uint3 _4218 = uint3(0u, 0u, 0u);
        _4218.x = _4211 + (_4213 * (_4208 + (_4211 * _4213)));
        uint3 _4219 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _4232 = (uint3(int3(int(_4194 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4233 = _4232.y;
        uint _4234 = _4232.z;
        uint _4237 = _4232.x + (_4233 * _4234);
        uint _4239 = _4233 + (_4234 * _4237);
        uint3 _4244 = uint3(0u, 0u, 0u);
        _4244.x = _4237 + (_4239 * (_4234 + (_4237 * _4239)));
        uint3 _4257 = (uint3(int3(int(_4194 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4258 = _4257.y;
        uint _4259 = _4257.z;
        uint _4262 = _4257.x + (_4258 * _4259);
        uint _4264 = _4258 + (_4259 * _4262);
        uint3 _4269 = uint3(0u, 0u, 0u);
        _4269.x = _4262 + (_4264 * (_4259 + (_4262 * _4264)));
        uint3 _4282 = (uint3(int3(int(_4194 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4283 = _4282.y;
        uint _4284 = _4282.z;
        uint _4287 = _4282.x + (_4283 * _4284);
        uint _4289 = _4283 + (_4284 * _4287);
        uint3 _4294 = uint3(0u, 0u, 0u);
        _4294.x = _4287 + (_4289 * (_4284 + (_4287 * _4289)));
        uint3 _4307 = (uint3(int3(int(_4194 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4308 = _4307.y;
        uint _4309 = _4307.z;
        uint _4312 = _4307.x + (_4308 * _4309);
        uint _4314 = _4308 + (_4309 * _4312);
        uint3 _4319 = uint3(0u, 0u, 0u);
        _4319.x = _4312 + (_4314 * (_4309 + (_4312 * _4314)));
        uint3 _4332 = (uint3(int3(int(_4194 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4333 = _4332.y;
        uint _4334 = _4332.z;
        uint _4337 = _4332.x + (_4333 * _4334);
        uint _4339 = _4333 + (_4334 * _4337);
        uint3 _4344 = uint3(0u, 0u, 0u);
        _4344.x = _4337 + (_4339 * (_4334 + (_4337 * _4339)));
        uint3 _4357 = (uint3(int3(int(_4194 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4358 = _4357.y;
        uint _4359 = _4357.z;
        uint _4362 = _4357.x + (_4358 * _4359);
        uint _4364 = _4358 + (_4359 * _4362);
        uint3 _4369 = uint3(0u, 0u, 0u);
        _4369.x = _4362 + (_4364 * (_4359 + (_4362 * _4364)));
        uint3 _4382 = (uint3(int3(int(_4194 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4383 = _4382.y;
        uint _4384 = _4382.z;
        uint _4387 = _4382.x + (_4383 * _4384);
        uint _4389 = _4383 + (_4384 * _4387);
        uint3 _4394 = uint3(0u, 0u, 0u);
        _4394.x = _4387 + (_4389 * (_4384 + (_4387 * _4389)));
        float4 _4405 = float4(_4192, 0.0f);
        float4 _4411 = ((_4405 * _4405) * _4405) * mad(_4405, (_4405 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _4412 = _4411.x;
        float _4415 = _4411.y;
        float _4422 = abs(lerp(lerp(lerp(dot(mad(float3((_4218 >> _4219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4192), dot(mad(float3((_4244 >> _4219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4192 - float3(1.0f, 0.0f, 0.0f)), _4412), lerp(dot(mad(float3((_4269 >> _4219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4192 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_4294 >> _4219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4192 - float3(1.0f, 1.0f, 0.0f)), _4412), _4415), lerp(lerp(dot(mad(float3((_4319 >> _4219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4192 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_4344 >> _4219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4192 - float3(1.0f, 0.0f, 1.0f)), _4412), lerp(dot(mad(float3((_4369 >> _4219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4192 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_4394 >> _4219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4192 - 1.0f.xxx), _4412), _4415), _4411.z));
        float _4187 = mad(_4422, _4184, _4186);
        _4181 *= 2.0f;
        _4184 *= 0.5f;
        _4186 = _4187;
        _4188++;
        continue;
    }
    float _4430 = lerp(_3868, _3873, lerp(0.0f, 1.0f, _3911) * mad(lerp(0.0f, 1.0f, _4186), Material_Material_PreshaderBuffer[61].w, Material_Material_PreshaderBuffer[61].z));
    float2 _4438 = float2(min(max(_3549 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4439 = _1696 * _4438;
    float2 _4440 = _4438 * _1697;
    float _4445 = _4439.x + _4439.y;
    float _4446 = _4440.x + _4440.y;
    float _4449 = _3569 * Material_Material_PreshaderBuffer[15].w;
    float _4450 = 2.0f / _4449;
    float _4451 = _4445 * _4450;
    float _4456 = mad(_4446, _4450, (_4450 * Material_Material_PreshaderBuffer[62].y) * _3853);
    float _4457 = floor(_4451);
    float _4467 = _4430 * Material_Material_PreshaderBuffer[17].z;
    float2 _4478 = float2(min(max(_3549 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4479 = _1696 * _4478;
    float2 _4480 = _4478 * _1697;
    float _4485 = _4479.x + _4479.y;
    float _4486 = _4480.x + _4480.y;
    float _4487 = _4449 * Material_Material_PreshaderBuffer[15].w;
    float _4488 = 2.0f / _4487;
    float _4489 = _4485 * _4488;
    float _4494 = mad(_4486, _4488, (_4488 * Material_Material_PreshaderBuffer[62].w) * _3853);
    float _4495 = floor(_4489);
    float _4505 = _4467 * Material_Material_PreshaderBuffer[17].z;
    float2 _4515 = float2(min(max(_3549 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4516 = _1696 * _4515;
    float2 _4517 = _4515 * _1697;
    float _4522 = _4516.x + _4516.y;
    float _4523 = _4517.x + _4517.y;
    float _4525 = 2.0f / (_4487 * Material_Material_PreshaderBuffer[15].w);
    float _4526 = _4522 * _4525;
    float _4531 = mad(_4523, _4525, (_4525 * Material_Material_PreshaderBuffer[63].y) * _3853);
    float _4532 = floor(_4526);
    float _4556 = (abs(Material_Material_PreshaderBuffer[64].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[64].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[64].x : Material_Material_PreshaderBuffer[64].y) : Material_Material_PreshaderBuffer[64].x;
    float _4564 = (abs(_4556 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_4556 >= 1.0f) ? Material_Material_PreshaderBuffer[64].z : Material_Material_PreshaderBuffer[64].x) : Material_Material_PreshaderBuffer[64].x;
    float3 _4574 = float3(min(max((abs(_4564) > 9.9999997473787516355514526367188e-06f) ? ((_4564 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[65].w, 0.0f);
    float2 _4580 = float2(min(max(_4574 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4581 = _1696 * _4580;
    float2 _4582 = _4580 * _1697;
    float _4587 = _4581.x + _4581.y;
    float _4588 = _4582.x + _4582.y;
    float _4591 = _3566 * Material_Material_PreshaderBuffer[23].w;
    float _4594 = Material_Material_PreshaderBuffer[67].x * _4591;
    float _4595 = 2.0f / _4594;
    float _4596 = _4587 * _4595;
    float _4601 = mad(_4588, _4595, (_4595 * Material_Material_PreshaderBuffer[67].y) * _3853);
    float _4602 = floor(_4596);
    float _4612 = _4430 * Material_Material_PreshaderBuffer[25].w;
    float2 _4620 = float2(min(max(_4574 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4621 = _1696 * _4620;
    float2 _4622 = _4620 * _1697;
    float _4627 = _4621.x + _4621.y;
    float _4628 = _4622.x + _4622.y;
    float _4629 = _4594 * Material_Material_PreshaderBuffer[15].w;
    float _4630 = 2.0f / _4629;
    float _4631 = _4627 * _4630;
    float _4636 = mad(_4628, _4630, (_4630 * Material_Material_PreshaderBuffer[67].z) * _3853);
    float _4637 = floor(_4631);
    float _4647 = _4612 * Material_Material_PreshaderBuffer[17].z;
    float2 _4658 = float2(min(max(_4574 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4659 = _1696 * _4658;
    float2 _4660 = _4658 * _1697;
    float _4665 = _4659.x + _4659.y;
    float _4666 = _4660.x + _4660.y;
    float _4667 = _4629 * Material_Material_PreshaderBuffer[15].w;
    float _4668 = 2.0f / _4667;
    float _4669 = _4665 * _4668;
    float _4674 = mad(_4666, _4668, (_4668 * Material_Material_PreshaderBuffer[67].w) * _3853);
    float _4675 = floor(_4669);
    float _4685 = _4647 * Material_Material_PreshaderBuffer[17].z;
    float2 _4695 = float2(min(max(_4574 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4696 = _1696 * _4695;
    float2 _4697 = _4695 * _1697;
    float _4702 = _4696.x + _4696.y;
    float _4703 = _4697.x + _4697.y;
    float _4705 = 2.0f / (_4667 * Material_Material_PreshaderBuffer[15].w);
    float _4706 = _4702 * _4705;
    float _4711 = mad(_4703, _4705, (_4705 * Material_Material_PreshaderBuffer[68].x) * _3853);
    float _4712 = floor(_4706);
    float _4722 = _4685 * Material_Material_PreshaderBuffer[17].z;
    float3 _4727 = (((float3(_550, _550, sin(mad(mad(_3571, 6.283185482025146484375f, _3856 * (-6.283185482025146484375f)), 2097152.0f, mad(_3855, 6.283185482025146484375f, floor(mad(mad(_3562, _3570, -_3856), 2097152.0f, _3855)) * (-6.283185482025146484375f)))) * _4430) + float3(_550, _550, sin(mad(mad(_4451, 6.283185482025146484375f, _4457 * (-6.283185482025146484375f)), 2097152.0f, mad(_4456, 6.283185482025146484375f, floor(mad(mad(_4445, _4450, -_4457), 2097152.0f, _4456)) * (-6.283185482025146484375f)))) * _4467)) + float3(_550, _550, sin(mad(mad(_4489, 6.283185482025146484375f, _4495 * (-6.283185482025146484375f)), 2097152.0f, mad(_4494, 6.283185482025146484375f, floor(mad(mad(_4485, _4488, -_4495), 2097152.0f, _4494)) * (-6.283185482025146484375f)))) * _4505)) + float3(_550, _550, sin(mad(mad(_4526, 6.283185482025146484375f, _4532 * (-6.283185482025146484375f)), 2097152.0f, mad(_4531, 6.283185482025146484375f, floor(mad(mad(_4522, _4525, -_4532), 2097152.0f, _4531)) * (-6.283185482025146484375f)))) * (_4505 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_550, _550, sin(mad(mad(_4596, 6.283185482025146484375f, _4602 * (-6.283185482025146484375f)), 2097152.0f, mad(_4601, 6.283185482025146484375f, floor(mad(mad(_4587, _4595, -_4602), 2097152.0f, _4601)) * (-6.283185482025146484375f)))) * _4612) + float3(_550, _550, sin(mad(mad(_4631, 6.283185482025146484375f, _4637 * (-6.283185482025146484375f)), 2097152.0f, mad(_4636, 6.283185482025146484375f, floor(mad(mad(_4627, _4630, -_4637), 2097152.0f, _4636)) * (-6.283185482025146484375f)))) * _4647)) + float3(_550, _550, sin(mad(mad(_4669, 6.283185482025146484375f, _4675 * (-6.283185482025146484375f)), 2097152.0f, mad(_4674, 6.283185482025146484375f, floor(mad(mad(_4665, _4668, -_4675), 2097152.0f, _4674)) * (-6.283185482025146484375f)))) * _4685)) + float3(_550, _550, sin(mad(mad(_4706, 6.283185482025146484375f, _4712 * (-6.283185482025146484375f)), 2097152.0f, mad(_4711, 6.283185482025146484375f, floor(mad(mad(_4702, _4705, -_4712), 2097152.0f, _4711)) * (-6.283185482025146484375f)))) * _4722));
    float _4737 = (abs(Material_Material_PreshaderBuffer[68].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[68].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[68].y : Material_Material_PreshaderBuffer[68].z) : Material_Material_PreshaderBuffer[68].y;
    float _4745 = (abs(_4737 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_4737 >= 1.0f) ? Material_Material_PreshaderBuffer[68].w : Material_Material_PreshaderBuffer[68].y) : Material_Material_PreshaderBuffer[68].y;
    float3 _4755 = float3(min(max((abs(_4745) > 9.9999997473787516355514526367188e-06f) ? ((_4745 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[70].x, 0.0f);
    float2 _4761 = float2(min(max(_4755 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4762 = _1696 * _4761;
    float2 _4763 = _4761 * _1697;
    float _4768 = _4762.x + _4762.y;
    float _4769 = _4763.x + _4763.y;
    float _4772 = Material_Material_PreshaderBuffer[71].y * _4591;
    float _4773 = 2.0f / _4772;
    float _4774 = _4768 * _4773;
    float _4777 = mad(_4769, _4773, (_4773 * Material_Material_PreshaderBuffer[67].y) * _3853);
    float _4778 = floor(_4774);
    float2 _4795 = float2(min(max(_4755 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4796 = _1696 * _4795;
    float2 _4797 = _4795 * _1697;
    float _4802 = _4796.x + _4796.y;
    float _4803 = _4797.x + _4797.y;
    float _4804 = _4772 * Material_Material_PreshaderBuffer[15].w;
    float _4805 = 2.0f / _4804;
    float _4806 = _4802 * _4805;
    float _4809 = mad(_4803, _4805, (_4805 * Material_Material_PreshaderBuffer[67].z) * _3853);
    float _4810 = floor(_4806);
    float2 _4830 = float2(min(max(_4755 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4831 = _1696 * _4830;
    float2 _4832 = _4830 * _1697;
    float _4837 = _4831.x + _4831.y;
    float _4838 = _4832.x + _4832.y;
    float _4839 = _4804 * Material_Material_PreshaderBuffer[15].w;
    float _4840 = 2.0f / _4839;
    float _4841 = _4837 * _4840;
    float _4844 = mad(_4838, _4840, (_4840 * Material_Material_PreshaderBuffer[67].w) * _3853);
    float _4845 = floor(_4841);
    float2 _4864 = float2(min(max(_4755 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4865 = _1696 * _4864;
    float2 _4866 = _4864 * _1697;
    float _4871 = _4865.x + _4865.y;
    float _4872 = _4866.x + _4866.y;
    float _4874 = 2.0f / (_4839 * Material_Material_PreshaderBuffer[15].w);
    float _4875 = _4871 * _4874;
    float _4878 = mad(_4872, _4874, (_4874 * Material_Material_PreshaderBuffer[68].x) * _3853);
    float _4879 = floor(_4875);
    float3 _4893 = _4727 + (((float3(_550, _550, sin(mad(mad(_4774, 6.283185482025146484375f, _4778 * (-6.283185482025146484375f)), 2097152.0f, mad(_4777, 6.283185482025146484375f, floor(mad(mad(_4768, _4773, -_4778), 2097152.0f, _4777)) * (-6.283185482025146484375f)))) * _4612) + float3(_550, _550, sin(mad(mad(_4806, 6.283185482025146484375f, _4810 * (-6.283185482025146484375f)), 2097152.0f, mad(_4809, 6.283185482025146484375f, floor(mad(mad(_4802, _4805, -_4810), 2097152.0f, _4809)) * (-6.283185482025146484375f)))) * _4647)) + float3(_550, _550, sin(mad(mad(_4841, 6.283185482025146484375f, _4845 * (-6.283185482025146484375f)), 2097152.0f, mad(_4844, 6.283185482025146484375f, floor(mad(mad(_4837, _4840, -_4845), 2097152.0f, _4844)) * (-6.283185482025146484375f)))) * _4685)) + float3(_550, _550, sin(mad(mad(_4875, 6.283185482025146484375f, _4879 * (-6.283185482025146484375f)), 2097152.0f, mad(_4878, 6.283185482025146484375f, floor(mad(mad(_4871, _4874, -_4879), 2097152.0f, _4878)) * (-6.283185482025146484375f)))) * _4722));
    float _4894 = _3566 * 0.800000011920928955078125f;
    float _4895 = Material_Material_PreshaderBuffer[57].z * _4894;
    float _4896 = 2.0f / _4895;
    float _4897 = _3562 * _4896;
    float _4902 = mad(_3563, _4896, (_4896 * Material_Material_PreshaderBuffer[71].z) * _3853);
    float _4903 = floor(_4897);
    float _4913 = _4430 * 0.800000011920928955078125f;
    float _4916 = _4895 * Material_Material_PreshaderBuffer[15].w;
    float _4917 = 2.0f / _4916;
    float _4918 = _4445 * _4917;
    float _4923 = mad(_4446, _4917, (_4917 * Material_Material_PreshaderBuffer[71].w) * _3853);
    float _4924 = floor(_4918);
    float _4934 = _4913 * Material_Material_PreshaderBuffer[17].z;
    float _4940 = _4916 * Material_Material_PreshaderBuffer[15].w;
    float _4941 = 2.0f / _4940;
    float _4942 = _4485 * _4941;
    float _4947 = mad(_4486, _4941, (_4941 * Material_Material_PreshaderBuffer[72].x) * _3853);
    float _4948 = floor(_4942);
    float _4958 = _4934 * Material_Material_PreshaderBuffer[17].z;
    float _4964 = 2.0f / (_4940 * Material_Material_PreshaderBuffer[15].w);
    float _4965 = _4522 * _4964;
    float _4970 = mad(_4523, _4964, (_4964 * Material_Material_PreshaderBuffer[72].y) * _3853);
    float _4971 = floor(_4965);
    float _4981 = _4958 * Material_Material_PreshaderBuffer[17].z;
    float _4986 = _4894 * Material_Material_PreshaderBuffer[23].w;
    float _4987 = Material_Material_PreshaderBuffer[67].x * _4986;
    float _4988 = 2.0f / _4987;
    float _4989 = _4587 * _4988;
    float _4994 = mad(_4588, _4988, (_4988 * Material_Material_PreshaderBuffer[72].z) * _3853);
    float _4995 = floor(_4989);
    float _5005 = _4913 * Material_Material_PreshaderBuffer[25].w;
    float _5008 = _4987 * Material_Material_PreshaderBuffer[15].w;
    float _5009 = 2.0f / _5008;
    float _5010 = _4627 * _5009;
    float _5015 = mad(_4628, _5009, (_5009 * Material_Material_PreshaderBuffer[72].w) * _3853);
    float _5016 = floor(_5010);
    float _5026 = _5005 * Material_Material_PreshaderBuffer[17].z;
    float _5032 = _5008 * Material_Material_PreshaderBuffer[15].w;
    float _5033 = 2.0f / _5032;
    float _5034 = _4665 * _5033;
    float _5039 = mad(_4666, _5033, (_5033 * Material_Material_PreshaderBuffer[73].x) * _3853);
    float _5040 = floor(_5034);
    float _5050 = _5026 * Material_Material_PreshaderBuffer[17].z;
    float _5056 = 2.0f / (_5032 * Material_Material_PreshaderBuffer[15].w);
    float _5057 = _4702 * _5056;
    float _5062 = mad(_4703, _5056, (_5056 * Material_Material_PreshaderBuffer[73].y) * _3853);
    float _5063 = floor(_5057);
    float _5073 = _5050 * Material_Material_PreshaderBuffer[17].z;
    float3 _5078 = (((float3(_550, _550, sin(mad(mad(_4897, 6.283185482025146484375f, _4903 * (-6.283185482025146484375f)), 2097152.0f, mad(_4902, 6.283185482025146484375f, floor(mad(mad(_3562, _4896, -_4903), 2097152.0f, _4902)) * (-6.283185482025146484375f)))) * _4913) + float3(_550, _550, sin(mad(mad(_4918, 6.283185482025146484375f, _4924 * (-6.283185482025146484375f)), 2097152.0f, mad(_4923, 6.283185482025146484375f, floor(mad(mad(_4445, _4917, -_4924), 2097152.0f, _4923)) * (-6.283185482025146484375f)))) * _4934)) + float3(_550, _550, sin(mad(mad(_4942, 6.283185482025146484375f, _4948 * (-6.283185482025146484375f)), 2097152.0f, mad(_4947, 6.283185482025146484375f, floor(mad(mad(_4485, _4941, -_4948), 2097152.0f, _4947)) * (-6.283185482025146484375f)))) * _4958)) + float3(_550, _550, sin(mad(mad(_4965, 6.283185482025146484375f, _4971 * (-6.283185482025146484375f)), 2097152.0f, mad(_4970, 6.283185482025146484375f, floor(mad(mad(_4522, _4964, -_4971), 2097152.0f, _4970)) * (-6.283185482025146484375f)))) * _4981)) + (((float3(_550, _550, sin(mad(mad(_4989, 6.283185482025146484375f, _4995 * (-6.283185482025146484375f)), 2097152.0f, mad(_4994, 6.283185482025146484375f, floor(mad(mad(_4587, _4988, -_4995), 2097152.0f, _4994)) * (-6.283185482025146484375f)))) * _5005) + float3(_550, _550, sin(mad(mad(_5010, 6.283185482025146484375f, _5016 * (-6.283185482025146484375f)), 2097152.0f, mad(_5015, 6.283185482025146484375f, floor(mad(mad(_4627, _5009, -_5016), 2097152.0f, _5015)) * (-6.283185482025146484375f)))) * _5026)) + float3(_550, _550, sin(mad(mad(_5034, 6.283185482025146484375f, _5040 * (-6.283185482025146484375f)), 2097152.0f, mad(_5039, 6.283185482025146484375f, floor(mad(mad(_4665, _5033, -_5040), 2097152.0f, _5039)) * (-6.283185482025146484375f)))) * _5050)) + float3(_550, _550, sin(mad(mad(_5057, 6.283185482025146484375f, _5063 * (-6.283185482025146484375f)), 2097152.0f, mad(_5062, 6.283185482025146484375f, floor(mad(mad(_4702, _5056, -_5063), 2097152.0f, _5062)) * (-6.283185482025146484375f)))) * _5073));
    float _5079 = Material_Material_PreshaderBuffer[71].y * _4986;
    float _5080 = 2.0f / _5079;
    float _5081 = _4768 * _5080;
    float _5084 = mad(_4769, _5080, (_5080 * Material_Material_PreshaderBuffer[72].z) * _3853);
    float _5085 = floor(_5081);
    float _5097 = _5079 * Material_Material_PreshaderBuffer[15].w;
    float _5098 = 2.0f / _5097;
    float _5099 = _4802 * _5098;
    float _5102 = mad(_4803, _5098, (_5098 * Material_Material_PreshaderBuffer[72].w) * _3853);
    float _5103 = floor(_5099);
    float _5118 = _5097 * Material_Material_PreshaderBuffer[15].w;
    float _5119 = 2.0f / _5118;
    float _5120 = _4837 * _5119;
    float _5123 = mad(_4838, _5119, (_5119 * Material_Material_PreshaderBuffer[73].x) * _3853);
    float _5124 = floor(_5120);
    float _5139 = 2.0f / (_5118 * Material_Material_PreshaderBuffer[15].w);
    float _5140 = _4871 * _5139;
    float _5143 = mad(_4872, _5139, (_5139 * Material_Material_PreshaderBuffer[73].y) * _3853);
    float _5144 = floor(_5140);
    float3 _5158 = _5078 + (((float3(_550, _550, sin(mad(mad(_5081, 6.283185482025146484375f, _5085 * (-6.283185482025146484375f)), 2097152.0f, mad(_5084, 6.283185482025146484375f, floor(mad(mad(_4768, _5080, -_5085), 2097152.0f, _5084)) * (-6.283185482025146484375f)))) * _5005) + float3(_550, _550, sin(mad(mad(_5099, 6.283185482025146484375f, _5103 * (-6.283185482025146484375f)), 2097152.0f, mad(_5102, 6.283185482025146484375f, floor(mad(mad(_4802, _5098, -_5103), 2097152.0f, _5102)) * (-6.283185482025146484375f)))) * _5026)) + float3(_550, _550, sin(mad(mad(_5120, 6.283185482025146484375f, _5124 * (-6.283185482025146484375f)), 2097152.0f, mad(_5123, 6.283185482025146484375f, floor(mad(mad(_4837, _5119, -_5124), 2097152.0f, _5123)) * (-6.283185482025146484375f)))) * _5050)) + float3(_550, _550, sin(mad(mad(_5140, 6.283185482025146484375f, _5144 * (-6.283185482025146484375f)), 2097152.0f, mad(_5143, 6.283185482025146484375f, floor(mad(mad(_4871, _5139, -_5144), 2097152.0f, _5143)) * (-6.283185482025146484375f)))) * _5073));
    float _5159 = _3566 * 4.0f;
    float _5160 = Material_Material_PreshaderBuffer[57].z * _5159;
    float _5161 = 2.0f / _5160;
    float _5162 = _3562 * _5161;
    float _5167 = mad(_3563, _5161, (_5161 * Material_Material_PreshaderBuffer[73].z) * _3853);
    float _5168 = floor(_5162);
    float _5180 = _5160 * Material_Material_PreshaderBuffer[15].w;
    float _5181 = 2.0f / _5180;
    float _5182 = _4445 * _5181;
    float _5187 = mad(_4446, _5181, (_5181 * Material_Material_PreshaderBuffer[73].w) * _3853);
    float _5188 = floor(_5182);
    float _5203 = _5180 * Material_Material_PreshaderBuffer[15].w;
    float _5204 = 2.0f / _5203;
    float _5205 = _4485 * _5204;
    float _5210 = mad(_4486, _5204, (_5204 * Material_Material_PreshaderBuffer[74].x) * _3853);
    float _5211 = floor(_5205);
    float _5226 = 2.0f / (_5203 * Material_Material_PreshaderBuffer[15].w);
    float _5227 = _4522 * _5226;
    float _5232 = mad(_4523, _5226, (_5226 * Material_Material_PreshaderBuffer[74].y) * _3853);
    float _5233 = floor(_5227);
    float _5247 = _5159 * Material_Material_PreshaderBuffer[23].w;
    float _5248 = Material_Material_PreshaderBuffer[67].x * _5247;
    float _5249 = 2.0f / _5248;
    float _5250 = _4587 * _5249;
    float _5255 = mad(_4588, _5249, (_5249 * Material_Material_PreshaderBuffer[74].z) * _3853);
    float _5256 = floor(_5250);
    float _5268 = _5248 * Material_Material_PreshaderBuffer[15].w;
    float _5269 = 2.0f / _5268;
    float _5270 = _4627 * _5269;
    float _5275 = mad(_4628, _5269, (_5269 * Material_Material_PreshaderBuffer[74].w) * _3853);
    float _5276 = floor(_5270);
    float _5291 = _5268 * Material_Material_PreshaderBuffer[15].w;
    float _5292 = 2.0f / _5291;
    float _5293 = _4665 * _5292;
    float _5298 = mad(_4666, _5292, (_5292 * Material_Material_PreshaderBuffer[75].x) * _3853);
    float _5299 = floor(_5293);
    float _5314 = 2.0f / (_5291 * Material_Material_PreshaderBuffer[15].w);
    float _5315 = _4702 * _5314;
    float _5320 = mad(_4703, _5314, (_5314 * Material_Material_PreshaderBuffer[75].y) * _3853);
    float _5321 = floor(_5315);
    float3 _5335 = (((float3(_550, _550, sin(mad(mad(_5162, 6.283185482025146484375f, _5168 * (-6.283185482025146484375f)), 2097152.0f, mad(_5167, 6.283185482025146484375f, floor(mad(mad(_3562, _5161, -_5168), 2097152.0f, _5167)) * (-6.283185482025146484375f)))) * _4913) + float3(_550, _550, sin(mad(mad(_5182, 6.283185482025146484375f, _5188 * (-6.283185482025146484375f)), 2097152.0f, mad(_5187, 6.283185482025146484375f, floor(mad(mad(_4445, _5181, -_5188), 2097152.0f, _5187)) * (-6.283185482025146484375f)))) * _4934)) + float3(_550, _550, sin(mad(mad(_5205, 6.283185482025146484375f, _5211 * (-6.283185482025146484375f)), 2097152.0f, mad(_5210, 6.283185482025146484375f, floor(mad(mad(_4485, _5204, -_5211), 2097152.0f, _5210)) * (-6.283185482025146484375f)))) * _4958)) + float3(_550, _550, sin(mad(mad(_5227, 6.283185482025146484375f, _5233 * (-6.283185482025146484375f)), 2097152.0f, mad(_5232, 6.283185482025146484375f, floor(mad(mad(_4522, _5226, -_5233), 2097152.0f, _5232)) * (-6.283185482025146484375f)))) * _4981)) + (((float3(_550, _550, sin(mad(mad(_5250, 6.283185482025146484375f, _5256 * (-6.283185482025146484375f)), 2097152.0f, mad(_5255, 6.283185482025146484375f, floor(mad(mad(_4587, _5249, -_5256), 2097152.0f, _5255)) * (-6.283185482025146484375f)))) * _5005) + float3(_550, _550, sin(mad(mad(_5270, 6.283185482025146484375f, _5276 * (-6.283185482025146484375f)), 2097152.0f, mad(_5275, 6.283185482025146484375f, floor(mad(mad(_4627, _5269, -_5276), 2097152.0f, _5275)) * (-6.283185482025146484375f)))) * _5026)) + float3(_550, _550, sin(mad(mad(_5293, 6.283185482025146484375f, _5299 * (-6.283185482025146484375f)), 2097152.0f, mad(_5298, 6.283185482025146484375f, floor(mad(mad(_4665, _5292, -_5299), 2097152.0f, _5298)) * (-6.283185482025146484375f)))) * _5050)) + float3(_550, _550, sin(mad(mad(_5315, 6.283185482025146484375f, _5321 * (-6.283185482025146484375f)), 2097152.0f, mad(_5320, 6.283185482025146484375f, floor(mad(mad(_4702, _5314, -_5321), 2097152.0f, _5320)) * (-6.283185482025146484375f)))) * _5073));
    float _5336 = Material_Material_PreshaderBuffer[71].y * _5247;
    float _5337 = 2.0f / _5336;
    float _5338 = _4768 * _5337;
    float _5341 = mad(_4769, _5337, (_5337 * Material_Material_PreshaderBuffer[74].z) * _3853);
    float _5342 = floor(_5338);
    float _5354 = _5336 * Material_Material_PreshaderBuffer[15].w;
    float _5355 = 2.0f / _5354;
    float _5356 = _4802 * _5355;
    float _5359 = mad(_4803, _5355, (_5355 * Material_Material_PreshaderBuffer[74].w) * _3853);
    float _5360 = floor(_5356);
    float _5375 = _5354 * Material_Material_PreshaderBuffer[15].w;
    float _5376 = 2.0f / _5375;
    float _5377 = _4837 * _5376;
    float _5380 = mad(_4838, _5376, (_5376 * Material_Material_PreshaderBuffer[75].x) * _3853);
    float _5381 = floor(_5377);
    float _5396 = 2.0f / (_5375 * Material_Material_PreshaderBuffer[15].w);
    float _5397 = _4871 * _5396;
    float _5400 = mad(_4872, _5396, (_5396 * Material_Material_PreshaderBuffer[75].y) * _3853);
    float _5401 = floor(_5397);
    float3 _5415 = _5335 + (((float3(_550, _550, sin(mad(mad(_5338, 6.283185482025146484375f, _5342 * (-6.283185482025146484375f)), 2097152.0f, mad(_5341, 6.283185482025146484375f, floor(mad(mad(_4768, _5337, -_5342), 2097152.0f, _5341)) * (-6.283185482025146484375f)))) * _5005) + float3(_550, _550, sin(mad(mad(_5356, 6.283185482025146484375f, _5360 * (-6.283185482025146484375f)), 2097152.0f, mad(_5359, 6.283185482025146484375f, floor(mad(mad(_4802, _5355, -_5360), 2097152.0f, _5359)) * (-6.283185482025146484375f)))) * _5026)) + float3(_550, _550, sin(mad(mad(_5377, 6.283185482025146484375f, _5381 * (-6.283185482025146484375f)), 2097152.0f, mad(_5380, 6.283185482025146484375f, floor(mad(mad(_4837, _5376, -_5381), 2097152.0f, _5380)) * (-6.283185482025146484375f)))) * _5050)) + float3(_550, _550, sin(mad(mad(_5397, 6.283185482025146484375f, _5401 * (-6.283185482025146484375f)), 2097152.0f, mad(_5400, 6.283185482025146484375f, floor(mad(mad(_4871, _5396, -_5401), 2097152.0f, _5400)) * (-6.283185482025146484375f)))) * _5073));
    float _5416 = _3566 * 0.75f;
    float _5417 = Material_Material_PreshaderBuffer[57].z * _5416;
    float _5418 = 2.0f / _5417;
    float _5419 = _3562 * _5418;
    float _5422 = mad(_3563, _5418, (_5418 * Material_Material_PreshaderBuffer[71].z) * _3853);
    float _5423 = floor(_5419);
    float _5433 = _4430 * 0.5f;
    float _5436 = _5417 * Material_Material_PreshaderBuffer[15].w;
    float _5437 = 2.0f / _5436;
    float _5438 = _4445 * _5437;
    float _5441 = mad(_4446, _5437, (_5437 * Material_Material_PreshaderBuffer[71].w) * _3853);
    float _5442 = floor(_5438);
    float _5452 = _5433 * Material_Material_PreshaderBuffer[17].z;
    float _5458 = _5436 * Material_Material_PreshaderBuffer[15].w;
    float _5459 = 2.0f / _5458;
    float _5460 = _4485 * _5459;
    float _5463 = mad(_4486, _5459, (_5459 * Material_Material_PreshaderBuffer[72].x) * _3853);
    float _5464 = floor(_5460);
    float _5474 = _5452 * Material_Material_PreshaderBuffer[17].z;
    float _5480 = 2.0f / (_5458 * Material_Material_PreshaderBuffer[15].w);
    float _5481 = _4522 * _5480;
    float _5484 = mad(_4523, _5480, (_5480 * Material_Material_PreshaderBuffer[72].y) * _3853);
    float _5485 = floor(_5481);
    float _5500 = _5416 * Material_Material_PreshaderBuffer[23].w;
    float _5501 = Material_Material_PreshaderBuffer[67].x * _5500;
    float _5502 = 2.0f / _5501;
    float _5503 = _4587 * _5502;
    float _5506 = mad(_4588, _5502, (_5502 * Material_Material_PreshaderBuffer[72].z) * _3853);
    float _5507 = floor(_5503);
    float _5517 = _5433 * Material_Material_PreshaderBuffer[25].w;
    float _5520 = _5501 * Material_Material_PreshaderBuffer[15].w;
    float _5521 = 2.0f / _5520;
    float _5522 = _4627 * _5521;
    float _5525 = mad(_4628, _5521, (_5521 * Material_Material_PreshaderBuffer[72].w) * _3853);
    float _5526 = floor(_5522);
    float _5536 = _5517 * Material_Material_PreshaderBuffer[17].z;
    float _5542 = _5520 * Material_Material_PreshaderBuffer[15].w;
    float _5543 = 2.0f / _5542;
    float _5544 = _4665 * _5543;
    float _5547 = mad(_4666, _5543, (_5543 * Material_Material_PreshaderBuffer[73].x) * _3853);
    float _5548 = floor(_5544);
    float _5558 = _5536 * Material_Material_PreshaderBuffer[17].z;
    float _5564 = 2.0f / (_5542 * Material_Material_PreshaderBuffer[15].w);
    float _5565 = _4702 * _5564;
    float _5568 = mad(_4703, _5564, (_5564 * Material_Material_PreshaderBuffer[73].y) * _3853);
    float _5569 = floor(_5565);
    float _5579 = _5558 * Material_Material_PreshaderBuffer[17].z;
    float3 _5584 = (((float3(_550, _550, sin(mad(mad(_5419, 6.283185482025146484375f, _5423 * (-6.283185482025146484375f)), 2097152.0f, mad(_5422, 6.283185482025146484375f, floor(mad(mad(_3562, _5418, -_5423), 2097152.0f, _5422)) * (-6.283185482025146484375f)))) * _5433) + float3(_550, _550, sin(mad(mad(_5438, 6.283185482025146484375f, _5442 * (-6.283185482025146484375f)), 2097152.0f, mad(_5441, 6.283185482025146484375f, floor(mad(mad(_4445, _5437, -_5442), 2097152.0f, _5441)) * (-6.283185482025146484375f)))) * _5452)) + float3(_550, _550, sin(mad(mad(_5460, 6.283185482025146484375f, _5464 * (-6.283185482025146484375f)), 2097152.0f, mad(_5463, 6.283185482025146484375f, floor(mad(mad(_4485, _5459, -_5464), 2097152.0f, _5463)) * (-6.283185482025146484375f)))) * _5474)) + float3(_550, _550, sin(mad(mad(_5481, 6.283185482025146484375f, _5485 * (-6.283185482025146484375f)), 2097152.0f, mad(_5484, 6.283185482025146484375f, floor(mad(mad(_4522, _5480, -_5485), 2097152.0f, _5484)) * (-6.283185482025146484375f)))) * (_5474 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_550, _550, sin(mad(mad(_5503, 6.283185482025146484375f, _5507 * (-6.283185482025146484375f)), 2097152.0f, mad(_5506, 6.283185482025146484375f, floor(mad(mad(_4587, _5502, -_5507), 2097152.0f, _5506)) * (-6.283185482025146484375f)))) * _5517) + float3(_550, _550, sin(mad(mad(_5522, 6.283185482025146484375f, _5526 * (-6.283185482025146484375f)), 2097152.0f, mad(_5525, 6.283185482025146484375f, floor(mad(mad(_4627, _5521, -_5526), 2097152.0f, _5525)) * (-6.283185482025146484375f)))) * _5536)) + float3(_550, _550, sin(mad(mad(_5544, 6.283185482025146484375f, _5548 * (-6.283185482025146484375f)), 2097152.0f, mad(_5547, 6.283185482025146484375f, floor(mad(mad(_4665, _5543, -_5548), 2097152.0f, _5547)) * (-6.283185482025146484375f)))) * _5558)) + float3(_550, _550, sin(mad(mad(_5565, 6.283185482025146484375f, _5569 * (-6.283185482025146484375f)), 2097152.0f, mad(_5568, 6.283185482025146484375f, floor(mad(mad(_4702, _5564, -_5569), 2097152.0f, _5568)) * (-6.283185482025146484375f)))) * _5579));
    float _5585 = Material_Material_PreshaderBuffer[71].y * _5500;
    float _5586 = 2.0f / _5585;
    float _5587 = _4768 * _5586;
    float _5590 = mad(_4769, _5586, (_5586 * Material_Material_PreshaderBuffer[72].z) * _3853);
    float _5591 = floor(_5587);
    float _5603 = _5585 * Material_Material_PreshaderBuffer[15].w;
    float _5604 = 2.0f / _5603;
    float _5605 = _4802 * _5604;
    float _5608 = mad(_4803, _5604, (_5604 * Material_Material_PreshaderBuffer[72].w) * _3853);
    float _5609 = floor(_5605);
    float _5624 = _5603 * Material_Material_PreshaderBuffer[15].w;
    float _5625 = 2.0f / _5624;
    float _5626 = _4837 * _5625;
    float _5629 = mad(_4838, _5625, (_5625 * Material_Material_PreshaderBuffer[73].x) * _3853);
    float _5630 = floor(_5626);
    float _5645 = 2.0f / (_5624 * Material_Material_PreshaderBuffer[15].w);
    float _5646 = _4871 * _5645;
    float _5649 = mad(_4872, _5645, (_5645 * Material_Material_PreshaderBuffer[73].y) * _3853);
    float _5650 = floor(_5646);
    float3 _5664 = _5584 + (((float3(_550, _550, sin(mad(mad(_5587, 6.283185482025146484375f, _5591 * (-6.283185482025146484375f)), 2097152.0f, mad(_5590, 6.283185482025146484375f, floor(mad(mad(_4768, _5586, -_5591), 2097152.0f, _5590)) * (-6.283185482025146484375f)))) * _5517) + float3(_550, _550, sin(mad(mad(_5605, 6.283185482025146484375f, _5609 * (-6.283185482025146484375f)), 2097152.0f, mad(_5608, 6.283185482025146484375f, floor(mad(mad(_4802, _5604, -_5609), 2097152.0f, _5608)) * (-6.283185482025146484375f)))) * _5536)) + float3(_550, _550, sin(mad(mad(_5626, 6.283185482025146484375f, _5630 * (-6.283185482025146484375f)), 2097152.0f, mad(_5629, 6.283185482025146484375f, floor(mad(mad(_4837, _5625, -_5630), 2097152.0f, _5629)) * (-6.283185482025146484375f)))) * _5558)) + float3(_550, _550, sin(mad(mad(_5646, 6.283185482025146484375f, _5650 * (-6.283185482025146484375f)), 2097152.0f, mad(_5649, 6.283185482025146484375f, floor(mad(mad(_4871, _5645, -_5650), 2097152.0f, _5649)) * (-6.283185482025146484375f)))) * _5579));
    float _5677 = (abs(Material_Material_PreshaderBuffer[75].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[75].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[75].z : Material_Material_PreshaderBuffer[75].w) : Material_Material_PreshaderBuffer[75].z;
    float _5685 = (abs(_5677 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_5677 >= 1.0f) ? Material_Material_PreshaderBuffer[76].x : Material_Material_PreshaderBuffer[75].z) : Material_Material_PreshaderBuffer[75].z;
    float3 _5695 = float3(min(max((abs(_5685) > 9.9999997473787516355514526367188e-06f) ? ((_5685 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[77].y, 0.0f);
    float2 _5701 = float2(min(max(_5695 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _5702 = _1696 * _5701;
    float2 _5703 = _5701 * _1697;
    float _5708 = _5702.x + _5702.y;
    float _5709 = _5703.x + _5703.y;
    float _5712 = Material_Material_PreshaderBuffer[78].z * _3566;
    float _5713 = 2.0f / _5712;
    float _5714 = _5708 * _5713;
    float3 _5717 = View_View_ViewTilePosition * _3586;
    float3 _5718 = (_642 + 10000.0f.xxx) * _3586;
    float3 _5719 = _5717 * _3577;
    float3 _5721 = (_3577 * _5718) * _3582;
    float3 _5728 = float3(_5721.xy, (_3594 + _5721.z.xx).x);
    float3 _5739 = 0.0f.xxx;
    float _5744 = 0.0f;
    _5739 = ((mad(_5719, _3582, -floor(mad(_5719, _3582, (_5728 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _5728) * 1.0f;
    _5744 = 0.0f;
    float _5742 = 1.0f;
    uint _5746 = 0u;
    [loop]
    for (; _5746 < 6u; )
    {
        float3 _5750 = frac(_5739);
        float _5752 = dot(floor(_5739), float3(19.0f, 47.0f, 101.0f));
        uint3 _5764 = (uint3(int3(int(_5752), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5765 = _5764.y;
        uint _5766 = _5764.z;
        uint _5769 = _5764.x + (_5765 * _5766);
        uint _5771 = _5765 + (_5766 * _5769);
        uint3 _5776 = uint3(0u, 0u, 0u);
        _5776.x = _5769 + (_5771 * (_5766 + (_5769 * _5771)));
        uint3 _5777 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _5790 = (uint3(int3(int(_5752 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5791 = _5790.y;
        uint _5792 = _5790.z;
        uint _5795 = _5790.x + (_5791 * _5792);
        uint _5797 = _5791 + (_5792 * _5795);
        uint3 _5802 = uint3(0u, 0u, 0u);
        _5802.x = _5795 + (_5797 * (_5792 + (_5795 * _5797)));
        uint3 _5815 = (uint3(int3(int(_5752 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5816 = _5815.y;
        uint _5817 = _5815.z;
        uint _5820 = _5815.x + (_5816 * _5817);
        uint _5822 = _5816 + (_5817 * _5820);
        uint3 _5827 = uint3(0u, 0u, 0u);
        _5827.x = _5820 + (_5822 * (_5817 + (_5820 * _5822)));
        uint3 _5840 = (uint3(int3(int(_5752 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5841 = _5840.y;
        uint _5842 = _5840.z;
        uint _5845 = _5840.x + (_5841 * _5842);
        uint _5847 = _5841 + (_5842 * _5845);
        uint3 _5852 = uint3(0u, 0u, 0u);
        _5852.x = _5845 + (_5847 * (_5842 + (_5845 * _5847)));
        uint3 _5865 = (uint3(int3(int(_5752 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5866 = _5865.y;
        uint _5867 = _5865.z;
        uint _5870 = _5865.x + (_5866 * _5867);
        uint _5872 = _5866 + (_5867 * _5870);
        uint3 _5877 = uint3(0u, 0u, 0u);
        _5877.x = _5870 + (_5872 * (_5867 + (_5870 * _5872)));
        uint3 _5890 = (uint3(int3(int(_5752 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5891 = _5890.y;
        uint _5892 = _5890.z;
        uint _5895 = _5890.x + (_5891 * _5892);
        uint _5897 = _5891 + (_5892 * _5895);
        uint3 _5902 = uint3(0u, 0u, 0u);
        _5902.x = _5895 + (_5897 * (_5892 + (_5895 * _5897)));
        uint3 _5915 = (uint3(int3(int(_5752 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5916 = _5915.y;
        uint _5917 = _5915.z;
        uint _5920 = _5915.x + (_5916 * _5917);
        uint _5922 = _5916 + (_5917 * _5920);
        uint3 _5927 = uint3(0u, 0u, 0u);
        _5927.x = _5920 + (_5922 * (_5917 + (_5920 * _5922)));
        uint3 _5940 = (uint3(int3(int(_5752 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5941 = _5940.y;
        uint _5942 = _5940.z;
        uint _5945 = _5940.x + (_5941 * _5942);
        uint _5947 = _5941 + (_5942 * _5945);
        uint3 _5952 = uint3(0u, 0u, 0u);
        _5952.x = _5945 + (_5947 * (_5942 + (_5945 * _5947)));
        float4 _5963 = float4(_5750, 0.0f);
        float4 _5969 = ((_5963 * _5963) * _5963) * mad(_5963, (_5963 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _5970 = _5969.x;
        float _5973 = _5969.y;
        float _5745 = mad(lerp(lerp(lerp(dot(mad(float3((_5776 >> _5777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5750), dot(mad(float3((_5802 >> _5777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5750 - float3(1.0f, 0.0f, 0.0f)), _5970), lerp(dot(mad(float3((_5827 >> _5777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5750 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_5852 >> _5777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5750 - float3(1.0f, 1.0f, 0.0f)), _5970), _5973), lerp(lerp(dot(mad(float3((_5877 >> _5777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5750 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_5902 >> _5777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5750 - float3(1.0f, 0.0f, 1.0f)), _5970), lerp(dot(mad(float3((_5927 >> _5777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5750 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_5952 >> _5777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5750 - 1.0f.xxx), _5970), _5973), _5969.z), _5742, _5744);
        _5739 *= 2.0f;
        _5742 *= 0.5f;
        _5744 = _5745;
        _5746++;
        continue;
    }
    float _5983 = lerp(_1161, _1714, clamp(lerp(0.0f, 1.0f, mad(_5744, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _5985 = mad(_5709, _5713, (_5713 * Material_Material_PreshaderBuffer[57].w) * _5983);
    float _5986 = floor(_5714);
    float3 _5996 = _5717 * _3876;
    float3 _5998 = (_3876 * _5718) * _3881;
    float3 _6005 = float3(_5998.xy, (_3891 + _5998.z.xx).x);
    float3 _6016 = 0.0f.xxx;
    float _6021 = 0.0f;
    _6016 = ((mad(_5996, _3881, -floor(mad(_5996, _3881, (_6005 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _6005) * 1.0f;
    _6021 = 0.0f;
    float _6019 = 1.0f;
    uint _6023 = 0u;
    [loop]
    for (; _6023 < 10u; )
    {
        float3 _6027 = frac(_6016);
        float _6029 = dot(floor(_6016), float3(19.0f, 47.0f, 101.0f));
        uint3 _6041 = (uint3(int3(int(_6029), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6042 = _6041.y;
        uint _6043 = _6041.z;
        uint _6046 = _6041.x + (_6042 * _6043);
        uint _6048 = _6042 + (_6043 * _6046);
        uint3 _6053 = uint3(0u, 0u, 0u);
        _6053.x = _6046 + (_6048 * (_6043 + (_6046 * _6048)));
        uint3 _6054 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _6067 = (uint3(int3(int(_6029 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6068 = _6067.y;
        uint _6069 = _6067.z;
        uint _6072 = _6067.x + (_6068 * _6069);
        uint _6074 = _6068 + (_6069 * _6072);
        uint3 _6079 = uint3(0u, 0u, 0u);
        _6079.x = _6072 + (_6074 * (_6069 + (_6072 * _6074)));
        uint3 _6092 = (uint3(int3(int(_6029 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6093 = _6092.y;
        uint _6094 = _6092.z;
        uint _6097 = _6092.x + (_6093 * _6094);
        uint _6099 = _6093 + (_6094 * _6097);
        uint3 _6104 = uint3(0u, 0u, 0u);
        _6104.x = _6097 + (_6099 * (_6094 + (_6097 * _6099)));
        uint3 _6117 = (uint3(int3(int(_6029 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6118 = _6117.y;
        uint _6119 = _6117.z;
        uint _6122 = _6117.x + (_6118 * _6119);
        uint _6124 = _6118 + (_6119 * _6122);
        uint3 _6129 = uint3(0u, 0u, 0u);
        _6129.x = _6122 + (_6124 * (_6119 + (_6122 * _6124)));
        uint3 _6142 = (uint3(int3(int(_6029 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6143 = _6142.y;
        uint _6144 = _6142.z;
        uint _6147 = _6142.x + (_6143 * _6144);
        uint _6149 = _6143 + (_6144 * _6147);
        uint3 _6154 = uint3(0u, 0u, 0u);
        _6154.x = _6147 + (_6149 * (_6144 + (_6147 * _6149)));
        uint3 _6167 = (uint3(int3(int(_6029 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6168 = _6167.y;
        uint _6169 = _6167.z;
        uint _6172 = _6167.x + (_6168 * _6169);
        uint _6174 = _6168 + (_6169 * _6172);
        uint3 _6179 = uint3(0u, 0u, 0u);
        _6179.x = _6172 + (_6174 * (_6169 + (_6172 * _6174)));
        uint3 _6192 = (uint3(int3(int(_6029 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6193 = _6192.y;
        uint _6194 = _6192.z;
        uint _6197 = _6192.x + (_6193 * _6194);
        uint _6199 = _6193 + (_6194 * _6197);
        uint3 _6204 = uint3(0u, 0u, 0u);
        _6204.x = _6197 + (_6199 * (_6194 + (_6197 * _6199)));
        uint3 _6217 = (uint3(int3(int(_6029 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6218 = _6217.y;
        uint _6219 = _6217.z;
        uint _6222 = _6217.x + (_6218 * _6219);
        uint _6224 = _6218 + (_6219 * _6222);
        uint3 _6229 = uint3(0u, 0u, 0u);
        _6229.x = _6222 + (_6224 * (_6219 + (_6222 * _6224)));
        float4 _6240 = float4(_6027, 0.0f);
        float4 _6246 = ((_6240 * _6240) * _6240) * mad(_6240, (_6240 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _6247 = _6246.x;
        float _6250 = _6246.y;
        float _6257 = abs(lerp(lerp(lerp(dot(mad(float3((_6053 >> _6054).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6027), dot(mad(float3((_6079 >> _6054).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6027 - float3(1.0f, 0.0f, 0.0f)), _6247), lerp(dot(mad(float3((_6104 >> _6054).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6027 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_6129 >> _6054).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6027 - float3(1.0f, 1.0f, 0.0f)), _6247), _6250), lerp(lerp(dot(mad(float3((_6154 >> _6054).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6027 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_6179 >> _6054).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6027 - float3(1.0f, 0.0f, 1.0f)), _6247), lerp(dot(mad(float3((_6204 >> _6054).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6027 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_6229 >> _6054).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6027 - 1.0f.xxx), _6247), _6250), _6246.z));
        float _6022 = mad(_6257, _6019, _6021);
        _6016 *= 2.0f;
        _6019 *= 0.5f;
        _6021 = _6022;
        _6023++;
        continue;
    }
    float3 _6259 = _5717 * _4151;
    float3 _6261 = (_4151 * _5718) * _4156;
    float3 _6268 = float3(_6261.xy, (_4166 + _6261.z.xx).x);
    float3 _6279 = 0.0f.xxx;
    float _6284 = 0.0f;
    _6279 = ((mad(_6259, _4156, -floor(mad(_6259, _4156, (_6268 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _6268) * 1.0f;
    _6284 = 0.0f;
    float _6282 = 1.0f;
    uint _6286 = 0u;
    [loop]
    for (; _6286 < 10u; )
    {
        float3 _6290 = frac(_6279);
        float _6292 = dot(floor(_6279), float3(19.0f, 47.0f, 101.0f));
        uint3 _6304 = (uint3(int3(int(_6292), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6305 = _6304.y;
        uint _6306 = _6304.z;
        uint _6309 = _6304.x + (_6305 * _6306);
        uint _6311 = _6305 + (_6306 * _6309);
        uint3 _6316 = uint3(0u, 0u, 0u);
        _6316.x = _6309 + (_6311 * (_6306 + (_6309 * _6311)));
        uint3 _6317 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _6330 = (uint3(int3(int(_6292 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6331 = _6330.y;
        uint _6332 = _6330.z;
        uint _6335 = _6330.x + (_6331 * _6332);
        uint _6337 = _6331 + (_6332 * _6335);
        uint3 _6342 = uint3(0u, 0u, 0u);
        _6342.x = _6335 + (_6337 * (_6332 + (_6335 * _6337)));
        uint3 _6355 = (uint3(int3(int(_6292 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6356 = _6355.y;
        uint _6357 = _6355.z;
        uint _6360 = _6355.x + (_6356 * _6357);
        uint _6362 = _6356 + (_6357 * _6360);
        uint3 _6367 = uint3(0u, 0u, 0u);
        _6367.x = _6360 + (_6362 * (_6357 + (_6360 * _6362)));
        uint3 _6380 = (uint3(int3(int(_6292 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6381 = _6380.y;
        uint _6382 = _6380.z;
        uint _6385 = _6380.x + (_6381 * _6382);
        uint _6387 = _6381 + (_6382 * _6385);
        uint3 _6392 = uint3(0u, 0u, 0u);
        _6392.x = _6385 + (_6387 * (_6382 + (_6385 * _6387)));
        uint3 _6405 = (uint3(int3(int(_6292 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6406 = _6405.y;
        uint _6407 = _6405.z;
        uint _6410 = _6405.x + (_6406 * _6407);
        uint _6412 = _6406 + (_6407 * _6410);
        uint3 _6417 = uint3(0u, 0u, 0u);
        _6417.x = _6410 + (_6412 * (_6407 + (_6410 * _6412)));
        uint3 _6430 = (uint3(int3(int(_6292 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6431 = _6430.y;
        uint _6432 = _6430.z;
        uint _6435 = _6430.x + (_6431 * _6432);
        uint _6437 = _6431 + (_6432 * _6435);
        uint3 _6442 = uint3(0u, 0u, 0u);
        _6442.x = _6435 + (_6437 * (_6432 + (_6435 * _6437)));
        uint3 _6455 = (uint3(int3(int(_6292 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6456 = _6455.y;
        uint _6457 = _6455.z;
        uint _6460 = _6455.x + (_6456 * _6457);
        uint _6462 = _6456 + (_6457 * _6460);
        uint3 _6467 = uint3(0u, 0u, 0u);
        _6467.x = _6460 + (_6462 * (_6457 + (_6460 * _6462)));
        uint3 _6480 = (uint3(int3(int(_6292 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6481 = _6480.y;
        uint _6482 = _6480.z;
        uint _6485 = _6480.x + (_6481 * _6482);
        uint _6487 = _6481 + (_6482 * _6485);
        uint3 _6492 = uint3(0u, 0u, 0u);
        _6492.x = _6485 + (_6487 * (_6482 + (_6485 * _6487)));
        float4 _6503 = float4(_6290, 0.0f);
        float4 _6509 = ((_6503 * _6503) * _6503) * mad(_6503, (_6503 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _6510 = _6509.x;
        float _6513 = _6509.y;
        float _6520 = abs(lerp(lerp(lerp(dot(mad(float3((_6316 >> _6317).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6290), dot(mad(float3((_6342 >> _6317).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6290 - float3(1.0f, 0.0f, 0.0f)), _6510), lerp(dot(mad(float3((_6367 >> _6317).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6290 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_6392 >> _6317).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6290 - float3(1.0f, 1.0f, 0.0f)), _6510), _6513), lerp(lerp(dot(mad(float3((_6417 >> _6317).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6290 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_6442 >> _6317).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6290 - float3(1.0f, 0.0f, 1.0f)), _6510), lerp(dot(mad(float3((_6467 >> _6317).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6290 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_6492 >> _6317).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6290 - 1.0f.xxx), _6510), _6513), _6509.z));
        float _6285 = mad(_6520, _6282, _6284);
        _6279 *= 2.0f;
        _6282 *= 0.5f;
        _6284 = _6285;
        _6286++;
        continue;
    }
    float _6524 = lerp(_3868, _3873, lerp(0.0f, 1.0f, _6021) * mad(lerp(0.0f, 1.0f, _6284), Material_Material_PreshaderBuffer[61].w, Material_Material_PreshaderBuffer[61].z));
    float2 _6532 = float2(min(max(_5695 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6533 = _1696 * _6532;
    float2 _6534 = _6532 * _1697;
    float _6539 = _6533.x + _6533.y;
    float _6540 = _6534.x + _6534.y;
    float _6541 = _5712 * Material_Material_PreshaderBuffer[15].w;
    float _6542 = 2.0f / _6541;
    float _6543 = _6539 * _6542;
    float _6546 = mad(_6540, _6542, (_6542 * Material_Material_PreshaderBuffer[62].y) * _5983);
    float _6547 = floor(_6543);
    float _6557 = _6524 * Material_Material_PreshaderBuffer[17].z;
    float2 _6568 = float2(min(max(_5695 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6569 = _1696 * _6568;
    float2 _6570 = _6568 * _1697;
    float _6575 = _6569.x + _6569.y;
    float _6576 = _6570.x + _6570.y;
    float _6577 = _6541 * Material_Material_PreshaderBuffer[15].w;
    float _6578 = 2.0f / _6577;
    float _6579 = _6575 * _6578;
    float _6582 = mad(_6576, _6578, (_6578 * Material_Material_PreshaderBuffer[62].w) * _5983);
    float _6583 = floor(_6579);
    float _6593 = _6557 * Material_Material_PreshaderBuffer[17].z;
    float2 _6603 = float2(min(max(_5695 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6604 = _1696 * _6603;
    float2 _6605 = _6603 * _1697;
    float _6610 = _6604.x + _6604.y;
    float _6611 = _6605.x + _6605.y;
    float _6613 = 2.0f / (_6577 * Material_Material_PreshaderBuffer[15].w);
    float _6614 = _6610 * _6613;
    float _6617 = mad(_6611, _6613, (_6613 * Material_Material_PreshaderBuffer[63].y) * _5983);
    float _6618 = floor(_6614);
    float _6642 = (abs(Material_Material_PreshaderBuffer[78].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[78].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[78].w : Material_Material_PreshaderBuffer[79].x) : Material_Material_PreshaderBuffer[78].w;
    float _6650 = (abs(_6642 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_6642 >= 1.0f) ? Material_Material_PreshaderBuffer[79].y : Material_Material_PreshaderBuffer[78].w) : Material_Material_PreshaderBuffer[78].w;
    float3 _6660 = float3(min(max((abs(_6650) > 9.9999997473787516355514526367188e-06f) ? ((_6650 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[80].z, 0.0f);
    float2 _6666 = float2(min(max(_6660 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6667 = _1696 * _6666;
    float2 _6668 = _6666 * _1697;
    float _6673 = _6667.x + _6667.y;
    float _6674 = _6668.x + _6668.y;
    float _6677 = Material_Material_PreshaderBuffer[81].w * _4591;
    float _6678 = 2.0f / _6677;
    float _6679 = _6673 * _6678;
    float _6682 = mad(_6674, _6678, (_6678 * Material_Material_PreshaderBuffer[67].y) * _5983);
    float _6683 = floor(_6679);
    float _6693 = _6524 * Material_Material_PreshaderBuffer[25].w;
    float2 _6701 = float2(min(max(_6660 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6702 = _1696 * _6701;
    float2 _6703 = _6701 * _1697;
    float _6708 = _6702.x + _6702.y;
    float _6709 = _6703.x + _6703.y;
    float _6710 = _6677 * Material_Material_PreshaderBuffer[15].w;
    float _6711 = 2.0f / _6710;
    float _6712 = _6708 * _6711;
    float _6715 = mad(_6709, _6711, (_6711 * Material_Material_PreshaderBuffer[67].z) * _5983);
    float _6716 = floor(_6712);
    float _6726 = _6693 * Material_Material_PreshaderBuffer[17].z;
    float2 _6737 = float2(min(max(_6660 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6738 = _1696 * _6737;
    float2 _6739 = _6737 * _1697;
    float _6744 = _6738.x + _6738.y;
    float _6745 = _6739.x + _6739.y;
    float _6746 = _6710 * Material_Material_PreshaderBuffer[15].w;
    float _6747 = 2.0f / _6746;
    float _6748 = _6744 * _6747;
    float _6751 = mad(_6745, _6747, (_6747 * Material_Material_PreshaderBuffer[67].w) * _5983);
    float _6752 = floor(_6748);
    float _6762 = _6726 * Material_Material_PreshaderBuffer[17].z;
    float2 _6772 = float2(min(max(_6660 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6773 = _1696 * _6772;
    float2 _6774 = _6772 * _1697;
    float _6779 = _6773.x + _6773.y;
    float _6780 = _6774.x + _6774.y;
    float _6782 = 2.0f / (_6746 * Material_Material_PreshaderBuffer[15].w);
    float _6783 = _6779 * _6782;
    float _6786 = mad(_6780, _6782, (_6782 * Material_Material_PreshaderBuffer[68].x) * _5983);
    float _6787 = floor(_6783);
    float _6797 = _6762 * Material_Material_PreshaderBuffer[17].z;
    float3 _6802 = (((float3(_550, _550, sin(mad(mad(_5714, 6.283185482025146484375f, _5986 * (-6.283185482025146484375f)), 2097152.0f, mad(_5985, 6.283185482025146484375f, floor(mad(mad(_5708, _5713, -_5986), 2097152.0f, _5985)) * (-6.283185482025146484375f)))) * _6524) + float3(_550, _550, sin(mad(mad(_6543, 6.283185482025146484375f, _6547 * (-6.283185482025146484375f)), 2097152.0f, mad(_6546, 6.283185482025146484375f, floor(mad(mad(_6539, _6542, -_6547), 2097152.0f, _6546)) * (-6.283185482025146484375f)))) * _6557)) + float3(_550, _550, sin(mad(mad(_6579, 6.283185482025146484375f, _6583 * (-6.283185482025146484375f)), 2097152.0f, mad(_6582, 6.283185482025146484375f, floor(mad(mad(_6575, _6578, -_6583), 2097152.0f, _6582)) * (-6.283185482025146484375f)))) * _6593)) + float3(_550, _550, sin(mad(mad(_6614, 6.283185482025146484375f, _6618 * (-6.283185482025146484375f)), 2097152.0f, mad(_6617, 6.283185482025146484375f, floor(mad(mad(_6610, _6613, -_6618), 2097152.0f, _6617)) * (-6.283185482025146484375f)))) * (_6593 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_550, _550, sin(mad(mad(_6679, 6.283185482025146484375f, _6683 * (-6.283185482025146484375f)), 2097152.0f, mad(_6682, 6.283185482025146484375f, floor(mad(mad(_6673, _6678, -_6683), 2097152.0f, _6682)) * (-6.283185482025146484375f)))) * _6693) + float3(_550, _550, sin(mad(mad(_6712, 6.283185482025146484375f, _6716 * (-6.283185482025146484375f)), 2097152.0f, mad(_6715, 6.283185482025146484375f, floor(mad(mad(_6708, _6711, -_6716), 2097152.0f, _6715)) * (-6.283185482025146484375f)))) * _6726)) + float3(_550, _550, sin(mad(mad(_6748, 6.283185482025146484375f, _6752 * (-6.283185482025146484375f)), 2097152.0f, mad(_6751, 6.283185482025146484375f, floor(mad(mad(_6744, _6747, -_6752), 2097152.0f, _6751)) * (-6.283185482025146484375f)))) * _6762)) + float3(_550, _550, sin(mad(mad(_6783, 6.283185482025146484375f, _6787 * (-6.283185482025146484375f)), 2097152.0f, mad(_6786, 6.283185482025146484375f, floor(mad(mad(_6779, _6782, -_6787), 2097152.0f, _6786)) * (-6.283185482025146484375f)))) * _6797));
    float _6812 = (abs(Material_Material_PreshaderBuffer[82].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[82].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[82].x : Material_Material_PreshaderBuffer[82].y) : Material_Material_PreshaderBuffer[82].x;
    float _6820 = (abs(_6812 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_6812 >= 1.0f) ? Material_Material_PreshaderBuffer[82].z : Material_Material_PreshaderBuffer[82].x) : Material_Material_PreshaderBuffer[82].x;
    float3 _6830 = float3(min(max((abs(_6820) > 9.9999997473787516355514526367188e-06f) ? ((_6820 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[83].w, 0.0f);
    float2 _6836 = float2(min(max(_6830 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6837 = _1696 * _6836;
    float2 _6838 = _6836 * _1697;
    float _6843 = _6837.x + _6837.y;
    float _6844 = _6838.x + _6838.y;
    float _6847 = Material_Material_PreshaderBuffer[85].x * _4591;
    float _6848 = 2.0f / _6847;
    float _6849 = _6843 * _6848;
    float _6852 = mad(_6844, _6848, (_6848 * Material_Material_PreshaderBuffer[67].y) * _5983);
    float _6853 = floor(_6849);
    float2 _6870 = float2(min(max(_6830 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6871 = _1696 * _6870;
    float2 _6872 = _6870 * _1697;
    float _6877 = _6871.x + _6871.y;
    float _6878 = _6872.x + _6872.y;
    float _6879 = _6847 * Material_Material_PreshaderBuffer[15].w;
    float _6880 = 2.0f / _6879;
    float _6881 = _6877 * _6880;
    float _6884 = mad(_6878, _6880, (_6880 * Material_Material_PreshaderBuffer[67].z) * _5983);
    float _6885 = floor(_6881);
    float2 _6905 = float2(min(max(_6830 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6906 = _1696 * _6905;
    float2 _6907 = _6905 * _1697;
    float _6912 = _6906.x + _6906.y;
    float _6913 = _6907.x + _6907.y;
    float _6914 = _6879 * Material_Material_PreshaderBuffer[15].w;
    float _6915 = 2.0f / _6914;
    float _6916 = _6912 * _6915;
    float _6919 = mad(_6913, _6915, (_6915 * Material_Material_PreshaderBuffer[67].w) * _5983);
    float _6920 = floor(_6916);
    float2 _6939 = float2(min(max(_6830 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6940 = _1696 * _6939;
    float2 _6941 = _6939 * _1697;
    float _6946 = _6940.x + _6940.y;
    float _6947 = _6941.x + _6941.y;
    float _6949 = 2.0f / (_6914 * Material_Material_PreshaderBuffer[15].w);
    float _6950 = _6946 * _6949;
    float _6953 = mad(_6947, _6949, (_6949 * Material_Material_PreshaderBuffer[68].x) * _5983);
    float _6954 = floor(_6950);
    float3 _6968 = _6802 + (((float3(_550, _550, sin(mad(mad(_6849, 6.283185482025146484375f, _6853 * (-6.283185482025146484375f)), 2097152.0f, mad(_6852, 6.283185482025146484375f, floor(mad(mad(_6843, _6848, -_6853), 2097152.0f, _6852)) * (-6.283185482025146484375f)))) * _6693) + float3(_550, _550, sin(mad(mad(_6881, 6.283185482025146484375f, _6885 * (-6.283185482025146484375f)), 2097152.0f, mad(_6884, 6.283185482025146484375f, floor(mad(mad(_6877, _6880, -_6885), 2097152.0f, _6884)) * (-6.283185482025146484375f)))) * _6726)) + float3(_550, _550, sin(mad(mad(_6916, 6.283185482025146484375f, _6920 * (-6.283185482025146484375f)), 2097152.0f, mad(_6919, 6.283185482025146484375f, floor(mad(mad(_6912, _6915, -_6920), 2097152.0f, _6919)) * (-6.283185482025146484375f)))) * _6762)) + float3(_550, _550, sin(mad(mad(_6950, 6.283185482025146484375f, _6954 * (-6.283185482025146484375f)), 2097152.0f, mad(_6953, 6.283185482025146484375f, floor(mad(mad(_6946, _6949, -_6954), 2097152.0f, _6953)) * (-6.283185482025146484375f)))) * _6797));
    float _6969 = _3566 * 8.0f;
    float _6970 = Material_Material_PreshaderBuffer[78].z * _6969;
    float _6971 = 2.0f / _6970;
    float _6972 = _5708 * _6971;
    float _6975 = mad(_5709, _6971, (_6971 * Material_Material_PreshaderBuffer[71].z) * _5983);
    float _6976 = floor(_6972);
    float _6986 = _6524 * 8.0f;
    float _6989 = _6970 * Material_Material_PreshaderBuffer[15].w;
    float _6990 = 2.0f / _6989;
    float _6991 = _6539 * _6990;
    float _6994 = mad(_6540, _6990, (_6990 * Material_Material_PreshaderBuffer[71].w) * _5983);
    float _6995 = floor(_6991);
    float _7005 = _6986 * Material_Material_PreshaderBuffer[17].z;
    float _7011 = _6989 * Material_Material_PreshaderBuffer[15].w;
    float _7012 = 2.0f / _7011;
    float _7013 = _6575 * _7012;
    float _7016 = mad(_6576, _7012, (_7012 * Material_Material_PreshaderBuffer[72].x) * _5983);
    float _7017 = floor(_7013);
    float _7027 = _7005 * Material_Material_PreshaderBuffer[17].z;
    float _7033 = 2.0f / (_7011 * Material_Material_PreshaderBuffer[15].w);
    float _7034 = _6610 * _7033;
    float _7037 = mad(_6611, _7033, (_7033 * Material_Material_PreshaderBuffer[72].y) * _5983);
    float _7038 = floor(_7034);
    float _7053 = _6969 * Material_Material_PreshaderBuffer[23].w;
    float _7054 = Material_Material_PreshaderBuffer[81].w * _7053;
    float _7055 = 2.0f / _7054;
    float _7056 = _6673 * _7055;
    float _7059 = mad(_6674, _7055, (_7055 * Material_Material_PreshaderBuffer[72].z) * _5983);
    float _7060 = floor(_7056);
    float _7070 = _6986 * Material_Material_PreshaderBuffer[25].w;
    float _7073 = _7054 * Material_Material_PreshaderBuffer[15].w;
    float _7074 = 2.0f / _7073;
    float _7075 = _6708 * _7074;
    float _7078 = mad(_6709, _7074, (_7074 * Material_Material_PreshaderBuffer[72].w) * _5983);
    float _7079 = floor(_7075);
    float _7089 = _7070 * Material_Material_PreshaderBuffer[17].z;
    float _7095 = _7073 * Material_Material_PreshaderBuffer[15].w;
    float _7096 = 2.0f / _7095;
    float _7097 = _6744 * _7096;
    float _7100 = mad(_6745, _7096, (_7096 * Material_Material_PreshaderBuffer[73].x) * _5983);
    float _7101 = floor(_7097);
    float _7111 = _7089 * Material_Material_PreshaderBuffer[17].z;
    float _7117 = 2.0f / (_7095 * Material_Material_PreshaderBuffer[15].w);
    float _7118 = _6779 * _7117;
    float _7121 = mad(_6780, _7117, (_7117 * Material_Material_PreshaderBuffer[73].y) * _5983);
    float _7122 = floor(_7118);
    float _7132 = _7111 * Material_Material_PreshaderBuffer[17].z;
    float3 _7137 = (((float3(_550, _550, sin(mad(mad(_6972, 6.283185482025146484375f, _6976 * (-6.283185482025146484375f)), 2097152.0f, mad(_6975, 6.283185482025146484375f, floor(mad(mad(_5708, _6971, -_6976), 2097152.0f, _6975)) * (-6.283185482025146484375f)))) * _6986) + float3(_550, _550, sin(mad(mad(_6991, 6.283185482025146484375f, _6995 * (-6.283185482025146484375f)), 2097152.0f, mad(_6994, 6.283185482025146484375f, floor(mad(mad(_6539, _6990, -_6995), 2097152.0f, _6994)) * (-6.283185482025146484375f)))) * _7005)) + float3(_550, _550, sin(mad(mad(_7013, 6.283185482025146484375f, _7017 * (-6.283185482025146484375f)), 2097152.0f, mad(_7016, 6.283185482025146484375f, floor(mad(mad(_6575, _7012, -_7017), 2097152.0f, _7016)) * (-6.283185482025146484375f)))) * _7027)) + float3(_550, _550, sin(mad(mad(_7034, 6.283185482025146484375f, _7038 * (-6.283185482025146484375f)), 2097152.0f, mad(_7037, 6.283185482025146484375f, floor(mad(mad(_6610, _7033, -_7038), 2097152.0f, _7037)) * (-6.283185482025146484375f)))) * (_7027 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_550, _550, sin(mad(mad(_7056, 6.283185482025146484375f, _7060 * (-6.283185482025146484375f)), 2097152.0f, mad(_7059, 6.283185482025146484375f, floor(mad(mad(_6673, _7055, -_7060), 2097152.0f, _7059)) * (-6.283185482025146484375f)))) * _7070) + float3(_550, _550, sin(mad(mad(_7075, 6.283185482025146484375f, _7079 * (-6.283185482025146484375f)), 2097152.0f, mad(_7078, 6.283185482025146484375f, floor(mad(mad(_6708, _7074, -_7079), 2097152.0f, _7078)) * (-6.283185482025146484375f)))) * _7089)) + float3(_550, _550, sin(mad(mad(_7097, 6.283185482025146484375f, _7101 * (-6.283185482025146484375f)), 2097152.0f, mad(_7100, 6.283185482025146484375f, floor(mad(mad(_6744, _7096, -_7101), 2097152.0f, _7100)) * (-6.283185482025146484375f)))) * _7111)) + float3(_550, _550, sin(mad(mad(_7118, 6.283185482025146484375f, _7122 * (-6.283185482025146484375f)), 2097152.0f, mad(_7121, 6.283185482025146484375f, floor(mad(mad(_6779, _7117, -_7122), 2097152.0f, _7121)) * (-6.283185482025146484375f)))) * _7132));
    float _7138 = Material_Material_PreshaderBuffer[85].x * _7053;
    float _7139 = 2.0f / _7138;
    float _7140 = _6843 * _7139;
    float _7143 = mad(_6844, _7139, (_7139 * Material_Material_PreshaderBuffer[72].z) * _5983);
    float _7144 = floor(_7140);
    float _7156 = _7138 * Material_Material_PreshaderBuffer[15].w;
    float _7157 = 2.0f / _7156;
    float _7158 = _6877 * _7157;
    float _7161 = mad(_6878, _7157, (_7157 * Material_Material_PreshaderBuffer[72].w) * _5983);
    float _7162 = floor(_7158);
    float _7177 = _7156 * Material_Material_PreshaderBuffer[15].w;
    float _7178 = 2.0f / _7177;
    float _7179 = _6912 * _7178;
    float _7182 = mad(_6913, _7178, (_7178 * Material_Material_PreshaderBuffer[73].x) * _5983);
    float _7183 = floor(_7179);
    float _7198 = 2.0f / (_7177 * Material_Material_PreshaderBuffer[15].w);
    float _7199 = _6946 * _7198;
    float _7202 = mad(_6947, _7198, (_7198 * Material_Material_PreshaderBuffer[73].y) * _5983);
    float _7203 = floor(_7199);
    float3 _7217 = _7137 + (((float3(_550, _550, sin(mad(mad(_7140, 6.283185482025146484375f, _7144 * (-6.283185482025146484375f)), 2097152.0f, mad(_7143, 6.283185482025146484375f, floor(mad(mad(_6843, _7139, -_7144), 2097152.0f, _7143)) * (-6.283185482025146484375f)))) * _7070) + float3(_550, _550, sin(mad(mad(_7158, 6.283185482025146484375f, _7162 * (-6.283185482025146484375f)), 2097152.0f, mad(_7161, 6.283185482025146484375f, floor(mad(mad(_6877, _7157, -_7162), 2097152.0f, _7161)) * (-6.283185482025146484375f)))) * _7089)) + float3(_550, _550, sin(mad(mad(_7179, 6.283185482025146484375f, _7183 * (-6.283185482025146484375f)), 2097152.0f, mad(_7182, 6.283185482025146484375f, floor(mad(mad(_6912, _7178, -_7183), 2097152.0f, _7182)) * (-6.283185482025146484375f)))) * _7111)) + float3(_550, _550, sin(mad(mad(_7199, 6.283185482025146484375f, _7203 * (-6.283185482025146484375f)), 2097152.0f, mad(_7202, 6.283185482025146484375f, floor(mad(mad(_6946, _7198, -_7203), 2097152.0f, _7202)) * (-6.283185482025146484375f)))) * _7132));
    float _7218 = Material_Material_PreshaderBuffer[78].z * _5159;
    float _7219 = 2.0f / _7218;
    float _7220 = _5708 * _7219;
    float _7223 = mad(_5709, _7219, (_7219 * Material_Material_PreshaderBuffer[73].z) * _5983);
    float _7224 = floor(_7220);
    float _7234 = _6524 * 4.0f;
    float _7237 = _7218 * Material_Material_PreshaderBuffer[15].w;
    float _7238 = 2.0f / _7237;
    float _7239 = _6539 * _7238;
    float _7242 = mad(_6540, _7238, (_7238 * Material_Material_PreshaderBuffer[73].w) * _5983);
    float _7243 = floor(_7239);
    float _7253 = _7234 * Material_Material_PreshaderBuffer[17].z;
    float _7259 = _7237 * Material_Material_PreshaderBuffer[15].w;
    float _7260 = 2.0f / _7259;
    float _7261 = _6575 * _7260;
    float _7264 = mad(_6576, _7260, (_7260 * Material_Material_PreshaderBuffer[74].x) * _5983);
    float _7265 = floor(_7261);
    float _7275 = _7253 * Material_Material_PreshaderBuffer[17].z;
    float _7281 = 2.0f / (_7259 * Material_Material_PreshaderBuffer[15].w);
    float _7282 = _6610 * _7281;
    float _7285 = mad(_6611, _7281, (_7281 * Material_Material_PreshaderBuffer[74].y) * _5983);
    float _7286 = floor(_7282);
    float _7301 = Material_Material_PreshaderBuffer[81].w * _5247;
    float _7302 = 2.0f / _7301;
    float _7303 = _6673 * _7302;
    float _7306 = mad(_6674, _7302, (_7302 * Material_Material_PreshaderBuffer[74].z) * _5983);
    float _7307 = floor(_7303);
    float _7317 = _7234 * Material_Material_PreshaderBuffer[25].w;
    float _7320 = _7301 * Material_Material_PreshaderBuffer[15].w;
    float _7321 = 2.0f / _7320;
    float _7322 = _6708 * _7321;
    float _7325 = mad(_6709, _7321, (_7321 * Material_Material_PreshaderBuffer[74].w) * _5983);
    float _7326 = floor(_7322);
    float _7336 = _7317 * Material_Material_PreshaderBuffer[17].z;
    float _7342 = _7320 * Material_Material_PreshaderBuffer[15].w;
    float _7343 = 2.0f / _7342;
    float _7344 = _6744 * _7343;
    float _7347 = mad(_6745, _7343, (_7343 * Material_Material_PreshaderBuffer[75].x) * _5983);
    float _7348 = floor(_7344);
    float _7358 = _7336 * Material_Material_PreshaderBuffer[17].z;
    float _7364 = 2.0f / (_7342 * Material_Material_PreshaderBuffer[15].w);
    float _7365 = _6779 * _7364;
    float _7368 = mad(_6780, _7364, (_7364 * Material_Material_PreshaderBuffer[75].y) * _5983);
    float _7369 = floor(_7365);
    float _7379 = _7358 * Material_Material_PreshaderBuffer[17].z;
    float3 _7384 = (((float3(_550, _550, sin(mad(mad(_7220, 6.283185482025146484375f, _7224 * (-6.283185482025146484375f)), 2097152.0f, mad(_7223, 6.283185482025146484375f, floor(mad(mad(_5708, _7219, -_7224), 2097152.0f, _7223)) * (-6.283185482025146484375f)))) * _7234) + float3(_550, _550, sin(mad(mad(_7239, 6.283185482025146484375f, _7243 * (-6.283185482025146484375f)), 2097152.0f, mad(_7242, 6.283185482025146484375f, floor(mad(mad(_6539, _7238, -_7243), 2097152.0f, _7242)) * (-6.283185482025146484375f)))) * _7253)) + float3(_550, _550, sin(mad(mad(_7261, 6.283185482025146484375f, _7265 * (-6.283185482025146484375f)), 2097152.0f, mad(_7264, 6.283185482025146484375f, floor(mad(mad(_6575, _7260, -_7265), 2097152.0f, _7264)) * (-6.283185482025146484375f)))) * _7275)) + float3(_550, _550, sin(mad(mad(_7282, 6.283185482025146484375f, _7286 * (-6.283185482025146484375f)), 2097152.0f, mad(_7285, 6.283185482025146484375f, floor(mad(mad(_6610, _7281, -_7286), 2097152.0f, _7285)) * (-6.283185482025146484375f)))) * (_7275 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_550, _550, sin(mad(mad(_7303, 6.283185482025146484375f, _7307 * (-6.283185482025146484375f)), 2097152.0f, mad(_7306, 6.283185482025146484375f, floor(mad(mad(_6673, _7302, -_7307), 2097152.0f, _7306)) * (-6.283185482025146484375f)))) * _7317) + float3(_550, _550, sin(mad(mad(_7322, 6.283185482025146484375f, _7326 * (-6.283185482025146484375f)), 2097152.0f, mad(_7325, 6.283185482025146484375f, floor(mad(mad(_6708, _7321, -_7326), 2097152.0f, _7325)) * (-6.283185482025146484375f)))) * _7336)) + float3(_550, _550, sin(mad(mad(_7344, 6.283185482025146484375f, _7348 * (-6.283185482025146484375f)), 2097152.0f, mad(_7347, 6.283185482025146484375f, floor(mad(mad(_6744, _7343, -_7348), 2097152.0f, _7347)) * (-6.283185482025146484375f)))) * _7358)) + float3(_550, _550, sin(mad(mad(_7365, 6.283185482025146484375f, _7369 * (-6.283185482025146484375f)), 2097152.0f, mad(_7368, 6.283185482025146484375f, floor(mad(mad(_6779, _7364, -_7369), 2097152.0f, _7368)) * (-6.283185482025146484375f)))) * _7379));
    float _7385 = Material_Material_PreshaderBuffer[85].x * _5247;
    float _7386 = 2.0f / _7385;
    float _7387 = _6843 * _7386;
    float _7390 = mad(_6844, _7386, (_7386 * Material_Material_PreshaderBuffer[74].z) * _5983);
    float _7391 = floor(_7387);
    float _7403 = _7385 * Material_Material_PreshaderBuffer[15].w;
    float _7404 = 2.0f / _7403;
    float _7405 = _6877 * _7404;
    float _7408 = mad(_6878, _7404, (_7404 * Material_Material_PreshaderBuffer[74].w) * _5983);
    float _7409 = floor(_7405);
    float _7424 = _7403 * Material_Material_PreshaderBuffer[15].w;
    float _7425 = 2.0f / _7424;
    float _7426 = _6912 * _7425;
    float _7429 = mad(_6913, _7425, (_7425 * Material_Material_PreshaderBuffer[75].x) * _5983);
    float _7430 = floor(_7426);
    float _7445 = 2.0f / (_7424 * Material_Material_PreshaderBuffer[15].w);
    float _7446 = _6946 * _7445;
    float _7449 = mad(_6947, _7445, (_7445 * Material_Material_PreshaderBuffer[75].y) * _5983);
    float _7450 = floor(_7446);
    float3 _7464 = _7384 + (((float3(_550, _550, sin(mad(mad(_7387, 6.283185482025146484375f, _7391 * (-6.283185482025146484375f)), 2097152.0f, mad(_7390, 6.283185482025146484375f, floor(mad(mad(_6843, _7386, -_7391), 2097152.0f, _7390)) * (-6.283185482025146484375f)))) * _7317) + float3(_550, _550, sin(mad(mad(_7405, 6.283185482025146484375f, _7409 * (-6.283185482025146484375f)), 2097152.0f, mad(_7408, 6.283185482025146484375f, floor(mad(mad(_6877, _7404, -_7409), 2097152.0f, _7408)) * (-6.283185482025146484375f)))) * _7336)) + float3(_550, _550, sin(mad(mad(_7426, 6.283185482025146484375f, _7430 * (-6.283185482025146484375f)), 2097152.0f, mad(_7429, 6.283185482025146484375f, floor(mad(mad(_6912, _7425, -_7430), 2097152.0f, _7429)) * (-6.283185482025146484375f)))) * _7358)) + float3(_550, _550, sin(mad(mad(_7446, 6.283185482025146484375f, _7450 * (-6.283185482025146484375f)), 2097152.0f, mad(_7449, 6.283185482025146484375f, floor(mad(mad(_6946, _7445, -_7450), 2097152.0f, _7449)) * (-6.283185482025146484375f)))) * _7379));
    float _7465 = Material_Material_PreshaderBuffer[78].z * _5416;
    float _7466 = 2.0f / _7465;
    float _7467 = _5708 * _7466;
    float _7470 = mad(_5709, _7466, (_7466 * Material_Material_PreshaderBuffer[71].z) * _5983);
    float _7471 = floor(_7467);
    float _7481 = _6524 * 0.5f;
    float _7484 = _7465 * Material_Material_PreshaderBuffer[15].w;
    float _7485 = 2.0f / _7484;
    float _7486 = _6539 * _7485;
    float _7489 = mad(_6540, _7485, (_7485 * Material_Material_PreshaderBuffer[71].w) * _5983);
    float _7490 = floor(_7486);
    float _7500 = _7481 * Material_Material_PreshaderBuffer[17].z;
    float _7506 = _7484 * Material_Material_PreshaderBuffer[15].w;
    float _7507 = 2.0f / _7506;
    float _7508 = _6575 * _7507;
    float _7511 = mad(_6576, _7507, (_7507 * Material_Material_PreshaderBuffer[72].x) * _5983);
    float _7512 = floor(_7508);
    float _7522 = _7500 * Material_Material_PreshaderBuffer[17].z;
    float _7528 = 2.0f / (_7506 * Material_Material_PreshaderBuffer[15].w);
    float _7529 = _6610 * _7528;
    float _7532 = mad(_6611, _7528, (_7528 * Material_Material_PreshaderBuffer[72].y) * _5983);
    float _7533 = floor(_7529);
    float _7548 = Material_Material_PreshaderBuffer[81].w * _5500;
    float _7549 = 2.0f / _7548;
    float _7550 = _6673 * _7549;
    float _7553 = mad(_6674, _7549, (_7549 * Material_Material_PreshaderBuffer[72].z) * _5983);
    float _7554 = floor(_7550);
    float _7564 = _7481 * Material_Material_PreshaderBuffer[25].w;
    float _7567 = _7548 * Material_Material_PreshaderBuffer[15].w;
    float _7568 = 2.0f / _7567;
    float _7569 = _6708 * _7568;
    float _7572 = mad(_6709, _7568, (_7568 * Material_Material_PreshaderBuffer[72].w) * _5983);
    float _7573 = floor(_7569);
    float _7583 = _7564 * Material_Material_PreshaderBuffer[17].z;
    float _7589 = _7567 * Material_Material_PreshaderBuffer[15].w;
    float _7590 = 2.0f / _7589;
    float _7591 = _6744 * _7590;
    float _7594 = mad(_6745, _7590, (_7590 * Material_Material_PreshaderBuffer[73].x) * _5983);
    float _7595 = floor(_7591);
    float _7605 = _7583 * Material_Material_PreshaderBuffer[17].z;
    float _7611 = 2.0f / (_7589 * Material_Material_PreshaderBuffer[15].w);
    float _7612 = _6779 * _7611;
    float _7615 = mad(_6780, _7611, (_7611 * Material_Material_PreshaderBuffer[73].y) * _5983);
    float _7616 = floor(_7612);
    float _7626 = _7605 * Material_Material_PreshaderBuffer[17].z;
    float3 _7631 = (((float3(_550, _550, sin(mad(mad(_7467, 6.283185482025146484375f, _7471 * (-6.283185482025146484375f)), 2097152.0f, mad(_7470, 6.283185482025146484375f, floor(mad(mad(_5708, _7466, -_7471), 2097152.0f, _7470)) * (-6.283185482025146484375f)))) * _7481) + float3(_550, _550, sin(mad(mad(_7486, 6.283185482025146484375f, _7490 * (-6.283185482025146484375f)), 2097152.0f, mad(_7489, 6.283185482025146484375f, floor(mad(mad(_6539, _7485, -_7490), 2097152.0f, _7489)) * (-6.283185482025146484375f)))) * _7500)) + float3(_550, _550, sin(mad(mad(_7508, 6.283185482025146484375f, _7512 * (-6.283185482025146484375f)), 2097152.0f, mad(_7511, 6.283185482025146484375f, floor(mad(mad(_6575, _7507, -_7512), 2097152.0f, _7511)) * (-6.283185482025146484375f)))) * _7522)) + float3(_550, _550, sin(mad(mad(_7529, 6.283185482025146484375f, _7533 * (-6.283185482025146484375f)), 2097152.0f, mad(_7532, 6.283185482025146484375f, floor(mad(mad(_6610, _7528, -_7533), 2097152.0f, _7532)) * (-6.283185482025146484375f)))) * (_7522 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_550, _550, sin(mad(mad(_7550, 6.283185482025146484375f, _7554 * (-6.283185482025146484375f)), 2097152.0f, mad(_7553, 6.283185482025146484375f, floor(mad(mad(_6673, _7549, -_7554), 2097152.0f, _7553)) * (-6.283185482025146484375f)))) * _7564) + float3(_550, _550, sin(mad(mad(_7569, 6.283185482025146484375f, _7573 * (-6.283185482025146484375f)), 2097152.0f, mad(_7572, 6.283185482025146484375f, floor(mad(mad(_6708, _7568, -_7573), 2097152.0f, _7572)) * (-6.283185482025146484375f)))) * _7583)) + float3(_550, _550, sin(mad(mad(_7591, 6.283185482025146484375f, _7595 * (-6.283185482025146484375f)), 2097152.0f, mad(_7594, 6.283185482025146484375f, floor(mad(mad(_6744, _7590, -_7595), 2097152.0f, _7594)) * (-6.283185482025146484375f)))) * _7605)) + float3(_550, _550, sin(mad(mad(_7612, 6.283185482025146484375f, _7616 * (-6.283185482025146484375f)), 2097152.0f, mad(_7615, 6.283185482025146484375f, floor(mad(mad(_6779, _7611, -_7616), 2097152.0f, _7615)) * (-6.283185482025146484375f)))) * _7626));
    float _7632 = Material_Material_PreshaderBuffer[85].x * _5500;
    float _7633 = 2.0f / _7632;
    float _7634 = _6843 * _7633;
    float _7637 = mad(_6844, _7633, (_7633 * Material_Material_PreshaderBuffer[72].z) * _5983);
    float _7638 = floor(_7634);
    float _7650 = _7632 * Material_Material_PreshaderBuffer[15].w;
    float _7651 = 2.0f / _7650;
    float _7652 = _6877 * _7651;
    float _7655 = mad(_6878, _7651, (_7651 * Material_Material_PreshaderBuffer[72].w) * _5983);
    float _7656 = floor(_7652);
    float _7671 = _7650 * Material_Material_PreshaderBuffer[15].w;
    float _7672 = 2.0f / _7671;
    float _7673 = _6912 * _7672;
    float _7676 = mad(_6913, _7672, (_7672 * Material_Material_PreshaderBuffer[73].x) * _5983);
    float _7677 = floor(_7673);
    float _7692 = 2.0f / (_7671 * Material_Material_PreshaderBuffer[15].w);
    float _7693 = _6946 * _7692;
    float _7696 = mad(_6947, _7692, (_7692 * Material_Material_PreshaderBuffer[73].y) * _5983);
    float _7697 = floor(_7693);
    float3 _7711 = _7631 + (((float3(_550, _550, sin(mad(mad(_7634, 6.283185482025146484375f, _7638 * (-6.283185482025146484375f)), 2097152.0f, mad(_7637, 6.283185482025146484375f, floor(mad(mad(_6843, _7633, -_7638), 2097152.0f, _7637)) * (-6.283185482025146484375f)))) * _7564) + float3(_550, _550, sin(mad(mad(_7652, 6.283185482025146484375f, _7656 * (-6.283185482025146484375f)), 2097152.0f, mad(_7655, 6.283185482025146484375f, floor(mad(mad(_6877, _7651, -_7656), 2097152.0f, _7655)) * (-6.283185482025146484375f)))) * _7583)) + float3(_550, _550, sin(mad(mad(_7673, 6.283185482025146484375f, _7677 * (-6.283185482025146484375f)), 2097152.0f, mad(_7676, 6.283185482025146484375f, floor(mad(mad(_6912, _7672, -_7677), 2097152.0f, _7676)) * (-6.283185482025146484375f)))) * _7605)) + float3(_550, _550, sin(mad(mad(_7693, 6.283185482025146484375f, _7697 * (-6.283185482025146484375f)), 2097152.0f, mad(_7696, 6.283185482025146484375f, floor(mad(mad(_6946, _7692, -_7697), 2097152.0f, _7696)) * (-6.283185482025146484375f)))) * _7626));
    float3 _7716 = mad(_3518, Material_Material_PreshaderBuffer[54].x.xxx, (_4893 + (_5158 + (_5415 + _5664))) + (_6968 + (_7217 + (_7464 + _7711))));
    float _7717 = _7716.z;
    float _7735 = clamp(mad(clamp(mad(_7717, MaterialCollection0_MaterialCollection0_Vectors[0].y, -Material_Material_PreshaderBuffer[90].w) * Material_Material_PreshaderBuffer[91].z, 0.0f, 1.0f), Material_Material_PreshaderBuffer[91].w, -Material_Material_PreshaderBuffer[92].x) * Material_Material_PreshaderBuffer[92].w, 0.0f, 1.0f);
    float3 _7737 = mad(_7717.xxx, in_var_TEXCOORD11_centroid.xyz, _641);
    float3 _7738 = ddx(View_View_ViewTilePosition);
    float3 _7740 = ddx(_7737);
    float3 _7742 = ddy(View_View_ViewTilePosition);
    float3 _7744 = ddy(_7737);
    float3 _7748 = ddx(View_View_ViewTilePosition);
    float3 _7750 = ddx(_641);
    float3 _7752 = ddy(View_View_ViewTilePosition);
    float3 _7754 = ddy(_641);
    float3 _7757 = normalize(cross((_7748 * 2097152.0f) + _7750, (_7752 * 2097152.0f) + _7754));
    float3 _7763 = lerp((normalize(cross((_7738 * 2097152.0f) + _7740, (_7742 * 2097152.0f) + _7744)) - _7757) + in_var_TEXCOORD11_centroid.xyz, float3(0.0f, 0.0f, 1.0f), Material_Material_PreshaderBuffer[93].y.xxx);
    float3 _7770 = Material_Material_PreshaderBuffer[93].w.xxx;
    float3 _7783 = float3((View_View_ViewTilePosition * _7770).xy, 0.0f);
    float3 _7784 = float3((mad(_7763, Material_Material_PreshaderBuffer[93].z.xxx, _642) * _7770).xy, ((_1161 * Material_Material_PreshaderBuffer[94].y).xx + float2(1.0f, 0.0f)).x);
    float3 _7794 = 0.0f.xxx;
    float _7799 = 0.0f;
    _7794 = (((_7783 - floor(_7783 + ((_7784 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _7784) * 1.0f;
    _7799 = 0.0f;
    float _7797 = 1.0f;
    uint _7801 = 0u;
    [loop]
    for (; _7801 < 10u; )
    {
        float3 _7805 = frac(_7794);
        float _7807 = dot(floor(_7794), float3(19.0f, 47.0f, 101.0f));
        uint3 _7819 = (uint3(int3(int(_7807), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7820 = _7819.y;
        uint _7821 = _7819.z;
        uint _7824 = _7819.x + (_7820 * _7821);
        uint _7826 = _7820 + (_7821 * _7824);
        uint3 _7831 = uint3(0u, 0u, 0u);
        _7831.x = _7824 + (_7826 * (_7821 + (_7824 * _7826)));
        uint3 _7832 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _7845 = (uint3(int3(int(_7807 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7846 = _7845.y;
        uint _7847 = _7845.z;
        uint _7850 = _7845.x + (_7846 * _7847);
        uint _7852 = _7846 + (_7847 * _7850);
        uint3 _7857 = uint3(0u, 0u, 0u);
        _7857.x = _7850 + (_7852 * (_7847 + (_7850 * _7852)));
        uint3 _7870 = (uint3(int3(int(_7807 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7871 = _7870.y;
        uint _7872 = _7870.z;
        uint _7875 = _7870.x + (_7871 * _7872);
        uint _7877 = _7871 + (_7872 * _7875);
        uint3 _7882 = uint3(0u, 0u, 0u);
        _7882.x = _7875 + (_7877 * (_7872 + (_7875 * _7877)));
        uint3 _7895 = (uint3(int3(int(_7807 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7896 = _7895.y;
        uint _7897 = _7895.z;
        uint _7900 = _7895.x + (_7896 * _7897);
        uint _7902 = _7896 + (_7897 * _7900);
        uint3 _7907 = uint3(0u, 0u, 0u);
        _7907.x = _7900 + (_7902 * (_7897 + (_7900 * _7902)));
        uint3 _7920 = (uint3(int3(int(_7807 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7921 = _7920.y;
        uint _7922 = _7920.z;
        uint _7925 = _7920.x + (_7921 * _7922);
        uint _7927 = _7921 + (_7922 * _7925);
        uint3 _7932 = uint3(0u, 0u, 0u);
        _7932.x = _7925 + (_7927 * (_7922 + (_7925 * _7927)));
        uint3 _7945 = (uint3(int3(int(_7807 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7946 = _7945.y;
        uint _7947 = _7945.z;
        uint _7950 = _7945.x + (_7946 * _7947);
        uint _7952 = _7946 + (_7947 * _7950);
        uint3 _7957 = uint3(0u, 0u, 0u);
        _7957.x = _7950 + (_7952 * (_7947 + (_7950 * _7952)));
        uint3 _7970 = (uint3(int3(int(_7807 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7971 = _7970.y;
        uint _7972 = _7970.z;
        uint _7975 = _7970.x + (_7971 * _7972);
        uint _7977 = _7971 + (_7972 * _7975);
        uint3 _7982 = uint3(0u, 0u, 0u);
        _7982.x = _7975 + (_7977 * (_7972 + (_7975 * _7977)));
        uint3 _7995 = (uint3(int3(int(_7807 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7996 = _7995.y;
        uint _7997 = _7995.z;
        uint _8000 = _7995.x + (_7996 * _7997);
        uint _8002 = _7996 + (_7997 * _8000);
        uint3 _8007 = uint3(0u, 0u, 0u);
        _8007.x = _8000 + (_8002 * (_7997 + (_8000 * _8002)));
        float4 _8018 = float4(_7805, 0.0f);
        float4 _8024 = ((_8018 * _8018) * _8018) * mad(_8018, (_8018 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _8025 = _8024.x;
        float _8028 = _8024.y;
        float _8035 = abs(lerp(lerp(lerp(dot(mad(float3((_7831 >> _7832).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7805), dot(mad(float3((_7857 >> _7832).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7805 - float3(1.0f, 0.0f, 0.0f)), _8025), lerp(dot(mad(float3((_7882 >> _7832).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7805 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_7907 >> _7832).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7805 - float3(1.0f, 1.0f, 0.0f)), _8025), _8028), lerp(lerp(dot(mad(float3((_7932 >> _7832).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7805 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_7957 >> _7832).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7805 - float3(1.0f, 0.0f, 1.0f)), _8025), lerp(dot(mad(float3((_7982 >> _7832).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7805 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_8007 >> _7832).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7805 - 1.0f.xxx), _8025), _8028), _8024.z));
        float _7800 = mad(_8035, _7797, _7799);
        _7794 *= 2.0f;
        _7797 *= 0.5f;
        _7799 = _7800;
        _7801++;
        continue;
    }
    float _8039 = -_7735;
    float _8045 = clamp(mad(mad(_8039, Material_Material_PreshaderBuffer[94].z, lerp(0.0f, 1.0f, _7799)) / mad(_8039, Material_Material_PreshaderBuffer[94].z, mad(_7735, Material_Material_PreshaderBuffer[94].z, 1.0f)), -1.0f, 1.0f), 0.0f, 1.0f);
    float _8054 = clamp(lerp(Material_Material_PreshaderBuffer[95].x, Material_Material_PreshaderBuffer[94].w, (_8045 <= 0.0f) ? 0.0f : pow(_8045, 2.0f)), 0.0f, 1.0f);
    float _8055 = _7735 * _8054;
    float3 _8058 = Material_Material_PreshaderBuffer[95].y.xxx;
    float3 _8059 = View_View_ViewTilePosition * _8058;
    float3 _8060 = _642 * _8058;
    float3 _8071 = 0.0f.xxx;
    float3 _8074 = 0.0f.xxx;
    float _8078 = 0.0f;
    _8071 = _543;
    _8074 = mad(_642, _8058, mad(View_View_ViewTilePosition, _8058, -floor(mad(View_View_ViewTilePosition, _8058, (_8060 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _8078 = 0.0f;
    float3 _8075 = 0.0f.xxx;
    float _8077 = 0.0f;
    float _8079 = 0.0f;
    float3 _8072 = 0.0f.xxx;
    float _8076 = 1.0f;
    uint _8080 = 0u;
    [loop]
    for (; _8080 < 1u; _8071 = _8072, _8074 = _8075, _8076 = _8077, _8078 = _8079, _8080++)
    {
        float3 _8085 = frac(_8074);
        float3 _8086 = floor(_8074);
        float3 _8087 = _8071;
        _8087.x = 0.0f;
        float4 _8089 = 0.0f.xxxx;
        _8089 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _8072 = _8087;
        float3 _8092 = 0.0f.xxx;
        float4 _8090 = 0.0f.xxxx;
        float3 _8099 = 0.0f.xxx;
        for (; _8072.x <= 1.0f; _8092 = _8099, _8092.x = _8099.x + 1.0f, _8089 = _8090, _8072 = _8092)
        {
            float3 _8097 = _8072;
            _8097.y = 0.0f;
            _8099 = _8097;
            _8090 = _8089;
            float3 _8100 = 0.0f.xxx;
            float4 _8102 = 0.0f.xxxx;
            float3 _8111 = 0.0f.xxx;
            for (; _8099.y <= 1.0f; _8100 = _8111, _8100.y = _8111.y + 1.0f, _8099 = _8100, _8090 = _8102)
            {
                float3 _8107 = _8099;
                _8107.z = 0.0f;
                _8102 = _8090;
                _8111 = _8107;
                for (; _8111.z <= 1.0f; )
                {
                    float3 _8116 = _8086 + _8111;
                    uint3 _8121 = (uint3(int3(float3(_8116.x, _8116.y, _8116.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _8122 = _8121.y;
                    uint _8123 = _8121.z;
                    uint _8126 = _8121.x + (_8122 * _8123);
                    uint _8128 = _8122 + (_8123 * _8126);
                    uint _8130 = _8123 + (_8126 * _8128);
                    uint _8132 = _8126 + (_8128 * _8130);
                    uint3 _8133 = _8121;
                    _8133.x = _8132;
                    uint _8135 = _8128 + (_8130 * _8132);
                    _8133.y = _8135;
                    _8133.z = _8130 + (_8132 * _8135);
                    float3 _8147 = _8085 - (_8111 + (normalize(mad(float3(_8133 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _8112 = _8111;
                    _8112.z = _8111.z + 1.0f;
                    _8102 = float4(0.0f, 0.0f, 0.0f, min(_8102.w, dot(_8147, _8147)));
                    _8111 = _8112;
                    continue;
                }
            }
        }
        _8079 = mad(abs(mad(sqrt(_8089.w), 2.0f, -1.0f)), _8076, _8078);
        _8075 = _8074 * 2.0f;
        _8077 = _8076 * 0.5f;
    }
    float3 _8173 = 0.0f.xxx;
    float3 _8176 = 0.0f.xxx;
    float _8180 = 0.0f;
    _8173 = _543;
    _8176 = mad(_8060, 1.2000000476837158203125f.xxx, mad(_8059, 1.2000000476837158203125f.xxx, -floor(mad(_8059, 1.2000000476837158203125f.xxx, ((_8060 * 1.2000000476837158203125f.xxx) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _8180 = 0.0f;
    float3 _8177 = 0.0f.xxx;
    float _8179 = 0.0f;
    float _8181 = 0.0f;
    float3 _8174 = 0.0f.xxx;
    float _8178 = 1.0f;
    uint _8182 = 0u;
    [loop]
    for (; _8182 < 1u; _8173 = _8174, _8176 = _8177, _8178 = _8179, _8180 = _8181, _8182++)
    {
        float3 _8187 = frac(_8176);
        float3 _8188 = floor(_8176);
        float3 _8189 = _8173;
        _8189.x = 0.0f;
        float4 _8191 = 0.0f.xxxx;
        _8191 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _8174 = _8189;
        float3 _8194 = 0.0f.xxx;
        float4 _8192 = 0.0f.xxxx;
        float3 _8201 = 0.0f.xxx;
        for (; _8174.x <= 1.0f; _8194 = _8201, _8194.x = _8201.x + 1.0f, _8191 = _8192, _8174 = _8194)
        {
            float3 _8199 = _8174;
            _8199.y = 0.0f;
            _8201 = _8199;
            _8192 = _8191;
            float3 _8202 = 0.0f.xxx;
            float4 _8204 = 0.0f.xxxx;
            float3 _8213 = 0.0f.xxx;
            for (; _8201.y <= 1.0f; _8202 = _8213, _8202.y = _8213.y + 1.0f, _8201 = _8202, _8192 = _8204)
            {
                float3 _8209 = _8201;
                _8209.z = 0.0f;
                _8204 = _8192;
                _8213 = _8209;
                for (; _8213.z <= 1.0f; )
                {
                    float3 _8218 = _8188 + _8213;
                    uint3 _8223 = (uint3(int3(float3(_8218.x, _8218.y, _8218.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _8224 = _8223.y;
                    uint _8225 = _8223.z;
                    uint _8228 = _8223.x + (_8224 * _8225);
                    uint _8230 = _8224 + (_8225 * _8228);
                    uint _8232 = _8225 + (_8228 * _8230);
                    uint _8234 = _8228 + (_8230 * _8232);
                    uint3 _8235 = _8223;
                    _8235.x = _8234;
                    uint _8237 = _8230 + (_8232 * _8234);
                    _8235.y = _8237;
                    _8235.z = _8232 + (_8234 * _8237);
                    float3 _8249 = _8187 - (_8213 + (normalize(mad(float3(_8235 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _8214 = _8213;
                    _8214.z = _8213.z + 1.0f;
                    _8204 = float4(0.0f, 0.0f, 0.0f, min(_8204.w, dot(_8249, _8249)));
                    _8213 = _8214;
                    continue;
                }
            }
        }
        _8181 = mad(abs(mad(sqrt(_8191.w), 2.0f, -1.0f)), _8178, _8180);
        _8177 = _8176 * 2.0f;
        _8179 = _8178 * 0.5f;
    }
    float _8264 = clamp(lerp(-1.0f, 1.0f, _8078), 0.0f, 1.0f) + clamp(lerp(-1.0f, 1.0f, _8180), 0.0f, 1.0f);
    float _8269 = clamp(_774 * mad(mad(_887, _1443, -_1653), Material_Material_PreshaderBuffer[90].z, mad(_7735, _8054, -_8264)), 0.0f, 1.0f);
    float3 _8277 = mad(_3518.z.xxx, in_var_TEXCOORD11_centroid.xyz, _641);
    float _8294 = max(abs(1.0f - max(0.0f, dot(_7763, _658))), 9.9999997473787516355514526367188e-05f);
    bool _8297 = _8294 <= 0.0f;
    float3 _8324 = mad((_774 * (mad(_1444, _1653, _1444) + mad(_8055, _8264, _8055))).xxx, in_var_TEXCOORD11_centroid.xyz, _641);
    float3 _8325 = ddx(View_View_ViewTilePosition);
    float3 _8327 = ddx(_8324);
    float3 _8329 = ddy(View_View_ViewTilePosition);
    float3 _8331 = ddy(_8324);
    float3 _8338 = lerp(lerp(lerp((normalize(cross((ddx(View_View_ViewTilePosition) * 2097152.0f) + ddx(_8277), (ddy(View_View_ViewTilePosition) * 2097152.0f) + ddy(_8277))) - _7757) + in_var_TEXCOORD11_centroid.xyz, lerp(_7763, float3(0.0f, 0.0f, 1.0f), lerp(Material_Material_PreshaderBuffer[97].x, Material_Material_PreshaderBuffer[96].w, mad(_8297 ? 0.0f : pow(_8294, Material_Material_PreshaderBuffer[96].x), Material_Material_PreshaderBuffer[96].z, Material_Material_PreshaderBuffer[96].y)).xxx), _773.xxx), float3(0.0f, 0.0f, 1.0f), lerp(Material_Material_PreshaderBuffer[97].y, 0.0f, _773).xxx), (normalize(cross((_8325 * 2097152.0f) + _8327, (_8329 * 2097152.0f) + _8331)) - _7757) + in_var_TEXCOORD11_centroid.xyz, _1444.xxx);
    float3 _8370 = Material_Material_PreshaderBuffer[107].xyz + Material_Material_PreshaderBuffer[106].xyz;
    if ((lerp(1.0f, 0.0f, clamp(mad(sqrt(mad(mad(_679, _679 * 4.76837158203125e-07f, mad(_669, _669 * 4.76837158203125e-07f, _673 * (_673 * 4.76837158203125e-07f))), 4.76837158203125e-07f, mad(_678, mad(_679, 9.5367431640625e-07f, _678), mad(_668, mad(_669, 9.5367431640625e-07f, _668), _672 * mad(_673, 9.5367431640625e-07f, _672))))) * (1.0f / max(9.9999997473787516355514526367188e-06f, MaterialCollection0_MaterialCollection0_Vectors[1].x)), -209715200000.0f, 100000.0f), 0.0f, 1.0f)) - 0.33329999446868896484375f) < 0.0f)
    {
        discard;
    }
    float _8388 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    uint _8389 = in_var_PRIMITIVE_ID * 41u;
    uint _8406 = (((1u | (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8389].x) & 512u) != 0u) ? 32u : 0u)) | (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8389].x) & 256u) != 0u) ? 64u : 0u)) & 4294967288u) | 4u;
    float _8415 = mad(clamp(lerp(lerp(Material_Material_PreshaderBuffer[105].x, Material_Material_PreshaderBuffer[103].w, mad(_8297 ? 0.0f : pow(_8294, Material_Material_PreshaderBuffer[104].y), Material_Material_PreshaderBuffer[104].w, Material_Material_PreshaderBuffer[104].z)), 1.0f, _8269), 0.0f, 1.0f), View_View_SpecularOverrideParameter.w, View_View_SpecularOverrideParameter.x);
    float4 _8416 = 0.0f.xxxx;
    _8416.y = _8415;
    float _8423 = clamp(max(View_View_MinRoughness, mad(lerp(Material_Material_PreshaderBuffer[95].w, Material_Material_PreshaderBuffer[95].z, _8269), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x)), 0.0f, 1.0f);
    _8416.z = _8423;
    float _8425 = clamp(lerp(Material_Material_PreshaderBuffer[97].z, 1.0f, _8269), 0.0f, 1.0f);
    _8416.w = _8425;
    float3 _8428 = clamp((Material_Material_PreshaderBuffer[107].xyz / _8370).xyz, 0.0f.xxx, 1.0f.xxx);
    float4 _8429 = float4(_8428.x, _8428.y, _8428.z, 0.0f.xxxx.w);
    _8429.w = 0.0f;
    float3 _8435 = mad(clamp(lerp(0.0f, Material_Material_PreshaderBuffer[105].y, _8269).xxx.xyz, 0.0f.xxx, 1.0f.xxx), View_View_DiffuseOverrideParameter.www, View_View_DiffuseOverrideParameter.xyz).xyz;
    float3 _8436 = normalize(_8338);
    float3 _8445 = 0.0f.xxx;
    float3 _8446 = 0.0f.xxx;
    [branch]
    if (!((asuint(dot(_8436, _8436)) & 2139095040u) != 2139095040u))
    {
        float3 _8444 = normalize(in_var_TEXCOORD11_centroid.xyz);
        _8445 = _8444;
        _8446 = _8444;
    }
    else
    {
        _8445 = _8338;
        _8446 = _8436;
    }
    float _8447 = 1.0f - _8425;
    bool _8455 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _8461 = 0.0f;
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8389].x) & 2u) != 0u) && _8455)
    {
        _8461 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _8461 = 1.0f;
    }
    float _8511 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8389].x) & 4u) != 0u)
    {
        float3 _8479 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _641, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _8490 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_8479.x), int(_8479.y), int(_8479.z), 0).xyz, 0)));
        _8511 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_8490.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_8479 / _8490.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _8511 = _8461;
    }
    float4 _8512 = float4(_8511, 1.0f, 1.0f, 1.0f);
    bool _8514 = all(bool4(_8512.x == 0.0f.xxxx.x, _8512.y == 0.0f.xxxx.y, _8512.z == 0.0f.xxxx.z, _8512.w == 0.0f.xxxx.w));
    bool _8516 = all(bool4(_8512.x == 1.0f.xxxx.x, _8512.y == 1.0f.xxxx.y, _8512.z == 1.0f.xxxx.z, _8512.w == 1.0f.xxxx.w));
    uint _8535 = 0u;
    if ((!_8514) && (!_8516))
    {
        _8535 = _8406 | 8u;
    }
    else
    {
        uint _8533 = 0u;
        if (_8514)
        {
            _8533 = (_8406 | 0u) | 16u;
        }
        else
        {
            uint _8530 = 0u;
            if (_8516)
            {
                _8530 = (_8406 | 0u) | 0u;
            }
            else
            {
                _8530 = _8406;
            }
            _8533 = _8530;
        }
        _8535 = _8533;
    }
    float _8536 = 0.07999999821186065673828125f * _8415;
    float3 _8541 = (_8435 * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _8546 = (_8536.xxx * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _8549 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _8554 = 0.0f.xxx;
    if (_8549)
    {
        _8554 = _8541 + (_8546 * 0.449999988079071044921875f);
    }
    else
    {
        _8554 = _8541;
    }
    bool3 _8555 = _8549.xxx;
    float3 _8556 = float3(_8555.x ? 0.0f.xxx.x : _8546.x, _8555.y ? 0.0f.xxx.y : _8546.y, _8555.z ? 0.0f.xxx.z : _8546.z);
    float3 _8625 = 0.0f.xxx;
    if (_8455)
    {
        float4 _8579 = 0.0f.xxxx;
        _8579.y = (-0.48860299587249755859375f) * _8446.y;
        _8579.z = 0.48860299587249755859375f * _8446.z;
        _8579.w = (-0.48860299587249755859375f) * _8446.x;
        float3 _8586 = _8446 * _8446;
        float4 _8589 = 0.0f.xxxx;
        _8589.x = (1.09254801273345947265625f * _8446.x) * _8446.y;
        _8589.y = ((-1.09254801273345947265625f) * _8446.y) * _8446.z;
        _8589.z = 0.3153919875621795654296875f * mad(3.0f, _8586.z, -1.0f);
        _8589.w = ((-1.09254801273345947265625f) * _8446.x) * _8446.z;
        _8579.x = 0.886227548122406005859375f;
        float3 _8605 = _8579.yzw * 2.094395160675048828125f;
        float4 _8606 = float4(_8579.x, _8605.x, _8605.y, _8605.z);
        float4 _8607 = _8589 * 0.785398185253143310546875f;
        float _8608 = (_8586.x - _8586.y) * 0.4290426075458526611328125f;
        float3 _8613 = 0.0f.xxx;
        _8613.x = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x, _8608, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _8606) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _8607));
        _8613.y = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y, _8608, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _8606) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _8607));
        _8613.z = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z, _8608, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _8606) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _8607));
        _8625 = max(0.0f.xxx, _8613);
    }
    else
    {
        _8625 = 0.0f.xxx;
    }
    float3 _8628 = _8625 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _8643 = _8554 * _8425;
    uint2 _8670 = uint2(_624 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    bool _8687 = true && (SingleLayerWater_SingleLayerWater_bSeparateMainDirLightLuminance != 0u);
    float4 _8701 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _8701 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(0.0f.xx)), 0).xy, 0));
    }
    else
    {
        _8701 = 1.0f.xxxx;
    }
    float4 _8702 = _8701 * _8701;
    uint _8705 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8389].x);
    uint _8718 = (uint((_8705 & 2048u) != 0u) | (uint((_8705 & 4096u) != 0u) << 1u)) | (uint((_8705 & 8192u) != 0u) << 2u);
    float4 _9826 = 0.0f.xxxx;
    float3 _9827 = 0.0f.xxx;
    float _9828 = 0.0f;
    float4 _9829 = 0.0f.xxxx;
    float4 _9830 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        float4 _8743 = float4(_550, float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 2u) >> 1u), float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 4u) >> 2u), float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 8u) >> 3u));
        _8743.x = 1.0f;
        float4 _8747 = _8512;
        _8747.x = 1.0f;
        float _8826 = 0.0f;
        if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _8755 = _644.xxxx;
            float4 _8757 = float4(bool4(_8755.x >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.x, _8755.y >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.y, _8755.z >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.z, _8755.w >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _8765 = uint(((_8757.x + _8757.y) + _8757.z) + _8757.w);
            float _8825 = 0.0f;
            if (_8765 < OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _8775 = mul(float4(_640, 1.0f), OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_8765]);
                float2 _8779 = _8775.xy / _8775.w.xx;
                bool2 _8783 = bool2(_8779.x >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8765].xy.x, _8779.y >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8765].xy.y);
                bool2 _8785 = bool2(_8779.x <= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8765].zw.x, _8779.y <= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8765].zw.y);
                float _8824 = 0.0f;
                if (all(bool2(_8783.x && _8785.x, _8783.y && _8785.y)))
                {
                    float2 _8803 = mad(_8779, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy, (-0.5f).xx);
                    float2 _8804 = frac(_8803);
                    float4 _8815 = clamp((OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(OpaqueBasePass_Shared_Forward_ShadowmapSampler, (floor(_8803) + 1.0f.xx) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - mad(1.0f - _8775.z, 4000.0f, -1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _8819 = lerp(_8815.wx, _8815.zy, _8804.xx);
                    _8824 = lerp(_8819.x, _8819.y, _8804.y);
                }
                else
                {
                    _8824 = 1.0f;
                }
                _8825 = _8824;
            }
            else
            {
                _8825 = 1.0f;
            }
            _8826 = _8825;
        }
        else
        {
            _8826 = 1.0f;
        }
        float _9513 = 0.0f;
        [branch]
        if ((!(SingleLayerWater_SingleLayerWater_bMainDirectionalLightVSMFiltering != 0u)) && (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM != (-1)))
        {
            float _9511 = 0.0f;
            do
            {
                float _8836 = max(0.0f, 0.0f);
                uint _8837 = uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM);
                uint _8838 = _8837 * 336u;
                uint _8840 = (_8838 + 96u) >> 2u;
                float4x4 _8854 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                _8854[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8840 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8840 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8840 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8840 + 3u) * 4 + 0)));
                uint _8856 = (_8838 + 128u) >> 2u;
                float4x4 _8870 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                _8870[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8856 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8856 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8856 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8856 + 3u) * 4 + 0)));
                uint _8872 = (_8838 + 144u) >> 2u;
                _8870[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8872 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8872 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8872 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8872 + 3u) * 4 + 0)));
                uint _8888 = (_8838 + 160u) >> 2u;
                _8870[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8888 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8888 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8888 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8888 + 3u) * 4 + 0)));
                uint _8904 = (_8838 + 176u) >> 2u;
                _8870[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8904 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8904 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8904 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8904 + 3u) * 4 + 0)));
                uint _8920 = (_8838 + 256u) >> 2u;
                float3 _8930 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_8920 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8920 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8920 + 2u) * 4 + 0)));
                uint _8932 = (_8838 + 268u) >> 2u;
                uint _8936 = (_8838 + 272u) >> 2u;
                uint _8948 = (_8838 + 288u) >> 2u;
                if (VirtualShadowMap_ProjectionData.Load(_8932 * 4 + 0) == 0u)
                {
                    int _9183 = max(0, (int(floor(log2(length(((View_View_ViewTilePosition - (-_8930)) * 2097152.0f) + (_641 - (-asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_8948 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8948 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8948 + 2u) * 4 + 0))))))) + asfloat(VirtualShadowMap_ProjectionData.Load(((_8838 + 300u) >> 2u) * 4 + 0)))) - int(VirtualShadowMap_ProjectionData.Load(((_8838 + 312u) >> 2u) * 4 + 0))));
                    if (_9183 < int(VirtualShadowMap_ProjectionData.Load(((_8838 + 316u) >> 2u) * 4 + 0)))
                    {
                        int _9187 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM + _9183;
                        uint _9188 = uint(_9187);
                        uint _9189 = _9188 * 336u;
                        uint _9191 = (_9189 + 96u) >> 2u;
                        uint _9206 = (_9189 + 112u) >> 2u;
                        uint _9215 = (_9189 + 128u) >> 2u;
                        float4x4 _9229 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9229[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9215 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9215 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9215 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9215 + 3u) * 4 + 0)));
                        uint _9231 = (_9189 + 144u) >> 2u;
                        _9229[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9231 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9231 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9231 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9231 + 3u) * 4 + 0)));
                        uint _9247 = (_9189 + 160u) >> 2u;
                        _9229[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9247 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9247 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9247 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9247 + 3u) * 4 + 0)));
                        uint _9263 = (_9189 + 176u) >> 2u;
                        _9229[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9263 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9263 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9263 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9263 + 3u) * 4 + 0)));
                        uint _9279 = (_9189 + 256u) >> 2u;
                        uint _9291 = (_9189 + 272u) >> 2u;
                        float4 _9310 = mul(float4(((View_View_ViewTilePosition + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9279 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9279 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9279 + 2u) * 4 + 0)))) * 2097152.0f) + (_641 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9291 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9291 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9291 + 2u) * 4 + 0)))), 1.0f), _9229);
                        float2 _9311 = _9310.xy;
                        uint2 _9313 = uint2(_9311 * 128.0f);
                        uint _9329 = 0u;
                        do
                        {
                            if (uint(int(_9188)) < 8192u)
                            {
                                _9329 = _9188;
                                break;
                            }
                            _9329 = (8192u + ((_9188 - 8192u) * 21845u)) + (_9313.x + (_9313.y << 7u));
                            break;
                        } while(false);
                        uint _9337 = (VirtualShadowMap_PageTable[_9329] >> 20u) & 63u;
                        bool _9339 = (VirtualShadowMap_PageTable[_9329] & 134217728u) != 0u;
                        float _9502 = 0.0f;
                        bool _9503 = false;
                        if (_9339)
                        {
                            float _9478 = 0.0f;
                            float _9479 = 0.0f;
                            uint2 _9480 = uint2(0u, 0u);
                            uint2 _9481 = uint2(0u, 0u);
                            bool _9482 = false;
                            if (_9337 > 0u)
                            {
                                uint _9352 = (_9189 + 304u) >> 2u;
                                uint _9355 = _9352 + 1u;
                                uint _9360 = uint(int(_9188 + _9337));
                                uint _9363 = ((_9360 * 336u) + 304u) >> 2u;
                                int _9375 = int(_9337);
                                uint2 _9383 = ((_9313 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_9352 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_9355 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_9363 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9363 + 1u) * 4 + 0)))) << (_9375.xx & int2(31, 31)))) >> (_9337.xx & uint2(31u, 31u));
                                uint2 _9384 = _9383 * uint2(128u, 128u);
                                uint _9398 = uint(_9187 + _9375) * 336u;
                                uint _9400 = (_9398 + 112u) >> 2u;
                                uint _9415 = (_9398 + 304u) >> 2u;
                                float _9436 = (_9375 >= 0) ? (1.0f / float(1u << (uint(_9375) & 31u))) : float(1u << (uint(-_9375) & 31u));
                                uint _9465 = 0u;
                                do
                                {
                                    if (uint(int(_9360)) < 8192u)
                                    {
                                        _9465 = _9360;
                                        break;
                                    }
                                    _9465 = (8192u + ((_9360 - 8192u) * 21845u)) + (_9383.x + (_9383.y << 7u));
                                    break;
                                } while(false);
                                _9478 = _9436;
                                _9479 = mad(-_9436, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9206 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9206 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9206 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9206 + 3u) * 4 + 0))).z, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9400 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9400 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9400 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9400 + 3u) * 4 + 0))).z);
                                _9480 = clamp(uint2(((_9311 * _9436) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_9415 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9415 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_9352 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_9355 * 4 + 0)))) * _9436)) * 0.25f).xy) * 16384.0f), _9384, _9384 + uint2(127u, 127u));
                                _9481 = uint2(VirtualShadowMap_PageTable[_9465] & 1023u, (VirtualShadowMap_PageTable[_9465] >> 10u) & 1023u);
                                _9482 = ((VirtualShadowMap_PageTable[_9465] & 134217728u) != 0u) && (((VirtualShadowMap_PageTable[_9465] >> 20u) & 63u) == 0u);
                            }
                            else
                            {
                                _9478 = 1.0f;
                                _9479 = 0.0f;
                                _9480 = uint2(_9311 * 16384.0f);
                                _9481 = uint2(VirtualShadowMap_PageTable[_9329] & 1023u, (VirtualShadowMap_PageTable[_9329] >> 10u) & 1023u);
                                _9482 = _9339 && (_9337 == 0u);
                            }
                            float _9500 = 0.0f;
                            if (_9482)
                            {
                                int4 _9491 = int4(uint4((_9481 * uint2(128u, 128u)) + (_9480 & uint2(127u, 127u)), 0u, 0u));
                                _9500 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_9491.xyz, _9491.w)).x) - _9479) / _9478;
                            }
                            else
                            {
                                _9500 = 0.0f;
                            }
                            _9502 = _9500;
                            _9503 = _9482 ? true : false;
                        }
                        else
                        {
                            _9502 = 0.0f;
                            _9503 = false;
                        }
                        if (_9503)
                        {
                            _9511 = (mad(_8836, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9191 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9191 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9191 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9191 + 3u) * 4 + 0))).z, _9502) > _9310.z) ? 0.0f : 1.0f;
                            break;
                        }
                    }
                }
                else
                {
                    float3 _8983 = ((View_View_ViewTilePosition + _8930) * 2097152.0f) + (_641 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_8936 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8936 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8936 + 2u) * 4 + 0))));
                    float4x4 _9096 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    int _9097 = 0;
                    float4x4 _9098 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    if (VirtualShadowMap_ProjectionData.Load(_8932 * 4 + 0) != 2u)
                    {
                        uint _9011 = 0u;
                        do
                        {
                            float _8989 = _8983.x;
                            float _8990 = abs(_8989);
                            float _8991 = _8983.y;
                            float _8992 = abs(_8991);
                            float _8994 = _8983.z;
                            float _8995 = abs(_8994);
                            if ((_8990 >= _8992) && (_8990 >= _8995))
                            {
                                _9011 = (_8989 > 0.0f) ? 0u : 1u;
                                break;
                            }
                            else
                            {
                                if (_8992 > _8995)
                                {
                                    _9011 = (_8991 > 0.0f) ? 2u : 3u;
                                    break;
                                }
                                else
                                {
                                    _9011 = (_8994 > 0.0f) ? 4u : 5u;
                                    break;
                                }
                                break; // unreachable workaround
                            }
                            break; // unreachable workaround
                        } while(false);
                        int _9013 = int(_8837 + _9011);
                        uint _9015 = uint(_9013) * 336u;
                        uint _9017 = (_9015 + 96u) >> 2u;
                        float4x4 _9031 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9031[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9017 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9017 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9017 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9017 + 3u) * 4 + 0)));
                        uint _9033 = (_9015 + 128u) >> 2u;
                        float4x4 _9047 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9047[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9033 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9033 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9033 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9033 + 3u) * 4 + 0)));
                        uint _9049 = (_9015 + 144u) >> 2u;
                        _9047[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9049 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9049 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9049 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9049 + 3u) * 4 + 0)));
                        uint _9065 = (_9015 + 160u) >> 2u;
                        _9047[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9065 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9065 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9065 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9065 + 3u) * 4 + 0)));
                        uint _9081 = (_9015 + 176u) >> 2u;
                        _9047[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9081 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9081 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9081 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9081 + 3u) * 4 + 0)));
                        _9096 = _9031;
                        _9097 = _9013;
                        _9098 = _9047;
                    }
                    else
                    {
                        _9096 = _8854;
                        _9097 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM;
                        _9098 = _8870;
                    }
                    float4 _9103 = mul(float4(_8983, 1.0f), _9098);
                    float _9104 = _9103.w;
                    float3 _9107 = _9103.xyz / _9104.xxx;
                    float2 _9108 = _9107.xy;
                    float _9161 = 0.0f;
                    bool _9162 = false;
                    do
                    {
                        bool _9118 = false;
                        uint _9111 = uint(_9097);
                        uint2 _9113 = uint2(_9108 * 128.0f);
                        uint _9129 = 0u;
                        do
                        {
                            _9118 = uint(int(_9111)) < 8192u;
                            if (_9118)
                            {
                                _9129 = _9111;
                                break;
                            }
                            _9129 = (8192u + ((_9111 - 8192u) * 21845u)) + (_9113.x + (_9113.y << 7u));
                            break;
                        } while(false);
                        if ((VirtualShadowMap_PageTable[_9129] & 134217728u) != 0u)
                        {
                            int4 _9154 = int4(uint4((uint2(VirtualShadowMap_PageTable[_9129] & 1023u, (VirtualShadowMap_PageTable[_9129] >> 10u) & 1023u) * uint2(128u, 128u)) + (uint2(_9108 * float(16384u >> ((_9118 ? 7u : ((VirtualShadowMap_PageTable[_9129] >> 20u) & 63u)) & 31u))) & uint2(127u, 127u)), 0u, 0u));
                            _9161 = asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_9154.xyz, _9154.w)).x);
                            _9162 = true;
                            break;
                        }
                        _9161 = 0.0f;
                        _9162 = false;
                        break;
                    } while(false);
                    if (_9162)
                    {
                        _9511 = ((_9161 - (((-_8836) * _9096[2].z) / _9104)) > _9107.z) ? 0.0f : 1.0f;
                        break;
                    }
                }
                _9511 = 1.0f;
                break;
            } while(false);
            _9513 = _8826 * _9511;
        }
        else
        {
            _9513 = _8826;
        }
        float _9520 = clamp(mad(_644, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
        float _9522 = lerp(_9513, lerp(1.0f, dot(_8747, _8743), dot(_8743, 1.0f.xxxx)), _9520 * _9520);
        float3 _9797 = 0.0f.xxx;
        float3 _9798 = 0.0f.xxx;
        [branch]
        if ((_9522 + min(_9522, 1.0f)) > 0.0f)
        {
            float _9528 = max(_8423, View_View_MinRoughness);
            float _9529 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _9532 = rsqrt(_9529);
            float3 _9533 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _9532;
            float _9534 = dot(_8446, _9533);
            float _9552 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _9541 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_9529 + 1.0f)), 0.0f, 1.0f));
                float _9551 = 0.0f;
                if (_9534 < _9541)
                {
                    float _9547 = _9541 + max(_9534, -_9541);
                    _9551 = (_9547 * _9547) / (4.0f * _9541);
                }
                else
                {
                    _9551 = _9534;
                }
                _9552 = _9551;
            }
            else
            {
                _9552 = _9534;
            }
            float _9553 = clamp(_9552, 0.0f, 1.0f);
            float _9554 = max(_9528, View_View_MinRoughness);
            float _9559 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _9532) * mad(-_9554, _9554, 1.0f), 0.0f, 1.0f);
            uint _9566 = 0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u);
            float _9567 = dot(_8446, _658);
            float _9568 = dot(_658, _9533);
            float _9570 = rsqrt(mad(2.0f, _9568, 2.0f));
            float _9573 = clamp((_9534 + _9567) * _9570, 0.0f, 1.0f);
            float _9575 = clamp(mad(_9570, _9568, _9570), 0.0f, 1.0f);
            bool _9576 = _9559 > 0.0f;
            float _9655 = 0.0f;
            float _9656 = 0.0f;
            if (_9576)
            {
                float _9581 = sqrt(mad(-_9559, _9559, 1.0f));
                float _9582 = 2.0f * _9534;
                float _9583 = -_9568;
                float _9584 = mad(_9582, _9567, _9583);
                float _9653 = 0.0f;
                float _9654 = 0.0f;
                if (_9584 >= _9581)
                {
                    _9653 = 1.0f;
                    _9654 = abs(_9567);
                }
                else
                {
                    float _9589 = -_9584;
                    float _9592 = _9559 * rsqrt(mad(_9589, _9584, 1.0f));
                    float _9593 = mad(_9589, _9534, _9567);
                    float _9597 = mad(_9589, _9568, mad(2.0f * _9567, _9567, -1.0f));
                    float _9608 = _9592 * sqrt(clamp(mad(_9582 * _9567, _9568, mad(_9583, _9568, mad(-_9567, _9567, mad(-_9534, _9534, 1.0f)))), 0.0f, 1.0f));
                    float _9610 = (_9608 * 2.0f) * _9567;
                    float _9611 = mad(_9534, _9581, _9567);
                    float _9612 = mad(_9592, _9593, _9611);
                    float _9614 = mad(_9592, _9597, mad(_9568, _9581, 1.0f));
                    float _9615 = _9608 * _9614;
                    float _9616 = _9612 * _9614;
                    float _9621 = _9616 * mad(-0.5f, _9615, (0.25f * _9610) * _9612);
                    float _9631 = mad(_9612, mad(_9611, _9614 * _9614, _9616 * mad(-0.5f, mad(_9568, _9581, _9614), -0.5f)), mad(_9615, _9615, (_9610 * _9612) * mad(_9610, _9612, _9615 * (-2.0f))));
                    float _9635 = (2.0f * _9621) / mad(_9631, _9631, _9621 * _9621);
                    float _9636 = _9635 * _9631;
                    float _9638 = mad(-_9635, _9621, 1.0f);
                    float _9644 = mad(_9568, _9581, mad(_9638, _9592 * _9597, _9636 * _9610));
                    float _9646 = rsqrt(mad(2.0f, _9644, 2.0f));
                    _9653 = clamp((mad(_9534, _9581, mad(_9638, _9592 * _9593, _9636 * _9608)) + _9567) * _9646, 0.0f, 1.0f);
                    _9654 = clamp(mad(_9646, _9644, _9646), 0.0f, 1.0f);
                }
                _9655 = _9653;
                _9656 = _9654;
            }
            else
            {
                _9655 = _9573;
                _9656 = _9575;
            }
            float _9659 = clamp(abs(_9567) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float _9660 = _9528 * _9528;
            float _9661 = _9660 * _9660;
            float _9666 = clamp(_9575, 0.0f, 1.0f);
            int _9668 = asint(_9661);
            float _9674 = clamp(0.0555555559694766998291015625f * log2(mad(2.0f, asfloat(2129859010 - _9668), -1.0f)), 0.0f, 1.0f);
            float _9675 = 1.0f - _9666;
            float _9676 = _9675 * _9675;
            float _9679 = 1.0f - clamp(_9567, 0.0f, 1.0f);
            float _9680 = _9679 * _9679;
            float _9684 = 1.0f - clamp(_9553, 0.0f, 1.0f);
            float _9685 = _9684 * _9684;
            float3 _9709 = 1.0f.xxx * _9553;
            float3 _9759 = 0.0f.xxx;
            if ((_9566 & 1u) == 1u)
            {
                _9759 = 0.0f.xxx;
            }
            else
            {
                float _9728 = 0.0f;
                if (_9576)
                {
                    _9728 = _9661 / mad(_9660, _9660, ((0.25f * _9559) * mad(3.0f, asfloat(532487669 + (_9668 >> 1)), _9559)) / (_9656 + 0.001000000047497451305389404296875f));
                }
                else
                {
                    _9728 = 1.0f;
                }
                float _9731 = mad(mad(_9655, _9661, -_9655), _9655, 1.0f);
                float _9736 = sqrt(_9661);
                float _9737 = 1.0f - _9736;
                float _9743 = 1.0f - _9656;
                float _9744 = _9743 * _9743;
                float _9745 = _9744 * _9744;
                _9759 = _9709 * (((clamp(50.0f * _8556.y, 0.0f, 1.0f) * (_9745 * _9743)).xxx + (_8556 * mad(-_9745, _9743, 1.0f))) * (((_9661 / ((3.1415927410125732421875f * _9731) * _9731)) * _9728) * (0.5f / mad(_9553, mad(_9659, _9737, _9736), _9659 * mad(_9553, _9737, _9736)))));
            }
            float4 _9768 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_9659, _9528), 0.0f);
            bool3 _9772 = (View_View_bShadingEnergyConservation != 0u).xxx;
            float _9773 = _9768.x;
            float3 _9777 = 1.0f.xxx + (_8556 * ((1.0f - _9773) / _9773));
            float3 _9778 = float3(_9772.x ? _9777.x : 1.0f.xxx.x, _9772.y ? _9777.y : 1.0f.xxx.y, _9772.z ? _9777.z : 1.0f.xxx.z);
            float3 _9794 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _9522;
            float3 _9796 = mad(((_8643 * (0.3183098733425140380859375f * mad((mad(mad(34.5f, _9674, -59.0f), _9674, 24.5f) * _9666) * exp2((-max(mad(73.1999969482421875f, _9674, -21.200000762939453125f), 8.8999996185302734375f)) * asfloat(532487669 + (asint(clamp(_9573, 0.0f, 1.0f)) >> 1))), asfloat(_9566 >> 1u), lerp(mad(_9676 * _9676, _9675, _9666), mad(-0.75f, (_9680 * _9680) * _9679, 1.0f) * mad(-0.75f, (_9685 * _9685) * _9684, 1.0f), clamp(mad(2.2000000476837158203125f, _9674, -0.5f), 0.0f, 1.0f))))) * _9709) * ((View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(_9778 * ((_8556 * _9773) + ((clamp(50.0f * _8556.y, 0.0f, 1.0f).xxx - _8556) * _9768.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f), _9794, 0.0f.xxx);
            _9797 = _9796;
            _9798 = ((_9759 * _9778) * 1.0f) * _9794;
        }
        else
        {
            _9797 = 0.0f.xxx;
            _9798 = 0.0f.xxx;
        }
        float4 _9802 = float4(_9797, 0.0f);
        float4 _9806 = float4(_9798, 0.0f);
        float3 _9823 = 0.0f.xxx;
        float4 _9824 = 0.0f.xxxx;
        float4 _9825 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _8718) != 0u)
        {
            float4 _9811 = float4(_9802.x, _9802.y, _9802.z, _9802.w);
            float4 _9812 = float4(_9806.x, _9806.y, _9806.z, _9806.w);
            float3 _9819 = 0.0f.xxx;
            if (_8687)
            {
                _9819 = _9802.xyz + _9806.xyz;
            }
            else
            {
                _9819 = 0.0f.xxx;
            }
            bool4 _9820 = _8687.xxxx;
            _9823 = _9819;
            _9824 = float4(_9820.x ? 0.0f.xxxx.x : _9811.x, _9820.y ? 0.0f.xxxx.y : _9811.y, _9820.z ? 0.0f.xxxx.z : _9811.z, _9820.w ? 0.0f.xxxx.w : _9811.w);
            _9825 = float4(_9820.x ? 0.0f.xxxx.x : _9812.x, _9820.y ? 0.0f.xxxx.y : _9812.y, _9820.z ? 0.0f.xxxx.z : _9812.z, _9820.w ? 0.0f.xxxx.w : _9812.w);
        }
        else
        {
            _9823 = 0.0f.xxx;
            _9824 = 0.0f.xxxx;
            _9825 = 0.0f.xxxx;
        }
        _9826 = _8747;
        _9827 = _9823;
        _9828 = _9522;
        _9829 = _9824;
        _9830 = _9825;
    }
    else
    {
        _9826 = _8512;
        _9827 = 0.0f.xxx;
        _9828 = 1.0f;
        _9829 = 0.0f.xxxx;
        _9830 = 0.0f.xxxx;
    }
    uint _9831 = ((((min(uint(max(0.0f, log2(mad(_585, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _8670.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _8670.x) * 2u;
    uint _9837 = _9831 + 1u;
    uint _9840 = min(min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_9831], OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
    float4 _9842 = 0.0f.xxxx;
    float4 _9845 = 0.0f.xxxx;
    _9842 = _9829;
    _9845 = _9830;
    float4 _9843 = 0.0f.xxxx;
    float4 _9846 = 0.0f.xxxx;
    [loop]
    for (uint _9847 = 0u; _9847 < _9840; _9842 = _9843, _9845 = _9846, _9847++)
    {
        uint _9856 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_9837] + _9847).x * 6u;
        uint _9859 = _9856 + 1u;
        uint _9862 = _9856 + 2u;
        uint _9865 = _9856 + 3u;
        uint _9868 = _9856 + 4u;
        uint _9872 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9862].w);
        uint _9878 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9859].y);
        uint _9894 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9865].z);
        float2 _9896 = spvUnpackHalf2x16(_9894 & 65535u);
        float _9897 = _9896.x;
        float2 _9900 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9865].w));
        float _9901 = _9900.x;
        bool _9906 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9859].w == 0.0f;
        float4 _9927 = float4(float(_9872 & 1u), float((_9872 & 2u) >> 1u), float((_9872 & 4u) >> 2u), float((_9872 & 8u) >> 3u));
        uint _9928 = _9872 >> 4u;
        float3 _9944 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9856].xyz - _640;
        float _9945 = dot(_9944, _9944);
        float _9962 = 0.0f;
        if (_9906)
        {
            float _9957 = _9945 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9856].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9856].w);
            float _9960 = clamp(mad(-_9957, _9957, 1.0f), 0.0f, 1.0f);
            _9962 = _9960 * _9960;
        }
        else
        {
            float3 _9951 = _9944 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9856].w;
            _9962 = pow(1.0f - clamp(dot(_9951, _9951), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9859].w);
        }
        float _9973 = 0.0f;
        if (((_9872 >> 16u) & 3u) == 2u)
        {
            float _9970 = clamp((dot(_9944 * rsqrt(_9945), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9862].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9865].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9865].y, 0.0f, 1.0f);
            _9973 = _9962 * (_9970 * _9970);
        }
        else
        {
            _9973 = _9962;
        }
        float3 _10344 = 0.0f.xxx;
        float3 _10345 = 0.0f.xxx;
        [branch]
        if (_9973 > 0.0f)
        {
            float _9985 = 0.0f;
            [branch]
            if (uint((_9872 & 255u) != 0u) != 0u)
            {
                _9985 = dot(float4(float(_9928 & 1u), float((_9928 & 2u) >> 1u), float((_9928 & 4u) >> 2u), float((_9928 & 8u) >> 3u)), _8702) * lerp(1.0f, dot(_9826, _9927), dot(_9927, 1.0f.xxxx));
            }
            else
            {
                _9985 = 1.0f;
            }
            float3 _10342 = 0.0f.xxx;
            float3 _10343 = 0.0f.xxx;
            [branch]
            if ((_9985 + _9985) > 0.0f)
            {
                float3 _9991 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9868].xyz * (0.5f * _9901);
                float3 _9992 = _9944 - _9991;
                float3 _9993 = _9944 + _9991;
                float _9994 = max(_8423, View_View_MinRoughness);
                bool _9995 = _9901 > 0.0f;
                float _10020 = 0.0f;
                float _10021 = 0.0f;
                float _10022 = 0.0f;
                [branch]
                if (_9995)
                {
                    float _10007 = rsqrt(dot(_9992, _9992));
                    float _10008 = rsqrt(dot(_9993, _9993));
                    float _10009 = _10007 * _10008;
                    float _10011 = dot(_9992, _9993) * _10009;
                    _10020 = _10011;
                    _10021 = 0.5f * mad(dot(_8446, _9992), _10007, dot(_8446, _9993) * _10008);
                    _10022 = _10009 / mad(_10007, _10008, mad(_10011, 0.5f, 0.5f));
                }
                else
                {
                    float _9999 = dot(_9992, _9992);
                    _10020 = 1.0f;
                    _10021 = dot(_8446, _9992 * rsqrt(_9999));
                    _10022 = 1.0f / (_9999 + 1.0f);
                }
                float _10040 = 0.0f;
                if (_9897 > 0.0f)
                {
                    float _10029 = sqrt(clamp((_9897 * _9897) * _10022, 0.0f, 1.0f));
                    float _10039 = 0.0f;
                    if (_10021 < _10029)
                    {
                        float _10035 = _10029 + max(_10021, -_10029);
                        _10039 = (_10035 * _10035) / (4.0f * _10029);
                    }
                    else
                    {
                        _10039 = _10021;
                    }
                    _10040 = _10039;
                }
                else
                {
                    _10040 = _10021;
                }
                float _10041 = clamp(_10040, 0.0f, 1.0f);
                float3 _10059 = 0.0f.xxx;
                if (_9995)
                {
                    float3 _10046 = reflect(-_658, _8446);
                    float3 _10047 = _9993 - _9992;
                    float _10048 = dot(_10046, _10047);
                    _10059 = _9992 + (_10047 * clamp(dot(_9992, (_10046 * _10048) - _10047) / mad(_9901, _9901, -(_10048 * _10048)), 0.0f, 1.0f));
                }
                else
                {
                    _10059 = _9992;
                }
                float _10061 = rsqrt(dot(_10059, _10059));
                float3 _10062 = _10059 * _10061;
                float _10063 = max(_9994, View_View_MinRoughness);
                float _10068 = clamp((_9897 * _10061) * mad(-_10063, _10063, 1.0f), 0.0f, 1.0f);
                float _10070 = clamp(spvUnpackHalf2x16(_9894 >> 16u).x * _10061, 0.0f, 1.0f);
                uint _10077 = 0u | (asuint(clamp(mad(-max(_9901, _9897), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u);
                float _10078 = dot(_8446, _10062);
                float _10079 = dot(_8446, _658);
                float _10080 = dot(_658, _10062);
                float _10082 = rsqrt(mad(2.0f, _10080, 2.0f));
                float _10085 = clamp((_10078 + _10079) * _10082, 0.0f, 1.0f);
                float _10087 = clamp(mad(_10082, _10080, _10082), 0.0f, 1.0f);
                bool _10088 = _10068 > 0.0f;
                float _10167 = 0.0f;
                float _10168 = 0.0f;
                if (_10088)
                {
                    float _10093 = sqrt(mad(-_10068, _10068, 1.0f));
                    float _10094 = 2.0f * _10078;
                    float _10095 = -_10080;
                    float _10096 = mad(_10094, _10079, _10095);
                    float _10165 = 0.0f;
                    float _10166 = 0.0f;
                    if (_10096 >= _10093)
                    {
                        _10165 = 1.0f;
                        _10166 = abs(_10079);
                    }
                    else
                    {
                        float _10101 = -_10096;
                        float _10104 = _10068 * rsqrt(mad(_10101, _10096, 1.0f));
                        float _10105 = mad(_10101, _10078, _10079);
                        float _10109 = mad(_10101, _10080, mad(2.0f * _10079, _10079, -1.0f));
                        float _10120 = _10104 * sqrt(clamp(mad(_10094 * _10079, _10080, mad(_10095, _10080, mad(-_10079, _10079, mad(-_10078, _10078, 1.0f)))), 0.0f, 1.0f));
                        float _10122 = (_10120 * 2.0f) * _10079;
                        float _10123 = mad(_10078, _10093, _10079);
                        float _10124 = mad(_10104, _10105, _10123);
                        float _10126 = mad(_10104, _10109, mad(_10080, _10093, 1.0f));
                        float _10127 = _10120 * _10126;
                        float _10128 = _10124 * _10126;
                        float _10133 = _10128 * mad(-0.5f, _10127, (0.25f * _10122) * _10124);
                        float _10143 = mad(_10124, mad(_10123, _10126 * _10126, _10128 * mad(-0.5f, mad(_10080, _10093, _10126), -0.5f)), mad(_10127, _10127, (_10122 * _10124) * mad(_10122, _10124, _10127 * (-2.0f))));
                        float _10147 = (2.0f * _10133) / mad(_10143, _10143, _10133 * _10133);
                        float _10148 = _10147 * _10143;
                        float _10150 = mad(-_10147, _10133, 1.0f);
                        float _10156 = mad(_10080, _10093, mad(_10150, _10104 * _10109, _10148 * _10122));
                        float _10158 = rsqrt(mad(2.0f, _10156, 2.0f));
                        _10165 = clamp((mad(_10078, _10093, mad(_10150, _10104 * _10105, _10148 * _10120)) + _10079) * _10158, 0.0f, 1.0f);
                        _10166 = clamp(mad(_10158, _10156, _10158), 0.0f, 1.0f);
                    }
                    _10167 = _10165;
                    _10168 = _10166;
                }
                else
                {
                    _10167 = _10085;
                    _10168 = _10087;
                }
                float _10171 = clamp(abs(_10079) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float _10172 = _9994 * _9994;
                float _10173 = _10172 * _10172;
                float _10178 = clamp(_10087, 0.0f, 1.0f);
                float _10186 = clamp(0.0555555559694766998291015625f * log2(mad(2.0f, asfloat(2129859010 - asint(_10173)), -1.0f)), 0.0f, 1.0f);
                float _10187 = 1.0f - _10178;
                float _10188 = _10187 * _10187;
                float _10191 = 1.0f - clamp(_10079, 0.0f, 1.0f);
                float _10192 = _10191 * _10191;
                float _10196 = 1.0f - clamp(_10041, 0.0f, 1.0f);
                float _10197 = _10196 * _10196;
                float3 _10222 = 1.0f.xxx * ((_9906 ? _10022 : 1.0f) * _10041);
                float3 _10304 = 0.0f.xxx;
                if ((_10077 & 1u) == 1u)
                {
                    _10304 = 0.0f.xxx;
                }
                else
                {
                    float _10237 = 0.0f;
                    if (_10070 > 0.0f)
                    {
                        _10237 = clamp(mad(_10172, _10172, (_10070 * _10070) / mad(_10168, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _10237 = _10173;
                    }
                    float _10251 = 0.0f;
                    float _10252 = 0.0f;
                    if (_10088)
                    {
                        float _10249 = _10237 + (((0.25f * _10068) * mad(3.0f, asfloat(532487669 + (asint(_10237) >> 1)), _10068)) / (_10168 + 0.001000000047497451305389404296875f));
                        _10251 = _10237 / _10249;
                        _10252 = _10249;
                    }
                    else
                    {
                        _10251 = 1.0f;
                        _10252 = _10237;
                    }
                    float _10273 = 0.0f;
                    if (_10020 < 1.0f)
                    {
                        float _10259 = sqrt((1.00010001659393310546875f - _10020) / (1.0f + _10020));
                        _10273 = _10251 * sqrt(_10252 / (_10252 + (((0.25f * _10259) * mad(3.0f, asfloat(532487669 + (asint(_10252) >> 1)), _10259)) / (_10168 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _10273 = _10251;
                    }
                    float _10276 = mad(mad(_10167, _10237, -_10167), _10167, 1.0f);
                    float _10281 = sqrt(_10237);
                    float _10282 = 1.0f - _10281;
                    float _10288 = 1.0f - _10168;
                    float _10289 = _10288 * _10288;
                    float _10290 = _10289 * _10289;
                    _10304 = _10222 * (((clamp(50.0f * _8556.y, 0.0f, 1.0f) * (_10290 * _10288)).xxx + (_8556 * mad(-_10290, _10288, 1.0f))) * (((_10237 / ((3.1415927410125732421875f * _10276) * _10276)) * _10273) * (0.5f / mad(_10041, mad(_10171, _10282, _10281), _10171 * mad(_10041, _10282, _10281)))));
                }
                float4 _10313 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_10171, _9994), 0.0f);
                bool3 _10317 = (View_View_bShadingEnergyConservation != 0u).xxx;
                float _10318 = _10313.x;
                float3 _10322 = 1.0f.xxx + (_8556 * ((1.0f - _10318) / _10318));
                float3 _10323 = float3(_10317.x ? _10322.x : 1.0f.xxx.x, _10317.y ? _10322.y : 1.0f.xxx.y, _10317.z ? _10322.z : 1.0f.xxx.z);
                float3 _10339 = ((float3(float((_9878 >> 0u) & 1023u), float((_9878 >> 10u) & 1023u), float((_9878 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9859].x) * _9973) * _9985;
                float3 _10341 = mad(((_8643 * (0.3183098733425140380859375f * mad((mad(mad(34.5f, _10186, -59.0f), _10186, 24.5f) * _10178) * exp2((-max(mad(73.1999969482421875f, _10186, -21.200000762939453125f), 8.8999996185302734375f)) * asfloat(532487669 + (asint(clamp(_10085, 0.0f, 1.0f)) >> 1))), asfloat(_10077 >> 1u), lerp(mad(_10188 * _10188, _10187, _10178), mad(-0.75f, (_10192 * _10192) * _10191, 1.0f) * mad(-0.75f, (_10197 * _10197) * _10196, 1.0f), clamp(mad(2.2000000476837158203125f, _10186, -0.5f), 0.0f, 1.0f))))) * _10222) * ((View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(_10323 * ((_8556 * _10318) + ((clamp(50.0f * _8556.y, 0.0f, 1.0f).xxx - _8556) * _10313.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f), _10339, 0.0f.xxx);
                _10342 = _10341;
                _10343 = ((_10304 * _10323) * spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9868].w) & 65535u).x) * _10339;
            }
            else
            {
                _10342 = 0.0f.xxx;
                _10343 = 0.0f.xxx;
            }
            _10344 = _10342;
            _10345 = _10343;
        }
        else
        {
            _10344 = 0.0f.xxx;
            _10345 = 0.0f.xxx;
        }
        [flatten]
        if ((((_9872 >> 8u) & 7u) & _8718) != 0u)
        {
            _9843 = _9842 + float4(_10344, 0.0f);
            _9846 = _9845 + float4(_10345, 0.0f);
        }
        else
        {
            _9843 = _9842;
            _9846 = _9845;
        }
    }
    bool4 _10363 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    float3 _10449 = 0.0f.xxx;
    float3 _10450 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _10394 = _8389 + 31u;
        float3 _10403 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_8389 + 1u].xyz) * 2097152.0f) + (_641 - Scene_GPUScene_GPUScenePrimitiveSceneData[_8389 + 18u].xyz));
        float3 _10404 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_8389 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_8389 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_8389 + 25u].w) + 1.0f.xxx;
        float3 _10447 = 0.0f.xxx;
        float3 _10448 = 0.0f.xxx;
        if (any(bool3(_10403.x > _10404.x, _10403.y > _10404.y, _10403.z > _10404.z)))
        {
            float3 _10427 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _10428 = _641 * 0.57700002193450927734375f.xxx;
            float3 _10443 = frac(mad((_10428.x + _10428.y) + _10428.z, 0.00200000009499490261077880859375f, frac(((_10427.x + _10427.y) + _10427.z) * 4194.30419921875f))).xxx;
            float3 _10446 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_10443.x > 0.5f.xxx.x, _10443.y > 0.5f.xxx.y, _10443.z > 0.5f.xxx.z)));
            _10447 = _10446;
            _10448 = _10446;
        }
        else
        {
            float3 _10426 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_10394].x > 0.0f)
            {
                float3 _10414 = abs(_640 - in_var_TEXCOORD9);
                _10426 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_10414.x, max(_10414.y, _10414.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_10394].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _10426 = 0.0f.xxx;
            }
            _10447 = 0.0f.xxx;
            _10448 = _10426;
        }
        _10449 = _10447;
        _10450 = _10448;
    }
    else
    {
        _10449 = 0.0f.xxx;
        _10450 = 0.0f.xxx;
    }
    float4 _10462 = OpaqueBasePass_PreIntegratedGFTexture.SampleLevel(View_SharedBilinearClampedSampler, float2(max(0.0f, dot(_8446, _658)), _8423), 0.0f);
    float3 _10700 = 0.0f.xxx;
    float3 _10701 = 0.0f.xxx;
    if (_8447 > 0.0f)
    {
        float2 _10490 = clamp(mad(_631.xy / _644.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz), SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.xy, SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.zw);
        float4 _10492 = SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture.SampleLevel(View_SharedBilinearClampedSampler, _10490, 0.0f);
        float _10493 = _10492.x;
        float _10503 = -View_View_InvDeviceZToWorldZTransform.w;
        float _10506 = mad(_10493, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10493, View_View_InvDeviceZToWorldZTransform.z, _10503));
        float _10537 = _10506 - _644;
        float2 _10546 = clamp(_10490 + (((((((normalize(mul(_8446, float3x3(View_View_TranslatedWorldToView[0].xyz, View_View_TranslatedWorldToView[1].xyz, View_View_TranslatedWorldToView[2].xyz))).xy * (Material_Material_PreshaderBuffer[107].w - 1.0f)) * View_View_ViewSizeAndInvSize.xy) * View_View_BufferSizeAndInvSize.zw) * ((SingleLayerWater_SingleLayerWater_DistortionParams.zw * float2(0.000230000005103647708892822265625f, -0.000230000005103647708892822265625f)) * float2(SingleLayerWater_SingleLayerWater_DistortionParams.x, SingleLayerWater_SingleLayerWater_DistortionParams.y * SingleLayerWater_SingleLayerWater_DistortionParams.x))) * clamp(mad(_10537, 1.0f / max(1.0f, clamp(abs(Material_Material_PreshaderBuffer[108].x * (-0.5f)), 0.0f, 50.0f)), -Material_Material_PreshaderBuffer[108].x), 0.0f, 1.0f)) * 4.0f) * clamp(_10537 * 0.0333333350718021392822265625f, 0.0f, 1.0f)), SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.xy, SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.zw);
        float4 _10548 = SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture.GatherRed(View_SharedBilinearClampedSampler, _10546);
        float _10549 = _10548.x;
        float _10554 = _10548.y;
        float _10559 = _10548.z;
        float _10564 = _10548.w;
        float4 _10569 = float4(mad(_10549, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10549, View_View_InvDeviceZToWorldZTransform.z, _10503)), mad(_10554, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10554, View_View_InvDeviceZToWorldZTransform.z, _10503)), mad(_10559, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10559, View_View_InvDeviceZToWorldZTransform.z, _10503)), mad(_10564, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10564, View_View_InvDeviceZToWorldZTransform.z, _10503)));
        float4 _10570 = _644.xxxx;
        bool _10572 = any(bool4(_10569.x < _10570.x, _10569.y < _10570.y, _10569.z < _10570.z, _10569.w < _10570.w));
        float _10598 = 0.0f;
        float _10599 = 0.0f;
        if (_10572)
        {
            _10598 = _10506;
            _10599 = _10493;
        }
        else
        {
            float2 _10579 = frac(((_10546 * SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterTextureSize) * 1.0f) - 0.5f.xx);
            float _10581 = _10579.x;
            float _10582 = 1.0f - _10581;
            float _10583 = _10579.y;
            float _10584 = 1.0f - _10583;
            float4 _10586 = 0.0f.xxxx;
            _10586.x = _10582 * _10584;
            _10586.y = _10581 * _10584;
            _10586.z = _10582 * _10583;
            _10586.w = _10581 * _10583;
            float _10593 = dot(_10548.wzxy, _10586);
            _10598 = mad(_10593, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10593, View_View_InvDeviceZToWorldZTransform.z, _10503));
            _10599 = _10593;
        }
        bool2 _10600 = _10572.xx;
        float _10604 = max(0.0f, _10598 - _644);
        float3 _10606 = clamp(_8370.xyz, 0.0f.xxx, 64512.0f.xxx).xyz;
        float _10614 = 1.0f / ((2.0f / (1.0f - sqrt(min(_8536, 0.9900000095367431640625f)))) - 1.0f);
        float3 _10637 = 0.0f.xxx;
        bool _10638 = false;
        do
        {
            float _10617 = dot(_658, _8446);
            float _10622 = mad(-(_10614 * _10614), mad(-_10617, _10617, 1.0f), 1.0f);
            if (_10622 < 0.0f)
            {
                _10637 = reflect(-_658, _8446);
                _10638 = false;
                break;
            }
            _10637 = (_8446 * mad(_10614, _10617, (-((_10617 >= 0.0f) ? 1.0f : (-1.0f))) * sqrt(_10622))) - (_658 * _10614);
            _10638 = true;
            break;
        } while(false);
        float _10650 = 0.0f;
        if (_10638)
        {
            float _10643 = mad(1.5499999523162841796875f, 0.0f, -0.0f);
            float _10644 = mad(_10643, dot(-View_View_DirectionalLightDirection, _10637), 1.0f);
            _10650 = mad(-_10643, _10643, 1.0f) / ((12.56637096405029296875f * _10644) * _10644);
        }
        else
        {
            _10650 = 0.0f;
        }
        float4 _10652 = mul(float4(gl_FragCoord.xy, max(9.9999999600419720025001879548654e-13f, _10599), 1.0f), View_View_SVPositionToTranslatedWorld);
        float3 _10678 = exp(-(_10606 * _10604));
        float3 _10679 = ((View_View_DirectionalLightColor.xyz * 3.1415927410125732421875f) * _10650) * _9828;
        float3 _10685 = clamp(((_8429.xyz * _10606) * (1.0f.xxx - _10678)) / max(_10606, 9.9999997473787516355514526367188e-06f.xxx), 0.0f.xxx, 1.0f.xxx);
        float3 _10689 = 1.0f.xxx - ((_8556 * _10462.x) + (clamp(50.0f * _8556.y, 0.0f, 1.0f) * _10462.y).xxx);
        float3 _10690 = float3(_10689.x, _10689.y, _10689.z);
        _10700 = _9827 + ((((_10679 * float(_8687)) * _10685) * _10690) * _8447);
        _10701 = mad((((_8628 * 3.1415927410125732421875f) * 0.079577468335628509521484375f) + (_10679 * (_8687 ? 0.0f : 1.0f))) * _10685, _10690, (_10678 * float3(1.0f.xxx.x, 1.0f.xxx.y, 1.0f.xxx.z)) * (((exp(_10606 * (-max(0.0f, (((View_View_ViewTilePosition - View_View_ViewTilePosition) * 2097152.0f) + (_641 - ((_10652.xyz / _10652.w.xxx) - View_View_RelativePreViewTranslation))).z))) * View_View_OneOverPreExposure) * SingleLayerWater_SceneColorWithoutSingleLayerWaterTexture.SampleLevel(View_SharedBilinearClampedSampler, float2(_10600.x ? _10490.x : _10546.x, _10600.y ? _10490.y : _10546.y), 0.0f).xyz) * lerp(1.0f.xxx, clamp(Material_Material_PreshaderBuffer[105].z.xxx.xyz, 0.0f.xxx, 64512.0f.xxx).xyz, clamp(_10604 * 0.0199999995529651641845703125f, 0.0f, 1.0f).xxx))) * _8447;
    }
    else
    {
        _10700 = _9827;
        _10701 = 0.0f.xxx;
    }
    float3 _10703 = normalize(_8445);
    uint2 _10704 = uint2(gl_FragCoord.xy);
    float3 _10707 = mad(clamp(_8435, 0.0f.xxx, 1.0f.xxx), View_View_DiffuseOverrideParameter.www, View_View_DiffuseOverrideParameter.xyz);
    _8416.x = 0.0f;
    float _10710 = mad(clamp(_8415, 0.0f, 1.0f), View_View_SpecularOverrideParameter.w, View_View_SpecularOverrideParameter.x);
    _8416.y = _10710;
    float _10714 = clamp(max(View_View_MinRoughness, mad(_8423, View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x)), 0.0f, 1.0f);
    _8416.z = _10714;
    float _10716 = clamp(_8425, 0.0f, 1.0f);
    _8416.w = _10716;
    bool3 _10723 = (View_View_bShadingEnergyConservation != 0u).xxx;
    bool _10724 = any(bool3(true, true, true));
    uint _10847 = 0u;
    float3 _10848 = 0.0f.xxx;
    uint _10849 = 0u;
    uint _10850 = 0u;
    bool _10851 = false;
    bool _10852 = false;
    float3 _10853 = 0.0f.xxx;
    float _10854 = 0.0f;
    float3 _10855 = 0.0f.xxx;
    float _10856 = 0.0f;
    if (_10724)
    {
        float3 _10835 = 0.0f.xxx;
        uint _10836 = 0u;
        bool _10837 = false;
        bool _10838 = false;
        float3 _10839 = 0.0f.xxx;
        float _10840 = 0.0f;
        float _10841 = 0.0f;
        uint _10842 = 0u;
        switch (4u)
        {
            case 0u:
            {
                float3 _10816 = 0.0f.xxx;
                do
                {
                    float3 _10813 = 0.0f.xxx;
                    bool _10814 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10813 = lerp(_10707.xyz, _8416.xyz, clamp((max(0.0f, max(_10710, _10714)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10814 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10813 = _10707.xyz;
                            _10814 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10813 = _10707.xyz;
                            _10814 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10813 = _10707.xyz;
                            _10814 = true;
                            break;
                        }
                        default:
                        {
                            _10813 = _456;
                            _10814 = false;
                            break;
                        }
                    }
                    if (_10814)
                    {
                        _10816 = _10813;
                        break;
                    }
                    _10816 = 0.0f.xxx;
                    break;
                } while(false);
                float3 _10817 = _10816 * 1.0f;
                float3 _10831 = 0.0f.xxx;
                float _10832 = 0.0f;
                if (false)
                {
                    float3 _10829 = 0.0f.xxx;
                    float _10830 = 0.0f;
                    if (false)
                    {
                        _10829 = lerp(0.0f, 0.039999999105930328369140625f, clamp((max(0.039999999105930328369140625f, max(0.039999999105930328369140625f, 0.039999999105930328369140625f)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f)).xxx;
                        _10830 = 0.0f;
                    }
                    else
                    {
                        _10829 = _10817;
                        _10830 = 0.0f;
                    }
                    _10831 = _10829;
                    _10832 = _10830;
                }
                else
                {
                    _10831 = _10817;
                    _10832 = 0.0f;
                }
                _10835 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10836 = 1u;
                _10837 = (true && all(bool3(true, true, true))) && true;
                _10838 = true;
                _10839 = _10831;
                _10840 = _10832;
                _10841 = 1.0f;
                _10842 = (_8535 | 0u) | 0u;
                break;
            }
            case 3u:
            {
                float3 _10786 = 0.0f.xxx;
                do
                {
                    float3 _10783 = 0.0f.xxx;
                    bool _10784 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10783 = lerp(_10707.xyz, _8416.xyz, clamp((max(0.0f, max(_10710, _10714)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10784 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10783 = _10707.xyz;
                            _10784 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10783 = _10707.xyz;
                            _10784 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10783 = _10707.xyz;
                            _10784 = true;
                            break;
                        }
                        default:
                        {
                            _10783 = _456;
                            _10784 = false;
                            break;
                        }
                    }
                    if (_10784)
                    {
                        _10786 = _10783;
                        break;
                    }
                    _10786 = 0.0f.xxx;
                    break;
                } while(false);
                _10835 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10836 = 1u;
                _10837 = false;
                _10838 = false;
                _10839 = _10786 * 1.0f;
                _10840 = 1.0f;
                _10841 = 1.0f;
                _10842 = (_8535 & 4294967288u) | 5u;
                break;
            }
            case 5u:
            {
                _10835 = 0.0f.xxx;
                _10836 = 1u;
                _10837 = false;
                _10838 = false;
                _10839 = 0.0f.xxx;
                _10840 = 1.0f;
                _10841 = 1.0f;
                _10842 = ((_8535 | 0u) & 4294967288u) | 6u;
                break;
            }
            case 4u:
            {
                float3 _10756 = 0.0f.xxx;
                do
                {
                    float3 _10753 = 0.0f.xxx;
                    bool _10754 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10753 = lerp(_10707.xyz, _8416.xyz, clamp((max(0.0f, max(_10710, _10714)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10754 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10753 = _10707.xyz;
                            _10754 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10753 = _10707.xyz;
                            _10754 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10753 = _10707.xyz;
                            _10754 = true;
                            break;
                        }
                        default:
                        {
                            _10753 = _456;
                            _10754 = false;
                            break;
                        }
                    }
                    if (_10754)
                    {
                        _10756 = _10753;
                        break;
                    }
                    _10756 = 0.0f.xxx;
                    break;
                } while(false);
                _10835 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10836 = 2u;
                _10837 = false;
                _10838 = false;
                _10839 = _10756 * 1.0f;
                _10840 = mad(1.0f, _10714, 0.0f);
                _10841 = 1.0f;
                _10842 = (_8535 & 4294967288u) | 4u;
                break;
            }
            default:
            {
                _10835 = 0.0f.xxx;
                _10836 = 0u;
                _10837 = true;
                _10838 = true;
                _10839 = 0.0f.xxx;
                _10840 = 0.0f;
                _10841 = 0.0f;
                _10842 = _8535;
                break;
            }
        }
        float3 _10843[4] = { _10703, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx };
        float3 _578[4] = _10843;
        _10847 = 8194u;
        _10848 = _10835;
        _10849 = _10836;
        _10850 = _10842;
        _10851 = _10837;
        _10852 = _10838;
        _10853 = _10839;
        _10854 = _10840;
        _10855 = _578[0u] * 1.0f;
        _10856 = _10841;
    }
    else
    {
        _10847 = 8192u;
        _10848 = 0.0f.xxx;
        _10849 = 0u;
        _10850 = _8535;
        _10851 = true;
        _10852 = true;
        _10853 = 0.0f.xxx;
        _10854 = 0.0f;
        _10855 = 0.0f.xxx;
        _10856 = 0.0f;
    }
    uint _10857 = uint(_10724);
    bool _10858 = _10856 > 0.0f;
    bool3 _10859 = _10858.xxx;
    float3 _10860 = normalize(_10855);
    float3 _10861 = float3(_10859.x ? _10860.x : 0.0f.xxx.x, _10859.y ? _10860.y : 0.0f.xxx.y, _10859.z ? _10860.z : 0.0f.xxx.z);
    float3 _10865 = _10853 / _10856.xxx;
    uint _10952 = 0u;
    uint _10953 = 0u;
    uint _10954 = 0u;
    if (_10852)
    {
        bool _10870 = _10851 && (_10857 == 1u);
        uint _10950 = 0u;
        uint _10951 = 0u;
        if (_10870)
        {
            uint _10883 = 0u;
            if (((_10847 >> 6u) & 1u) != 0u)
            {
                _10883 = 1u;
            }
            else
            {
                _10883 = 0u;
            }
            uint _10891 = 0u;
            if ((((_10847 >> 9u) & 1u) != 0u) && true)
            {
                _10891 = _10883 | 4u;
            }
            else
            {
                _10891 = _10883;
            }
            uint _10898 = 0u;
            if (((_10847 >> 10u) & 1u) != 0u)
            {
                _10898 = _10891 | 8u;
            }
            else
            {
                _10898 = _10891;
            }
            uint _10900 = (_10847 >> 2u) & 7u;
            uint _10905 = 0u;
            if (_10900 == 4u)
            {
                _10905 = _10898 | 16u;
            }
            else
            {
                _10905 = _10898;
            }
            uint _10910 = 0u;
            if (_10900 == 1u)
            {
                _10910 = _10905 | 32u;
            }
            else
            {
                _10910 = _10905;
            }
            uint _10915 = 0u;
            if (_10900 == 3u)
            {
                _10915 = _10910 | 64u;
            }
            else
            {
                _10915 = _10910;
            }
            uint _10916 = _10915 & 2u;
            uint _10948 = 0u;
            uint _10949 = 0u;
            if ((_10916 == 2u) || (_10916 == 3u))
            {
                _10948 = 1u;
                _10949 = 0u;
            }
            else
            {
                uint _10946 = 0u;
                uint _10947 = 0u;
                if ((_10915 & 4u) == 4u)
                {
                    _10946 = 2u;
                    _10947 = 0u;
                }
                else
                {
                    uint _10944 = 0u;
                    uint _10945 = 0u;
                    if ((_10915 & 40u) == 40u)
                    {
                        _10944 = 5u;
                        _10945 = 0u;
                    }
                    else
                    {
                        uint _10942 = 0u;
                        uint _10943 = 0u;
                        if ((_10915 & 32u) == 32u)
                        {
                            _10942 = 3u;
                            _10943 = 0u;
                        }
                        else
                        {
                            bool _10939 = (_10915 & 72u) == 64u;
                            _10942 = _10939 ? 4u : 0u;
                            _10943 = _10939 ? 0u : 0u;
                        }
                        _10944 = _10942;
                        _10945 = _10943;
                    }
                    _10946 = _10944;
                    _10947 = _10945;
                }
                _10948 = _10946;
                _10949 = _10947;
            }
            _10950 = _10948;
            _10951 = _10949;
        }
        else
        {
            _10950 = 0u;
            _10951 = 0u;
        }
        _10952 = _10950;
        _10953 = _10951;
        _10954 = (_10850 & 4294967288u) | ((_10870 ? 1u : (_10870 ? 2u : 3u)) & 7u);
    }
    else
    {
        _10952 = 0u;
        _10953 = 0u;
        _10954 = _10850;
    }
    float3 _11390 = 0.0f.xxx;
    float _11391 = 0.0f;
    float2 _11392 = 0.0f.xx;
    [branch]
    if (_10724)
    {
        float3 _10957[4] = { _10703, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx };
        float3 _579[4] = _10957;
        uint _10959 = (_10847 >> 14u) & 3u;
        float _10962 = dot(_579[_10959], _658);
        float3 _11240 = 0.0f.xxx;
        float3 _11241 = 0.0f.xxx;
        float3 _11242 = 0.0f.xxx;
        float3 _11243 = 0.0f.xxx;
        switch ((_10847 >> 11u) & 7u)
        {
            case 0u:
            {
                float3 _11131 = _10707.xyz;
                float4 _11135 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_10962, 0.001000000047497451305389404296875f), 0.0f);
                float _11136 = _11135.x;
                float3 _11140 = 1.0f.xxx + (_8416.xyz * ((1.0f - _11136) / _11136));
                float _11153 = (View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(float3(_10723.x ? _11140.x : 1.0f.xxx.x, _10723.y ? _11140.y : 1.0f.xxx.y, _10723.z ? _11140.z : 1.0f.xxx.z) * ((_8416.xyz * _11136) + ((-_8416.xyz) * _11135.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f;
                float3 _11154 = _11131 * _11153;
                uint _11156 = (_10847 >> 2u) & 7u;
                float3 _11217 = 0.0f.xxx;
                [branch]
                if (_11156 == 4u)
                {
                    float _11165 = clamp(max(0.0f, max(0.0f, max(0.0f, 0.0f)) - 0.039999999105930328369140625f) * 3.0f, 0.0f, 1.0f);
                    float _11169 = abs(clamp(_10962, 0.0f, 1.0f));
                    float _11175 = clamp((mad(-0.15658299624919891357421875f, _11169, 1.57079637050628662109375f) * sqrt(1.0f - _11169)) * 0.636619746685028076171875f, 0.0f, 1.0f);
                    float _11184 = clamp(mad(10.0f, 0.001587301609106361865997314453125f, 1.0f), 0.0f, 1.0f);
                    float _11185 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10707.x, _11175), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11184;
                    float _11192 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10707.y, _11175), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11184;
                    float _11199 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10707.z, _11175), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11184;
                    float3 _11200 = float3(_11185, _11192, _11199);
                    float _11205 = max(_11154.x, max(_11154.y, _11154.z));
                    float _11207 = max(_11185, max(_11192, _11199));
                    float3 _11213 = 0.0f.xxx;
                    if (_11205 < _11207)
                    {
                        _11213 = _11200 * (_11205 / _11207);
                    }
                    else
                    {
                        _11213 = _11200;
                    }
                    _11217 = lerp(_11154, _11213 * _11153, (_11165 * _11165).xxx);
                }
                else
                {
                    _11217 = _11154;
                }
                float3 _11232 = 0.0f.xxx;
                [branch]
                if (_11156 == 1u)
                {
                    _11232 = (0.3183098733425140380859375f.xxx * exp((-max(9.9999999747524270787835121154785e-07f.xxx, 1.0f.xxx / max(9.9999999600419720025001879548654e-13f.xxx, 0.0f.xxx))) * (1.0f / max(9.9999997473787516355514526367188e-05f, abs(1.0f))))) * _11153;
                }
                else
                {
                    _11232 = 0.0f.xxx;
                }
                [branch]
                if (((_10847 >> 9u) & 1u) != 0u)
                {
                    _11240 = _11217 * 1.0f;
                    _11241 = _579[_10959];
                    _11242 = _11232;
                    _11243 = _11131 * 1.0f;
                    break;
                }
                _11240 = _11217;
                _11241 = _579[_10959];
                _11242 = _11232;
                _11243 = _11131;
                break;
            }
            case 3u:
            {
                float3 _10975 = normalize(_658 - (_579[_10959] * dot(_658, _579[_10959])));
                float _10976 = min(0.0f, 1.0f);
                float _10977 = dot(_658, _10975);
                float _10979 = clamp(dot(_579[_10959], _10975), -1.0f, 1.0f);
                float _10980 = clamp(_10962, -1.0f, 1.0f);
                float _10981 = abs(_10980);
                float _10982 = mad(-0.15658299624919891357421875f, _10981, 1.57079637050628662109375f);
                float _10984 = sqrt(1.0f - _10981);
                float _10991 = abs(_10979);
                float _10992 = mad(-0.15658299624919891357421875f, _10991, 1.57079637050628662109375f);
                float _10994 = sqrt(1.0f - _10991);
                float _11004 = cos(0.5f * abs((1.57079637050628662109375f - ((_10980 >= 0.0f) ? (_10982 * _10984) : mad(-_10982, _10984, 3.1415927410125732421875f))) - (1.57079637050628662109375f - ((_10979 >= 0.0f) ? (_10992 * _10994) : mad(-_10992, _10994, 3.1415927410125732421875f)))));
                float3 _11006 = _10975 - (_579[_10959] * _10979);
                float3 _11008 = _658 - (_579[_10959] * _10980);
                float _11014 = dot(_11006, _11008) * rsqrt(mad(dot(_11006, _11006), dot(_11008, _11008), 9.9999997473787516355514526367188e-05f));
                float _11017 = sqrt(clamp(mad(0.5f, _11014, 0.5f), 0.0f, 1.0f));
                float _11021 = mad(1.5378702300949953496456146240234e-05f, 0.5f, 0.20000000298023223876953125f);
                float _11022 = mad(1.5378702300949953496456146240234e-05f, 2.0f, 0.20000000298023223876953125f);
                float _11030 = mad(0.0039215688593685626983642578125f, 0.0039215688593685626983642578125f, 0.20000000298023223876953125f) * (1.41421353816986083984375f * _11017);
                float _11031 = _10979 + _10980;
                float _11032 = mad(0.1398856937885284423828125f, mad(0.997551023960113525390625f * _11017, sqrt(mad(-_10980, _10980, 1.0f)), (-0.06994284689426422119140625f) * _10980), _11031);
                float _11044 = 1.0f - sqrt(clamp(mad(0.5f, _10977, 0.5f), 0.0f, 1.0f));
                float _11045 = _11044 * _11044;
                float _11058 = _11031 - 0.0350000001490116119384765625f;
                float _11066 = 1.0f / mad(0.36000001430511474609375f, _11004, 1.190000057220458984375f / _11004);
                float _11069 = _11017 * mad(_11066, mad(-0.800000011920928955078125f, _11014, 0.60000002384185791015625f), 1.0f);
                float _11074 = -_11004;
                float _11075 = mad(_11074, sqrt(clamp(mad(-_11069, _11069, 1.0f), 0.0f, 1.0f)), 1.0f);
                float _11076 = _11075 * _11075;
                float _11080 = 1.0f - mad(0.95347940921783447265625f, (_11076 * _11076) * _11075, 0.0465205647051334381103515625f);
                float3 _11082 = abs(_10707.xyz);
                float _11083 = _11069 * _11066;
                float _11098 = _11031 - 0.14000000059604644775390625f;
                float _11106 = mad(_11074, 0.5f, 1.0f);
                float _11107 = _11106 * _11106;
                float _11110 = mad(0.95347940921783447265625f, (_11107 * _11107) * _11106, 0.0465205647051334381103515625f);
                float _11111 = 1.0f - _11110;
                float3 _11123 = (((((((exp(((-0.5f) * (_11032 * _11032)) / (_11030 * _11030)) / (2.5066282749176025390625f * _11030)) * (0.25f * _11017)) * mad(0.95347940921783447265625f, (_11045 * _11045) * _11044, 0.0465205647051334381103515625f)) * (_10710 * 2.0f)) * lerp(1.0f, _10976, clamp(-_10977, 0.0f, 1.0f))).xxx + ((pow(_11082, ((0.5f * sqrt(mad(-_11083, _11083, 1.0f))) / _11004).xxx) * (((exp(((-0.5f) * (_11058 * _11058)) / (_11021 * _11021)) / (2.5066282749176025390625f * _11021)) * exp(mad(-3.650000095367431640625f, _11014, -3.980000019073486328125f))) * (_11080 * _11080))) * _10976)) + (pow(_11082, (0.800000011920928955078125f / _11004).xxx) * (((exp(((-0.5f) * (_11098 * _11098)) / (_11022 * _11022)) / (2.5066282749176025390625f * _11022)) * exp(mad(17.0f, _11014, -16.7800006866455078125f))) * ((_11111 * _11111) * _11110)))) * 1.0f;
                _11240 = min(1.0f.xxx, (-min(-mad(0.0f.xxx, float3(1.0f.xxx.x, 1.0f.xxx.y, 1.0f.xxx.z), _11123), 0.0f.xxx)) * 6.283185482025146484375f);
                _11241 = _10975;
                _11242 = 0.0f.xxx;
                _11243 = 0.0f.xxx;
                break;
            }
            case 5u:
            {
                float3 _10969 = _10707.xyz;
                _11240 = _10969 * 1.0f;
                _11241 = _579[_10959];
                _11242 = 0.0f.xxx;
                _11243 = _10969;
                break;
            }
            default:
            {
                _11240 = 0.0f.xxx;
                _11241 = 0.0f.xxx;
                _11242 = 0.0f.xxx;
                _11243 = 0.0f.xxx;
                break;
            }
        }
        float3 _11366 = 0.0f.xxx;
        float3 _11367 = 0.0f.xxx;
        if (_8455)
        {
            float4 _11268 = 0.0f.xxxx;
            _11268.y = (-0.48860299587249755859375f) * _11241.y;
            _11268.z = 0.48860299587249755859375f * _11241.z;
            _11268.w = (-0.48860299587249755859375f) * _11241.x;
            float3 _11275 = _11241 * _11241;
            float4 _11278 = 0.0f.xxxx;
            _11278.x = (1.09254801273345947265625f * _11241.x) * _11241.y;
            _11278.y = ((-1.09254801273345947265625f) * _11241.y) * _11241.z;
            _11278.z = 0.3153919875621795654296875f * mad(3.0f, _11275.z, -1.0f);
            _11278.w = ((-1.09254801273345947265625f) * _11241.x) * _11241.z;
            _11268.x = 0.886227548122406005859375f;
            float3 _11294 = _11268.yzw * 2.094395160675048828125f;
            float4 _11295 = float4(_11268.x, _11294.x, _11294.y, _11294.z);
            float4 _11296 = _11278 * 0.785398185253143310546875f;
            float _11297 = (_11275.x - _11275.y) * 0.4290426075458526611328125f;
            float3 _11302 = 0.0f.xxx;
            _11302.x = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x, _11297, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _11295) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _11296));
            _11302.y = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y, _11297, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _11295) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _11296));
            _11302.z = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z, _11297, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _11295) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _11296));
            float3 _11365 = 0.0f.xxx;
            if (any(bool3(_11242.x > 0.0f.xxx.x, _11242.y > 0.0f.xxx.y, _11242.z > 0.0f.xxx.z)))
            {
                float3 _11316 = -_11241;
                float _11317 = _11316.y;
                float4 _11319 = 0.0f.xxxx;
                _11319.y = (-0.48860299587249755859375f) * _11317;
                float _11320 = _11316.z;
                _11319.z = 0.48860299587249755859375f * _11320;
                float _11323 = _11316.x;
                _11319.w = (-0.48860299587249755859375f) * _11323;
                float3 _11326 = _11316 * _11316;
                float4 _11329 = 0.0f.xxxx;
                _11329.x = (1.09254801273345947265625f * _11323) * _11317;
                _11329.y = ((-1.09254801273345947265625f) * _11317) * _11320;
                _11329.z = 0.3153919875621795654296875f * mad(3.0f, _11326.z, -1.0f);
                _11329.w = ((-1.09254801273345947265625f) * _11323) * _11320;
                _11319.x = 0.886227548122406005859375f;
                float3 _11345 = _11319.yzw * 2.094395160675048828125f;
                float4 _11346 = float4(_11319.x, _11345.x, _11345.y, _11345.z);
                float4 _11347 = _11329 * 0.785398185253143310546875f;
                float _11348 = (_11326.x - _11326.y) * 0.4290426075458526611328125f;
                float3 _11353 = 0.0f.xxx;
                _11353.x = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x, _11348, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _11346) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _11347));
                _11353.y = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y, _11348, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _11346) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _11347));
                _11353.z = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z, _11348, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _11346) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _11347));
                _11365 = max(0.0f.xxx, _11353);
            }
            else
            {
                _11365 = 0.0f.xxx;
            }
            _11366 = _11365;
            _11367 = max(0.0f.xxx, _11302);
        }
        else
        {
            _11366 = 0.0f.xxx;
            _11367 = 0.0f.xxx;
        }
        float3 _11368 = _11367 * View_View_PrecomputedIndirectLightingColorScale;
        float2 _11385 = 0.0f.xx;
        _11385.x = max(1.0f.xxx, 0.99960005283355712890625f.xxx).y;
        _11385.y = dot(_11368, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f));
        _11390 = mad(mad(_11368, _11240, (_11366 * View_View_PrecomputedIndirectLightingColorScale) * _11242), max(1.0f.xxx, ((((((_11243 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_11243 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_11243 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), _10848);
        _11391 = 1.0f;
        _11392 = _11385;
    }
    else
    {
        _11390 = _10848;
        _11391 = 0.0f;
        _11392 = 0.0f.xx;
    }
    float2 _11395 = _11392 * (1.0f / max(1.0f, _11391));
    uint _11410 = (_10954 & 4294902015u) | ((uint(min(255.0f, mad(log2(mad(_11395.y * _11395.x, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f) * 255.0f)) & 255u) << 8u);
    uint _11411 = _11410 & 7u;
    bool _11413 = (_11411 == 1u) || false;
    bool _11414 = _11411 == 4u;
    bool _11416 = (_11411 == 2u) || false;
    bool _11417 = _11411 == 5u;
    bool _11418 = _11411 == 6u;
    bool _11425 = !_11414;
    bool _11426 = (((!_11413) && (!_11416)) && (!(_11417 || _11418))) && _11425;
    uint _11473 = 0u;
    uint _11474 = 0u;
    if (_11426)
    {
        float2 _11446 = _10703.xy / dot(1.0f.xxx, abs(_10703)).xx;
        float3 _11464 = 0.0f.xxx;
        if (_10703.z <= 0.0f)
        {
            float2 _11455 = _11446.xy;
            bool2 _11456 = bool2(_11455.x >= 0.0f.xx.x, _11455.y >= 0.0f.xx.y);
            float2 _11462 = (1.0f.xx - abs(_11446.yx)) * float2(_11456.x ? 1.0f : (-1.0f), _11456.y ? 1.0f : (-1.0f));
            _11464 = float3(_11462.x, _11462.y, _10703.z);
        }
        else
        {
            _11464 = float3(_11446.x, _11446.y, _10703.z);
        }
        _11473 = spvPackHalf2x16(float2(_11464.x, 0.0f)) | (spvPackHalf2x16(float2(_11464.y, 0.0f)) << 16u);
        _11474 = (((((((0u | ((_10857 & 15u) << 16u)) & 4287627263u) | 1048576u) & 4169138175u) | 0u) | (_11410 & 134217728u)) & 4294901760u) | ((_11410 & 65535u) << 0u);
    }
    else
    {
        _11473 = 0u;
        _11474 = 0u;
    }
    uint _11475 = _11426 ? 2u : 0u;
    uint _13483 = 0u;
    uint _13484 = 0u;
    uint _13485 = 0u;
    uint _13486 = 0u;
    uint _13487 = 0u;
    [branch]
    if (_10724)
    {
        uint _11485 = (((_10847 & 4294967263u) | 32u) & 4294901759u) | ((uint(any(bool3(false, false, false))) & 1u) << 16u);
        bool _11486 = _11413 && true;
        uint _12660 = 0u;
        uint _12661 = 0u;
        uint _12662 = 0u;
        uint _12663 = 0u;
        uint _12664 = 0u;
        if (_11486)
        {
            float _12502 = _8388 - 0.5f;
            float _12503 = _12502 * 0.0078740157186985015869140625f;
            float3 _12505 = float3(_12503, _12503, _12502 * 0.01587301678955554962158203125f);
            float3 _12506 = clamp(_10707.xyz, 0.0f.xxx, 1.0f.xxx);
            float _12507 = _12506.x;
            float _12516 = 0.0f;
            do
            {
                if (_12507 < 0.00313066993840038776397705078125f)
                {
                    _12516 = _12507 * 12.9200000762939453125f;
                    break;
                }
                _12516 = mad(pow(_12507, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12517 = _12506.y;
            float _12526 = 0.0f;
            do
            {
                if (_12517 < 0.00313066993840038776397705078125f)
                {
                    _12526 = _12517 * 12.9200000762939453125f;
                    break;
                }
                _12526 = mad(pow(_12517, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12527 = _12506.z;
            float _12536 = 0.0f;
            do
            {
                if (_12527 < 0.00313066993840038776397705078125f)
                {
                    _12536 = _12527 * 12.9200000762939453125f;
                    break;
                }
                _12536 = mad(pow(_12527, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float3 _12537 = float3(_12516, _12526, _12536);
            float3 _12543 = clamp(mad(_12505, float3(min((asuint(_12537) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12537), 0.0f.xxx, 1.0f.xxx);
            uint _12557 = ((uint(_12543.x * 127.0f) << 0u) | (uint(_12543.y * 127.0f) << 7u)) | (uint(_12543.z * 63.0f) << 14u);
            float3 _12562 = clamp(_8416.xyz, 0.0f.xxx, 1.0f.xxx);
            float _12563 = _12562.x;
            float _12572 = 0.0f;
            do
            {
                if (_12563 < 0.00313066993840038776397705078125f)
                {
                    _12572 = _12563 * 12.9200000762939453125f;
                    break;
                }
                _12572 = mad(pow(_12563, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12573 = _12562.y;
            float _12582 = 0.0f;
            do
            {
                if (_12573 < 0.00313066993840038776397705078125f)
                {
                    _12582 = _12573 * 12.9200000762939453125f;
                    break;
                }
                _12582 = mad(pow(_12573, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12583 = _12562.z;
            float _12592 = 0.0f;
            do
            {
                if (_12583 < 0.00313066993840038776397705078125f)
                {
                    _12592 = _12583 * 12.9200000762939453125f;
                    break;
                }
                _12592 = mad(pow(_12583, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float3 _12593 = float3(_12572, _12582, _12592);
            float3 _12599 = clamp(mad(_12505, float3(min((asuint(_12593) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12593), 0.0f.xxx, 1.0f.xxx);
            uint _12621 = ((0u | ((_11410 & 65535u) << 0u)) & 65535u) | (((((_12557 >> 12u) & 255u) << 8u) | 0u) << 16u);
            uint _12636 = 0u;
            uint _12637 = 0u;
            uint _12638 = 0u;
            if (_11475 < 3u)
            {
                _12636 = (_11475 == 2u) ? _12621 : 0u;
                _12637 = (_11475 == 1u) ? _12621 : _11473;
                _12638 = (_11475 == 0u) ? _12621 : _11474;
            }
            else
            {
                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 - 3u)] = _12621;
                _12636 = 0u;
                _12637 = _11473;
                _12638 = _11474;
            }
            uint _12639 = _11475 + 1u;
            uint _12641 = (((uint(_12599.x * 127.0f) << 0u) | (uint(_12599.y * 127.0f) << 7u)) | (uint(_12599.z * 63.0f) << 14u)) | ((_12557 & 4095u) << 20u);
            uint _12656 = 0u;
            uint _12657 = 0u;
            uint _12658 = 0u;
            if (_12639 < 3u)
            {
                _12656 = (_12639 == 2u) ? _12641 : _12636;
                _12657 = (_12639 == 1u) ? _12641 : _12637;
                _12658 = (_12639 == 0u) ? _12641 : _12638;
            }
            else
            {
                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 + 4294967294u)] = _12641;
                _12656 = _12636;
                _12657 = _12637;
                _12658 = _12638;
            }
            _12660 = 0u;
            _12661 = _12656;
            _12662 = _12657;
            _12663 = _12658;
            _12664 = _11475 + 2u;
        }
        else
        {
            uint _12496 = 0u;
            uint _12497 = 0u;
            uint _12498 = 0u;
            uint _12499 = 0u;
            uint _12500 = 0u;
            if (_11416 && true)
            {
                uint _11726 = (_11485 & 4294967293u) | 2u;
                uint _11733 = ((0u | ((_11410 & 65535u) << 0u)) & 65535u) | ((_10952 & 7u) << 16u);
                uint _12491 = 0u;
                uint _12492 = 0u;
                uint _12493 = 0u;
                uint _12494 = 0u;
                uint _12495 = 0u;
                [branch]
                if (_10952 == 0u)
                {
                    uint _12472 = _11733 | ((_11726 & 2047u) << 19u);
                    uint _12487 = 0u;
                    uint _12488 = 0u;
                    uint _12489 = 0u;
                    if (_11475 < 3u)
                    {
                        _12487 = (_11475 == 2u) ? _12472 : 0u;
                        _12488 = (_11475 == 1u) ? _12472 : _11473;
                        _12489 = (_11475 == 0u) ? _12472 : _11474;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 - 3u)] = _12472;
                        _12487 = 0u;
                        _12488 = _11473;
                        _12489 = _11474;
                    }
                    _12491 = _11726;
                    _12492 = _12487;
                    _12493 = _12488;
                    _12494 = _12489;
                    _12495 = _11475 + 1u;
                }
                else
                {
                    uint _12465 = 0u;
                    uint _12466 = 0u;
                    uint _12467 = 0u;
                    uint _12468 = 0u;
                    uint _12469 = 0u;
                    if (_10952 == 1u)
                    {
                        float _12341 = _8388 - 0.5f;
                        float _12342 = _12341 * 0.0078740157186985015869140625f;
                        float3 _12345 = clamp(_10707.xyz, 0.0f.xxx, 1.0f.xxx);
                        float _12346 = _12345.x;
                        float _12355 = 0.0f;
                        do
                        {
                            if (_12346 < 0.00313066993840038776397705078125f)
                            {
                                _12355 = _12346 * 12.9200000762939453125f;
                                break;
                            }
                            _12355 = mad(pow(_12346, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12356 = _12345.y;
                        float _12365 = 0.0f;
                        do
                        {
                            if (_12356 < 0.00313066993840038776397705078125f)
                            {
                                _12365 = _12356 * 12.9200000762939453125f;
                                break;
                            }
                            _12365 = mad(pow(_12356, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12366 = _12345.z;
                        float _12375 = 0.0f;
                        do
                        {
                            if (_12366 < 0.00313066993840038776397705078125f)
                            {
                                _12375 = _12366 * 12.9200000762939453125f;
                                break;
                            }
                            _12375 = mad(pow(_12366, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float3 _12376 = float3(_12355, _12365, _12375);
                        float3 _12382 = clamp(mad(float3(_12342, _12342, _12341 * 0.01587301678955554962158203125f), float3(min((asuint(_12376) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12376), 0.0f.xxx, 1.0f.xxx);
                        uint _12408 = _11733 | 0u;
                        uint _12423 = 0u;
                        uint _12424 = 0u;
                        uint _12425 = 0u;
                        if (_11475 < 3u)
                        {
                            _12423 = (_11475 == 2u) ? _12408 : 0u;
                            _12424 = (_11475 == 1u) ? _12408 : _11473;
                            _12425 = (_11475 == 0u) ? _12408 : _11474;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 - 3u)] = _12408;
                            _12423 = 0u;
                            _12424 = _11473;
                            _12425 = _11474;
                        }
                        uint _12426 = _11475 + 1u;
                        uint _12427 = (((uint(_12382.x * 127.0f) << 0u) | (uint(_12382.y * 127.0f) << 7u)) | (uint(_12382.z * 63.0f) << 14u)) | 0u;
                        uint _12442 = 0u;
                        uint _12443 = 0u;
                        uint _12444 = 0u;
                        if (_12426 < 3u)
                        {
                            _12442 = (_12426 == 2u) ? _12427 : _12423;
                            _12443 = (_12426 == 1u) ? _12427 : _12424;
                            _12444 = (_12426 == 0u) ? _12427 : _12425;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 + 4294967294u)] = _12427;
                            _12442 = _12423;
                            _12443 = _12424;
                            _12444 = _12425;
                        }
                        uint _12445 = _11475 + 2u;
                        uint _12446 = (((0u | (uint(clamp(_10710, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_10714, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u) | 0u;
                        uint _12461 = 0u;
                        uint _12462 = 0u;
                        uint _12463 = 0u;
                        if (_12445 < 3u)
                        {
                            _12461 = (_12445 == 2u) ? _12446 : _12442;
                            _12462 = (_12445 == 1u) ? _12446 : _12443;
                            _12463 = (_12445 == 0u) ? _12446 : _12444;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 + 4294967295u)] = _12446;
                            _12461 = _12442;
                            _12462 = _12443;
                            _12463 = _12444;
                        }
                        _12465 = 0u;
                        _12466 = _12461;
                        _12467 = _12462;
                        _12468 = _12463;
                        _12469 = _11475 + 3u;
                    }
                    else
                    {
                        uint _12335 = 0u;
                        uint _12336 = 0u;
                        uint _12337 = 0u;
                        uint _12338 = 0u;
                        uint _12339 = 0u;
                        if (_10952 == 2u)
                        {
                            float _12126 = _8388 - 0.5f;
                            float _12127 = _12126 * 0.0078740157186985015869140625f;
                            float3 _12129 = float3(_12127, _12127, _12126 * 0.01587301678955554962158203125f);
                            float3 _12130 = clamp(_10707.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _12131 = _12130.x;
                            float _12140 = 0.0f;
                            do
                            {
                                if (_12131 < 0.00313066993840038776397705078125f)
                                {
                                    _12140 = _12131 * 12.9200000762939453125f;
                                    break;
                                }
                                _12140 = mad(pow(_12131, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12141 = _12130.y;
                            float _12150 = 0.0f;
                            do
                            {
                                if (_12141 < 0.00313066993840038776397705078125f)
                                {
                                    _12150 = _12141 * 12.9200000762939453125f;
                                    break;
                                }
                                _12150 = mad(pow(_12141, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12151 = _12130.z;
                            float _12160 = 0.0f;
                            do
                            {
                                if (_12151 < 0.00313066993840038776397705078125f)
                                {
                                    _12160 = _12151 * 12.9200000762939453125f;
                                    break;
                                }
                                _12160 = mad(pow(_12151, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12161 = float3(_12140, _12150, _12160);
                            float3 _12167 = clamp(mad(_12129, float3(min((asuint(_12161) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12161), 0.0f.xxx, 1.0f.xxx);
                            float3 _12183 = clamp(_8416.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _12184 = _12183.x;
                            float _12193 = 0.0f;
                            do
                            {
                                if (_12184 < 0.00313066993840038776397705078125f)
                                {
                                    _12193 = _12184 * 12.9200000762939453125f;
                                    break;
                                }
                                _12193 = mad(pow(_12184, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12194 = _12183.y;
                            float _12203 = 0.0f;
                            do
                            {
                                if (_12194 < 0.00313066993840038776397705078125f)
                                {
                                    _12203 = _12194 * 12.9200000762939453125f;
                                    break;
                                }
                                _12203 = mad(pow(_12194, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12204 = _12183.z;
                            float _12213 = 0.0f;
                            do
                            {
                                if (_12204 < 0.00313066993840038776397705078125f)
                                {
                                    _12213 = _12204 * 12.9200000762939453125f;
                                    break;
                                }
                                _12213 = mad(pow(_12204, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12214 = float3(_12193, _12203, _12213);
                            float3 _12220 = clamp(mad(_12129, float3(min((asuint(_12214) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12214), 0.0f.xxx, 1.0f.xxx);
                            float _12240 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12240 = 0.0f;
                                    break;
                                }
                                _12240 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12246 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12246 = 0.0f;
                                    break;
                                }
                                _12246 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12252 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12252 = 0.0f;
                                    break;
                                }
                                _12252 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12253 = float3(_12240, _12246, _12252);
                            float3 _12259 = clamp(mad(_12129, float3(min((asuint(_12253) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12253), 0.0f.xxx, 1.0f.xxx);
                            uint _12273 = ((uint(_12259.x * 127.0f) << 0u) | (uint(_12259.y * 127.0f) << 7u)) | (uint(_12259.z * 63.0f) << 14u);
                            uint _12274 = _11733 | 0u;
                            uint _12289 = 0u;
                            uint _12290 = 0u;
                            uint _12291 = 0u;
                            if (_11475 < 3u)
                            {
                                _12289 = (_11475 == 2u) ? _12274 : 0u;
                                _12290 = (_11475 == 1u) ? _12274 : _11473;
                                _12291 = (_11475 == 0u) ? _12274 : _11474;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 - 3u)] = _12274;
                                _12289 = 0u;
                                _12290 = _11473;
                                _12291 = _11474;
                            }
                            uint _12292 = _11475 + 1u;
                            uint _12295 = (((uint(_12167.x * 127.0f) << 0u) | (uint(_12167.y * 127.0f) << 7u)) | (uint(_12167.z * 63.0f) << 14u)) | ((_12273 & 1047552u) << 10u);
                            uint _12310 = 0u;
                            uint _12311 = 0u;
                            uint _12312 = 0u;
                            if (_12292 < 3u)
                            {
                                _12310 = (_12292 == 2u) ? _12295 : _12289;
                                _12311 = (_12292 == 1u) ? _12295 : _12290;
                                _12312 = (_12292 == 0u) ? _12295 : _12291;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 + 4294967294u)] = _12295;
                                _12310 = _12289;
                                _12311 = _12290;
                                _12312 = _12291;
                            }
                            uint _12313 = _11475 + 2u;
                            uint _12316 = (((uint(_12220.x * 127.0f) << 0u) | (uint(_12220.y * 127.0f) << 7u)) | (uint(_12220.z * 63.0f) << 14u)) | ((_12273 & 1023u) << 20u);
                            uint _12331 = 0u;
                            uint _12332 = 0u;
                            uint _12333 = 0u;
                            if (_12313 < 3u)
                            {
                                _12331 = (_12313 == 2u) ? _12316 : _12310;
                                _12332 = (_12313 == 1u) ? _12316 : _12311;
                                _12333 = (_12313 == 0u) ? _12316 : _12312;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 + 4294967295u)] = _12316;
                                _12331 = _12310;
                                _12332 = _12311;
                                _12333 = _12312;
                            }
                            _12335 = 0u;
                            _12336 = _12331;
                            _12337 = _12332;
                            _12338 = _12333;
                            _12339 = _11475 + 3u;
                        }
                        else
                        {
                            uint _12120 = 0u;
                            uint _12121 = 0u;
                            uint _12122 = 0u;
                            uint _12123 = 0u;
                            uint _12124 = 0u;
                            if ((_10952 == 3u) || (_10952 == 5u))
                            {
                                float _11930 = _8388 - 0.5f;
                                float _11931 = _11930 * 0.0078740157186985015869140625f;
                                float3 _11933 = float3(_11931, _11931, _11930 * 0.01587301678955554962158203125f);
                                float3 _11934 = clamp(_10707.xyz, 0.0f.xxx, 1.0f.xxx);
                                float _11935 = _11934.x;
                                float _11944 = 0.0f;
                                do
                                {
                                    if (_11935 < 0.00313066993840038776397705078125f)
                                    {
                                        _11944 = _11935 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11944 = mad(pow(_11935, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _11945 = _11934.y;
                                float _11954 = 0.0f;
                                do
                                {
                                    if (_11945 < 0.00313066993840038776397705078125f)
                                    {
                                        _11954 = _11945 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11954 = mad(pow(_11945, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _11955 = _11934.z;
                                float _11964 = 0.0f;
                                do
                                {
                                    if (_11955 < 0.00313066993840038776397705078125f)
                                    {
                                        _11964 = _11955 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11964 = mad(pow(_11955, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float3 _11965 = float3(_11944, _11954, _11964);
                                float3 _11971 = clamp(mad(_11933, float3(min((asuint(_11965) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11965), 0.0f.xxx, 1.0f.xxx);
                                float3 _11987 = clamp(_8416.xyz, 0.0f.xxx, 1.0f.xxx);
                                float _11988 = _11987.x;
                                float _11997 = 0.0f;
                                do
                                {
                                    if (_11988 < 0.00313066993840038776397705078125f)
                                    {
                                        _11997 = _11988 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11997 = mad(pow(_11988, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _11998 = _11987.y;
                                float _12007 = 0.0f;
                                do
                                {
                                    if (_11998 < 0.00313066993840038776397705078125f)
                                    {
                                        _12007 = _11998 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12007 = mad(pow(_11998, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _12008 = _11987.z;
                                float _12017 = 0.0f;
                                do
                                {
                                    if (_12008 < 0.00313066993840038776397705078125f)
                                    {
                                        _12017 = _12008 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12017 = mad(pow(_12008, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float3 _12018 = float3(_11997, _12007, _12017);
                                float3 _12024 = clamp(mad(_11933, float3(min((asuint(_12018) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12018), 0.0f.xxx, 1.0f.xxx);
                                uint _12043 = spvPackHalf2x16(0.0f.xx);
                                uint _12051 = (((_12043 << 15u) & 1072693248u) | ((_12043 << 5u) & 1047552u)) | ((_12043 >> 5u) & 1023u);
                                uint _12061 = (_11733 | ((uint(clamp(clamp(1.0f - abs(0.0f), 0.0f, 1.0f), 0.0f, 1.0f) * 127.0f) & 127u) << 19u)) | (((_12051 >> 24u) & 63u) << 26u);
                                uint _12076 = 0u;
                                uint _12077 = 0u;
                                uint _12078 = 0u;
                                if (_11475 < 3u)
                                {
                                    _12076 = (_11475 == 2u) ? _12061 : 0u;
                                    _12077 = (_11475 == 1u) ? _12061 : _11473;
                                    _12078 = (_11475 == 0u) ? _12061 : _11474;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 - 3u)] = _12061;
                                    _12076 = 0u;
                                    _12077 = _11473;
                                    _12078 = _11474;
                                }
                                uint _12079 = _11475 + 1u;
                                uint _12081 = (((uint(_11971.x * 127.0f) << 0u) | (uint(_11971.y * 127.0f) << 7u)) | (uint(_11971.z * 63.0f) << 14u)) | ((_12051 & 4095u) << 20u);
                                uint _12096 = 0u;
                                uint _12097 = 0u;
                                uint _12098 = 0u;
                                if (_12079 < 3u)
                                {
                                    _12096 = (_12079 == 2u) ? _12081 : _12076;
                                    _12097 = (_12079 == 1u) ? _12081 : _12077;
                                    _12098 = (_12079 == 0u) ? _12081 : _12078;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 + 4294967294u)] = _12081;
                                    _12096 = _12076;
                                    _12097 = _12077;
                                    _12098 = _12078;
                                }
                                uint _12099 = _11475 + 2u;
                                uint _12101 = (((uint(_12024.x * 127.0f) << 0u) | (uint(_12024.y * 127.0f) << 7u)) | (uint(_12024.z * 63.0f) << 14u)) | (((_12051 >> 12u) & 4095u) << 20u);
                                uint _12116 = 0u;
                                uint _12117 = 0u;
                                uint _12118 = 0u;
                                if (_12099 < 3u)
                                {
                                    _12116 = (_12099 == 2u) ? _12101 : _12096;
                                    _12117 = (_12099 == 1u) ? _12101 : _12097;
                                    _12118 = (_12099 == 0u) ? _12101 : _12098;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 + 4294967295u)] = _12101;
                                    _12116 = _12096;
                                    _12117 = _12097;
                                    _12118 = _12098;
                                }
                                _12120 = 0u;
                                _12121 = _12116;
                                _12122 = _12117;
                                _12123 = _12118;
                                _12124 = _11475 + 3u;
                            }
                            else
                            {
                                bool _11752 = _10952 == 4u;
                                uint _11922 = 0u;
                                uint _11923 = 0u;
                                uint _11924 = 0u;
                                uint _11925 = 0u;
                                if (_11752)
                                {
                                    float _11756 = _8388 - 0.5f;
                                    float _11757 = _11756 * 0.0078740157186985015869140625f;
                                    float3 _11759 = float3(_11757, _11757, _11756 * 0.01587301678955554962158203125f);
                                    float3 _11760 = clamp(_10707.xyz, 0.0f.xxx, 1.0f.xxx);
                                    float _11761 = _11760.x;
                                    float _11770 = 0.0f;
                                    do
                                    {
                                        if (_11761 < 0.00313066993840038776397705078125f)
                                        {
                                            _11770 = _11761 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11770 = mad(pow(_11761, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11771 = _11760.y;
                                    float _11780 = 0.0f;
                                    do
                                    {
                                        if (_11771 < 0.00313066993840038776397705078125f)
                                        {
                                            _11780 = _11771 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11780 = mad(pow(_11771, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11781 = _11760.z;
                                    float _11790 = 0.0f;
                                    do
                                    {
                                        if (_11781 < 0.00313066993840038776397705078125f)
                                        {
                                            _11790 = _11781 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11790 = mad(pow(_11781, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float3 _11791 = float3(_11770, _11780, _11790);
                                    float3 _11797 = clamp(mad(_11759, float3(min((asuint(_11791) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11791), 0.0f.xxx, 1.0f.xxx);
                                    float3 _11813 = clamp(_8416.xyz, 0.0f.xxx, 1.0f.xxx);
                                    float _11814 = _11813.x;
                                    float _11823 = 0.0f;
                                    do
                                    {
                                        if (_11814 < 0.00313066993840038776397705078125f)
                                        {
                                            _11823 = _11814 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11823 = mad(pow(_11814, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11824 = _11813.y;
                                    float _11833 = 0.0f;
                                    do
                                    {
                                        if (_11824 < 0.00313066993840038776397705078125f)
                                        {
                                            _11833 = _11824 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11833 = mad(pow(_11824, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11834 = _11813.z;
                                    float _11843 = 0.0f;
                                    do
                                    {
                                        if (_11834 < 0.00313066993840038776397705078125f)
                                        {
                                            _11843 = _11834 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11843 = mad(pow(_11834, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float3 _11844 = float3(_11823, _11833, _11843);
                                    float3 _11850 = clamp(mad(_11759, float3(min((asuint(_11844) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11844), 0.0f.xxx, 1.0f.xxx);
                                    uint _11865 = _11733 | 0u;
                                    uint _11880 = 0u;
                                    uint _11881 = 0u;
                                    uint _11882 = 0u;
                                    if (_11475 < 3u)
                                    {
                                        _11880 = (_11475 == 2u) ? _11865 : 0u;
                                        _11881 = (_11475 == 1u) ? _11865 : _11473;
                                        _11882 = (_11475 == 0u) ? _11865 : _11474;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 - 3u)] = _11865;
                                        _11880 = 0u;
                                        _11881 = _11473;
                                        _11882 = _11474;
                                    }
                                    uint _11883 = _11475 + 1u;
                                    uint _11884 = (((uint(_11797.x * 127.0f) << 0u) | (uint(_11797.y * 127.0f) << 7u)) | (uint(_11797.z * 63.0f) << 14u)) | 0u;
                                    uint _11899 = 0u;
                                    uint _11900 = 0u;
                                    uint _11901 = 0u;
                                    if (_11883 < 3u)
                                    {
                                        _11899 = (_11883 == 2u) ? _11884 : _11880;
                                        _11900 = (_11883 == 1u) ? _11884 : _11881;
                                        _11901 = (_11883 == 0u) ? _11884 : _11882;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 + 4294967294u)] = _11884;
                                        _11899 = _11880;
                                        _11900 = _11881;
                                        _11901 = _11882;
                                    }
                                    uint _11902 = _11475 + 2u;
                                    uint _11903 = (((uint(_11850.x * 127.0f) << 0u) | (uint(_11850.y * 127.0f) << 7u)) | (uint(_11850.z * 63.0f) << 14u)) | 0u;
                                    uint _11918 = 0u;
                                    uint _11919 = 0u;
                                    uint _11920 = 0u;
                                    if (_11902 < 3u)
                                    {
                                        _11918 = (_11902 == 2u) ? _11903 : _11899;
                                        _11919 = (_11902 == 1u) ? _11903 : _11900;
                                        _11920 = (_11902 == 0u) ? _11903 : _11901;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 + 4294967295u)] = _11903;
                                        _11918 = _11899;
                                        _11919 = _11900;
                                        _11920 = _11901;
                                    }
                                    _11922 = _11918;
                                    _11923 = _11919;
                                    _11924 = _11920;
                                    _11925 = _11475 + 3u;
                                }
                                else
                                {
                                    _11922 = 0u;
                                    _11923 = _11473;
                                    _11924 = _11474;
                                    _11925 = _11475;
                                }
                                _12120 = _11752 ? 0u : _11726;
                                _12121 = _11922;
                                _12122 = _11923;
                                _12123 = _11924;
                                _12124 = _11925;
                            }
                            _12335 = _12120;
                            _12336 = _12121;
                            _12337 = _12122;
                            _12338 = _12123;
                            _12339 = _12124;
                        }
                        _12465 = _12335;
                        _12466 = _12336;
                        _12467 = _12337;
                        _12468 = _12338;
                        _12469 = _12339;
                    }
                    _12491 = _12465;
                    _12492 = _12466;
                    _12493 = _12467;
                    _12494 = _12468;
                    _12495 = _12469;
                }
                _12496 = _12491;
                _12497 = _12492;
                _12498 = _12493;
                _12499 = _12494;
                _12500 = _12495;
            }
            else
            {
                uint _11720 = 0u;
                uint _11721 = 0u;
                uint _11722 = 0u;
                uint _11723 = 0u;
                uint _11724 = 0u;
                if (_11418)
                {
                    uint _11701 = ((0u | ((_11410 & 65535u) << 0u)) & 65535u) | ((0u | (uint(clamp(_10710, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u);
                    uint _11716 = 0u;
                    uint _11717 = 0u;
                    uint _11718 = 0u;
                    if (_11475 < 3u)
                    {
                        _11716 = (_11475 == 2u) ? _11701 : 0u;
                        _11717 = (_11475 == 1u) ? _11701 : _11473;
                        _11718 = (_11475 == 0u) ? _11701 : _11474;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 - 3u)] = _11701;
                        _11716 = 0u;
                        _11717 = _11473;
                        _11718 = _11474;
                    }
                    _11720 = _11485;
                    _11721 = _11716;
                    _11722 = _11717;
                    _11723 = _11718;
                    _11724 = _11475 + 1u;
                }
                else
                {
                    uint _11686 = 0u;
                    uint _11687 = 0u;
                    uint _11688 = 0u;
                    uint _11689 = 0u;
                    uint _11690 = 0u;
                    if (_11417)
                    {
                        uint _11667 = (0u | ((_11410 & 65535u) << 0u)) & 65535u;
                        uint _11682 = 0u;
                        uint _11683 = 0u;
                        uint _11684 = 0u;
                        if (_11475 < 3u)
                        {
                            _11682 = (_11475 == 2u) ? _11667 : 0u;
                            _11683 = (_11475 == 1u) ? _11667 : _11473;
                            _11684 = (_11475 == 0u) ? _11667 : _11474;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 - 3u)] = _11667;
                            _11682 = 0u;
                            _11683 = _11473;
                            _11684 = _11474;
                        }
                        _11686 = _11485;
                        _11687 = _11682;
                        _11688 = _11683;
                        _11689 = _11684;
                        _11690 = _11475 + 1u;
                    }
                    else
                    {
                        uint _11659 = 0u;
                        uint _11660 = 0u;
                        uint _11661 = 0u;
                        uint _11662 = 0u;
                        uint _11663 = 0u;
                        if (_11414)
                        {
                            float _11529 = _8388 - 0.5f;
                            float _11530 = _11529 * 0.0078740157186985015869140625f;
                            float3 _11532 = float3(_11530, _11530, _11529 * 0.01587301678955554962158203125f);
                            float3 _11533 = clamp(_10707.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _11534 = _11533.x;
                            float _11543 = 0.0f;
                            do
                            {
                                if (_11534 < 0.00313066993840038776397705078125f)
                                {
                                    _11543 = _11534 * 12.9200000762939453125f;
                                    break;
                                }
                                _11543 = mad(pow(_11534, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _11544 = _11533.y;
                            float _11553 = 0.0f;
                            do
                            {
                                if (_11544 < 0.00313066993840038776397705078125f)
                                {
                                    _11553 = _11544 * 12.9200000762939453125f;
                                    break;
                                }
                                _11553 = mad(pow(_11544, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _11554 = _11533.z;
                            float _11563 = 0.0f;
                            do
                            {
                                if (_11554 < 0.00313066993840038776397705078125f)
                                {
                                    _11563 = _11554 * 12.9200000762939453125f;
                                    break;
                                }
                                _11563 = mad(pow(_11554, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _11564 = float3(_11543, _11553, _11563);
                            float3 _11570 = clamp(mad(_11532, float3(min((asuint(_11564) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11564), 0.0f.xxx, 1.0f.xxx);
                            uint _11584 = ((uint(_11570.x * 127.0f) << 0u) | (uint(_11570.y * 127.0f) << 7u)) | (uint(_11570.z * 63.0f) << 14u);
                            float3 _11592 = clamp(float3(_10716, 0.0f, _10710), 0.0f.xxx, 1.0f.xxx);
                            float3 _11598 = clamp(mad(_11532, float3(min((asuint(_11592) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11592), 0.0f.xxx, 1.0f.xxx);
                            uint _11620 = ((0u | ((_11410 & 65535u) << 0u)) & 65535u) | (((((_11584 >> 12u) & 255u) << 8u) | uint(clamp(_10714, 0.0f, 1.0f) * 255.0f)) << 16u);
                            uint _11635 = 0u;
                            uint _11636 = 0u;
                            uint _11637 = 0u;
                            if (_11475 < 3u)
                            {
                                _11635 = (_11475 == 2u) ? _11620 : 0u;
                                _11636 = (_11475 == 1u) ? _11620 : _11473;
                                _11637 = (_11475 == 0u) ? _11620 : _11474;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 - 3u)] = _11620;
                                _11635 = 0u;
                                _11636 = _11473;
                                _11637 = _11474;
                            }
                            uint _11638 = _11475 + 1u;
                            uint _11640 = ((_11584 & 4095u) << 20u) | (((uint(_11598.x * 127.0f) << 0u) | (uint(_11598.y * 127.0f) << 7u)) | (uint(_11598.z * 63.0f) << 14u));
                            uint _11655 = 0u;
                            uint _11656 = 0u;
                            uint _11657 = 0u;
                            if (_11638 < 3u)
                            {
                                _11655 = (_11638 == 2u) ? _11640 : _11635;
                                _11656 = (_11638 == 1u) ? _11640 : _11636;
                                _11657 = (_11638 == 0u) ? _11640 : _11637;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 + 4294967294u)] = _11640;
                                _11655 = _11635;
                                _11656 = _11636;
                                _11657 = _11637;
                            }
                            _11659 = 0u;
                            _11660 = _11655;
                            _11661 = _11656;
                            _11662 = _11657;
                            _11663 = _11475 + 2u;
                        }
                        else
                        {
                            uint _11509 = (_11485 & 4194303u) | ((((spvPackHalf2x16(float2(1.0f, 0.0f)) >> 5u) & 1023u) & 1023u) << 22u);
                            uint _11524 = 0u;
                            uint _11525 = 0u;
                            uint _11526 = 0u;
                            if (_11475 < 3u)
                            {
                                _11524 = (_11475 == 2u) ? _11509 : 0u;
                                _11525 = (_11475 == 1u) ? _11509 : _11473;
                                _11526 = (_11475 == 0u) ? _11509 : _11474;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _11475 - 3u)] = _11509;
                                _11524 = 0u;
                                _11525 = _11473;
                                _11526 = _11474;
                            }
                            _11659 = _11509;
                            _11660 = _11524;
                            _11661 = _11525;
                            _11662 = _11526;
                            _11663 = _11475 + 1u;
                        }
                        _11686 = _11659;
                        _11687 = _11660;
                        _11688 = _11661;
                        _11689 = _11662;
                        _11690 = _11663;
                    }
                    _11720 = _11686;
                    _11721 = _11687;
                    _11722 = _11688;
                    _11723 = _11689;
                    _11724 = _11690;
                }
                _12496 = _11720;
                _12497 = _11721;
                _12498 = _11722;
                _12499 = _11723;
                _12500 = _11724;
            }
            _12660 = _12496;
            _12661 = _12497;
            _12662 = _12498;
            _12663 = _12499;
            _12664 = _12500;
        }
        uint _13478 = 0u;
        uint _13479 = 0u;
        uint _13480 = 0u;
        uint _13481 = 0u;
        uint _13482 = 0u;
        if (((!_11486) && _11425) && (_10952 == 0u))
        {
            uint _13473 = 0u;
            uint _13474 = 0u;
            uint _13475 = 0u;
            uint _13476 = 0u;
            uint _13477 = 0u;
            switch ((_12660 >> 11u) & 7u)
            {
                case 0u:
                {
                    float _12968 = _8388 - 0.5f;
                    float _12969 = _12968 * 0.0078740157186985015869140625f;
                    float _12970 = _12968 * 0.01587301678955554962158203125f;
                    float3 _12971 = float3(_12969, _12969, _12970);
                    float3 _12972 = clamp(_10707.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12973 = _12972.x;
                    float _12982 = 0.0f;
                    do
                    {
                        if (_12973 < 0.00313066993840038776397705078125f)
                        {
                            _12982 = _12973 * 12.9200000762939453125f;
                            break;
                        }
                        _12982 = mad(pow(_12973, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12983 = _12972.y;
                    float _12992 = 0.0f;
                    do
                    {
                        if (_12983 < 0.00313066993840038776397705078125f)
                        {
                            _12992 = _12983 * 12.9200000762939453125f;
                            break;
                        }
                        _12992 = mad(pow(_12983, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12993 = _12972.z;
                    float _13002 = 0.0f;
                    do
                    {
                        if (_12993 < 0.00313066993840038776397705078125f)
                        {
                            _13002 = _12993 * 12.9200000762939453125f;
                            break;
                        }
                        _13002 = mad(pow(_12993, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float3 _13003 = float3(_12982, _12992, _13002);
                    float3 _13009 = clamp(mad(_12971, float3(min((asuint(_13003) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13003), 0.0f.xxx, 1.0f.xxx);
                    float3 _13025 = clamp(_8416.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _13026 = _13025.x;
                    float _13035 = 0.0f;
                    do
                    {
                        if (_13026 < 0.00313066993840038776397705078125f)
                        {
                            _13035 = _13026 * 12.9200000762939453125f;
                            break;
                        }
                        _13035 = mad(pow(_13026, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13036 = _13025.y;
                    float _13045 = 0.0f;
                    do
                    {
                        if (_13036 < 0.00313066993840038776397705078125f)
                        {
                            _13045 = _13036 * 12.9200000762939453125f;
                            break;
                        }
                        _13045 = mad(pow(_13036, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13046 = _13025.z;
                    float _13055 = 0.0f;
                    do
                    {
                        if (_13046 < 0.00313066993840038776397705078125f)
                        {
                            _13055 = _13046 * 12.9200000762939453125f;
                            break;
                        }
                        _13055 = mad(pow(_13046, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float3 _13056 = float3(_13035, _13045, _13055);
                    float3 _13062 = clamp(mad(_12971, float3(min((asuint(_13056) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13056), 0.0f.xxx, 1.0f.xxx);
                    uint _13076 = ((uint(_13062.x * 127.0f) << 0u) | (uint(_13062.y * 127.0f) << 7u)) | (uint(_13062.z * 63.0f) << 14u);
                    uint _13080 = (((((uint(_13009.x * 127.0f) << 0u) | (uint(_13009.y * 127.0f) << 7u)) | (uint(_13009.z * 63.0f) << 14u)) << 12u) & 4294963200u) | (_13076 & 4095u);
                    uint _13097 = 0u;
                    uint _13098 = 0u;
                    uint _13099 = 0u;
                    if (_12664 < 3u)
                    {
                        _13097 = (_12664 == 2u) ? _13080 : _12661;
                        _13098 = (_12664 == 1u) ? _13080 : _12662;
                        _13099 = (_12664 == 0u) ? _13080 : _12663;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _12664 - 3u)] = _13080;
                        _13097 = _12661;
                        _13098 = _12662;
                        _13099 = _12663;
                    }
                    uint _13100 = _12664 + 1u;
                    uint _13109 = ((_13076 >> 12u) & 255u) | ((0u | (uint(clamp((_10716 + 1.0f) * 0.5f, 0.0f, 1.0f) * 255.0f) << 16u)) | 2130706432u);
                    uint _13124 = 0u;
                    uint _13125 = 0u;
                    uint _13126 = 0u;
                    if (_13100 < 3u)
                    {
                        _13124 = (_13100 == 2u) ? _13109 : _13097;
                        _13125 = (_13100 == 1u) ? _13109 : _13098;
                        _13126 = (_13100 == 0u) ? _13109 : _13099;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _12664 + 4294967294u)] = _13109;
                        _13124 = _13097;
                        _13125 = _13098;
                        _13126 = _13099;
                    }
                    uint _13127 = _12664 + 2u;
                    uint _13178 = 0u;
                    uint _13179 = 0u;
                    uint _13180 = 0u;
                    uint _13181 = 0u;
                    if ((((_12660 >> 7u) & 1u) != 0u) || (((_12660 >> 6u) & 1u) != 0u))
                    {
                        bool3 _13140 = (max(0.0f, max(0.0f, 0.0f)) > 0.0f).xxx;
                        float3 _13141 = float3(_13140.x ? 0.0f.xxx.x : 1.0f.xxx.x, _13140.y ? 0.0f.xxx.y : 1.0f.xxx.y, _13140.z ? 0.0f.xxx.z : 1.0f.xxx.z);
                        float3 _13145 = mad(float3(_550, dot(_13141, float3(2.0f, 0.0f, -2.0f)), dot(_13141, float3(-1.0f, 2.0f, -1.0f))), 0.25f.xxx, float3(0.0f, 0.5f, 0.5f));
                        uint _13159 = 0u | ((((uint(clamp(_13145.y, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13145.z, 0.0f, 1.0f) * 255.0f) << 8u)) | 0u) | 0u);
                        uint _13174 = 0u;
                        uint _13175 = 0u;
                        uint _13176 = 0u;
                        if (_13127 < 3u)
                        {
                            _13174 = (_13127 == 2u) ? _13159 : _13124;
                            _13175 = (_13127 == 1u) ? _13159 : _13125;
                            _13176 = (_13127 == 0u) ? _13159 : _13126;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _12664 + 4294967295u)] = _13159;
                            _13174 = _13124;
                            _13175 = _13125;
                            _13176 = _13126;
                        }
                        _13178 = _13174;
                        _13179 = _13175;
                        _13180 = _13176;
                        _13181 = _12664 + 3u;
                    }
                    else
                    {
                        _13178 = _13124;
                        _13179 = _13125;
                        _13180 = _13126;
                        _13181 = _13127;
                    }
                    uint _13183 = (_12660 >> 2u) & 7u;
                    uint _13354 = 0u;
                    uint _13355 = 0u;
                    uint _13356 = 0u;
                    uint _13357 = 0u;
                    uint _13358 = 0u;
                    uint _13359 = 0u;
                    if (_13183 != 0u)
                    {
                        uint _13278 = 0u;
                        uint _13279 = 0u;
                        if (_13183 != 4u)
                        {
                            uint _13192 = (_10953 & 4294967292u) | (_13183 & 3u);
                            uint _13226 = 0u;
                            if (_13183 == 1u)
                            {
                                _13226 = (_13192 & 3u) | (uint(clamp(1.0f - abs(0.0f), 0.0f, 1.0f) * 255.0f) << 2u);
                            }
                            else
                            {
                                uint _13217 = 0u;
                                if (_13183 == 3u)
                                {
                                    _13217 = ((_13192 & 3u) | (uint(mad(0.0f, 255.0f, 0.5f)) << 24u)) | 0u;
                                }
                                else
                                {
                                    uint _13204 = (spvPackHalf2x16(0.0f.xx) >> 5u) & 1023u;
                                    _13217 = (_13192 & 3u) | (((_13204 << 22u) | (_13204 << 12u)) | (_13204 << 2u));
                                }
                                _13226 = _13217;
                            }
                            float3 _13232 = clamp(float4(_10707, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                            float _13233 = _13232.x;
                            float _13242 = 0.0f;
                            do
                            {
                                if (_13233 < 0.00313066993840038776397705078125f)
                                {
                                    _13242 = _13233 * 12.9200000762939453125f;
                                    break;
                                }
                                _13242 = mad(pow(_13233, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _13243 = _13232.y;
                            float _13252 = 0.0f;
                            do
                            {
                                if (_13243 < 0.00313066993840038776397705078125f)
                                {
                                    _13252 = _13243 * 12.9200000762939453125f;
                                    break;
                                }
                                _13252 = mad(pow(_13243, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _13253 = _13232.z;
                            float _13262 = 0.0f;
                            do
                            {
                                if (_13253 < 0.00313066993840038776397705078125f)
                                {
                                    _13262 = _13253 * 12.9200000762939453125f;
                                    break;
                                }
                                _13262 = mad(pow(_13253, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            _13278 = (((uint(clamp(_13242, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13252, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_13262, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                            _13279 = _13226;
                        }
                        else
                        {
                            _13278 = 0u;
                            _13279 = _10953;
                        }
                        uint _13351 = 0u;
                        uint _13352 = 0u;
                        uint _13353 = 0u;
                        if (_13183 == 3u)
                        {
                            uint _13333 = 0u | (((spvPackHalf2x16(0.0f.xx) >> 5u) & 1023u) << 16u);
                            uint _13348 = 0u;
                            uint _13349 = 0u;
                            uint _13350 = 0u;
                            if (_13181 < 3u)
                            {
                                _13348 = (_13181 == 2u) ? _13333 : _13178;
                                _13349 = (_13181 == 1u) ? _13333 : _13179;
                                _13350 = (_13181 == 0u) ? _13333 : _13180;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _13181 - 3u)] = _13333;
                                _13348 = _13178;
                                _13349 = _13179;
                                _13350 = _13180;
                            }
                            _13351 = _13348;
                            _13352 = _13349;
                            _13353 = _13350;
                        }
                        else
                        {
                            float4 _13294 = 0.0f.xxxx;
                            if ((((_12660 >> 10u) & 1u) != 0u) && (_13183 == 2u))
                            {
                                float3 _13292 = max(0.0f.xxx, 0.0f.xxx);
                                _13294 = float4(_13292.x, _13292.y, _13292.z, 0.0f.xxxx.w);
                            }
                            else
                            {
                                _13294 = 0.0f.xxxx;
                            }
                            uint _13311 = (((spvPackHalf2x16(float2(_13294.x, 0.0f)) << 17u) & 4292870144u) | ((spvPackHalf2x16(float2(_13294.y, 0.0f)) << 6u) & 2096128u)) | ((spvPackHalf2x16(float2(_13294.z, 0.0f)) >> 5u) & 1023u);
                            uint _13326 = 0u;
                            uint _13327 = 0u;
                            uint _13328 = 0u;
                            if (_13181 < 3u)
                            {
                                _13326 = (_13181 == 2u) ? _13311 : _13178;
                                _13327 = (_13181 == 1u) ? _13311 : _13179;
                                _13328 = (_13181 == 0u) ? _13311 : _13180;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _13181 - 3u)] = _13311;
                                _13326 = _13178;
                                _13327 = _13179;
                                _13328 = _13180;
                            }
                            _13351 = _13326;
                            _13352 = _13327;
                            _13353 = _13328;
                        }
                        _13354 = _13278;
                        _13355 = _13279;
                        _13356 = _13351;
                        _13357 = _13352;
                        _13358 = _13353;
                        _13359 = _13181 + 1u;
                    }
                    else
                    {
                        _13354 = 0u;
                        _13355 = _10953;
                        _13356 = _13178;
                        _13357 = _13179;
                        _13358 = _13180;
                        _13359 = _13181;
                    }
                    uint _13430 = 0u;
                    uint _13431 = 0u;
                    uint _13432 = 0u;
                    uint _13433 = 0u;
                    if (((_12660 >> 9u) & 1u) != 0u)
                    {
                        float _13370 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13370 = 0.0f;
                                break;
                            }
                            _13370 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13376 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13376 = 0.0f;
                                break;
                            }
                            _13376 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13382 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13382 = 0.0f;
                                break;
                            }
                            _13382 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float3 _13383 = float3(_13370, _13376, _13382);
                        float3 _13389 = clamp(mad(_12971, float3(min((asuint(_13383) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13383), 0.0f.xxx, 1.0f.xxx);
                        uint _13407 = uint(clamp(mad(_12970, 0.0f, 0.0f), 0.0f, 1.0f) * 63.0f);
                        uint _13411 = ((((uint(_13389.x * 127.0f) << 0u) | (uint(_13389.y * 127.0f) << 7u)) | (uint(_13389.z * 63.0f) << 14u)) | (_13407 << 20u)) | (_13407 << 26u);
                        uint _13426 = 0u;
                        uint _13427 = 0u;
                        uint _13428 = 0u;
                        if (_13359 < 3u)
                        {
                            _13426 = (_13359 == 2u) ? _13411 : _13356;
                            _13427 = (_13359 == 1u) ? _13411 : _13357;
                            _13428 = (_13359 == 0u) ? _13411 : _13358;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _13359 - 3u)] = _13411;
                            _13426 = _13356;
                            _13427 = _13357;
                            _13428 = _13358;
                        }
                        _13430 = _13426;
                        _13431 = _13427;
                        _13432 = _13428;
                        _13433 = _13359 + 1u;
                    }
                    else
                    {
                        _13430 = _13356;
                        _13431 = _13357;
                        _13432 = _13358;
                        _13433 = _13359;
                    }
                    uint _13470 = 0u;
                    uint _13471 = 0u;
                    uint _13472 = 0u;
                    if (((_12660 >> 16u) & 1u) != 0u)
                    {
                        float _13441 = 0.0f;
                        do
                        {
                            _13441 = mad(1.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        uint _13446 = uint(clamp(_13441, 0.0f, 1.0f) * 255.0f);
                        uint _13452 = (((_13446 << 0u) | (_13446 << 8u)) | (_13446 << 16u)) | 0u;
                        uint _13467 = 0u;
                        uint _13468 = 0u;
                        uint _13469 = 0u;
                        if (_13433 < 3u)
                        {
                            _13467 = (_13433 == 2u) ? _13452 : _13430;
                            _13468 = (_13433 == 1u) ? _13452 : _13431;
                            _13469 = (_13433 == 0u) ? _13452 : _13432;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _13433 - 3u)] = _13452;
                            _13467 = _13430;
                            _13468 = _13431;
                            _13469 = _13432;
                        }
                        _13470 = _13467;
                        _13471 = _13468;
                        _13472 = _13469;
                    }
                    else
                    {
                        _13470 = _13430;
                        _13471 = _13431;
                        _13472 = _13432;
                    }
                    _13473 = _13354;
                    _13474 = _13355;
                    _13475 = _13470;
                    _13476 = _13471;
                    _13477 = _13472;
                    break;
                }
                case 3u:
                {
                    float3 _12871 = clamp(float4(_10707, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12872 = _12871.x;
                    float _12881 = 0.0f;
                    do
                    {
                        if (_12872 < 0.00313066993840038776397705078125f)
                        {
                            _12881 = _12872 * 12.9200000762939453125f;
                            break;
                        }
                        _12881 = mad(pow(_12872, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12882 = _12871.y;
                    float _12891 = 0.0f;
                    do
                    {
                        if (_12882 < 0.00313066993840038776397705078125f)
                        {
                            _12891 = _12882 * 12.9200000762939453125f;
                            break;
                        }
                        _12891 = mad(pow(_12882, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12892 = _12871.z;
                    float _12901 = 0.0f;
                    do
                    {
                        if (_12892 < 0.00313066993840038776397705078125f)
                        {
                            _12901 = _12892 * 12.9200000762939453125f;
                            break;
                        }
                        _12901 = mad(pow(_12892, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    uint _12916 = (((uint(clamp(_12881, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12891, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12901, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                    uint _12931 = 0u;
                    uint _12932 = 0u;
                    uint _12933 = 0u;
                    if (_12664 < 3u)
                    {
                        _12931 = (_12664 == 2u) ? _12916 : _12661;
                        _12932 = (_12664 == 1u) ? _12916 : _12662;
                        _12933 = (_12664 == 0u) ? _12916 : _12663;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _12664 - 3u)] = _12916;
                        _12931 = _12661;
                        _12932 = _12662;
                        _12933 = _12663;
                    }
                    uint _12934 = _12664 + 1u;
                    uint _12949 = ((0u | (uint(clamp(_10710, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_10714, 0.0f, 1.0f) * 255.0f) << 16u)) | (uint(clamp(_10716, 0.0f, 1.0f) * 255.0f) << 24u);
                    uint _12964 = 0u;
                    uint _12965 = 0u;
                    uint _12966 = 0u;
                    if (_12934 < 3u)
                    {
                        _12964 = (_12934 == 2u) ? _12949 : _12931;
                        _12965 = (_12934 == 1u) ? _12949 : _12932;
                        _12966 = (_12934 == 0u) ? _12949 : _12933;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _12664 + 4294967294u)] = _12949;
                        _12964 = _12931;
                        _12965 = _12932;
                        _12966 = _12933;
                    }
                    _13473 = 0u;
                    _13474 = _10953;
                    _13475 = _12964;
                    _13476 = _12965;
                    _13477 = _12966;
                    break;
                }
                case 5u:
                {
                    float3 _12682 = 0.0f.xxx;
                    if (true)
                    {
                        float2 _12680 = 1.0f.xx - abs(0.0f.xx);
                        _12682 = float3(_12680.x, _12680.y, 0.0f.xxxx.z);
                    }
                    else
                    {
                        _12682 = 0.0f.xxx;
                    }
                    float3 _12689 = 0.0f.xxx;
                    if (true)
                    {
                        float2 _12687 = 1.0f.xx - abs(0.0f.xx);
                        _12689 = float3(_12687.x, _12687.y, 0.0f.xxxx.z);
                    }
                    else
                    {
                        _12689 = 0.0f.xxx;
                    }
                    float3 _12692 = clamp(_10707.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12693 = _12692.x;
                    float _12702 = 0.0f;
                    do
                    {
                        if (_12693 < 0.00313066993840038776397705078125f)
                        {
                            _12702 = _12693 * 12.9200000762939453125f;
                            break;
                        }
                        _12702 = mad(pow(_12693, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12703 = _12692.y;
                    float _12712 = 0.0f;
                    do
                    {
                        if (_12703 < 0.00313066993840038776397705078125f)
                        {
                            _12712 = _12703 * 12.9200000762939453125f;
                            break;
                        }
                        _12712 = mad(pow(_12703, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12713 = _12692.z;
                    float _12722 = 0.0f;
                    do
                    {
                        if (_12713 < 0.00313066993840038776397705078125f)
                        {
                            _12722 = _12713 * 12.9200000762939453125f;
                            break;
                        }
                        _12722 = mad(pow(_12713, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    uint _12737 = (((uint(clamp(_12702, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12712, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12722, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                    uint _12752 = 0u;
                    uint _12753 = 0u;
                    uint _12754 = 0u;
                    if (_12664 < 3u)
                    {
                        _12752 = (_12664 == 2u) ? _12737 : _12661;
                        _12753 = (_12664 == 1u) ? _12737 : _12662;
                        _12754 = (_12664 == 0u) ? _12737 : _12663;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _12664 - 3u)] = _12737;
                        _12752 = _12661;
                        _12753 = _12662;
                        _12754 = _12663;
                    }
                    uint _12755 = _12664 + 1u;
                    float2 _12757 = (_12682.xy * 0.5f) + 0.5f.xx;
                    float2 _12759 = (_12689.xy * 0.5f) + 0.5f.xx;
                    uint _12782 = (((uint(clamp(_12757.x, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12757.y, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12759.x, 0.0f, 1.0f) * 255.0f) << 16u)) | (uint(clamp(_12759.y, 0.0f, 1.0f) * 255.0f) << 24u);
                    uint _12797 = 0u;
                    uint _12798 = 0u;
                    uint _12799 = 0u;
                    if (_12755 < 3u)
                    {
                        _12797 = (_12755 == 2u) ? _12782 : _12752;
                        _12798 = (_12755 == 1u) ? _12782 : _12753;
                        _12799 = (_12755 == 0u) ? _12782 : _12754;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10704, _12664 + 4294967294u)] = _12782;
                        _12797 = _12752;
                        _12798 = _12753;
                        _12799 = _12754;
                    }
                    uint _12864 = 0u;
                    uint _12865 = 0u;
                    if (((_12660 >> 2u) & 7u) == 3u)
                    {
                        float3 _12818 = clamp(float4(_10707, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                        float _12819 = _12818.x;
                        float _12828 = 0.0f;
                        do
                        {
                            if (_12819 < 0.00313066993840038776397705078125f)
                            {
                                _12828 = _12819 * 12.9200000762939453125f;
                                break;
                            }
                            _12828 = mad(pow(_12819, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12829 = _12818.y;
                        float _12838 = 0.0f;
                        do
                        {
                            if (_12829 < 0.00313066993840038776397705078125f)
                            {
                                _12838 = _12829 * 12.9200000762939453125f;
                                break;
                            }
                            _12838 = mad(pow(_12829, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12839 = _12818.z;
                        float _12848 = 0.0f;
                        do
                        {
                            if (_12839 < 0.00313066993840038776397705078125f)
                            {
                                _12848 = _12839 * 12.9200000762939453125f;
                                break;
                            }
                            _12848 = mad(pow(_12839, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        _12864 = (((uint(clamp(_12828, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12838, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12848, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                        _12865 = ((((_10953 & 4294967292u) | 3u) & 3u) | (uint(mad(_10714, 255.0f, 0.5f)) << 24u)) | 16711680u;
                    }
                    else
                    {
                        _12864 = 0u;
                        _12865 = _10953;
                    }
                    _13473 = _12864;
                    _13474 = _12865;
                    _13475 = _12797;
                    _13476 = _12798;
                    _13477 = _12799;
                    break;
                }
                default:
                {
                    _13473 = 0u;
                    _13474 = _10953;
                    _13475 = _12661;
                    _13476 = _12662;
                    _13477 = _12663;
                    break;
                }
            }
            _13478 = _13473;
            _13479 = _13474;
            _13480 = _13475;
            _13481 = _13476;
            _13482 = _13477;
        }
        else
        {
            _13478 = 0u;
            _13479 = _10953;
            _13480 = _12661;
            _13481 = _12662;
            _13482 = _12663;
        }
        _13483 = _13478;
        _13484 = _13479;
        _13485 = _13480;
        _13486 = _13481;
        _13487 = _13482;
    }
    else
    {
        _13483 = 0u;
        _13484 = _10953;
        _13485 = 0u;
        _13486 = _11473;
        _13487 = _11474;
    }
    float2 _13492 = _10861.xy / dot(1.0f.xxx, abs(_10861)).xx;
    float3 _13510 = 0.0f.xxx;
    if (_10861.z <= 0.0f)
    {
        float2 _13501 = _13492.xy;
        bool2 _13502 = bool2(_13501.x >= 0.0f.xx.x, _13501.y >= 0.0f.xx.y);
        float2 _13508 = (1.0f.xx - abs(_13492.yx)) * float2(_13502.x ? 1.0f : (-1.0f), _13502.y ? 1.0f : (-1.0f));
        _13510 = float3(_13508.x, _13508.y, _10861.z);
    }
    else
    {
        _13510 = float3(_13492.x, _13492.y, _10861.z);
    }
    uint2 _13515 = uint2(clamp((_13510.xy * 1023.0f) + 1024.0f.xx, 0.0f.xx, 2047.0f.xx));
    uint _13527 = _13484 & 3u;
    [branch]
    if (_13527 != 0u)
    {
        uint _13534 = uint(OpaqueBasePass_OpaqueBasePass_Strata_FirstSliceStoringStrataSSSDataWithoutMRT);
        uint _13535 = _10704.x;
        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_13535, _10704.y, _13534)] = _13484;
        if ((_13527 == 2u) || (_13527 == 3u))
        {
            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_13535, _10704.y, _13534 + 1u)] = _13483;
        }
    }
    float4 _13556 = float4((lerp((((float4(_10363.x ? 0.0f.xxxx.x : _9842.x, _10363.y ? 0.0f.xxxx.y : _9842.y, _10363.z ? 0.0f.xxxx.z : _9842.z, _10363.w ? 0.0f.xxxx.w : _9842.w).xyz + float4(_10363.x ? 0.0f.xxxx.x : _9845.x, _10363.y ? 0.0f.xxxx.y : _9845.y, _10363.z ? 0.0f.xxxx.z : _9845.z, _10363.w ? 0.0f.xxxx.w : _9845.w).xyz) + (((_8628 * _8554) * max(1.0f.xxx, ((((((_8435 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_8435 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_8435 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)) * _8425)) + _10450) + _10701, float3(_10859.x ? _10865.x : 0.0f.xxx.x, _10859.y ? _10865.y : 0.0f.xxx.y, _10859.z ? _10865.z : 0.0f.xxx.z), View_View_UnlitViewmodeMask.xxx) + (_11390 + _10449)) * 1.0f, 0.0f);
    float4 _13563 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _13562 = _13556;
        _13562.w = 0.0f;
        _13563 = _13562;
    }
    else
    {
        _13563 = _13556;
    }
    float4 _13564 = 0.0f.xxxx;
    _13564.x = _8511;
    _13564.y = 1.0f;
    _13564.z = 1.0f;
    _13564.w = 1.0f;
    float4 _13573 = _13563 * View_View_PreExposure;
    float3 _13575 = min(_13573.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_13575.x, _13575.y, _13575.z, _13573.w);
    out_var_SV_Target1 = _13564;
    out_var_SV_Target2 = float4(_10700 * View_View_PreExposure, 1.0f);
    out_var_SV_Target3 = _13487;
    out_var_SV_Target4 = _13486;
    out_var_SV_Target5 = _13485;
    out_var_SV_Target6 = (((_13515.x | (_13515.y << 11u)) << 10u) | (uint(clamp(_10858 ? (_10854 / _10856) : 0.0f, 0.0f, 1.0f) * 255.0f) << 2u)) | _10849;
}

[earlydepthstencil]
SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD10_centroid = stage_input.in_var_TEXCOORD10_centroid;
    in_var_TEXCOORD11_centroid = stage_input.in_var_TEXCOORD11_centroid;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_TEXCOORD9 = stage_input.in_var_TEXCOORD9;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    stage_output.out_var_SV_Target1 = out_var_SV_Target1;
    stage_output.out_var_SV_Target2 = out_var_SV_Target2;
    stage_output.out_var_SV_Target3 = out_var_SV_Target3;
    stage_output.out_var_SV_Target4 = out_var_SV_Target4;
    stage_output.out_var_SV_Target5 = out_var_SV_Target5;
    stage_output.out_var_SV_Target6 = out_var_SV_Target6;
    return stage_output;
}
