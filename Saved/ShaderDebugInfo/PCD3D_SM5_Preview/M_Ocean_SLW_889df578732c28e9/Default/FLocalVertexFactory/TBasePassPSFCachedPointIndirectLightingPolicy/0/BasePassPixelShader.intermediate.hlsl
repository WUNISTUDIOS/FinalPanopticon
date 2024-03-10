#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _455 = 0.0f.xxx;
static float3 _538 = 0.0f.xxx;
static uint3 _539 = uint3(0u, 0u, 0u);
static float4 _540 = 0.0f.xxxx;
static float4x4 _541 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
static float3 _542 = 0.0f.xxx;
static float _549 = 0.0f;
static uint3 _550 = uint3(0u, 0u, 0u);
static float4 _551 = 0.0f.xxxx;
static float3 _552 = 0.0f.xxx;
static float2 _553 = 0.0f.xx;

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
    float _584 = 1.0f / gl_FragCoord.w;
    float2 _623 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _630 = float4(mad(_623, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _549, 1.0f) * _584;
    float4 _635 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _639 = _635.xyz / _635.w.xxx;
    float3 _640 = _639 - View_View_RelativePreViewTranslation;
    float3 _641 = in_var_TEXCOORD9 - View_View_RelativePreViewTranslation;
    float _643 = _630.w;
    float3 _657 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _657 = -View_View_ViewForward;
    }
    else
    {
        _657 = normalize(-_639);
    }
    float3 _664 = View_View_ViewTilePosition * float3(-1.0f, -1.0f, -0.0f);
    float3 _666 = mad(-_640, float3(1.0f, 1.0f, 0.0f), float3(MaterialCollection0_MaterialCollection0_Vectors[4].xyz));
    float _667 = _664.x;
    float _668 = _666.x;
    float _671 = _664.y;
    float _672 = _666.y;
    float _677 = _664.z;
    float _678 = _666.z;
    float3 _698 = Material_Material_PreshaderBuffer[2].x.xxx;
    float3 _710 = 0.0f.xxx;
    float _715 = 0.0f;
    _710 = mad(_640, _698, mad(View_View_ViewTilePosition, _698, -floor(mad(View_View_ViewTilePosition, _698, ((_640 * _698) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _715 = 0.0f;
    float _713 = 1.0f;
    uint _717 = 0u;
    [loop]
    for (; _717 < 6u; )
    {
        float3 _721 = _710 * 0.066666670143604278564453125f.xxx;
        float3 _723 = frac(_721) * 15.0f;
        float3 _724 = frac(_723);
        float4 _729 = float4(_724, 0.0f);
        float4 _742 = View_PerlinNoise3DTexture.SampleLevel(View_PerlinNoise3DTextureSampler, mad((_723 - _724) + (((_729 * _729) * _729) * mad(_729, (_729 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx)).xyz, 0.0625f.xxx, 0.03125f.xxx), 0.0f);
        float _716 = mad(abs(dot(_723, mad(_742.xyz * 255.0f, 0.0078740157186985015869140625f.xxx, (-1.0f).xxx)) - mad(_742.w, 255.0f, -127.0f)), _713, _715);
        _710 *= 2.0f;
        _713 *= 0.5f;
        _715 = _716;
        _717++;
        continue;
    }
    float _772 = clamp(mad(-length((mad(View_View_ViewTilePosition, float3(1.0f, 1.0f, 0.0f), _664) * 2097152.0f) + mad(View_View_RelativeWorldCameraOrigin, float3(1.0f, 1.0f, 0.0f), _640 * float3(-1.0f, -1.0f, -0.0f))), 1.0f / max(9.9999997473787516355514526367188e-06f, MaterialCollection0_MaterialCollection0_Vectors[0].x * Material_Material_PreshaderBuffer[2].y), 1.0f) * Material_Material_PreshaderBuffer[3].y, 0.0f, 1.0f);
    float _773 = lerp(clamp(lerp(-1.0f, 1.0f, _715), 0.0f, 1.0f), 1.0f, _772);
    float3 _776 = ((View_View_ViewTilePosition + (-View_View_ViewTilePosition)) * 2097152.0f) + _639;
    uint3 _778 = uint3(0u, 0u, 0u);
    _778 = _539;
    float _784 = 0.0f;
    uint3 _779 = uint3(0u, 0u, 0u);
    float _875 = 0.0f;
    uint _781 = 0u;
    float _783 = 0.0f;
    uint _786 = 0u;
    for (;;)
    {
        _786 = View_View_NumGlobalSDFClipmaps;
        if (_781 < _786)
        {
            float3 _800 = min(max((_776 - View_View_GlobalVolumeTranslatedCenterAndExtent[_781].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_781].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_781].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_781].www) - _776, 0.0f.xxx));
            float _810 = View_View_GlobalVolumeTranslatedCenterAndExtent[_781].w * View_View_GlobalVolumeTexelSize;
            _784 = 8.0f * _810;
            if (min(_800.x, min(_800.y, _800.z)) > _810)
            {
                float3 _820 = frac(frac(mad(_776, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_781].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_781].xyz)));
                float _824 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _831 = (clamp(_820, 0.0f.xxx, 1.0f.xxx) * _824) + float3(int3(0, 0, int(_781 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                uint4 _841 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_831.x), int(_831.y), int(_831.z), 0).xyz, 0));
                uint _842 = _841.x;
                uint _843 = _842 & 16777215u;
                uint3 _874 = uint3(0u, 0u, 0u);
                if (_842 < 4294967295u)
                {
                    uint3 _848 = _778;
                    _848.x = _843 & 127u;
                    _848.y = (_843 >> 7u) & 127u;
                    _848.z = _843 >> 14u;
                    float4 _867 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_848 * uint3(8u, 8u, 8u)) + (frac(_820 * _824) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f);
                    float _868 = _867.x;
                    if (_868 < 1.0f)
                    {
                        _875 = mad(_868, 2.0f, -1.0f) * _784;
                        break;
                    }
                    _874 = _848;
                }
                else
                {
                    _874 = _778;
                }
                _779 = _874;
            }
            else
            {
                _779 = _778;
            }
            _778 = _779;
            _781++;
            _783 = _784;
            continue;
        }
        else
        {
            _875 = _783;
            break;
        }
    }
    float _886 = clamp(mad(mad(_875, Material_Material_PreshaderBuffer[3].w, -Material_Material_PreshaderBuffer[4].x) * Material_Material_PreshaderBuffer[4].w, -1.0f, 1.0f), 0.0f, 1.0f);
    uint3 _888 = uint3(0u, 0u, 0u);
    _888 = _539;
    uint3 _889 = uint3(0u, 0u, 0u);
    float3 _1146 = 0.0f.xxx;
    uint _891 = 0u;
    for (;;)
    {
        if (_891 < _786)
        {
            float _901 = View_View_GlobalVolumeTranslatedCenterAndExtent[_891].w * View_View_GlobalVolumeTexelSize;
            float3 _911 = min(max((_776 - View_View_GlobalVolumeTranslatedCenterAndExtent[_891].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_891].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_891].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_891].www) - _776, 0.0f.xxx));
            if (min(_911.x, min(_911.y, _911.z)) >= _901)
            {
                float3 _926 = frac(frac(mad(_776, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_891].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_891].xyz)));
                float _930 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _936 = float3(int3(0, 0, int(_891 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                float3 _937 = (clamp(_926, 0.0f.xxx, 1.0f.xxx) * _930) + _936;
                uint4 _947 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_937.x), int(_937.y), int(_937.z), 0).xyz, 0));
                uint _948 = _947.x;
                uint _949 = _948 & 16777215u;
                uint3 _1145 = uint3(0u, 0u, 0u);
                if (_948 < 4294967295u)
                {
                    uint3 _954 = _888;
                    _954.x = _949 & 127u;
                    _954.y = (_949 >> 7u) & 127u;
                    _954.z = _949 >> 14u;
                    if (View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_954 * uint3(8u, 8u, 8u)) + (frac(_926 * _930) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x < 0.89999997615814208984375f)
                    {
                        float _978 = 0.5f * View_View_GlobalVolumeTexelSize;
                        float3 _981 = frac(_926 + float3(_978, 0.0f, 0.0f));
                        float3 _984 = (clamp(_981, 0.0f.xxx, 1.0f.xxx) * _930) + _936;
                        uint4 _993 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_984.x), int(_984.y), int(_984.z), 0).xyz, 0));
                        uint _994 = _993.x;
                        uint _995 = _994 & 16777215u;
                        float _1017 = 0.0f;
                        if (_994 < 4294967295u)
                        {
                            uint3 _1000 = uint3(0u, 0u, 0u);
                            _1000.x = _995 & 127u;
                            _1000.y = (_995 >> 7u) & 127u;
                            _1000.z = _995 >> 14u;
                            _1017 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1000 * uint3(8u, 8u, 8u)) + (frac(_981 * _930) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1017 = 1.0f;
                        }
                        float _1018 = View_View_GlobalVolumeTexelSize * (-0.5f);
                        float3 _1021 = frac(_926 + float3(_1018, 0.0f, 0.0f));
                        float3 _1024 = (clamp(_1021, 0.0f.xxx, 1.0f.xxx) * _930) + _936;
                        uint4 _1033 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1024.x), int(_1024.y), int(_1024.z), 0).xyz, 0));
                        uint _1034 = _1033.x;
                        uint _1035 = _1034 & 16777215u;
                        float _1057 = 0.0f;
                        if (_1034 < 4294967295u)
                        {
                            uint3 _1040 = uint3(0u, 0u, 0u);
                            _1040.x = _1035 & 127u;
                            _1040.y = (_1035 >> 7u) & 127u;
                            _1040.z = _1035 >> 14u;
                            _1057 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1040 * uint3(8u, 8u, 8u)) + (frac(_1021 * _930) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1057 = 1.0f;
                        }
                        float3 _1060 = frac(_926 + float3(0.0f, _978, 0.0f));
                        float3 _1063 = (clamp(_1060, 0.0f.xxx, 1.0f.xxx) * _930) + _936;
                        uint4 _1072 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1063.x), int(_1063.y), int(_1063.z), 0).xyz, 0));
                        uint _1073 = _1072.x;
                        uint _1074 = _1073 & 16777215u;
                        float _1096 = 0.0f;
                        if (_1073 < 4294967295u)
                        {
                            uint3 _1079 = uint3(0u, 0u, 0u);
                            _1079.x = _1074 & 127u;
                            _1079.y = (_1074 >> 7u) & 127u;
                            _1079.z = _1074 >> 14u;
                            _1096 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1079 * uint3(8u, 8u, 8u)) + (frac(_1060 * _930) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1096 = 1.0f;
                        }
                        float3 _1099 = frac(_926 + float3(0.0f, _1018, 0.0f));
                        float3 _1102 = (clamp(_1099, 0.0f.xxx, 1.0f.xxx) * _930) + _936;
                        uint4 _1111 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1102.x), int(_1102.y), int(_1102.z), 0).xyz, 0));
                        uint _1112 = _1111.x;
                        uint _1113 = _1112 & 16777215u;
                        float _1135 = 0.0f;
                        if (_1112 < 4294967295u)
                        {
                            uint3 _1118 = uint3(0u, 0u, 0u);
                            _1118.x = _1113 & 127u;
                            _1118.y = (_1113 >> 7u) & 127u;
                            _1118.z = _1113 >> 14u;
                            _1135 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1118 * uint3(8u, 8u, 8u)) + (frac(_1099 * _930) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1135 = 1.0f;
                        }
                        _1146 = (float3(_1017 - _1057, _1096 - _1135, _549) * (_901 * 16.0f)) / (View_View_GlobalVolumeTranslatedCenterAndExtent[_891].w * (128.0f * View_View_GlobalVolumeTexelSize)).xxx;
                        break;
                    }
                    _1145 = _954;
                }
                else
                {
                    _1145 = _888;
                }
                _889 = _1145;
            }
            else
            {
                _889 = _888;
            }
            _888 = _889;
            _891++;
            continue;
        }
        else
        {
            _1146 = float3(0.0f, 0.0f, 0.001000000047497451305389404296875f);
            break;
        }
    }
    float3 _1153 = Material_Material_PreshaderBuffer[5].z.xxx;
    float _1160 = lerp(View_View_GameTime, MaterialCollection0_MaterialCollection0_Vectors[0].z, MaterialCollection0_MaterialCollection0_Vectors[0].w);
    float3 _1171 = float3((View_View_ViewTilePosition * _1153).xy, 0.0f);
    float3 _1172 = float3((mad(_1146, Material_Material_PreshaderBuffer[5].y.xxx, _641) * _1153).xy, ((_1160 * Material_Material_PreshaderBuffer[6].x).xx + float2(1.0f, 0.0f)).x);
    float3 _1182 = 0.0f.xxx;
    float _1187 = 0.0f;
    _1182 = (((_1171 - floor(_1171 + ((_1172 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _1172) * 1.0f;
    _1187 = 0.0f;
    float _1185 = 1.0f;
    uint _1189 = 0u;
    [loop]
    for (; _1189 < 10u; )
    {
        float3 _1193 = frac(_1182);
        float _1195 = dot(floor(_1182), float3(19.0f, 47.0f, 101.0f));
        uint3 _1207 = (uint3(int3(int(_1195), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1208 = _1207.y;
        uint _1209 = _1207.z;
        uint _1212 = _1207.x + (_1208 * _1209);
        uint _1214 = _1208 + (_1209 * _1212);
        uint3 _1219 = uint3(0u, 0u, 0u);
        _1219.x = _1212 + (_1214 * (_1209 + (_1212 * _1214)));
        uint3 _1220 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _1233 = (uint3(int3(int(_1195 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1234 = _1233.y;
        uint _1235 = _1233.z;
        uint _1238 = _1233.x + (_1234 * _1235);
        uint _1240 = _1234 + (_1235 * _1238);
        uint3 _1245 = uint3(0u, 0u, 0u);
        _1245.x = _1238 + (_1240 * (_1235 + (_1238 * _1240)));
        uint3 _1258 = (uint3(int3(int(_1195 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1259 = _1258.y;
        uint _1260 = _1258.z;
        uint _1263 = _1258.x + (_1259 * _1260);
        uint _1265 = _1259 + (_1260 * _1263);
        uint3 _1270 = uint3(0u, 0u, 0u);
        _1270.x = _1263 + (_1265 * (_1260 + (_1263 * _1265)));
        uint3 _1283 = (uint3(int3(int(_1195 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1284 = _1283.y;
        uint _1285 = _1283.z;
        uint _1288 = _1283.x + (_1284 * _1285);
        uint _1290 = _1284 + (_1285 * _1288);
        uint3 _1295 = uint3(0u, 0u, 0u);
        _1295.x = _1288 + (_1290 * (_1285 + (_1288 * _1290)));
        uint3 _1308 = (uint3(int3(int(_1195 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1309 = _1308.y;
        uint _1310 = _1308.z;
        uint _1313 = _1308.x + (_1309 * _1310);
        uint _1315 = _1309 + (_1310 * _1313);
        uint3 _1320 = uint3(0u, 0u, 0u);
        _1320.x = _1313 + (_1315 * (_1310 + (_1313 * _1315)));
        uint3 _1333 = (uint3(int3(int(_1195 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1334 = _1333.y;
        uint _1335 = _1333.z;
        uint _1338 = _1333.x + (_1334 * _1335);
        uint _1340 = _1334 + (_1335 * _1338);
        uint3 _1345 = uint3(0u, 0u, 0u);
        _1345.x = _1338 + (_1340 * (_1335 + (_1338 * _1340)));
        uint3 _1358 = (uint3(int3(int(_1195 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1359 = _1358.y;
        uint _1360 = _1358.z;
        uint _1363 = _1358.x + (_1359 * _1360);
        uint _1365 = _1359 + (_1360 * _1363);
        uint3 _1370 = uint3(0u, 0u, 0u);
        _1370.x = _1363 + (_1365 * (_1360 + (_1363 * _1365)));
        uint3 _1383 = (uint3(int3(int(_1195 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1384 = _1383.y;
        uint _1385 = _1383.z;
        uint _1388 = _1383.x + (_1384 * _1385);
        uint _1390 = _1384 + (_1385 * _1388);
        uint3 _1395 = uint3(0u, 0u, 0u);
        _1395.x = _1388 + (_1390 * (_1385 + (_1388 * _1390)));
        float4 _1406 = float4(_1193, 0.0f);
        float4 _1412 = ((_1406 * _1406) * _1406) * mad(_1406, (_1406 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _1413 = _1412.x;
        float _1416 = _1412.y;
        float _1423 = abs(lerp(lerp(lerp(dot(mad(float3((_1219 >> _1220).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1193), dot(mad(float3((_1245 >> _1220).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1193 - float3(1.0f, 0.0f, 0.0f)), _1413), lerp(dot(mad(float3((_1270 >> _1220).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1193 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_1295 >> _1220).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1193 - float3(1.0f, 1.0f, 0.0f)), _1413), _1416), lerp(lerp(dot(mad(float3((_1320 >> _1220).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1193 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_1345 >> _1220).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1193 - float3(1.0f, 0.0f, 1.0f)), _1413), lerp(dot(mad(float3((_1370 >> _1220).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1193 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_1395 >> _1220).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1193 - 1.0f.xxx), _1413), _1416), _1412.z));
        float _1188 = mad(_1423, _1185, _1187);
        _1182 *= 2.0f;
        _1185 *= 0.5f;
        _1187 = _1188;
        _1189++;
        continue;
    }
    float _1427 = -_886;
    float _1433 = clamp(mad(mad(_1427, Material_Material_PreshaderBuffer[6].y, lerp(0.0f, 1.0f, _1187)) / mad(_1427, Material_Material_PreshaderBuffer[6].y, mad(_886, Material_Material_PreshaderBuffer[6].y, 1.0f)), -1.0f, 1.0f), 0.0f, 1.0f);
    float _1442 = clamp(lerp(Material_Material_PreshaderBuffer[6].w, Material_Material_PreshaderBuffer[6].z, (_1433 <= 0.0f) ? 0.0f : pow(_1433, 2.0f)), 0.0f, 1.0f);
    float _1443 = _886 * _1442;
    float3 _1446 = Material_Material_PreshaderBuffer[7].x.xxx;
    float3 _1447 = View_View_ViewTilePosition * _1446;
    float3 _1448 = _641 * _1446;
    float3 _1459 = 0.0f.xxx;
    float3 _1462 = 0.0f.xxx;
    float _1466 = 0.0f;
    _1459 = _542;
    _1462 = mad(_641, _1446, mad(View_View_ViewTilePosition, _1446, -floor(mad(View_View_ViewTilePosition, _1446, (_1448 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _1466 = 0.0f;
    float3 _1463 = 0.0f.xxx;
    float _1465 = 0.0f;
    float _1467 = 0.0f;
    float3 _1460 = 0.0f.xxx;
    float _1464 = 1.0f;
    uint _1468 = 0u;
    [loop]
    for (; _1468 < 1u; _1459 = _1460, _1462 = _1463, _1464 = _1465, _1466 = _1467, _1468++)
    {
        float3 _1473 = frac(_1462);
        float3 _1474 = floor(_1462);
        float3 _1475 = _1459;
        _1475.x = 0.0f;
        float4 _1477 = 0.0f.xxxx;
        _1477 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _1460 = _1475;
        float3 _1480 = 0.0f.xxx;
        float4 _1478 = 0.0f.xxxx;
        float3 _1487 = 0.0f.xxx;
        for (; _1460.x <= 1.0f; _1480 = _1487, _1480.x = _1487.x + 1.0f, _1477 = _1478, _1460 = _1480)
        {
            float3 _1485 = _1460;
            _1485.y = 0.0f;
            _1487 = _1485;
            _1478 = _1477;
            float3 _1488 = 0.0f.xxx;
            float4 _1490 = 0.0f.xxxx;
            float3 _1499 = 0.0f.xxx;
            for (; _1487.y <= 1.0f; _1488 = _1499, _1488.y = _1499.y + 1.0f, _1487 = _1488, _1478 = _1490)
            {
                float3 _1495 = _1487;
                _1495.z = 0.0f;
                _1490 = _1478;
                _1499 = _1495;
                for (; _1499.z <= 1.0f; )
                {
                    float3 _1504 = _1474 + _1499;
                    uint3 _1509 = (uint3(int3(float3(_1504.x, _1504.y, _1504.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _1510 = _1509.y;
                    uint _1511 = _1509.z;
                    uint _1514 = _1509.x + (_1510 * _1511);
                    uint _1516 = _1510 + (_1511 * _1514);
                    uint _1518 = _1511 + (_1514 * _1516);
                    uint _1520 = _1514 + (_1516 * _1518);
                    uint3 _1521 = _1509;
                    _1521.x = _1520;
                    uint _1523 = _1516 + (_1518 * _1520);
                    _1521.y = _1523;
                    _1521.z = _1518 + (_1520 * _1523);
                    float3 _1535 = _1473 - (_1499 + (normalize(mad(float3(_1521 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _1500 = _1499;
                    _1500.z = _1499.z + 1.0f;
                    _1490 = float4(0.0f, 0.0f, 0.0f, min(_1490.w, dot(_1535, _1535)));
                    _1499 = _1500;
                    continue;
                }
            }
        }
        _1467 = mad(abs(mad(sqrt(_1477.w), 2.0f, -1.0f)), _1464, _1466);
        _1463 = _1462 * 2.0f;
        _1465 = _1464 * 0.5f;
    }
    float3 _1561 = 0.0f.xxx;
    float3 _1564 = 0.0f.xxx;
    float _1568 = 0.0f;
    _1561 = _542;
    _1564 = mad(_1448, 1.2000000476837158203125f.xxx, mad(_1447, 1.2000000476837158203125f.xxx, -floor(mad(_1447, 1.2000000476837158203125f.xxx, ((_1448 * 1.2000000476837158203125f.xxx) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _1568 = 0.0f;
    float3 _1565 = 0.0f.xxx;
    float _1567 = 0.0f;
    float _1569 = 0.0f;
    float3 _1562 = 0.0f.xxx;
    float _1566 = 1.0f;
    uint _1570 = 0u;
    [loop]
    for (; _1570 < 1u; _1561 = _1562, _1564 = _1565, _1566 = _1567, _1568 = _1569, _1570++)
    {
        float3 _1575 = frac(_1564);
        float3 _1576 = floor(_1564);
        float3 _1577 = _1561;
        _1577.x = 0.0f;
        float4 _1579 = 0.0f.xxxx;
        _1579 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _1562 = _1577;
        float3 _1582 = 0.0f.xxx;
        float4 _1580 = 0.0f.xxxx;
        float3 _1589 = 0.0f.xxx;
        for (; _1562.x <= 1.0f; _1582 = _1589, _1582.x = _1589.x + 1.0f, _1579 = _1580, _1562 = _1582)
        {
            float3 _1587 = _1562;
            _1587.y = 0.0f;
            _1589 = _1587;
            _1580 = _1579;
            float3 _1590 = 0.0f.xxx;
            float4 _1592 = 0.0f.xxxx;
            float3 _1601 = 0.0f.xxx;
            for (; _1589.y <= 1.0f; _1590 = _1601, _1590.y = _1601.y + 1.0f, _1589 = _1590, _1580 = _1592)
            {
                float3 _1597 = _1589;
                _1597.z = 0.0f;
                _1592 = _1580;
                _1601 = _1597;
                for (; _1601.z <= 1.0f; )
                {
                    float3 _1606 = _1576 + _1601;
                    uint3 _1611 = (uint3(int3(float3(_1606.x, _1606.y, _1606.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _1612 = _1611.y;
                    uint _1613 = _1611.z;
                    uint _1616 = _1611.x + (_1612 * _1613);
                    uint _1618 = _1612 + (_1613 * _1616);
                    uint _1620 = _1613 + (_1616 * _1618);
                    uint _1622 = _1616 + (_1618 * _1620);
                    uint3 _1623 = _1611;
                    _1623.x = _1622;
                    uint _1625 = _1618 + (_1620 * _1622);
                    _1623.y = _1625;
                    _1623.z = _1620 + (_1622 * _1625);
                    float3 _1637 = _1575 - (_1601 + (normalize(mad(float3(_1623 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _1602 = _1601;
                    _1602.z = _1601.z + 1.0f;
                    _1592 = float4(0.0f, 0.0f, 0.0f, min(_1592.w, dot(_1637, _1637)));
                    _1601 = _1602;
                    continue;
                }
            }
        }
        _1569 = mad(abs(mad(sqrt(_1579.w), 2.0f, -1.0f)), _1566, _1568);
        _1565 = _1564 * 2.0f;
        _1567 = _1566 * 0.5f;
    }
    float _1652 = clamp(lerp(-1.0f, 1.0f, _1466), 0.0f, 1.0f) + clamp(lerp(-1.0f, 1.0f, _1568), 0.0f, 1.0f);
    float _1666 = (abs(Material_Material_PreshaderBuffer[7].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[7].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[7].z : Material_Material_PreshaderBuffer[7].w) : Material_Material_PreshaderBuffer[7].z;
    float _1674 = (abs(_1666 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_1666 >= 1.0f) ? Material_Material_PreshaderBuffer[8].x : Material_Material_PreshaderBuffer[7].z) : Material_Material_PreshaderBuffer[7].z;
    float3 _1684 = float3(min(max((abs(_1674) > 9.9999997473787516355514526367188e-06f) ? ((_1674 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[10].y, 0.0f);
    float2 _1695 = float2(View_View_ViewTilePosition.xy);
    float2 _1696 = float2(_641.xy);
    float2 _1699 = float2(min(max(_1684 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _1700 = _1695 * _1699;
    float2 _1701 = _1699 * _1696;
    float _1706 = _1700.x + _1700.y;
    float _1710 = _1706 * Material_Material_PreshaderBuffer[14].x;
    float _1713 = _1160 - Material_Material_PreshaderBuffer[14].z;
    float3 _1716 = Material_Material_PreshaderBuffer[14].w.xxx;
    float3 _1721 = Material_Material_PreshaderBuffer[15].x.xxx;
    float3 _1725 = MaterialCollection0_MaterialCollection0_Vectors[0].y.xxx;
    float3 _1726 = ((View_View_ViewTilePosition * _1716) * _1721) * _1725;
    float3 _1728 = (((_1716 * _641) * _1721) * _1725) * 0.100000001490116119384765625f.xxx;
    float3 _1739 = float3(_1728.xy, ((_1160 * Material_Material_PreshaderBuffer[15].z).xx + _1728.z.xx).x);
    float3 _1750 = 0.0f.xxx;
    float _1755 = 0.0f;
    _1750 = ((mad(_1726, 0.100000001490116119384765625f.xxx, -floor(mad(_1726, 0.100000001490116119384765625f.xxx, (_1739 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _1739) * 1.0f;
    _1755 = 0.0f;
    float _1753 = 1.0f;
    uint _1757 = 0u;
    [loop]
    for (; _1757 < 6u; )
    {
        float3 _1761 = frac(_1750);
        float _1763 = dot(floor(_1750), float3(19.0f, 47.0f, 101.0f));
        uint3 _1775 = (uint3(int3(int(_1763), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1776 = _1775.y;
        uint _1777 = _1775.z;
        uint _1780 = _1775.x + (_1776 * _1777);
        uint _1782 = _1776 + (_1777 * _1780);
        uint3 _1787 = uint3(0u, 0u, 0u);
        _1787.x = _1780 + (_1782 * (_1777 + (_1780 * _1782)));
        uint3 _1788 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _1801 = (uint3(int3(int(_1763 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1802 = _1801.y;
        uint _1803 = _1801.z;
        uint _1806 = _1801.x + (_1802 * _1803);
        uint _1808 = _1802 + (_1803 * _1806);
        uint3 _1813 = uint3(0u, 0u, 0u);
        _1813.x = _1806 + (_1808 * (_1803 + (_1806 * _1808)));
        uint3 _1826 = (uint3(int3(int(_1763 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1827 = _1826.y;
        uint _1828 = _1826.z;
        uint _1831 = _1826.x + (_1827 * _1828);
        uint _1833 = _1827 + (_1828 * _1831);
        uint3 _1838 = uint3(0u, 0u, 0u);
        _1838.x = _1831 + (_1833 * (_1828 + (_1831 * _1833)));
        uint3 _1851 = (uint3(int3(int(_1763 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1852 = _1851.y;
        uint _1853 = _1851.z;
        uint _1856 = _1851.x + (_1852 * _1853);
        uint _1858 = _1852 + (_1853 * _1856);
        uint3 _1863 = uint3(0u, 0u, 0u);
        _1863.x = _1856 + (_1858 * (_1853 + (_1856 * _1858)));
        uint3 _1876 = (uint3(int3(int(_1763 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1877 = _1876.y;
        uint _1878 = _1876.z;
        uint _1881 = _1876.x + (_1877 * _1878);
        uint _1883 = _1877 + (_1878 * _1881);
        uint3 _1888 = uint3(0u, 0u, 0u);
        _1888.x = _1881 + (_1883 * (_1878 + (_1881 * _1883)));
        uint3 _1901 = (uint3(int3(int(_1763 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1902 = _1901.y;
        uint _1903 = _1901.z;
        uint _1906 = _1901.x + (_1902 * _1903);
        uint _1908 = _1902 + (_1903 * _1906);
        uint3 _1913 = uint3(0u, 0u, 0u);
        _1913.x = _1906 + (_1908 * (_1903 + (_1906 * _1908)));
        uint3 _1926 = (uint3(int3(int(_1763 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1927 = _1926.y;
        uint _1928 = _1926.z;
        uint _1931 = _1926.x + (_1927 * _1928);
        uint _1933 = _1927 + (_1928 * _1931);
        uint3 _1938 = uint3(0u, 0u, 0u);
        _1938.x = _1931 + (_1933 * (_1928 + (_1931 * _1933)));
        uint3 _1951 = (uint3(int3(int(_1763 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1952 = _1951.y;
        uint _1953 = _1951.z;
        uint _1956 = _1951.x + (_1952 * _1953);
        uint _1958 = _1952 + (_1953 * _1956);
        uint3 _1963 = uint3(0u, 0u, 0u);
        _1963.x = _1956 + (_1958 * (_1953 + (_1956 * _1958)));
        float4 _1974 = float4(_1761, 0.0f);
        float4 _1980 = ((_1974 * _1974) * _1974) * mad(_1974, (_1974 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _1981 = _1980.x;
        float _1984 = _1980.y;
        float _1756 = mad(lerp(lerp(lerp(dot(mad(float3((_1787 >> _1788).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1761), dot(mad(float3((_1813 >> _1788).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1761 - float3(1.0f, 0.0f, 0.0f)), _1981), lerp(dot(mad(float3((_1838 >> _1788).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1761 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_1863 >> _1788).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1761 - float3(1.0f, 1.0f, 0.0f)), _1981), _1984), lerp(lerp(dot(mad(float3((_1888 >> _1788).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1761 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_1913 >> _1788).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1761 - float3(1.0f, 0.0f, 1.0f)), _1981), lerp(dot(mad(float3((_1938 >> _1788).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1761 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_1963 >> _1788).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1761 - 1.0f.xxx), _1981), _1984), _1980.z), _1753, _1755);
        _1750 *= 2.0f;
        _1753 *= 0.5f;
        _1755 = _1756;
        _1757++;
        continue;
    }
    float _1994 = lerp(_1160, _1713, clamp(lerp(0.0f, 1.0f, mad(_1755, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _1998 = mad(_1701.x + _1701.y, Material_Material_PreshaderBuffer[14].x, Material_Material_PreshaderBuffer[15].w * _1994);
    float _1999 = floor(_1710);
    float3 _2011 = Material_Material_PreshaderBuffer[17].x.xxx;
    float3 _2016 = Material_Material_PreshaderBuffer[17].y.xxx;
    float3 _2017 = (View_View_ViewTilePosition * _2011) * _2016;
    float3 _2018 = (_2011 * _641) * _2016;
    float3 _2019 = _2018 * 0.0001000000047497451305389404296875f.xxx;
    float2 _2026 = (_1160 * Material_Material_PreshaderBuffer[17].w).xx;
    float3 _2030 = float3(_2019.xy, (_2026 + _2019.z.xx).x);
    float3 _2041 = 0.0f.xxx;
    float _2046 = 0.0f;
    _2041 = ((mad(_2017, 0.0001000000047497451305389404296875f.xxx, -floor(mad(_2017, 0.0001000000047497451305389404296875f.xxx, (_2030 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _2030) * 1.0f;
    _2046 = 0.0f;
    float _2044 = 1.0f;
    uint _2048 = 0u;
    [loop]
    for (; _2048 < 10u; )
    {
        float3 _2052 = frac(_2041);
        float _2054 = dot(floor(_2041), float3(19.0f, 47.0f, 101.0f));
        uint3 _2066 = (uint3(int3(int(_2054), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2067 = _2066.y;
        uint _2068 = _2066.z;
        uint _2071 = _2066.x + (_2067 * _2068);
        uint _2073 = _2067 + (_2068 * _2071);
        uint3 _2078 = uint3(0u, 0u, 0u);
        _2078.x = _2071 + (_2073 * (_2068 + (_2071 * _2073)));
        uint3 _2079 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _2092 = (uint3(int3(int(_2054 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2093 = _2092.y;
        uint _2094 = _2092.z;
        uint _2097 = _2092.x + (_2093 * _2094);
        uint _2099 = _2093 + (_2094 * _2097);
        uint3 _2104 = uint3(0u, 0u, 0u);
        _2104.x = _2097 + (_2099 * (_2094 + (_2097 * _2099)));
        uint3 _2117 = (uint3(int3(int(_2054 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2118 = _2117.y;
        uint _2119 = _2117.z;
        uint _2122 = _2117.x + (_2118 * _2119);
        uint _2124 = _2118 + (_2119 * _2122);
        uint3 _2129 = uint3(0u, 0u, 0u);
        _2129.x = _2122 + (_2124 * (_2119 + (_2122 * _2124)));
        uint3 _2142 = (uint3(int3(int(_2054 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2143 = _2142.y;
        uint _2144 = _2142.z;
        uint _2147 = _2142.x + (_2143 * _2144);
        uint _2149 = _2143 + (_2144 * _2147);
        uint3 _2154 = uint3(0u, 0u, 0u);
        _2154.x = _2147 + (_2149 * (_2144 + (_2147 * _2149)));
        uint3 _2167 = (uint3(int3(int(_2054 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2168 = _2167.y;
        uint _2169 = _2167.z;
        uint _2172 = _2167.x + (_2168 * _2169);
        uint _2174 = _2168 + (_2169 * _2172);
        uint3 _2179 = uint3(0u, 0u, 0u);
        _2179.x = _2172 + (_2174 * (_2169 + (_2172 * _2174)));
        uint3 _2192 = (uint3(int3(int(_2054 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2193 = _2192.y;
        uint _2194 = _2192.z;
        uint _2197 = _2192.x + (_2193 * _2194);
        uint _2199 = _2193 + (_2194 * _2197);
        uint3 _2204 = uint3(0u, 0u, 0u);
        _2204.x = _2197 + (_2199 * (_2194 + (_2197 * _2199)));
        uint3 _2217 = (uint3(int3(int(_2054 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2218 = _2217.y;
        uint _2219 = _2217.z;
        uint _2222 = _2217.x + (_2218 * _2219);
        uint _2224 = _2218 + (_2219 * _2222);
        uint3 _2229 = uint3(0u, 0u, 0u);
        _2229.x = _2222 + (_2224 * (_2219 + (_2222 * _2224)));
        uint3 _2242 = (uint3(int3(int(_2054 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2243 = _2242.y;
        uint _2244 = _2242.z;
        uint _2247 = _2242.x + (_2243 * _2244);
        uint _2249 = _2243 + (_2244 * _2247);
        uint3 _2254 = uint3(0u, 0u, 0u);
        _2254.x = _2247 + (_2249 * (_2244 + (_2247 * _2249)));
        float4 _2265 = float4(_2052, 0.0f);
        float4 _2271 = ((_2265 * _2265) * _2265) * mad(_2265, (_2265 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _2272 = _2271.x;
        float _2275 = _2271.y;
        float _2282 = abs(lerp(lerp(lerp(dot(mad(float3((_2078 >> _2079).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2052), dot(mad(float3((_2104 >> _2079).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2052 - float3(1.0f, 0.0f, 0.0f)), _2272), lerp(dot(mad(float3((_2129 >> _2079).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2052 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_2154 >> _2079).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2052 - float3(1.0f, 1.0f, 0.0f)), _2272), _2275), lerp(lerp(dot(mad(float3((_2179 >> _2079).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2052 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_2204 >> _2079).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2052 - float3(1.0f, 0.0f, 1.0f)), _2272), lerp(dot(mad(float3((_2229 >> _2079).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2052 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_2254 >> _2079).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2052 - 1.0f.xxx), _2272), _2275), _2271.z));
        float _2047 = mad(_2282, _2044, _2046);
        _2041 *= 2.0f;
        _2044 *= 0.5f;
        _2046 = _2047;
        _2048++;
        continue;
    }
    float3 _2284 = _2018 * 0.000200000009499490261077880859375f.xxx;
    float3 _2291 = float3(_2284.xy, (_2026 + _2284.z.xx).x);
    float3 _2302 = 0.0f.xxx;
    float _2307 = 0.0f;
    _2302 = ((mad(_2017, 0.000200000009499490261077880859375f.xxx, -floor(mad(_2017, 0.000200000009499490261077880859375f.xxx, (_2291 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _2291) * 1.0f;
    _2307 = 0.0f;
    float _2305 = 1.0f;
    uint _2309 = 0u;
    [loop]
    for (; _2309 < 10u; )
    {
        float3 _2313 = frac(_2302);
        float _2315 = dot(floor(_2302), float3(19.0f, 47.0f, 101.0f));
        uint3 _2327 = (uint3(int3(int(_2315), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2328 = _2327.y;
        uint _2329 = _2327.z;
        uint _2332 = _2327.x + (_2328 * _2329);
        uint _2334 = _2328 + (_2329 * _2332);
        uint3 _2339 = uint3(0u, 0u, 0u);
        _2339.x = _2332 + (_2334 * (_2329 + (_2332 * _2334)));
        uint3 _2340 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _2353 = (uint3(int3(int(_2315 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2354 = _2353.y;
        uint _2355 = _2353.z;
        uint _2358 = _2353.x + (_2354 * _2355);
        uint _2360 = _2354 + (_2355 * _2358);
        uint3 _2365 = uint3(0u, 0u, 0u);
        _2365.x = _2358 + (_2360 * (_2355 + (_2358 * _2360)));
        uint3 _2378 = (uint3(int3(int(_2315 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2379 = _2378.y;
        uint _2380 = _2378.z;
        uint _2383 = _2378.x + (_2379 * _2380);
        uint _2385 = _2379 + (_2380 * _2383);
        uint3 _2390 = uint3(0u, 0u, 0u);
        _2390.x = _2383 + (_2385 * (_2380 + (_2383 * _2385)));
        uint3 _2403 = (uint3(int3(int(_2315 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2404 = _2403.y;
        uint _2405 = _2403.z;
        uint _2408 = _2403.x + (_2404 * _2405);
        uint _2410 = _2404 + (_2405 * _2408);
        uint3 _2415 = uint3(0u, 0u, 0u);
        _2415.x = _2408 + (_2410 * (_2405 + (_2408 * _2410)));
        uint3 _2428 = (uint3(int3(int(_2315 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2429 = _2428.y;
        uint _2430 = _2428.z;
        uint _2433 = _2428.x + (_2429 * _2430);
        uint _2435 = _2429 + (_2430 * _2433);
        uint3 _2440 = uint3(0u, 0u, 0u);
        _2440.x = _2433 + (_2435 * (_2430 + (_2433 * _2435)));
        uint3 _2453 = (uint3(int3(int(_2315 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2454 = _2453.y;
        uint _2455 = _2453.z;
        uint _2458 = _2453.x + (_2454 * _2455);
        uint _2460 = _2454 + (_2455 * _2458);
        uint3 _2465 = uint3(0u, 0u, 0u);
        _2465.x = _2458 + (_2460 * (_2455 + (_2458 * _2460)));
        uint3 _2478 = (uint3(int3(int(_2315 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2479 = _2478.y;
        uint _2480 = _2478.z;
        uint _2483 = _2478.x + (_2479 * _2480);
        uint _2485 = _2479 + (_2480 * _2483);
        uint3 _2490 = uint3(0u, 0u, 0u);
        _2490.x = _2483 + (_2485 * (_2480 + (_2483 * _2485)));
        uint3 _2503 = (uint3(int3(int(_2315 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2504 = _2503.y;
        uint _2505 = _2503.z;
        uint _2508 = _2503.x + (_2504 * _2505);
        uint _2510 = _2504 + (_2505 * _2508);
        uint3 _2515 = uint3(0u, 0u, 0u);
        _2515.x = _2508 + (_2510 * (_2505 + (_2508 * _2510)));
        float4 _2526 = float4(_2313, 0.0f);
        float4 _2532 = ((_2526 * _2526) * _2526) * mad(_2526, (_2526 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _2533 = _2532.x;
        float _2536 = _2532.y;
        float _2543 = abs(lerp(lerp(lerp(dot(mad(float3((_2339 >> _2340).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2313), dot(mad(float3((_2365 >> _2340).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2313 - float3(1.0f, 0.0f, 0.0f)), _2533), lerp(dot(mad(float3((_2390 >> _2340).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2313 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_2415 >> _2340).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2313 - float3(1.0f, 1.0f, 0.0f)), _2533), _2536), lerp(lerp(dot(mad(float3((_2440 >> _2340).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2313 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_2465 >> _2340).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2313 - float3(1.0f, 0.0f, 1.0f)), _2533), lerp(dot(mad(float3((_2490 >> _2340).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2313 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_2515 >> _2340).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2313 - 1.0f.xxx), _2533), _2536), _2532.z));
        float _2308 = mad(_2543, _2305, _2307);
        _2302 *= 2.0f;
        _2305 *= 0.5f;
        _2307 = _2308;
        _2309++;
        continue;
    }
    float _2555 = lerp(Material_Material_PreshaderBuffer[16].w, Material_Material_PreshaderBuffer[18].z, lerp(0.0f, 1.0f, _2046) * mad(lerp(0.0f, 1.0f, _2307), Material_Material_PreshaderBuffer[18].y, Material_Material_PreshaderBuffer[18].x));
    float2 _2566 = float2(min(max(_1684 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2567 = _1695 * _2566;
    float2 _2568 = _2566 * _1696;
    float _2573 = _2567.x + _2567.y;
    float _2577 = _2573 * Material_Material_PreshaderBuffer[21].y;
    float _2581 = mad(_2568.x + _2568.y, Material_Material_PreshaderBuffer[21].y, Material_Material_PreshaderBuffer[22].x * _1994);
    float _2582 = floor(_2577);
    float _2594 = _2555 * Material_Material_PreshaderBuffer[22].z;
    float2 _2605 = float2(min(max(_1684 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2606 = _1695 * _2605;
    float2 _2607 = _2605 * _1696;
    float _2612 = _2606.x + _2606.y;
    float _2616 = _2612 * Material_Material_PreshaderBuffer[23].y;
    float _2620 = mad(_2607.x + _2607.y, Material_Material_PreshaderBuffer[23].y, Material_Material_PreshaderBuffer[23].w * _1994);
    float _2621 = floor(_2616);
    float _2631 = _2594 * Material_Material_PreshaderBuffer[22].z;
    float2 _2641 = float2(min(max(_1684 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2642 = _1695 * _2641;
    float2 _2643 = _2641 * _1696;
    float _2648 = _2642.x + _2642.y;
    float _2652 = _2648 * Material_Material_PreshaderBuffer[24].z;
    float _2656 = mad(_2643.x + _2643.y, Material_Material_PreshaderBuffer[24].z, Material_Material_PreshaderBuffer[25].x * _1994);
    float _2657 = floor(_2652);
    float _2667 = _2631 * Material_Material_PreshaderBuffer[22].z;
    float _2681 = (abs(Material_Material_PreshaderBuffer[25].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[25].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[25].w : Material_Material_PreshaderBuffer[26].x) : Material_Material_PreshaderBuffer[25].w;
    float _2689 = (abs(_2681 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_2681 >= 1.0f) ? Material_Material_PreshaderBuffer[26].y : Material_Material_PreshaderBuffer[25].w) : Material_Material_PreshaderBuffer[25].w;
    float3 _2699 = float3(min(max((abs(_2689) > 9.9999997473787516355514526367188e-06f) ? ((_2689 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[27].z, 0.0f);
    float2 _2705 = float2(min(max(_2699 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2706 = _1695 * _2705;
    float2 _2707 = _2705 * _1696;
    float _2712 = _2706.x + _2706.y;
    float _2716 = _2712 * Material_Material_PreshaderBuffer[29].w;
    float _2720 = mad(_2707.x + _2707.y, Material_Material_PreshaderBuffer[29].w, Material_Material_PreshaderBuffer[30].z * _1994);
    float _2721 = floor(_2716);
    float _2733 = _2555 * Material_Material_PreshaderBuffer[30].w;
    float2 _2741 = float2(min(max(_2699 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2742 = _1695 * _2741;
    float2 _2743 = _2741 * _1696;
    float _2748 = _2742.x + _2742.y;
    float _2752 = _2748 * Material_Material_PreshaderBuffer[31].y;
    float _2756 = mad(_2743.x + _2743.y, Material_Material_PreshaderBuffer[31].y, Material_Material_PreshaderBuffer[31].w * _1994);
    float _2757 = floor(_2752);
    float _2767 = _2733 * Material_Material_PreshaderBuffer[22].z;
    float2 _2778 = float2(min(max(_2699 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2779 = _1695 * _2778;
    float2 _2780 = _2778 * _1696;
    float _2785 = _2779.x + _2779.y;
    float _2789 = _2785 * Material_Material_PreshaderBuffer[32].y;
    float _2793 = mad(_2780.x + _2780.y, Material_Material_PreshaderBuffer[32].y, Material_Material_PreshaderBuffer[32].w * _1994);
    float _2794 = floor(_2789);
    float _2804 = _2767 * Material_Material_PreshaderBuffer[22].z;
    float2 _2814 = float2(min(max(_2699 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2815 = _1695 * _2814;
    float2 _2816 = _2814 * _1696;
    float _2821 = _2815.x + _2815.y;
    float _2825 = _2821 * Material_Material_PreshaderBuffer[33].y;
    float _2829 = mad(_2816.x + _2816.y, Material_Material_PreshaderBuffer[33].y, Material_Material_PreshaderBuffer[33].w * _1994);
    float _2830 = floor(_2825);
    float _2840 = _2804 * Material_Material_PreshaderBuffer[22].z;
    float3 _2845 = (((float3(_549, _549, sin(mad(mad(_1710, 6.283185482025146484375f, _1999 * (-6.283185482025146484375f)), 2097152.0f, mad(_1998, 6.283185482025146484375f, floor(mad(mad(_1706, Material_Material_PreshaderBuffer[14].x, -_1999), 2097152.0f, _1998)) * (-6.283185482025146484375f)))) * _2555) + float3(_549, _549, sin(mad(mad(_2577, 6.283185482025146484375f, _2582 * (-6.283185482025146484375f)), 2097152.0f, mad(_2581, 6.283185482025146484375f, floor(mad(mad(_2573, Material_Material_PreshaderBuffer[21].y, -_2582), 2097152.0f, _2581)) * (-6.283185482025146484375f)))) * _2594)) + float3(_549, _549, sin(mad(mad(_2616, 6.283185482025146484375f, _2621 * (-6.283185482025146484375f)), 2097152.0f, mad(_2620, 6.283185482025146484375f, floor(mad(mad(_2612, Material_Material_PreshaderBuffer[23].y, -_2621), 2097152.0f, _2620)) * (-6.283185482025146484375f)))) * _2631)) + float3(_549, _549, sin(mad(mad(_2652, 6.283185482025146484375f, _2657 * (-6.283185482025146484375f)), 2097152.0f, mad(_2656, 6.283185482025146484375f, floor(mad(mad(_2648, Material_Material_PreshaderBuffer[24].z, -_2657), 2097152.0f, _2656)) * (-6.283185482025146484375f)))) * _2667)) + (((float3(_549, _549, sin(mad(mad(_2716, 6.283185482025146484375f, _2721 * (-6.283185482025146484375f)), 2097152.0f, mad(_2720, 6.283185482025146484375f, floor(mad(mad(_2712, Material_Material_PreshaderBuffer[29].w, -_2721), 2097152.0f, _2720)) * (-6.283185482025146484375f)))) * _2733) + float3(_549, _549, sin(mad(mad(_2752, 6.283185482025146484375f, _2757 * (-6.283185482025146484375f)), 2097152.0f, mad(_2756, 6.283185482025146484375f, floor(mad(mad(_2748, Material_Material_PreshaderBuffer[31].y, -_2757), 2097152.0f, _2756)) * (-6.283185482025146484375f)))) * _2767)) + float3(_549, _549, sin(mad(mad(_2789, 6.283185482025146484375f, _2794 * (-6.283185482025146484375f)), 2097152.0f, mad(_2793, 6.283185482025146484375f, floor(mad(mad(_2785, Material_Material_PreshaderBuffer[32].y, -_2794), 2097152.0f, _2793)) * (-6.283185482025146484375f)))) * _2804)) + float3(_549, _549, sin(mad(mad(_2825, 6.283185482025146484375f, _2830 * (-6.283185482025146484375f)), 2097152.0f, mad(_2829, 6.283185482025146484375f, floor(mad(mad(_2821, Material_Material_PreshaderBuffer[33].y, -_2830), 2097152.0f, _2829)) * (-6.283185482025146484375f)))) * _2840));
    float _2855 = (abs(Material_Material_PreshaderBuffer[34].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[34].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[34].x : Material_Material_PreshaderBuffer[34].y) : Material_Material_PreshaderBuffer[34].x;
    float _2863 = (abs(_2855 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_2855 >= 1.0f) ? Material_Material_PreshaderBuffer[34].z : Material_Material_PreshaderBuffer[34].x) : Material_Material_PreshaderBuffer[34].x;
    float3 _2873 = float3(min(max((abs(_2863) > 9.9999997473787516355514526367188e-06f) ? ((_2863 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[35].w, 0.0f);
    float2 _2879 = float2(min(max(_2873 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2880 = _1695 * _2879;
    float2 _2881 = _2879 * _1696;
    float _2886 = _2880.x + _2880.y;
    float _2890 = _2886 * Material_Material_PreshaderBuffer[37].z;
    float _2894 = mad(_2881.x + _2881.y, Material_Material_PreshaderBuffer[37].z, Material_Material_PreshaderBuffer[37].w * _1994);
    float _2895 = floor(_2890);
    float2 _2912 = float2(min(max(_2873 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2913 = _1695 * _2912;
    float2 _2914 = _2912 * _1696;
    float _2919 = _2913.x + _2913.y;
    float _2923 = _2919 * Material_Material_PreshaderBuffer[38].y;
    float _2927 = mad(_2914.x + _2914.y, Material_Material_PreshaderBuffer[38].y, Material_Material_PreshaderBuffer[38].z * _1994);
    float _2928 = floor(_2923);
    float2 _2948 = float2(min(max(_2873 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2949 = _1695 * _2948;
    float2 _2950 = _2948 * _1696;
    float _2955 = _2949.x + _2949.y;
    float _2959 = _2955 * Material_Material_PreshaderBuffer[39].x;
    float _2963 = mad(_2950.x + _2950.y, Material_Material_PreshaderBuffer[39].x, Material_Material_PreshaderBuffer[39].y * _1994);
    float _2964 = floor(_2959);
    float2 _2983 = float2(min(max(_2873 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2984 = _1695 * _2983;
    float2 _2985 = _2983 * _1696;
    float _2990 = _2984.x + _2984.y;
    float _2994 = _2990 * Material_Material_PreshaderBuffer[39].w;
    float _2998 = mad(_2985.x + _2985.y, Material_Material_PreshaderBuffer[39].w, Material_Material_PreshaderBuffer[40].x * _1994);
    float _2999 = floor(_2994);
    float3 _3013 = _2845 + (((float3(_549, _549, sin(mad(mad(_2890, 6.283185482025146484375f, _2895 * (-6.283185482025146484375f)), 2097152.0f, mad(_2894, 6.283185482025146484375f, floor(mad(mad(_2886, Material_Material_PreshaderBuffer[37].z, -_2895), 2097152.0f, _2894)) * (-6.283185482025146484375f)))) * _2733) + float3(_549, _549, sin(mad(mad(_2923, 6.283185482025146484375f, _2928 * (-6.283185482025146484375f)), 2097152.0f, mad(_2927, 6.283185482025146484375f, floor(mad(mad(_2919, Material_Material_PreshaderBuffer[38].y, -_2928), 2097152.0f, _2927)) * (-6.283185482025146484375f)))) * _2767)) + float3(_549, _549, sin(mad(mad(_2959, 6.283185482025146484375f, _2964 * (-6.283185482025146484375f)), 2097152.0f, mad(_2963, 6.283185482025146484375f, floor(mad(mad(_2955, Material_Material_PreshaderBuffer[39].x, -_2964), 2097152.0f, _2963)) * (-6.283185482025146484375f)))) * _2804)) + float3(_549, _549, sin(mad(mad(_2994, 6.283185482025146484375f, _2999 * (-6.283185482025146484375f)), 2097152.0f, mad(_2998, 6.283185482025146484375f, floor(mad(mad(_2990, Material_Material_PreshaderBuffer[39].w, -_2999), 2097152.0f, _2998)) * (-6.283185482025146484375f)))) * _2840));
    float _3023 = (abs(Material_Material_PreshaderBuffer[40].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[40].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[40].y : Material_Material_PreshaderBuffer[40].z) : Material_Material_PreshaderBuffer[40].y;
    float _3031 = (abs(_3023 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3023 >= 1.0f) ? Material_Material_PreshaderBuffer[40].w : Material_Material_PreshaderBuffer[40].y) : Material_Material_PreshaderBuffer[40].y;
    float3 _3041 = float3(min(max((abs(_3031) > 9.9999997473787516355514526367188e-06f) ? ((_3031 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[42].x, 0.0f);
    float2 _3047 = float2(min(max(_3041 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3048 = _1695 * _3047;
    float2 _3049 = _3047 * _1696;
    float _3054 = _3048.x + _3048.y;
    float _3058 = _3054 * Material_Material_PreshaderBuffer[43].w;
    float _3062 = mad(_3049.x + _3049.y, Material_Material_PreshaderBuffer[43].w, Material_Material_PreshaderBuffer[44].x * _1994);
    float _3063 = floor(_3058);
    float2 _3080 = float2(min(max(_3041 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3081 = _1695 * _3080;
    float2 _3082 = _3080 * _1696;
    float _3087 = _3081.x + _3081.y;
    float _3091 = _3087 * Material_Material_PreshaderBuffer[44].z;
    float _3095 = mad(_3082.x + _3082.y, Material_Material_PreshaderBuffer[44].z, Material_Material_PreshaderBuffer[44].w * _1994);
    float _3096 = floor(_3091);
    float2 _3116 = float2(min(max(_3041 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3117 = _1695 * _3116;
    float2 _3118 = _3116 * _1696;
    float _3123 = _3117.x + _3117.y;
    float _3127 = _3123 * Material_Material_PreshaderBuffer[45].y;
    float _3131 = mad(_3118.x + _3118.y, Material_Material_PreshaderBuffer[45].y, Material_Material_PreshaderBuffer[45].z * _1994);
    float _3132 = floor(_3127);
    float2 _3151 = float2(min(max(_3041 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3152 = _1695 * _3151;
    float2 _3153 = _3151 * _1696;
    float _3158 = _3152.x + _3152.y;
    float _3162 = _3158 * Material_Material_PreshaderBuffer[46].x;
    float _3166 = mad(_3153.x + _3153.y, Material_Material_PreshaderBuffer[46].x, Material_Material_PreshaderBuffer[46].y * _1994);
    float _3167 = floor(_3162);
    float _3190 = (abs(Material_Material_PreshaderBuffer[46].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[46].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[46].z : Material_Material_PreshaderBuffer[46].w) : Material_Material_PreshaderBuffer[46].z;
    float _3198 = (abs(_3190 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3190 >= 1.0f) ? Material_Material_PreshaderBuffer[47].x : Material_Material_PreshaderBuffer[46].z) : Material_Material_PreshaderBuffer[46].z;
    float3 _3208 = float3(min(max((abs(_3198) > 9.9999997473787516355514526367188e-06f) ? ((_3198 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[48].y, 0.0f);
    float2 _3214 = float2(min(max(_3208 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3215 = _1695 * _3214;
    float2 _3216 = _3214 * _1696;
    float _3221 = _3215.x + _3215.y;
    float _3225 = _3221 * Material_Material_PreshaderBuffer[50].x;
    float _3229 = mad(_3216.x + _3216.y, Material_Material_PreshaderBuffer[50].x, Material_Material_PreshaderBuffer[50].y * _1994);
    float _3230 = floor(_3225);
    float2 _3247 = float2(min(max(_3208 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3248 = _1695 * _3247;
    float2 _3249 = _3247 * _1696;
    float _3254 = _3248.x + _3248.y;
    float _3258 = _3254 * Material_Material_PreshaderBuffer[50].w;
    float _3262 = mad(_3249.x + _3249.y, Material_Material_PreshaderBuffer[50].w, Material_Material_PreshaderBuffer[51].x * _1994);
    float _3263 = floor(_3258);
    float2 _3283 = float2(min(max(_3208 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3284 = _1695 * _3283;
    float2 _3285 = _3283 * _1696;
    float _3290 = _3284.x + _3284.y;
    float _3294 = _3290 * Material_Material_PreshaderBuffer[51].z;
    float _3298 = mad(_3285.x + _3285.y, Material_Material_PreshaderBuffer[51].z, Material_Material_PreshaderBuffer[51].w * _1994);
    float _3299 = floor(_3294);
    float2 _3318 = float2(min(max(_3208 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3319 = _1695 * _3318;
    float2 _3320 = _3318 * _1696;
    float _3325 = _3319.x + _3319.y;
    float _3329 = _3325 * Material_Material_PreshaderBuffer[52].y;
    float _3333 = mad(_3320.x + _3320.y, Material_Material_PreshaderBuffer[52].y, Material_Material_PreshaderBuffer[52].z * _1994);
    float _3334 = floor(_3329);
    float3 _3348 = (((float3(_549, _549, sin(mad(mad(_3058, 6.283185482025146484375f, _3063 * (-6.283185482025146484375f)), 2097152.0f, mad(_3062, 6.283185482025146484375f, floor(mad(mad(_3054, Material_Material_PreshaderBuffer[43].w, -_3063), 2097152.0f, _3062)) * (-6.283185482025146484375f)))) * _2555) + float3(_549, _549, sin(mad(mad(_3091, 6.283185482025146484375f, _3096 * (-6.283185482025146484375f)), 2097152.0f, mad(_3095, 6.283185482025146484375f, floor(mad(mad(_3087, Material_Material_PreshaderBuffer[44].z, -_3096), 2097152.0f, _3095)) * (-6.283185482025146484375f)))) * _2594)) + float3(_549, _549, sin(mad(mad(_3127, 6.283185482025146484375f, _3132 * (-6.283185482025146484375f)), 2097152.0f, mad(_3131, 6.283185482025146484375f, floor(mad(mad(_3123, Material_Material_PreshaderBuffer[45].y, -_3132), 2097152.0f, _3131)) * (-6.283185482025146484375f)))) * _2631)) + float3(_549, _549, sin(mad(mad(_3162, 6.283185482025146484375f, _3167 * (-6.283185482025146484375f)), 2097152.0f, mad(_3166, 6.283185482025146484375f, floor(mad(mad(_3158, Material_Material_PreshaderBuffer[46].x, -_3167), 2097152.0f, _3166)) * (-6.283185482025146484375f)))) * _2667)) + (((float3(_549, _549, sin(mad(mad(_3225, 6.283185482025146484375f, _3230 * (-6.283185482025146484375f)), 2097152.0f, mad(_3229, 6.283185482025146484375f, floor(mad(mad(_3221, Material_Material_PreshaderBuffer[50].x, -_3230), 2097152.0f, _3229)) * (-6.283185482025146484375f)))) * _2733) + float3(_549, _549, sin(mad(mad(_3258, 6.283185482025146484375f, _3263 * (-6.283185482025146484375f)), 2097152.0f, mad(_3262, 6.283185482025146484375f, floor(mad(mad(_3254, Material_Material_PreshaderBuffer[50].w, -_3263), 2097152.0f, _3262)) * (-6.283185482025146484375f)))) * _2767)) + float3(_549, _549, sin(mad(mad(_3294, 6.283185482025146484375f, _3299 * (-6.283185482025146484375f)), 2097152.0f, mad(_3298, 6.283185482025146484375f, floor(mad(mad(_3290, Material_Material_PreshaderBuffer[51].z, -_3299), 2097152.0f, _3298)) * (-6.283185482025146484375f)))) * _2804)) + float3(_549, _549, sin(mad(mad(_3329, 6.283185482025146484375f, _3334 * (-6.283185482025146484375f)), 2097152.0f, mad(_3333, 6.283185482025146484375f, floor(mad(mad(_3325, Material_Material_PreshaderBuffer[52].y, -_3334), 2097152.0f, _3333)) * (-6.283185482025146484375f)))) * _2840));
    float _3358 = (abs(Material_Material_PreshaderBuffer[52].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[52].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[52].w : Material_Material_PreshaderBuffer[53].x) : Material_Material_PreshaderBuffer[52].w;
    float _3366 = (abs(_3358 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3358 >= 1.0f) ? Material_Material_PreshaderBuffer[53].y : Material_Material_PreshaderBuffer[52].w) : Material_Material_PreshaderBuffer[52].w;
    float3 _3376 = float3(min(max((abs(_3366) > 9.9999997473787516355514526367188e-06f) ? ((_3366 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[54].z, 0.0f);
    float2 _3382 = float2(min(max(_3376 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3383 = _1695 * _3382;
    float2 _3384 = _3382 * _1696;
    float _3389 = _3383.x + _3383.y;
    float _3393 = _3389 * Material_Material_PreshaderBuffer[56].y;
    float _3397 = mad(_3384.x + _3384.y, Material_Material_PreshaderBuffer[56].y, Material_Material_PreshaderBuffer[56].z * _1994);
    float _3398 = floor(_3393);
    float2 _3415 = float2(min(max(_3376 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3416 = _1695 * _3415;
    float2 _3417 = _3415 * _1696;
    float _3422 = _3416.x + _3416.y;
    float _3426 = _3422 * Material_Material_PreshaderBuffer[57].x;
    float _3430 = mad(_3417.x + _3417.y, Material_Material_PreshaderBuffer[57].x, Material_Material_PreshaderBuffer[57].y * _1994);
    float _3431 = floor(_3426);
    float2 _3451 = float2(min(max(_3376 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3452 = _1695 * _3451;
    float2 _3453 = _3451 * _1696;
    float _3458 = _3452.x + _3452.y;
    float _3462 = _3458 * Material_Material_PreshaderBuffer[57].w;
    float _3466 = mad(_3453.x + _3453.y, Material_Material_PreshaderBuffer[57].w, Material_Material_PreshaderBuffer[58].x * _1994);
    float _3467 = floor(_3462);
    float2 _3486 = float2(min(max(_3376 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3487 = _1695 * _3486;
    float2 _3488 = _3486 * _1696;
    float _3493 = _3487.x + _3487.y;
    float _3497 = _3493 * Material_Material_PreshaderBuffer[58].z;
    float _3501 = mad(_3488.x + _3488.y, Material_Material_PreshaderBuffer[58].z, Material_Material_PreshaderBuffer[58].w * _1994);
    float _3502 = floor(_3497);
    float3 _3516 = _3348 + (((float3(_549, _549, sin(mad(mad(_3393, 6.283185482025146484375f, _3398 * (-6.283185482025146484375f)), 2097152.0f, mad(_3397, 6.283185482025146484375f, floor(mad(mad(_3389, Material_Material_PreshaderBuffer[56].y, -_3398), 2097152.0f, _3397)) * (-6.283185482025146484375f)))) * _2733) + float3(_549, _549, sin(mad(mad(_3426, 6.283185482025146484375f, _3431 * (-6.283185482025146484375f)), 2097152.0f, mad(_3430, 6.283185482025146484375f, floor(mad(mad(_3422, Material_Material_PreshaderBuffer[57].x, -_3431), 2097152.0f, _3430)) * (-6.283185482025146484375f)))) * _2767)) + float3(_549, _549, sin(mad(mad(_3462, 6.283185482025146484375f, _3467 * (-6.283185482025146484375f)), 2097152.0f, mad(_3466, 6.283185482025146484375f, floor(mad(mad(_3458, Material_Material_PreshaderBuffer[57].w, -_3467), 2097152.0f, _3466)) * (-6.283185482025146484375f)))) * _2804)) + float3(_549, _549, sin(mad(mad(_3497, 6.283185482025146484375f, _3502 * (-6.283185482025146484375f)), 2097152.0f, mad(_3501, 6.283185482025146484375f, floor(mad(mad(_3493, Material_Material_PreshaderBuffer[58].z, -_3502), 2097152.0f, _3501)) * (-6.283185482025146484375f)))) * _2840));
    float3 _3517 = _3013 + _3516;
    float _3530 = (abs(Material_Material_PreshaderBuffer[59].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[59].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[59].y : Material_Material_PreshaderBuffer[59].z) : Material_Material_PreshaderBuffer[59].y;
    float _3538 = (abs(_3530 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3530 >= 1.0f) ? Material_Material_PreshaderBuffer[59].w : Material_Material_PreshaderBuffer[59].y) : Material_Material_PreshaderBuffer[59].y;
    float3 _3548 = float3(min(max((abs(_3538) > 9.9999997473787516355514526367188e-06f) ? ((_3538 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[61].x, 0.0f);
    float2 _3554 = float2(min(max(_3548 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3555 = _1695 * _3554;
    float2 _3556 = _3554 * _1696;
    float _3561 = _3555.x + _3555.y;
    float _3562 = _3556.x + _3556.y;
    float _3565 = Material_Material_PreshaderBuffer[62].y * MaterialCollection0_MaterialCollection0_Vectors[0].y;
    float _3568 = Material_Material_PreshaderBuffer[62].z * _3565;
    float _3569 = 2.0f / _3568;
    float _3570 = _3561 * _3569;
    float3 _3576 = Material_Material_PreshaderBuffer[63].x.xxx;
    float3 _3581 = Material_Material_PreshaderBuffer[63].y.xxx;
    float3 _3582 = (View_View_ViewTilePosition * _3576) * _3581;
    float3 _3585 = (1.0f / MaterialCollection0_MaterialCollection0_Vectors[0].y).xxx;
    float3 _3586 = ((_3576 * _641) * _3581) * _3585;
    float2 _3593 = (_1160 * Material_Material_PreshaderBuffer[63].w).xx;
    float3 _3597 = float3(_3586.xy, (_3593 + _3586.z.xx).x);
    float3 _3608 = 0.0f.xxx;
    float _3613 = 0.0f;
    _3608 = ((mad(_3582, _3585, -floor(mad(_3582, _3585, (_3597 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _3597) * 1.0f;
    _3613 = 0.0f;
    float _3611 = 1.0f;
    uint _3615 = 0u;
    [loop]
    for (; _3615 < 6u; )
    {
        float3 _3619 = frac(_3608);
        float _3621 = dot(floor(_3608), float3(19.0f, 47.0f, 101.0f));
        uint3 _3633 = (uint3(int3(int(_3621), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3634 = _3633.y;
        uint _3635 = _3633.z;
        uint _3638 = _3633.x + (_3634 * _3635);
        uint _3640 = _3634 + (_3635 * _3638);
        uint3 _3645 = uint3(0u, 0u, 0u);
        _3645.x = _3638 + (_3640 * (_3635 + (_3638 * _3640)));
        uint3 _3646 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _3659 = (uint3(int3(int(_3621 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3660 = _3659.y;
        uint _3661 = _3659.z;
        uint _3664 = _3659.x + (_3660 * _3661);
        uint _3666 = _3660 + (_3661 * _3664);
        uint3 _3671 = uint3(0u, 0u, 0u);
        _3671.x = _3664 + (_3666 * (_3661 + (_3664 * _3666)));
        uint3 _3684 = (uint3(int3(int(_3621 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3685 = _3684.y;
        uint _3686 = _3684.z;
        uint _3689 = _3684.x + (_3685 * _3686);
        uint _3691 = _3685 + (_3686 * _3689);
        uint3 _3696 = uint3(0u, 0u, 0u);
        _3696.x = _3689 + (_3691 * (_3686 + (_3689 * _3691)));
        uint3 _3709 = (uint3(int3(int(_3621 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3710 = _3709.y;
        uint _3711 = _3709.z;
        uint _3714 = _3709.x + (_3710 * _3711);
        uint _3716 = _3710 + (_3711 * _3714);
        uint3 _3721 = uint3(0u, 0u, 0u);
        _3721.x = _3714 + (_3716 * (_3711 + (_3714 * _3716)));
        uint3 _3734 = (uint3(int3(int(_3621 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3735 = _3734.y;
        uint _3736 = _3734.z;
        uint _3739 = _3734.x + (_3735 * _3736);
        uint _3741 = _3735 + (_3736 * _3739);
        uint3 _3746 = uint3(0u, 0u, 0u);
        _3746.x = _3739 + (_3741 * (_3736 + (_3739 * _3741)));
        uint3 _3759 = (uint3(int3(int(_3621 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3760 = _3759.y;
        uint _3761 = _3759.z;
        uint _3764 = _3759.x + (_3760 * _3761);
        uint _3766 = _3760 + (_3761 * _3764);
        uint3 _3771 = uint3(0u, 0u, 0u);
        _3771.x = _3764 + (_3766 * (_3761 + (_3764 * _3766)));
        uint3 _3784 = (uint3(int3(int(_3621 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3785 = _3784.y;
        uint _3786 = _3784.z;
        uint _3789 = _3784.x + (_3785 * _3786);
        uint _3791 = _3785 + (_3786 * _3789);
        uint3 _3796 = uint3(0u, 0u, 0u);
        _3796.x = _3789 + (_3791 * (_3786 + (_3789 * _3791)));
        uint3 _3809 = (uint3(int3(int(_3621 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3810 = _3809.y;
        uint _3811 = _3809.z;
        uint _3814 = _3809.x + (_3810 * _3811);
        uint _3816 = _3810 + (_3811 * _3814);
        uint3 _3821 = uint3(0u, 0u, 0u);
        _3821.x = _3814 + (_3816 * (_3811 + (_3814 * _3816)));
        float4 _3832 = float4(_3619, 0.0f);
        float4 _3838 = ((_3832 * _3832) * _3832) * mad(_3832, (_3832 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _3839 = _3838.x;
        float _3842 = _3838.y;
        float _3614 = mad(lerp(lerp(lerp(dot(mad(float3((_3645 >> _3646).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3619), dot(mad(float3((_3671 >> _3646).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3619 - float3(1.0f, 0.0f, 0.0f)), _3839), lerp(dot(mad(float3((_3696 >> _3646).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3619 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_3721 >> _3646).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3619 - float3(1.0f, 1.0f, 0.0f)), _3839), _3842), lerp(lerp(dot(mad(float3((_3746 >> _3646).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3619 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_3771 >> _3646).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3619 - float3(1.0f, 0.0f, 1.0f)), _3839), lerp(dot(mad(float3((_3796 >> _3646).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3619 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_3821 >> _3646).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3619 - 1.0f.xxx), _3839), _3842), _3838.z), _3611, _3613);
        _3608 *= 2.0f;
        _3611 *= 0.5f;
        _3613 = _3614;
        _3615++;
        continue;
    }
    float _3852 = lerp(_1160, _1713, clamp(lerp(0.0f, 1.0f, mad(_3613, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _3854 = mad(_3562, _3569, (_3569 * Material_Material_PreshaderBuffer[62].w) * _3852);
    float _3855 = floor(_3570);
    float _3867 = Material_Material_PreshaderBuffer[64].x * MaterialCollection0_MaterialCollection0_Vectors[0].y;
    float _3872 = mad(Material_Material_PreshaderBuffer[64].x, MaterialCollection0_MaterialCollection0_Vectors[0].y, -(Material_Material_PreshaderBuffer[64].y * MaterialCollection0_MaterialCollection0_Vectors[0].y));
    float3 _3875 = Material_Material_PreshaderBuffer[64].z.xxx;
    float3 _3880 = Material_Material_PreshaderBuffer[64].w.xxx;
    float3 _3881 = (View_View_ViewTilePosition * _3875) * _3880;
    float3 _3883 = ((_3875 * _641) * _3880) * _3585;
    float2 _3890 = (_1160 * Material_Material_PreshaderBuffer[65].y).xx;
    float3 _3894 = float3(_3883.xy, (_3890 + _3883.z.xx).x);
    float3 _3905 = 0.0f.xxx;
    float _3910 = 0.0f;
    _3905 = ((mad(_3881, _3585, -floor(mad(_3881, _3585, (_3894 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _3894) * 1.0f;
    _3910 = 0.0f;
    float _3908 = 1.0f;
    uint _3912 = 0u;
    [loop]
    for (; _3912 < 10u; )
    {
        float3 _3916 = frac(_3905);
        float _3918 = dot(floor(_3905), float3(19.0f, 47.0f, 101.0f));
        uint3 _3930 = (uint3(int3(int(_3918), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3931 = _3930.y;
        uint _3932 = _3930.z;
        uint _3935 = _3930.x + (_3931 * _3932);
        uint _3937 = _3931 + (_3932 * _3935);
        uint3 _3942 = uint3(0u, 0u, 0u);
        _3942.x = _3935 + (_3937 * (_3932 + (_3935 * _3937)));
        uint3 _3943 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _3956 = (uint3(int3(int(_3918 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3957 = _3956.y;
        uint _3958 = _3956.z;
        uint _3961 = _3956.x + (_3957 * _3958);
        uint _3963 = _3957 + (_3958 * _3961);
        uint3 _3968 = uint3(0u, 0u, 0u);
        _3968.x = _3961 + (_3963 * (_3958 + (_3961 * _3963)));
        uint3 _3981 = (uint3(int3(int(_3918 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3982 = _3981.y;
        uint _3983 = _3981.z;
        uint _3986 = _3981.x + (_3982 * _3983);
        uint _3988 = _3982 + (_3983 * _3986);
        uint3 _3993 = uint3(0u, 0u, 0u);
        _3993.x = _3986 + (_3988 * (_3983 + (_3986 * _3988)));
        uint3 _4006 = (uint3(int3(int(_3918 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4007 = _4006.y;
        uint _4008 = _4006.z;
        uint _4011 = _4006.x + (_4007 * _4008);
        uint _4013 = _4007 + (_4008 * _4011);
        uint3 _4018 = uint3(0u, 0u, 0u);
        _4018.x = _4011 + (_4013 * (_4008 + (_4011 * _4013)));
        uint3 _4031 = (uint3(int3(int(_3918 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4032 = _4031.y;
        uint _4033 = _4031.z;
        uint _4036 = _4031.x + (_4032 * _4033);
        uint _4038 = _4032 + (_4033 * _4036);
        uint3 _4043 = uint3(0u, 0u, 0u);
        _4043.x = _4036 + (_4038 * (_4033 + (_4036 * _4038)));
        uint3 _4056 = (uint3(int3(int(_3918 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4057 = _4056.y;
        uint _4058 = _4056.z;
        uint _4061 = _4056.x + (_4057 * _4058);
        uint _4063 = _4057 + (_4058 * _4061);
        uint3 _4068 = uint3(0u, 0u, 0u);
        _4068.x = _4061 + (_4063 * (_4058 + (_4061 * _4063)));
        uint3 _4081 = (uint3(int3(int(_3918 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4082 = _4081.y;
        uint _4083 = _4081.z;
        uint _4086 = _4081.x + (_4082 * _4083);
        uint _4088 = _4082 + (_4083 * _4086);
        uint3 _4093 = uint3(0u, 0u, 0u);
        _4093.x = _4086 + (_4088 * (_4083 + (_4086 * _4088)));
        uint3 _4106 = (uint3(int3(int(_3918 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4107 = _4106.y;
        uint _4108 = _4106.z;
        uint _4111 = _4106.x + (_4107 * _4108);
        uint _4113 = _4107 + (_4108 * _4111);
        uint3 _4118 = uint3(0u, 0u, 0u);
        _4118.x = _4111 + (_4113 * (_4108 + (_4111 * _4113)));
        float4 _4129 = float4(_3916, 0.0f);
        float4 _4135 = ((_4129 * _4129) * _4129) * mad(_4129, (_4129 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _4136 = _4135.x;
        float _4139 = _4135.y;
        float _4146 = abs(lerp(lerp(lerp(dot(mad(float3((_3942 >> _3943).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3916), dot(mad(float3((_3968 >> _3943).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3916 - float3(1.0f, 0.0f, 0.0f)), _4136), lerp(dot(mad(float3((_3993 >> _3943).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3916 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_4018 >> _3943).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3916 - float3(1.0f, 1.0f, 0.0f)), _4136), _4139), lerp(lerp(dot(mad(float3((_4043 >> _3943).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3916 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_4068 >> _3943).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3916 - float3(1.0f, 0.0f, 1.0f)), _4136), lerp(dot(mad(float3((_4093 >> _3943).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3916 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_4118 >> _3943).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3916 - 1.0f.xxx), _4136), _4139), _4135.z));
        float _3911 = mad(_4146, _3908, _3910);
        _3905 *= 2.0f;
        _3908 *= 0.5f;
        _3910 = _3911;
        _3912++;
        continue;
    }
    float3 _4150 = Material_Material_PreshaderBuffer[65].z.xxx;
    float3 _4155 = Material_Material_PreshaderBuffer[65].w.xxx;
    float3 _4156 = (View_View_ViewTilePosition * _4150) * _4155;
    float3 _4158 = ((_4150 * _641) * _4155) * _3585;
    float2 _4165 = (_1160 * Material_Material_PreshaderBuffer[66].y).xx;
    float3 _4169 = float3(_4158.xy, (_4165 + _4158.z.xx).x);
    float3 _4180 = 0.0f.xxx;
    float _4185 = 0.0f;
    _4180 = ((mad(_4156, _3585, -floor(mad(_4156, _3585, (_4169 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _4169) * 1.0f;
    _4185 = 0.0f;
    float _4183 = 1.0f;
    uint _4187 = 0u;
    [loop]
    for (; _4187 < 10u; )
    {
        float3 _4191 = frac(_4180);
        float _4193 = dot(floor(_4180), float3(19.0f, 47.0f, 101.0f));
        uint3 _4205 = (uint3(int3(int(_4193), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4206 = _4205.y;
        uint _4207 = _4205.z;
        uint _4210 = _4205.x + (_4206 * _4207);
        uint _4212 = _4206 + (_4207 * _4210);
        uint3 _4217 = uint3(0u, 0u, 0u);
        _4217.x = _4210 + (_4212 * (_4207 + (_4210 * _4212)));
        uint3 _4218 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _4231 = (uint3(int3(int(_4193 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4232 = _4231.y;
        uint _4233 = _4231.z;
        uint _4236 = _4231.x + (_4232 * _4233);
        uint _4238 = _4232 + (_4233 * _4236);
        uint3 _4243 = uint3(0u, 0u, 0u);
        _4243.x = _4236 + (_4238 * (_4233 + (_4236 * _4238)));
        uint3 _4256 = (uint3(int3(int(_4193 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4257 = _4256.y;
        uint _4258 = _4256.z;
        uint _4261 = _4256.x + (_4257 * _4258);
        uint _4263 = _4257 + (_4258 * _4261);
        uint3 _4268 = uint3(0u, 0u, 0u);
        _4268.x = _4261 + (_4263 * (_4258 + (_4261 * _4263)));
        uint3 _4281 = (uint3(int3(int(_4193 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4282 = _4281.y;
        uint _4283 = _4281.z;
        uint _4286 = _4281.x + (_4282 * _4283);
        uint _4288 = _4282 + (_4283 * _4286);
        uint3 _4293 = uint3(0u, 0u, 0u);
        _4293.x = _4286 + (_4288 * (_4283 + (_4286 * _4288)));
        uint3 _4306 = (uint3(int3(int(_4193 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4307 = _4306.y;
        uint _4308 = _4306.z;
        uint _4311 = _4306.x + (_4307 * _4308);
        uint _4313 = _4307 + (_4308 * _4311);
        uint3 _4318 = uint3(0u, 0u, 0u);
        _4318.x = _4311 + (_4313 * (_4308 + (_4311 * _4313)));
        uint3 _4331 = (uint3(int3(int(_4193 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4332 = _4331.y;
        uint _4333 = _4331.z;
        uint _4336 = _4331.x + (_4332 * _4333);
        uint _4338 = _4332 + (_4333 * _4336);
        uint3 _4343 = uint3(0u, 0u, 0u);
        _4343.x = _4336 + (_4338 * (_4333 + (_4336 * _4338)));
        uint3 _4356 = (uint3(int3(int(_4193 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4357 = _4356.y;
        uint _4358 = _4356.z;
        uint _4361 = _4356.x + (_4357 * _4358);
        uint _4363 = _4357 + (_4358 * _4361);
        uint3 _4368 = uint3(0u, 0u, 0u);
        _4368.x = _4361 + (_4363 * (_4358 + (_4361 * _4363)));
        uint3 _4381 = (uint3(int3(int(_4193 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4382 = _4381.y;
        uint _4383 = _4381.z;
        uint _4386 = _4381.x + (_4382 * _4383);
        uint _4388 = _4382 + (_4383 * _4386);
        uint3 _4393 = uint3(0u, 0u, 0u);
        _4393.x = _4386 + (_4388 * (_4383 + (_4386 * _4388)));
        float4 _4404 = float4(_4191, 0.0f);
        float4 _4410 = ((_4404 * _4404) * _4404) * mad(_4404, (_4404 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _4411 = _4410.x;
        float _4414 = _4410.y;
        float _4421 = abs(lerp(lerp(lerp(dot(mad(float3((_4217 >> _4218).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4191), dot(mad(float3((_4243 >> _4218).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4191 - float3(1.0f, 0.0f, 0.0f)), _4411), lerp(dot(mad(float3((_4268 >> _4218).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4191 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_4293 >> _4218).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4191 - float3(1.0f, 1.0f, 0.0f)), _4411), _4414), lerp(lerp(dot(mad(float3((_4318 >> _4218).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4191 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_4343 >> _4218).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4191 - float3(1.0f, 0.0f, 1.0f)), _4411), lerp(dot(mad(float3((_4368 >> _4218).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4191 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_4393 >> _4218).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4191 - 1.0f.xxx), _4411), _4414), _4410.z));
        float _4186 = mad(_4421, _4183, _4185);
        _4180 *= 2.0f;
        _4183 *= 0.5f;
        _4185 = _4186;
        _4187++;
        continue;
    }
    float _4429 = lerp(_3867, _3872, lerp(0.0f, 1.0f, _3910) * mad(lerp(0.0f, 1.0f, _4185), Material_Material_PreshaderBuffer[66].w, Material_Material_PreshaderBuffer[66].z));
    float2 _4437 = float2(min(max(_3548 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4438 = _1695 * _4437;
    float2 _4439 = _4437 * _1696;
    float _4444 = _4438.x + _4438.y;
    float _4445 = _4439.x + _4439.y;
    float _4448 = _3568 * Material_Material_PreshaderBuffer[20].w;
    float _4449 = 2.0f / _4448;
    float _4450 = _4444 * _4449;
    float _4455 = mad(_4445, _4449, (_4449 * Material_Material_PreshaderBuffer[67].y) * _3852);
    float _4456 = floor(_4450);
    float _4466 = _4429 * Material_Material_PreshaderBuffer[22].z;
    float2 _4477 = float2(min(max(_3548 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4478 = _1695 * _4477;
    float2 _4479 = _4477 * _1696;
    float _4484 = _4478.x + _4478.y;
    float _4485 = _4479.x + _4479.y;
    float _4486 = _4448 * Material_Material_PreshaderBuffer[20].w;
    float _4487 = 2.0f / _4486;
    float _4488 = _4484 * _4487;
    float _4493 = mad(_4485, _4487, (_4487 * Material_Material_PreshaderBuffer[67].w) * _3852);
    float _4494 = floor(_4488);
    float _4504 = _4466 * Material_Material_PreshaderBuffer[22].z;
    float2 _4514 = float2(min(max(_3548 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4515 = _1695 * _4514;
    float2 _4516 = _4514 * _1696;
    float _4521 = _4515.x + _4515.y;
    float _4522 = _4516.x + _4516.y;
    float _4524 = 2.0f / (_4486 * Material_Material_PreshaderBuffer[20].w);
    float _4525 = _4521 * _4524;
    float _4530 = mad(_4522, _4524, (_4524 * Material_Material_PreshaderBuffer[68].y) * _3852);
    float _4531 = floor(_4525);
    float _4555 = (abs(Material_Material_PreshaderBuffer[69].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[69].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[69].x : Material_Material_PreshaderBuffer[69].y) : Material_Material_PreshaderBuffer[69].x;
    float _4563 = (abs(_4555 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_4555 >= 1.0f) ? Material_Material_PreshaderBuffer[69].z : Material_Material_PreshaderBuffer[69].x) : Material_Material_PreshaderBuffer[69].x;
    float3 _4573 = float3(min(max((abs(_4563) > 9.9999997473787516355514526367188e-06f) ? ((_4563 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[70].w, 0.0f);
    float2 _4579 = float2(min(max(_4573 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4580 = _1695 * _4579;
    float2 _4581 = _4579 * _1696;
    float _4586 = _4580.x + _4580.y;
    float _4587 = _4581.x + _4581.y;
    float _4590 = _3565 * Material_Material_PreshaderBuffer[28].w;
    float _4593 = Material_Material_PreshaderBuffer[72].x * _4590;
    float _4594 = 2.0f / _4593;
    float _4595 = _4586 * _4594;
    float _4600 = mad(_4587, _4594, (_4594 * Material_Material_PreshaderBuffer[72].y) * _3852);
    float _4601 = floor(_4595);
    float _4611 = _4429 * Material_Material_PreshaderBuffer[30].w;
    float2 _4619 = float2(min(max(_4573 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4620 = _1695 * _4619;
    float2 _4621 = _4619 * _1696;
    float _4626 = _4620.x + _4620.y;
    float _4627 = _4621.x + _4621.y;
    float _4628 = _4593 * Material_Material_PreshaderBuffer[20].w;
    float _4629 = 2.0f / _4628;
    float _4630 = _4626 * _4629;
    float _4635 = mad(_4627, _4629, (_4629 * Material_Material_PreshaderBuffer[72].z) * _3852);
    float _4636 = floor(_4630);
    float _4646 = _4611 * Material_Material_PreshaderBuffer[22].z;
    float2 _4657 = float2(min(max(_4573 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4658 = _1695 * _4657;
    float2 _4659 = _4657 * _1696;
    float _4664 = _4658.x + _4658.y;
    float _4665 = _4659.x + _4659.y;
    float _4666 = _4628 * Material_Material_PreshaderBuffer[20].w;
    float _4667 = 2.0f / _4666;
    float _4668 = _4664 * _4667;
    float _4673 = mad(_4665, _4667, (_4667 * Material_Material_PreshaderBuffer[72].w) * _3852);
    float _4674 = floor(_4668);
    float _4684 = _4646 * Material_Material_PreshaderBuffer[22].z;
    float2 _4694 = float2(min(max(_4573 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4695 = _1695 * _4694;
    float2 _4696 = _4694 * _1696;
    float _4701 = _4695.x + _4695.y;
    float _4702 = _4696.x + _4696.y;
    float _4704 = 2.0f / (_4666 * Material_Material_PreshaderBuffer[20].w);
    float _4705 = _4701 * _4704;
    float _4710 = mad(_4702, _4704, (_4704 * Material_Material_PreshaderBuffer[73].x) * _3852);
    float _4711 = floor(_4705);
    float _4721 = _4684 * Material_Material_PreshaderBuffer[22].z;
    float3 _4726 = (((float3(_549, _549, sin(mad(mad(_3570, 6.283185482025146484375f, _3855 * (-6.283185482025146484375f)), 2097152.0f, mad(_3854, 6.283185482025146484375f, floor(mad(mad(_3561, _3569, -_3855), 2097152.0f, _3854)) * (-6.283185482025146484375f)))) * _4429) + float3(_549, _549, sin(mad(mad(_4450, 6.283185482025146484375f, _4456 * (-6.283185482025146484375f)), 2097152.0f, mad(_4455, 6.283185482025146484375f, floor(mad(mad(_4444, _4449, -_4456), 2097152.0f, _4455)) * (-6.283185482025146484375f)))) * _4466)) + float3(_549, _549, sin(mad(mad(_4488, 6.283185482025146484375f, _4494 * (-6.283185482025146484375f)), 2097152.0f, mad(_4493, 6.283185482025146484375f, floor(mad(mad(_4484, _4487, -_4494), 2097152.0f, _4493)) * (-6.283185482025146484375f)))) * _4504)) + float3(_549, _549, sin(mad(mad(_4525, 6.283185482025146484375f, _4531 * (-6.283185482025146484375f)), 2097152.0f, mad(_4530, 6.283185482025146484375f, floor(mad(mad(_4521, _4524, -_4531), 2097152.0f, _4530)) * (-6.283185482025146484375f)))) * (_4504 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_549, _549, sin(mad(mad(_4595, 6.283185482025146484375f, _4601 * (-6.283185482025146484375f)), 2097152.0f, mad(_4600, 6.283185482025146484375f, floor(mad(mad(_4586, _4594, -_4601), 2097152.0f, _4600)) * (-6.283185482025146484375f)))) * _4611) + float3(_549, _549, sin(mad(mad(_4630, 6.283185482025146484375f, _4636 * (-6.283185482025146484375f)), 2097152.0f, mad(_4635, 6.283185482025146484375f, floor(mad(mad(_4626, _4629, -_4636), 2097152.0f, _4635)) * (-6.283185482025146484375f)))) * _4646)) + float3(_549, _549, sin(mad(mad(_4668, 6.283185482025146484375f, _4674 * (-6.283185482025146484375f)), 2097152.0f, mad(_4673, 6.283185482025146484375f, floor(mad(mad(_4664, _4667, -_4674), 2097152.0f, _4673)) * (-6.283185482025146484375f)))) * _4684)) + float3(_549, _549, sin(mad(mad(_4705, 6.283185482025146484375f, _4711 * (-6.283185482025146484375f)), 2097152.0f, mad(_4710, 6.283185482025146484375f, floor(mad(mad(_4701, _4704, -_4711), 2097152.0f, _4710)) * (-6.283185482025146484375f)))) * _4721));
    float _4736 = (abs(Material_Material_PreshaderBuffer[73].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[73].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[73].y : Material_Material_PreshaderBuffer[73].z) : Material_Material_PreshaderBuffer[73].y;
    float _4744 = (abs(_4736 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_4736 >= 1.0f) ? Material_Material_PreshaderBuffer[73].w : Material_Material_PreshaderBuffer[73].y) : Material_Material_PreshaderBuffer[73].y;
    float3 _4754 = float3(min(max((abs(_4744) > 9.9999997473787516355514526367188e-06f) ? ((_4744 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[75].x, 0.0f);
    float2 _4760 = float2(min(max(_4754 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4761 = _1695 * _4760;
    float2 _4762 = _4760 * _1696;
    float _4767 = _4761.x + _4761.y;
    float _4768 = _4762.x + _4762.y;
    float _4771 = Material_Material_PreshaderBuffer[76].y * _4590;
    float _4772 = 2.0f / _4771;
    float _4773 = _4767 * _4772;
    float _4776 = mad(_4768, _4772, (_4772 * Material_Material_PreshaderBuffer[72].y) * _3852);
    float _4777 = floor(_4773);
    float2 _4794 = float2(min(max(_4754 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4795 = _1695 * _4794;
    float2 _4796 = _4794 * _1696;
    float _4801 = _4795.x + _4795.y;
    float _4802 = _4796.x + _4796.y;
    float _4803 = _4771 * Material_Material_PreshaderBuffer[20].w;
    float _4804 = 2.0f / _4803;
    float _4805 = _4801 * _4804;
    float _4808 = mad(_4802, _4804, (_4804 * Material_Material_PreshaderBuffer[72].z) * _3852);
    float _4809 = floor(_4805);
    float2 _4829 = float2(min(max(_4754 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4830 = _1695 * _4829;
    float2 _4831 = _4829 * _1696;
    float _4836 = _4830.x + _4830.y;
    float _4837 = _4831.x + _4831.y;
    float _4838 = _4803 * Material_Material_PreshaderBuffer[20].w;
    float _4839 = 2.0f / _4838;
    float _4840 = _4836 * _4839;
    float _4843 = mad(_4837, _4839, (_4839 * Material_Material_PreshaderBuffer[72].w) * _3852);
    float _4844 = floor(_4840);
    float2 _4863 = float2(min(max(_4754 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4864 = _1695 * _4863;
    float2 _4865 = _4863 * _1696;
    float _4870 = _4864.x + _4864.y;
    float _4871 = _4865.x + _4865.y;
    float _4873 = 2.0f / (_4838 * Material_Material_PreshaderBuffer[20].w);
    float _4874 = _4870 * _4873;
    float _4877 = mad(_4871, _4873, (_4873 * Material_Material_PreshaderBuffer[73].x) * _3852);
    float _4878 = floor(_4874);
    float3 _4892 = _4726 + (((float3(_549, _549, sin(mad(mad(_4773, 6.283185482025146484375f, _4777 * (-6.283185482025146484375f)), 2097152.0f, mad(_4776, 6.283185482025146484375f, floor(mad(mad(_4767, _4772, -_4777), 2097152.0f, _4776)) * (-6.283185482025146484375f)))) * _4611) + float3(_549, _549, sin(mad(mad(_4805, 6.283185482025146484375f, _4809 * (-6.283185482025146484375f)), 2097152.0f, mad(_4808, 6.283185482025146484375f, floor(mad(mad(_4801, _4804, -_4809), 2097152.0f, _4808)) * (-6.283185482025146484375f)))) * _4646)) + float3(_549, _549, sin(mad(mad(_4840, 6.283185482025146484375f, _4844 * (-6.283185482025146484375f)), 2097152.0f, mad(_4843, 6.283185482025146484375f, floor(mad(mad(_4836, _4839, -_4844), 2097152.0f, _4843)) * (-6.283185482025146484375f)))) * _4684)) + float3(_549, _549, sin(mad(mad(_4874, 6.283185482025146484375f, _4878 * (-6.283185482025146484375f)), 2097152.0f, mad(_4877, 6.283185482025146484375f, floor(mad(mad(_4870, _4873, -_4878), 2097152.0f, _4877)) * (-6.283185482025146484375f)))) * _4721));
    float _4893 = _3565 * 0.800000011920928955078125f;
    float _4894 = Material_Material_PreshaderBuffer[62].z * _4893;
    float _4895 = 2.0f / _4894;
    float _4896 = _3561 * _4895;
    float _4901 = mad(_3562, _4895, (_4895 * Material_Material_PreshaderBuffer[76].z) * _3852);
    float _4902 = floor(_4896);
    float _4912 = _4429 * 0.800000011920928955078125f;
    float _4915 = _4894 * Material_Material_PreshaderBuffer[20].w;
    float _4916 = 2.0f / _4915;
    float _4917 = _4444 * _4916;
    float _4922 = mad(_4445, _4916, (_4916 * Material_Material_PreshaderBuffer[76].w) * _3852);
    float _4923 = floor(_4917);
    float _4933 = _4912 * Material_Material_PreshaderBuffer[22].z;
    float _4939 = _4915 * Material_Material_PreshaderBuffer[20].w;
    float _4940 = 2.0f / _4939;
    float _4941 = _4484 * _4940;
    float _4946 = mad(_4485, _4940, (_4940 * Material_Material_PreshaderBuffer[77].x) * _3852);
    float _4947 = floor(_4941);
    float _4957 = _4933 * Material_Material_PreshaderBuffer[22].z;
    float _4963 = 2.0f / (_4939 * Material_Material_PreshaderBuffer[20].w);
    float _4964 = _4521 * _4963;
    float _4969 = mad(_4522, _4963, (_4963 * Material_Material_PreshaderBuffer[77].y) * _3852);
    float _4970 = floor(_4964);
    float _4980 = _4957 * Material_Material_PreshaderBuffer[22].z;
    float _4985 = _4893 * Material_Material_PreshaderBuffer[28].w;
    float _4986 = Material_Material_PreshaderBuffer[72].x * _4985;
    float _4987 = 2.0f / _4986;
    float _4988 = _4586 * _4987;
    float _4993 = mad(_4587, _4987, (_4987 * Material_Material_PreshaderBuffer[77].z) * _3852);
    float _4994 = floor(_4988);
    float _5004 = _4912 * Material_Material_PreshaderBuffer[30].w;
    float _5007 = _4986 * Material_Material_PreshaderBuffer[20].w;
    float _5008 = 2.0f / _5007;
    float _5009 = _4626 * _5008;
    float _5014 = mad(_4627, _5008, (_5008 * Material_Material_PreshaderBuffer[77].w) * _3852);
    float _5015 = floor(_5009);
    float _5025 = _5004 * Material_Material_PreshaderBuffer[22].z;
    float _5031 = _5007 * Material_Material_PreshaderBuffer[20].w;
    float _5032 = 2.0f / _5031;
    float _5033 = _4664 * _5032;
    float _5038 = mad(_4665, _5032, (_5032 * Material_Material_PreshaderBuffer[78].x) * _3852);
    float _5039 = floor(_5033);
    float _5049 = _5025 * Material_Material_PreshaderBuffer[22].z;
    float _5055 = 2.0f / (_5031 * Material_Material_PreshaderBuffer[20].w);
    float _5056 = _4701 * _5055;
    float _5061 = mad(_4702, _5055, (_5055 * Material_Material_PreshaderBuffer[78].y) * _3852);
    float _5062 = floor(_5056);
    float _5072 = _5049 * Material_Material_PreshaderBuffer[22].z;
    float3 _5077 = (((float3(_549, _549, sin(mad(mad(_4896, 6.283185482025146484375f, _4902 * (-6.283185482025146484375f)), 2097152.0f, mad(_4901, 6.283185482025146484375f, floor(mad(mad(_3561, _4895, -_4902), 2097152.0f, _4901)) * (-6.283185482025146484375f)))) * _4912) + float3(_549, _549, sin(mad(mad(_4917, 6.283185482025146484375f, _4923 * (-6.283185482025146484375f)), 2097152.0f, mad(_4922, 6.283185482025146484375f, floor(mad(mad(_4444, _4916, -_4923), 2097152.0f, _4922)) * (-6.283185482025146484375f)))) * _4933)) + float3(_549, _549, sin(mad(mad(_4941, 6.283185482025146484375f, _4947 * (-6.283185482025146484375f)), 2097152.0f, mad(_4946, 6.283185482025146484375f, floor(mad(mad(_4484, _4940, -_4947), 2097152.0f, _4946)) * (-6.283185482025146484375f)))) * _4957)) + float3(_549, _549, sin(mad(mad(_4964, 6.283185482025146484375f, _4970 * (-6.283185482025146484375f)), 2097152.0f, mad(_4969, 6.283185482025146484375f, floor(mad(mad(_4521, _4963, -_4970), 2097152.0f, _4969)) * (-6.283185482025146484375f)))) * _4980)) + (((float3(_549, _549, sin(mad(mad(_4988, 6.283185482025146484375f, _4994 * (-6.283185482025146484375f)), 2097152.0f, mad(_4993, 6.283185482025146484375f, floor(mad(mad(_4586, _4987, -_4994), 2097152.0f, _4993)) * (-6.283185482025146484375f)))) * _5004) + float3(_549, _549, sin(mad(mad(_5009, 6.283185482025146484375f, _5015 * (-6.283185482025146484375f)), 2097152.0f, mad(_5014, 6.283185482025146484375f, floor(mad(mad(_4626, _5008, -_5015), 2097152.0f, _5014)) * (-6.283185482025146484375f)))) * _5025)) + float3(_549, _549, sin(mad(mad(_5033, 6.283185482025146484375f, _5039 * (-6.283185482025146484375f)), 2097152.0f, mad(_5038, 6.283185482025146484375f, floor(mad(mad(_4664, _5032, -_5039), 2097152.0f, _5038)) * (-6.283185482025146484375f)))) * _5049)) + float3(_549, _549, sin(mad(mad(_5056, 6.283185482025146484375f, _5062 * (-6.283185482025146484375f)), 2097152.0f, mad(_5061, 6.283185482025146484375f, floor(mad(mad(_4701, _5055, -_5062), 2097152.0f, _5061)) * (-6.283185482025146484375f)))) * _5072));
    float _5078 = Material_Material_PreshaderBuffer[76].y * _4985;
    float _5079 = 2.0f / _5078;
    float _5080 = _4767 * _5079;
    float _5083 = mad(_4768, _5079, (_5079 * Material_Material_PreshaderBuffer[77].z) * _3852);
    float _5084 = floor(_5080);
    float _5096 = _5078 * Material_Material_PreshaderBuffer[20].w;
    float _5097 = 2.0f / _5096;
    float _5098 = _4801 * _5097;
    float _5101 = mad(_4802, _5097, (_5097 * Material_Material_PreshaderBuffer[77].w) * _3852);
    float _5102 = floor(_5098);
    float _5117 = _5096 * Material_Material_PreshaderBuffer[20].w;
    float _5118 = 2.0f / _5117;
    float _5119 = _4836 * _5118;
    float _5122 = mad(_4837, _5118, (_5118 * Material_Material_PreshaderBuffer[78].x) * _3852);
    float _5123 = floor(_5119);
    float _5138 = 2.0f / (_5117 * Material_Material_PreshaderBuffer[20].w);
    float _5139 = _4870 * _5138;
    float _5142 = mad(_4871, _5138, (_5138 * Material_Material_PreshaderBuffer[78].y) * _3852);
    float _5143 = floor(_5139);
    float3 _5157 = _5077 + (((float3(_549, _549, sin(mad(mad(_5080, 6.283185482025146484375f, _5084 * (-6.283185482025146484375f)), 2097152.0f, mad(_5083, 6.283185482025146484375f, floor(mad(mad(_4767, _5079, -_5084), 2097152.0f, _5083)) * (-6.283185482025146484375f)))) * _5004) + float3(_549, _549, sin(mad(mad(_5098, 6.283185482025146484375f, _5102 * (-6.283185482025146484375f)), 2097152.0f, mad(_5101, 6.283185482025146484375f, floor(mad(mad(_4801, _5097, -_5102), 2097152.0f, _5101)) * (-6.283185482025146484375f)))) * _5025)) + float3(_549, _549, sin(mad(mad(_5119, 6.283185482025146484375f, _5123 * (-6.283185482025146484375f)), 2097152.0f, mad(_5122, 6.283185482025146484375f, floor(mad(mad(_4836, _5118, -_5123), 2097152.0f, _5122)) * (-6.283185482025146484375f)))) * _5049)) + float3(_549, _549, sin(mad(mad(_5139, 6.283185482025146484375f, _5143 * (-6.283185482025146484375f)), 2097152.0f, mad(_5142, 6.283185482025146484375f, floor(mad(mad(_4870, _5138, -_5143), 2097152.0f, _5142)) * (-6.283185482025146484375f)))) * _5072));
    float _5158 = _3565 * 4.0f;
    float _5159 = Material_Material_PreshaderBuffer[62].z * _5158;
    float _5160 = 2.0f / _5159;
    float _5161 = _3561 * _5160;
    float _5166 = mad(_3562, _5160, (_5160 * Material_Material_PreshaderBuffer[78].z) * _3852);
    float _5167 = floor(_5161);
    float _5179 = _5159 * Material_Material_PreshaderBuffer[20].w;
    float _5180 = 2.0f / _5179;
    float _5181 = _4444 * _5180;
    float _5186 = mad(_4445, _5180, (_5180 * Material_Material_PreshaderBuffer[78].w) * _3852);
    float _5187 = floor(_5181);
    float _5202 = _5179 * Material_Material_PreshaderBuffer[20].w;
    float _5203 = 2.0f / _5202;
    float _5204 = _4484 * _5203;
    float _5209 = mad(_4485, _5203, (_5203 * Material_Material_PreshaderBuffer[79].x) * _3852);
    float _5210 = floor(_5204);
    float _5225 = 2.0f / (_5202 * Material_Material_PreshaderBuffer[20].w);
    float _5226 = _4521 * _5225;
    float _5231 = mad(_4522, _5225, (_5225 * Material_Material_PreshaderBuffer[79].y) * _3852);
    float _5232 = floor(_5226);
    float _5246 = _5158 * Material_Material_PreshaderBuffer[28].w;
    float _5247 = Material_Material_PreshaderBuffer[72].x * _5246;
    float _5248 = 2.0f / _5247;
    float _5249 = _4586 * _5248;
    float _5254 = mad(_4587, _5248, (_5248 * Material_Material_PreshaderBuffer[79].z) * _3852);
    float _5255 = floor(_5249);
    float _5267 = _5247 * Material_Material_PreshaderBuffer[20].w;
    float _5268 = 2.0f / _5267;
    float _5269 = _4626 * _5268;
    float _5274 = mad(_4627, _5268, (_5268 * Material_Material_PreshaderBuffer[79].w) * _3852);
    float _5275 = floor(_5269);
    float _5290 = _5267 * Material_Material_PreshaderBuffer[20].w;
    float _5291 = 2.0f / _5290;
    float _5292 = _4664 * _5291;
    float _5297 = mad(_4665, _5291, (_5291 * Material_Material_PreshaderBuffer[80].x) * _3852);
    float _5298 = floor(_5292);
    float _5313 = 2.0f / (_5290 * Material_Material_PreshaderBuffer[20].w);
    float _5314 = _4701 * _5313;
    float _5319 = mad(_4702, _5313, (_5313 * Material_Material_PreshaderBuffer[80].y) * _3852);
    float _5320 = floor(_5314);
    float3 _5334 = (((float3(_549, _549, sin(mad(mad(_5161, 6.283185482025146484375f, _5167 * (-6.283185482025146484375f)), 2097152.0f, mad(_5166, 6.283185482025146484375f, floor(mad(mad(_3561, _5160, -_5167), 2097152.0f, _5166)) * (-6.283185482025146484375f)))) * _4912) + float3(_549, _549, sin(mad(mad(_5181, 6.283185482025146484375f, _5187 * (-6.283185482025146484375f)), 2097152.0f, mad(_5186, 6.283185482025146484375f, floor(mad(mad(_4444, _5180, -_5187), 2097152.0f, _5186)) * (-6.283185482025146484375f)))) * _4933)) + float3(_549, _549, sin(mad(mad(_5204, 6.283185482025146484375f, _5210 * (-6.283185482025146484375f)), 2097152.0f, mad(_5209, 6.283185482025146484375f, floor(mad(mad(_4484, _5203, -_5210), 2097152.0f, _5209)) * (-6.283185482025146484375f)))) * _4957)) + float3(_549, _549, sin(mad(mad(_5226, 6.283185482025146484375f, _5232 * (-6.283185482025146484375f)), 2097152.0f, mad(_5231, 6.283185482025146484375f, floor(mad(mad(_4521, _5225, -_5232), 2097152.0f, _5231)) * (-6.283185482025146484375f)))) * _4980)) + (((float3(_549, _549, sin(mad(mad(_5249, 6.283185482025146484375f, _5255 * (-6.283185482025146484375f)), 2097152.0f, mad(_5254, 6.283185482025146484375f, floor(mad(mad(_4586, _5248, -_5255), 2097152.0f, _5254)) * (-6.283185482025146484375f)))) * _5004) + float3(_549, _549, sin(mad(mad(_5269, 6.283185482025146484375f, _5275 * (-6.283185482025146484375f)), 2097152.0f, mad(_5274, 6.283185482025146484375f, floor(mad(mad(_4626, _5268, -_5275), 2097152.0f, _5274)) * (-6.283185482025146484375f)))) * _5025)) + float3(_549, _549, sin(mad(mad(_5292, 6.283185482025146484375f, _5298 * (-6.283185482025146484375f)), 2097152.0f, mad(_5297, 6.283185482025146484375f, floor(mad(mad(_4664, _5291, -_5298), 2097152.0f, _5297)) * (-6.283185482025146484375f)))) * _5049)) + float3(_549, _549, sin(mad(mad(_5314, 6.283185482025146484375f, _5320 * (-6.283185482025146484375f)), 2097152.0f, mad(_5319, 6.283185482025146484375f, floor(mad(mad(_4701, _5313, -_5320), 2097152.0f, _5319)) * (-6.283185482025146484375f)))) * _5072));
    float _5335 = Material_Material_PreshaderBuffer[76].y * _5246;
    float _5336 = 2.0f / _5335;
    float _5337 = _4767 * _5336;
    float _5340 = mad(_4768, _5336, (_5336 * Material_Material_PreshaderBuffer[79].z) * _3852);
    float _5341 = floor(_5337);
    float _5353 = _5335 * Material_Material_PreshaderBuffer[20].w;
    float _5354 = 2.0f / _5353;
    float _5355 = _4801 * _5354;
    float _5358 = mad(_4802, _5354, (_5354 * Material_Material_PreshaderBuffer[79].w) * _3852);
    float _5359 = floor(_5355);
    float _5374 = _5353 * Material_Material_PreshaderBuffer[20].w;
    float _5375 = 2.0f / _5374;
    float _5376 = _4836 * _5375;
    float _5379 = mad(_4837, _5375, (_5375 * Material_Material_PreshaderBuffer[80].x) * _3852);
    float _5380 = floor(_5376);
    float _5395 = 2.0f / (_5374 * Material_Material_PreshaderBuffer[20].w);
    float _5396 = _4870 * _5395;
    float _5399 = mad(_4871, _5395, (_5395 * Material_Material_PreshaderBuffer[80].y) * _3852);
    float _5400 = floor(_5396);
    float3 _5414 = _5334 + (((float3(_549, _549, sin(mad(mad(_5337, 6.283185482025146484375f, _5341 * (-6.283185482025146484375f)), 2097152.0f, mad(_5340, 6.283185482025146484375f, floor(mad(mad(_4767, _5336, -_5341), 2097152.0f, _5340)) * (-6.283185482025146484375f)))) * _5004) + float3(_549, _549, sin(mad(mad(_5355, 6.283185482025146484375f, _5359 * (-6.283185482025146484375f)), 2097152.0f, mad(_5358, 6.283185482025146484375f, floor(mad(mad(_4801, _5354, -_5359), 2097152.0f, _5358)) * (-6.283185482025146484375f)))) * _5025)) + float3(_549, _549, sin(mad(mad(_5376, 6.283185482025146484375f, _5380 * (-6.283185482025146484375f)), 2097152.0f, mad(_5379, 6.283185482025146484375f, floor(mad(mad(_4836, _5375, -_5380), 2097152.0f, _5379)) * (-6.283185482025146484375f)))) * _5049)) + float3(_549, _549, sin(mad(mad(_5396, 6.283185482025146484375f, _5400 * (-6.283185482025146484375f)), 2097152.0f, mad(_5399, 6.283185482025146484375f, floor(mad(mad(_4870, _5395, -_5400), 2097152.0f, _5399)) * (-6.283185482025146484375f)))) * _5072));
    float _5415 = _3565 * 0.75f;
    float _5416 = Material_Material_PreshaderBuffer[62].z * _5415;
    float _5417 = 2.0f / _5416;
    float _5418 = _3561 * _5417;
    float _5421 = mad(_3562, _5417, (_5417 * Material_Material_PreshaderBuffer[76].z) * _3852);
    float _5422 = floor(_5418);
    float _5432 = _4429 * 0.5f;
    float _5435 = _5416 * Material_Material_PreshaderBuffer[20].w;
    float _5436 = 2.0f / _5435;
    float _5437 = _4444 * _5436;
    float _5440 = mad(_4445, _5436, (_5436 * Material_Material_PreshaderBuffer[76].w) * _3852);
    float _5441 = floor(_5437);
    float _5451 = _5432 * Material_Material_PreshaderBuffer[22].z;
    float _5457 = _5435 * Material_Material_PreshaderBuffer[20].w;
    float _5458 = 2.0f / _5457;
    float _5459 = _4484 * _5458;
    float _5462 = mad(_4485, _5458, (_5458 * Material_Material_PreshaderBuffer[77].x) * _3852);
    float _5463 = floor(_5459);
    float _5473 = _5451 * Material_Material_PreshaderBuffer[22].z;
    float _5479 = 2.0f / (_5457 * Material_Material_PreshaderBuffer[20].w);
    float _5480 = _4521 * _5479;
    float _5483 = mad(_4522, _5479, (_5479 * Material_Material_PreshaderBuffer[77].y) * _3852);
    float _5484 = floor(_5480);
    float _5499 = _5415 * Material_Material_PreshaderBuffer[28].w;
    float _5500 = Material_Material_PreshaderBuffer[72].x * _5499;
    float _5501 = 2.0f / _5500;
    float _5502 = _4586 * _5501;
    float _5505 = mad(_4587, _5501, (_5501 * Material_Material_PreshaderBuffer[77].z) * _3852);
    float _5506 = floor(_5502);
    float _5516 = _5432 * Material_Material_PreshaderBuffer[30].w;
    float _5519 = _5500 * Material_Material_PreshaderBuffer[20].w;
    float _5520 = 2.0f / _5519;
    float _5521 = _4626 * _5520;
    float _5524 = mad(_4627, _5520, (_5520 * Material_Material_PreshaderBuffer[77].w) * _3852);
    float _5525 = floor(_5521);
    float _5535 = _5516 * Material_Material_PreshaderBuffer[22].z;
    float _5541 = _5519 * Material_Material_PreshaderBuffer[20].w;
    float _5542 = 2.0f / _5541;
    float _5543 = _4664 * _5542;
    float _5546 = mad(_4665, _5542, (_5542 * Material_Material_PreshaderBuffer[78].x) * _3852);
    float _5547 = floor(_5543);
    float _5557 = _5535 * Material_Material_PreshaderBuffer[22].z;
    float _5563 = 2.0f / (_5541 * Material_Material_PreshaderBuffer[20].w);
    float _5564 = _4701 * _5563;
    float _5567 = mad(_4702, _5563, (_5563 * Material_Material_PreshaderBuffer[78].y) * _3852);
    float _5568 = floor(_5564);
    float _5578 = _5557 * Material_Material_PreshaderBuffer[22].z;
    float3 _5583 = (((float3(_549, _549, sin(mad(mad(_5418, 6.283185482025146484375f, _5422 * (-6.283185482025146484375f)), 2097152.0f, mad(_5421, 6.283185482025146484375f, floor(mad(mad(_3561, _5417, -_5422), 2097152.0f, _5421)) * (-6.283185482025146484375f)))) * _5432) + float3(_549, _549, sin(mad(mad(_5437, 6.283185482025146484375f, _5441 * (-6.283185482025146484375f)), 2097152.0f, mad(_5440, 6.283185482025146484375f, floor(mad(mad(_4444, _5436, -_5441), 2097152.0f, _5440)) * (-6.283185482025146484375f)))) * _5451)) + float3(_549, _549, sin(mad(mad(_5459, 6.283185482025146484375f, _5463 * (-6.283185482025146484375f)), 2097152.0f, mad(_5462, 6.283185482025146484375f, floor(mad(mad(_4484, _5458, -_5463), 2097152.0f, _5462)) * (-6.283185482025146484375f)))) * _5473)) + float3(_549, _549, sin(mad(mad(_5480, 6.283185482025146484375f, _5484 * (-6.283185482025146484375f)), 2097152.0f, mad(_5483, 6.283185482025146484375f, floor(mad(mad(_4521, _5479, -_5484), 2097152.0f, _5483)) * (-6.283185482025146484375f)))) * (_5473 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_549, _549, sin(mad(mad(_5502, 6.283185482025146484375f, _5506 * (-6.283185482025146484375f)), 2097152.0f, mad(_5505, 6.283185482025146484375f, floor(mad(mad(_4586, _5501, -_5506), 2097152.0f, _5505)) * (-6.283185482025146484375f)))) * _5516) + float3(_549, _549, sin(mad(mad(_5521, 6.283185482025146484375f, _5525 * (-6.283185482025146484375f)), 2097152.0f, mad(_5524, 6.283185482025146484375f, floor(mad(mad(_4626, _5520, -_5525), 2097152.0f, _5524)) * (-6.283185482025146484375f)))) * _5535)) + float3(_549, _549, sin(mad(mad(_5543, 6.283185482025146484375f, _5547 * (-6.283185482025146484375f)), 2097152.0f, mad(_5546, 6.283185482025146484375f, floor(mad(mad(_4664, _5542, -_5547), 2097152.0f, _5546)) * (-6.283185482025146484375f)))) * _5557)) + float3(_549, _549, sin(mad(mad(_5564, 6.283185482025146484375f, _5568 * (-6.283185482025146484375f)), 2097152.0f, mad(_5567, 6.283185482025146484375f, floor(mad(mad(_4701, _5563, -_5568), 2097152.0f, _5567)) * (-6.283185482025146484375f)))) * _5578));
    float _5584 = Material_Material_PreshaderBuffer[76].y * _5499;
    float _5585 = 2.0f / _5584;
    float _5586 = _4767 * _5585;
    float _5589 = mad(_4768, _5585, (_5585 * Material_Material_PreshaderBuffer[77].z) * _3852);
    float _5590 = floor(_5586);
    float _5602 = _5584 * Material_Material_PreshaderBuffer[20].w;
    float _5603 = 2.0f / _5602;
    float _5604 = _4801 * _5603;
    float _5607 = mad(_4802, _5603, (_5603 * Material_Material_PreshaderBuffer[77].w) * _3852);
    float _5608 = floor(_5604);
    float _5623 = _5602 * Material_Material_PreshaderBuffer[20].w;
    float _5624 = 2.0f / _5623;
    float _5625 = _4836 * _5624;
    float _5628 = mad(_4837, _5624, (_5624 * Material_Material_PreshaderBuffer[78].x) * _3852);
    float _5629 = floor(_5625);
    float _5644 = 2.0f / (_5623 * Material_Material_PreshaderBuffer[20].w);
    float _5645 = _4870 * _5644;
    float _5648 = mad(_4871, _5644, (_5644 * Material_Material_PreshaderBuffer[78].y) * _3852);
    float _5649 = floor(_5645);
    float3 _5663 = _5583 + (((float3(_549, _549, sin(mad(mad(_5586, 6.283185482025146484375f, _5590 * (-6.283185482025146484375f)), 2097152.0f, mad(_5589, 6.283185482025146484375f, floor(mad(mad(_4767, _5585, -_5590), 2097152.0f, _5589)) * (-6.283185482025146484375f)))) * _5516) + float3(_549, _549, sin(mad(mad(_5604, 6.283185482025146484375f, _5608 * (-6.283185482025146484375f)), 2097152.0f, mad(_5607, 6.283185482025146484375f, floor(mad(mad(_4801, _5603, -_5608), 2097152.0f, _5607)) * (-6.283185482025146484375f)))) * _5535)) + float3(_549, _549, sin(mad(mad(_5625, 6.283185482025146484375f, _5629 * (-6.283185482025146484375f)), 2097152.0f, mad(_5628, 6.283185482025146484375f, floor(mad(mad(_4836, _5624, -_5629), 2097152.0f, _5628)) * (-6.283185482025146484375f)))) * _5557)) + float3(_549, _549, sin(mad(mad(_5645, 6.283185482025146484375f, _5649 * (-6.283185482025146484375f)), 2097152.0f, mad(_5648, 6.283185482025146484375f, floor(mad(mad(_4870, _5644, -_5649), 2097152.0f, _5648)) * (-6.283185482025146484375f)))) * _5578));
    float _5676 = (abs(Material_Material_PreshaderBuffer[80].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[80].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[80].z : Material_Material_PreshaderBuffer[80].w) : Material_Material_PreshaderBuffer[80].z;
    float _5684 = (abs(_5676 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_5676 >= 1.0f) ? Material_Material_PreshaderBuffer[81].x : Material_Material_PreshaderBuffer[80].z) : Material_Material_PreshaderBuffer[80].z;
    float3 _5694 = float3(min(max((abs(_5684) > 9.9999997473787516355514526367188e-06f) ? ((_5684 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[82].y, 0.0f);
    float2 _5700 = float2(min(max(_5694 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _5701 = _1695 * _5700;
    float2 _5702 = _5700 * _1696;
    float _5707 = _5701.x + _5701.y;
    float _5708 = _5702.x + _5702.y;
    float _5711 = Material_Material_PreshaderBuffer[83].z * _3565;
    float _5712 = 2.0f / _5711;
    float _5713 = _5707 * _5712;
    float3 _5716 = View_View_ViewTilePosition * _3585;
    float3 _5717 = (_641 + 10000.0f.xxx) * _3585;
    float3 _5718 = _5716 * _3576;
    float3 _5720 = (_3576 * _5717) * _3581;
    float3 _5727 = float3(_5720.xy, (_3593 + _5720.z.xx).x);
    float3 _5738 = 0.0f.xxx;
    float _5743 = 0.0f;
    _5738 = ((mad(_5718, _3581, -floor(mad(_5718, _3581, (_5727 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _5727) * 1.0f;
    _5743 = 0.0f;
    float _5741 = 1.0f;
    uint _5745 = 0u;
    [loop]
    for (; _5745 < 6u; )
    {
        float3 _5749 = frac(_5738);
        float _5751 = dot(floor(_5738), float3(19.0f, 47.0f, 101.0f));
        uint3 _5763 = (uint3(int3(int(_5751), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5764 = _5763.y;
        uint _5765 = _5763.z;
        uint _5768 = _5763.x + (_5764 * _5765);
        uint _5770 = _5764 + (_5765 * _5768);
        uint3 _5775 = uint3(0u, 0u, 0u);
        _5775.x = _5768 + (_5770 * (_5765 + (_5768 * _5770)));
        uint3 _5776 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _5789 = (uint3(int3(int(_5751 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5790 = _5789.y;
        uint _5791 = _5789.z;
        uint _5794 = _5789.x + (_5790 * _5791);
        uint _5796 = _5790 + (_5791 * _5794);
        uint3 _5801 = uint3(0u, 0u, 0u);
        _5801.x = _5794 + (_5796 * (_5791 + (_5794 * _5796)));
        uint3 _5814 = (uint3(int3(int(_5751 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5815 = _5814.y;
        uint _5816 = _5814.z;
        uint _5819 = _5814.x + (_5815 * _5816);
        uint _5821 = _5815 + (_5816 * _5819);
        uint3 _5826 = uint3(0u, 0u, 0u);
        _5826.x = _5819 + (_5821 * (_5816 + (_5819 * _5821)));
        uint3 _5839 = (uint3(int3(int(_5751 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5840 = _5839.y;
        uint _5841 = _5839.z;
        uint _5844 = _5839.x + (_5840 * _5841);
        uint _5846 = _5840 + (_5841 * _5844);
        uint3 _5851 = uint3(0u, 0u, 0u);
        _5851.x = _5844 + (_5846 * (_5841 + (_5844 * _5846)));
        uint3 _5864 = (uint3(int3(int(_5751 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5865 = _5864.y;
        uint _5866 = _5864.z;
        uint _5869 = _5864.x + (_5865 * _5866);
        uint _5871 = _5865 + (_5866 * _5869);
        uint3 _5876 = uint3(0u, 0u, 0u);
        _5876.x = _5869 + (_5871 * (_5866 + (_5869 * _5871)));
        uint3 _5889 = (uint3(int3(int(_5751 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5890 = _5889.y;
        uint _5891 = _5889.z;
        uint _5894 = _5889.x + (_5890 * _5891);
        uint _5896 = _5890 + (_5891 * _5894);
        uint3 _5901 = uint3(0u, 0u, 0u);
        _5901.x = _5894 + (_5896 * (_5891 + (_5894 * _5896)));
        uint3 _5914 = (uint3(int3(int(_5751 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5915 = _5914.y;
        uint _5916 = _5914.z;
        uint _5919 = _5914.x + (_5915 * _5916);
        uint _5921 = _5915 + (_5916 * _5919);
        uint3 _5926 = uint3(0u, 0u, 0u);
        _5926.x = _5919 + (_5921 * (_5916 + (_5919 * _5921)));
        uint3 _5939 = (uint3(int3(int(_5751 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5940 = _5939.y;
        uint _5941 = _5939.z;
        uint _5944 = _5939.x + (_5940 * _5941);
        uint _5946 = _5940 + (_5941 * _5944);
        uint3 _5951 = uint3(0u, 0u, 0u);
        _5951.x = _5944 + (_5946 * (_5941 + (_5944 * _5946)));
        float4 _5962 = float4(_5749, 0.0f);
        float4 _5968 = ((_5962 * _5962) * _5962) * mad(_5962, (_5962 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _5969 = _5968.x;
        float _5972 = _5968.y;
        float _5744 = mad(lerp(lerp(lerp(dot(mad(float3((_5775 >> _5776).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5749), dot(mad(float3((_5801 >> _5776).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5749 - float3(1.0f, 0.0f, 0.0f)), _5969), lerp(dot(mad(float3((_5826 >> _5776).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5749 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_5851 >> _5776).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5749 - float3(1.0f, 1.0f, 0.0f)), _5969), _5972), lerp(lerp(dot(mad(float3((_5876 >> _5776).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5749 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_5901 >> _5776).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5749 - float3(1.0f, 0.0f, 1.0f)), _5969), lerp(dot(mad(float3((_5926 >> _5776).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5749 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_5951 >> _5776).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5749 - 1.0f.xxx), _5969), _5972), _5968.z), _5741, _5743);
        _5738 *= 2.0f;
        _5741 *= 0.5f;
        _5743 = _5744;
        _5745++;
        continue;
    }
    float _5982 = lerp(_1160, _1713, clamp(lerp(0.0f, 1.0f, mad(_5743, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _5984 = mad(_5708, _5712, (_5712 * Material_Material_PreshaderBuffer[62].w) * _5982);
    float _5985 = floor(_5713);
    float3 _5995 = _5716 * _3875;
    float3 _5997 = (_3875 * _5717) * _3880;
    float3 _6004 = float3(_5997.xy, (_3890 + _5997.z.xx).x);
    float3 _6015 = 0.0f.xxx;
    float _6020 = 0.0f;
    _6015 = ((mad(_5995, _3880, -floor(mad(_5995, _3880, (_6004 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _6004) * 1.0f;
    _6020 = 0.0f;
    float _6018 = 1.0f;
    uint _6022 = 0u;
    [loop]
    for (; _6022 < 10u; )
    {
        float3 _6026 = frac(_6015);
        float _6028 = dot(floor(_6015), float3(19.0f, 47.0f, 101.0f));
        uint3 _6040 = (uint3(int3(int(_6028), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6041 = _6040.y;
        uint _6042 = _6040.z;
        uint _6045 = _6040.x + (_6041 * _6042);
        uint _6047 = _6041 + (_6042 * _6045);
        uint3 _6052 = uint3(0u, 0u, 0u);
        _6052.x = _6045 + (_6047 * (_6042 + (_6045 * _6047)));
        uint3 _6053 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _6066 = (uint3(int3(int(_6028 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6067 = _6066.y;
        uint _6068 = _6066.z;
        uint _6071 = _6066.x + (_6067 * _6068);
        uint _6073 = _6067 + (_6068 * _6071);
        uint3 _6078 = uint3(0u, 0u, 0u);
        _6078.x = _6071 + (_6073 * (_6068 + (_6071 * _6073)));
        uint3 _6091 = (uint3(int3(int(_6028 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6092 = _6091.y;
        uint _6093 = _6091.z;
        uint _6096 = _6091.x + (_6092 * _6093);
        uint _6098 = _6092 + (_6093 * _6096);
        uint3 _6103 = uint3(0u, 0u, 0u);
        _6103.x = _6096 + (_6098 * (_6093 + (_6096 * _6098)));
        uint3 _6116 = (uint3(int3(int(_6028 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6117 = _6116.y;
        uint _6118 = _6116.z;
        uint _6121 = _6116.x + (_6117 * _6118);
        uint _6123 = _6117 + (_6118 * _6121);
        uint3 _6128 = uint3(0u, 0u, 0u);
        _6128.x = _6121 + (_6123 * (_6118 + (_6121 * _6123)));
        uint3 _6141 = (uint3(int3(int(_6028 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6142 = _6141.y;
        uint _6143 = _6141.z;
        uint _6146 = _6141.x + (_6142 * _6143);
        uint _6148 = _6142 + (_6143 * _6146);
        uint3 _6153 = uint3(0u, 0u, 0u);
        _6153.x = _6146 + (_6148 * (_6143 + (_6146 * _6148)));
        uint3 _6166 = (uint3(int3(int(_6028 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6167 = _6166.y;
        uint _6168 = _6166.z;
        uint _6171 = _6166.x + (_6167 * _6168);
        uint _6173 = _6167 + (_6168 * _6171);
        uint3 _6178 = uint3(0u, 0u, 0u);
        _6178.x = _6171 + (_6173 * (_6168 + (_6171 * _6173)));
        uint3 _6191 = (uint3(int3(int(_6028 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6192 = _6191.y;
        uint _6193 = _6191.z;
        uint _6196 = _6191.x + (_6192 * _6193);
        uint _6198 = _6192 + (_6193 * _6196);
        uint3 _6203 = uint3(0u, 0u, 0u);
        _6203.x = _6196 + (_6198 * (_6193 + (_6196 * _6198)));
        uint3 _6216 = (uint3(int3(int(_6028 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6217 = _6216.y;
        uint _6218 = _6216.z;
        uint _6221 = _6216.x + (_6217 * _6218);
        uint _6223 = _6217 + (_6218 * _6221);
        uint3 _6228 = uint3(0u, 0u, 0u);
        _6228.x = _6221 + (_6223 * (_6218 + (_6221 * _6223)));
        float4 _6239 = float4(_6026, 0.0f);
        float4 _6245 = ((_6239 * _6239) * _6239) * mad(_6239, (_6239 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _6246 = _6245.x;
        float _6249 = _6245.y;
        float _6256 = abs(lerp(lerp(lerp(dot(mad(float3((_6052 >> _6053).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6026), dot(mad(float3((_6078 >> _6053).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6026 - float3(1.0f, 0.0f, 0.0f)), _6246), lerp(dot(mad(float3((_6103 >> _6053).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6026 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_6128 >> _6053).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6026 - float3(1.0f, 1.0f, 0.0f)), _6246), _6249), lerp(lerp(dot(mad(float3((_6153 >> _6053).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6026 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_6178 >> _6053).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6026 - float3(1.0f, 0.0f, 1.0f)), _6246), lerp(dot(mad(float3((_6203 >> _6053).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6026 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_6228 >> _6053).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6026 - 1.0f.xxx), _6246), _6249), _6245.z));
        float _6021 = mad(_6256, _6018, _6020);
        _6015 *= 2.0f;
        _6018 *= 0.5f;
        _6020 = _6021;
        _6022++;
        continue;
    }
    float3 _6258 = _5716 * _4150;
    float3 _6260 = (_4150 * _5717) * _4155;
    float3 _6267 = float3(_6260.xy, (_4165 + _6260.z.xx).x);
    float3 _6278 = 0.0f.xxx;
    float _6283 = 0.0f;
    _6278 = ((mad(_6258, _4155, -floor(mad(_6258, _4155, (_6267 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _6267) * 1.0f;
    _6283 = 0.0f;
    float _6281 = 1.0f;
    uint _6285 = 0u;
    [loop]
    for (; _6285 < 10u; )
    {
        float3 _6289 = frac(_6278);
        float _6291 = dot(floor(_6278), float3(19.0f, 47.0f, 101.0f));
        uint3 _6303 = (uint3(int3(int(_6291), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6304 = _6303.y;
        uint _6305 = _6303.z;
        uint _6308 = _6303.x + (_6304 * _6305);
        uint _6310 = _6304 + (_6305 * _6308);
        uint3 _6315 = uint3(0u, 0u, 0u);
        _6315.x = _6308 + (_6310 * (_6305 + (_6308 * _6310)));
        uint3 _6316 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _6329 = (uint3(int3(int(_6291 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6330 = _6329.y;
        uint _6331 = _6329.z;
        uint _6334 = _6329.x + (_6330 * _6331);
        uint _6336 = _6330 + (_6331 * _6334);
        uint3 _6341 = uint3(0u, 0u, 0u);
        _6341.x = _6334 + (_6336 * (_6331 + (_6334 * _6336)));
        uint3 _6354 = (uint3(int3(int(_6291 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6355 = _6354.y;
        uint _6356 = _6354.z;
        uint _6359 = _6354.x + (_6355 * _6356);
        uint _6361 = _6355 + (_6356 * _6359);
        uint3 _6366 = uint3(0u, 0u, 0u);
        _6366.x = _6359 + (_6361 * (_6356 + (_6359 * _6361)));
        uint3 _6379 = (uint3(int3(int(_6291 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6380 = _6379.y;
        uint _6381 = _6379.z;
        uint _6384 = _6379.x + (_6380 * _6381);
        uint _6386 = _6380 + (_6381 * _6384);
        uint3 _6391 = uint3(0u, 0u, 0u);
        _6391.x = _6384 + (_6386 * (_6381 + (_6384 * _6386)));
        uint3 _6404 = (uint3(int3(int(_6291 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6405 = _6404.y;
        uint _6406 = _6404.z;
        uint _6409 = _6404.x + (_6405 * _6406);
        uint _6411 = _6405 + (_6406 * _6409);
        uint3 _6416 = uint3(0u, 0u, 0u);
        _6416.x = _6409 + (_6411 * (_6406 + (_6409 * _6411)));
        uint3 _6429 = (uint3(int3(int(_6291 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6430 = _6429.y;
        uint _6431 = _6429.z;
        uint _6434 = _6429.x + (_6430 * _6431);
        uint _6436 = _6430 + (_6431 * _6434);
        uint3 _6441 = uint3(0u, 0u, 0u);
        _6441.x = _6434 + (_6436 * (_6431 + (_6434 * _6436)));
        uint3 _6454 = (uint3(int3(int(_6291 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6455 = _6454.y;
        uint _6456 = _6454.z;
        uint _6459 = _6454.x + (_6455 * _6456);
        uint _6461 = _6455 + (_6456 * _6459);
        uint3 _6466 = uint3(0u, 0u, 0u);
        _6466.x = _6459 + (_6461 * (_6456 + (_6459 * _6461)));
        uint3 _6479 = (uint3(int3(int(_6291 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6480 = _6479.y;
        uint _6481 = _6479.z;
        uint _6484 = _6479.x + (_6480 * _6481);
        uint _6486 = _6480 + (_6481 * _6484);
        uint3 _6491 = uint3(0u, 0u, 0u);
        _6491.x = _6484 + (_6486 * (_6481 + (_6484 * _6486)));
        float4 _6502 = float4(_6289, 0.0f);
        float4 _6508 = ((_6502 * _6502) * _6502) * mad(_6502, (_6502 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _6509 = _6508.x;
        float _6512 = _6508.y;
        float _6519 = abs(lerp(lerp(lerp(dot(mad(float3((_6315 >> _6316).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6289), dot(mad(float3((_6341 >> _6316).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6289 - float3(1.0f, 0.0f, 0.0f)), _6509), lerp(dot(mad(float3((_6366 >> _6316).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6289 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_6391 >> _6316).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6289 - float3(1.0f, 1.0f, 0.0f)), _6509), _6512), lerp(lerp(dot(mad(float3((_6416 >> _6316).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6289 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_6441 >> _6316).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6289 - float3(1.0f, 0.0f, 1.0f)), _6509), lerp(dot(mad(float3((_6466 >> _6316).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6289 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_6491 >> _6316).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6289 - 1.0f.xxx), _6509), _6512), _6508.z));
        float _6284 = mad(_6519, _6281, _6283);
        _6278 *= 2.0f;
        _6281 *= 0.5f;
        _6283 = _6284;
        _6285++;
        continue;
    }
    float _6523 = lerp(_3867, _3872, lerp(0.0f, 1.0f, _6020) * mad(lerp(0.0f, 1.0f, _6283), Material_Material_PreshaderBuffer[66].w, Material_Material_PreshaderBuffer[66].z));
    float2 _6531 = float2(min(max(_5694 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6532 = _1695 * _6531;
    float2 _6533 = _6531 * _1696;
    float _6538 = _6532.x + _6532.y;
    float _6539 = _6533.x + _6533.y;
    float _6540 = _5711 * Material_Material_PreshaderBuffer[20].w;
    float _6541 = 2.0f / _6540;
    float _6542 = _6538 * _6541;
    float _6545 = mad(_6539, _6541, (_6541 * Material_Material_PreshaderBuffer[67].y) * _5982);
    float _6546 = floor(_6542);
    float _6556 = _6523 * Material_Material_PreshaderBuffer[22].z;
    float2 _6567 = float2(min(max(_5694 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6568 = _1695 * _6567;
    float2 _6569 = _6567 * _1696;
    float _6574 = _6568.x + _6568.y;
    float _6575 = _6569.x + _6569.y;
    float _6576 = _6540 * Material_Material_PreshaderBuffer[20].w;
    float _6577 = 2.0f / _6576;
    float _6578 = _6574 * _6577;
    float _6581 = mad(_6575, _6577, (_6577 * Material_Material_PreshaderBuffer[67].w) * _5982);
    float _6582 = floor(_6578);
    float _6592 = _6556 * Material_Material_PreshaderBuffer[22].z;
    float2 _6602 = float2(min(max(_5694 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6603 = _1695 * _6602;
    float2 _6604 = _6602 * _1696;
    float _6609 = _6603.x + _6603.y;
    float _6610 = _6604.x + _6604.y;
    float _6612 = 2.0f / (_6576 * Material_Material_PreshaderBuffer[20].w);
    float _6613 = _6609 * _6612;
    float _6616 = mad(_6610, _6612, (_6612 * Material_Material_PreshaderBuffer[68].y) * _5982);
    float _6617 = floor(_6613);
    float _6641 = (abs(Material_Material_PreshaderBuffer[83].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[83].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[83].w : Material_Material_PreshaderBuffer[84].x) : Material_Material_PreshaderBuffer[83].w;
    float _6649 = (abs(_6641 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_6641 >= 1.0f) ? Material_Material_PreshaderBuffer[84].y : Material_Material_PreshaderBuffer[83].w) : Material_Material_PreshaderBuffer[83].w;
    float3 _6659 = float3(min(max((abs(_6649) > 9.9999997473787516355514526367188e-06f) ? ((_6649 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[85].z, 0.0f);
    float2 _6665 = float2(min(max(_6659 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6666 = _1695 * _6665;
    float2 _6667 = _6665 * _1696;
    float _6672 = _6666.x + _6666.y;
    float _6673 = _6667.x + _6667.y;
    float _6676 = Material_Material_PreshaderBuffer[86].w * _4590;
    float _6677 = 2.0f / _6676;
    float _6678 = _6672 * _6677;
    float _6681 = mad(_6673, _6677, (_6677 * Material_Material_PreshaderBuffer[72].y) * _5982);
    float _6682 = floor(_6678);
    float _6692 = _6523 * Material_Material_PreshaderBuffer[30].w;
    float2 _6700 = float2(min(max(_6659 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6701 = _1695 * _6700;
    float2 _6702 = _6700 * _1696;
    float _6707 = _6701.x + _6701.y;
    float _6708 = _6702.x + _6702.y;
    float _6709 = _6676 * Material_Material_PreshaderBuffer[20].w;
    float _6710 = 2.0f / _6709;
    float _6711 = _6707 * _6710;
    float _6714 = mad(_6708, _6710, (_6710 * Material_Material_PreshaderBuffer[72].z) * _5982);
    float _6715 = floor(_6711);
    float _6725 = _6692 * Material_Material_PreshaderBuffer[22].z;
    float2 _6736 = float2(min(max(_6659 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6737 = _1695 * _6736;
    float2 _6738 = _6736 * _1696;
    float _6743 = _6737.x + _6737.y;
    float _6744 = _6738.x + _6738.y;
    float _6745 = _6709 * Material_Material_PreshaderBuffer[20].w;
    float _6746 = 2.0f / _6745;
    float _6747 = _6743 * _6746;
    float _6750 = mad(_6744, _6746, (_6746 * Material_Material_PreshaderBuffer[72].w) * _5982);
    float _6751 = floor(_6747);
    float _6761 = _6725 * Material_Material_PreshaderBuffer[22].z;
    float2 _6771 = float2(min(max(_6659 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6772 = _1695 * _6771;
    float2 _6773 = _6771 * _1696;
    float _6778 = _6772.x + _6772.y;
    float _6779 = _6773.x + _6773.y;
    float _6781 = 2.0f / (_6745 * Material_Material_PreshaderBuffer[20].w);
    float _6782 = _6778 * _6781;
    float _6785 = mad(_6779, _6781, (_6781 * Material_Material_PreshaderBuffer[73].x) * _5982);
    float _6786 = floor(_6782);
    float _6796 = _6761 * Material_Material_PreshaderBuffer[22].z;
    float3 _6801 = (((float3(_549, _549, sin(mad(mad(_5713, 6.283185482025146484375f, _5985 * (-6.283185482025146484375f)), 2097152.0f, mad(_5984, 6.283185482025146484375f, floor(mad(mad(_5707, _5712, -_5985), 2097152.0f, _5984)) * (-6.283185482025146484375f)))) * _6523) + float3(_549, _549, sin(mad(mad(_6542, 6.283185482025146484375f, _6546 * (-6.283185482025146484375f)), 2097152.0f, mad(_6545, 6.283185482025146484375f, floor(mad(mad(_6538, _6541, -_6546), 2097152.0f, _6545)) * (-6.283185482025146484375f)))) * _6556)) + float3(_549, _549, sin(mad(mad(_6578, 6.283185482025146484375f, _6582 * (-6.283185482025146484375f)), 2097152.0f, mad(_6581, 6.283185482025146484375f, floor(mad(mad(_6574, _6577, -_6582), 2097152.0f, _6581)) * (-6.283185482025146484375f)))) * _6592)) + float3(_549, _549, sin(mad(mad(_6613, 6.283185482025146484375f, _6617 * (-6.283185482025146484375f)), 2097152.0f, mad(_6616, 6.283185482025146484375f, floor(mad(mad(_6609, _6612, -_6617), 2097152.0f, _6616)) * (-6.283185482025146484375f)))) * (_6592 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_549, _549, sin(mad(mad(_6678, 6.283185482025146484375f, _6682 * (-6.283185482025146484375f)), 2097152.0f, mad(_6681, 6.283185482025146484375f, floor(mad(mad(_6672, _6677, -_6682), 2097152.0f, _6681)) * (-6.283185482025146484375f)))) * _6692) + float3(_549, _549, sin(mad(mad(_6711, 6.283185482025146484375f, _6715 * (-6.283185482025146484375f)), 2097152.0f, mad(_6714, 6.283185482025146484375f, floor(mad(mad(_6707, _6710, -_6715), 2097152.0f, _6714)) * (-6.283185482025146484375f)))) * _6725)) + float3(_549, _549, sin(mad(mad(_6747, 6.283185482025146484375f, _6751 * (-6.283185482025146484375f)), 2097152.0f, mad(_6750, 6.283185482025146484375f, floor(mad(mad(_6743, _6746, -_6751), 2097152.0f, _6750)) * (-6.283185482025146484375f)))) * _6761)) + float3(_549, _549, sin(mad(mad(_6782, 6.283185482025146484375f, _6786 * (-6.283185482025146484375f)), 2097152.0f, mad(_6785, 6.283185482025146484375f, floor(mad(mad(_6778, _6781, -_6786), 2097152.0f, _6785)) * (-6.283185482025146484375f)))) * _6796));
    float _6811 = (abs(Material_Material_PreshaderBuffer[87].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[87].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[87].x : Material_Material_PreshaderBuffer[87].y) : Material_Material_PreshaderBuffer[87].x;
    float _6819 = (abs(_6811 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_6811 >= 1.0f) ? Material_Material_PreshaderBuffer[87].z : Material_Material_PreshaderBuffer[87].x) : Material_Material_PreshaderBuffer[87].x;
    float3 _6829 = float3(min(max((abs(_6819) > 9.9999997473787516355514526367188e-06f) ? ((_6819 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[88].w, 0.0f);
    float2 _6835 = float2(min(max(_6829 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6836 = _1695 * _6835;
    float2 _6837 = _6835 * _1696;
    float _6842 = _6836.x + _6836.y;
    float _6843 = _6837.x + _6837.y;
    float _6846 = Material_Material_PreshaderBuffer[90].x * _4590;
    float _6847 = 2.0f / _6846;
    float _6848 = _6842 * _6847;
    float _6851 = mad(_6843, _6847, (_6847 * Material_Material_PreshaderBuffer[72].y) * _5982);
    float _6852 = floor(_6848);
    float2 _6869 = float2(min(max(_6829 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6870 = _1695 * _6869;
    float2 _6871 = _6869 * _1696;
    float _6876 = _6870.x + _6870.y;
    float _6877 = _6871.x + _6871.y;
    float _6878 = _6846 * Material_Material_PreshaderBuffer[20].w;
    float _6879 = 2.0f / _6878;
    float _6880 = _6876 * _6879;
    float _6883 = mad(_6877, _6879, (_6879 * Material_Material_PreshaderBuffer[72].z) * _5982);
    float _6884 = floor(_6880);
    float2 _6904 = float2(min(max(_6829 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6905 = _1695 * _6904;
    float2 _6906 = _6904 * _1696;
    float _6911 = _6905.x + _6905.y;
    float _6912 = _6906.x + _6906.y;
    float _6913 = _6878 * Material_Material_PreshaderBuffer[20].w;
    float _6914 = 2.0f / _6913;
    float _6915 = _6911 * _6914;
    float _6918 = mad(_6912, _6914, (_6914 * Material_Material_PreshaderBuffer[72].w) * _5982);
    float _6919 = floor(_6915);
    float2 _6938 = float2(min(max(_6829 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6939 = _1695 * _6938;
    float2 _6940 = _6938 * _1696;
    float _6945 = _6939.x + _6939.y;
    float _6946 = _6940.x + _6940.y;
    float _6948 = 2.0f / (_6913 * Material_Material_PreshaderBuffer[20].w);
    float _6949 = _6945 * _6948;
    float _6952 = mad(_6946, _6948, (_6948 * Material_Material_PreshaderBuffer[73].x) * _5982);
    float _6953 = floor(_6949);
    float3 _6967 = _6801 + (((float3(_549, _549, sin(mad(mad(_6848, 6.283185482025146484375f, _6852 * (-6.283185482025146484375f)), 2097152.0f, mad(_6851, 6.283185482025146484375f, floor(mad(mad(_6842, _6847, -_6852), 2097152.0f, _6851)) * (-6.283185482025146484375f)))) * _6692) + float3(_549, _549, sin(mad(mad(_6880, 6.283185482025146484375f, _6884 * (-6.283185482025146484375f)), 2097152.0f, mad(_6883, 6.283185482025146484375f, floor(mad(mad(_6876, _6879, -_6884), 2097152.0f, _6883)) * (-6.283185482025146484375f)))) * _6725)) + float3(_549, _549, sin(mad(mad(_6915, 6.283185482025146484375f, _6919 * (-6.283185482025146484375f)), 2097152.0f, mad(_6918, 6.283185482025146484375f, floor(mad(mad(_6911, _6914, -_6919), 2097152.0f, _6918)) * (-6.283185482025146484375f)))) * _6761)) + float3(_549, _549, sin(mad(mad(_6949, 6.283185482025146484375f, _6953 * (-6.283185482025146484375f)), 2097152.0f, mad(_6952, 6.283185482025146484375f, floor(mad(mad(_6945, _6948, -_6953), 2097152.0f, _6952)) * (-6.283185482025146484375f)))) * _6796));
    float _6968 = _3565 * 8.0f;
    float _6969 = Material_Material_PreshaderBuffer[83].z * _6968;
    float _6970 = 2.0f / _6969;
    float _6971 = _5707 * _6970;
    float _6974 = mad(_5708, _6970, (_6970 * Material_Material_PreshaderBuffer[76].z) * _5982);
    float _6975 = floor(_6971);
    float _6985 = _6523 * 8.0f;
    float _6988 = _6969 * Material_Material_PreshaderBuffer[20].w;
    float _6989 = 2.0f / _6988;
    float _6990 = _6538 * _6989;
    float _6993 = mad(_6539, _6989, (_6989 * Material_Material_PreshaderBuffer[76].w) * _5982);
    float _6994 = floor(_6990);
    float _7004 = _6985 * Material_Material_PreshaderBuffer[22].z;
    float _7010 = _6988 * Material_Material_PreshaderBuffer[20].w;
    float _7011 = 2.0f / _7010;
    float _7012 = _6574 * _7011;
    float _7015 = mad(_6575, _7011, (_7011 * Material_Material_PreshaderBuffer[77].x) * _5982);
    float _7016 = floor(_7012);
    float _7026 = _7004 * Material_Material_PreshaderBuffer[22].z;
    float _7032 = 2.0f / (_7010 * Material_Material_PreshaderBuffer[20].w);
    float _7033 = _6609 * _7032;
    float _7036 = mad(_6610, _7032, (_7032 * Material_Material_PreshaderBuffer[77].y) * _5982);
    float _7037 = floor(_7033);
    float _7052 = _6968 * Material_Material_PreshaderBuffer[28].w;
    float _7053 = Material_Material_PreshaderBuffer[86].w * _7052;
    float _7054 = 2.0f / _7053;
    float _7055 = _6672 * _7054;
    float _7058 = mad(_6673, _7054, (_7054 * Material_Material_PreshaderBuffer[77].z) * _5982);
    float _7059 = floor(_7055);
    float _7069 = _6985 * Material_Material_PreshaderBuffer[30].w;
    float _7072 = _7053 * Material_Material_PreshaderBuffer[20].w;
    float _7073 = 2.0f / _7072;
    float _7074 = _6707 * _7073;
    float _7077 = mad(_6708, _7073, (_7073 * Material_Material_PreshaderBuffer[77].w) * _5982);
    float _7078 = floor(_7074);
    float _7088 = _7069 * Material_Material_PreshaderBuffer[22].z;
    float _7094 = _7072 * Material_Material_PreshaderBuffer[20].w;
    float _7095 = 2.0f / _7094;
    float _7096 = _6743 * _7095;
    float _7099 = mad(_6744, _7095, (_7095 * Material_Material_PreshaderBuffer[78].x) * _5982);
    float _7100 = floor(_7096);
    float _7110 = _7088 * Material_Material_PreshaderBuffer[22].z;
    float _7116 = 2.0f / (_7094 * Material_Material_PreshaderBuffer[20].w);
    float _7117 = _6778 * _7116;
    float _7120 = mad(_6779, _7116, (_7116 * Material_Material_PreshaderBuffer[78].y) * _5982);
    float _7121 = floor(_7117);
    float _7131 = _7110 * Material_Material_PreshaderBuffer[22].z;
    float3 _7136 = (((float3(_549, _549, sin(mad(mad(_6971, 6.283185482025146484375f, _6975 * (-6.283185482025146484375f)), 2097152.0f, mad(_6974, 6.283185482025146484375f, floor(mad(mad(_5707, _6970, -_6975), 2097152.0f, _6974)) * (-6.283185482025146484375f)))) * _6985) + float3(_549, _549, sin(mad(mad(_6990, 6.283185482025146484375f, _6994 * (-6.283185482025146484375f)), 2097152.0f, mad(_6993, 6.283185482025146484375f, floor(mad(mad(_6538, _6989, -_6994), 2097152.0f, _6993)) * (-6.283185482025146484375f)))) * _7004)) + float3(_549, _549, sin(mad(mad(_7012, 6.283185482025146484375f, _7016 * (-6.283185482025146484375f)), 2097152.0f, mad(_7015, 6.283185482025146484375f, floor(mad(mad(_6574, _7011, -_7016), 2097152.0f, _7015)) * (-6.283185482025146484375f)))) * _7026)) + float3(_549, _549, sin(mad(mad(_7033, 6.283185482025146484375f, _7037 * (-6.283185482025146484375f)), 2097152.0f, mad(_7036, 6.283185482025146484375f, floor(mad(mad(_6609, _7032, -_7037), 2097152.0f, _7036)) * (-6.283185482025146484375f)))) * (_7026 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_549, _549, sin(mad(mad(_7055, 6.283185482025146484375f, _7059 * (-6.283185482025146484375f)), 2097152.0f, mad(_7058, 6.283185482025146484375f, floor(mad(mad(_6672, _7054, -_7059), 2097152.0f, _7058)) * (-6.283185482025146484375f)))) * _7069) + float3(_549, _549, sin(mad(mad(_7074, 6.283185482025146484375f, _7078 * (-6.283185482025146484375f)), 2097152.0f, mad(_7077, 6.283185482025146484375f, floor(mad(mad(_6707, _7073, -_7078), 2097152.0f, _7077)) * (-6.283185482025146484375f)))) * _7088)) + float3(_549, _549, sin(mad(mad(_7096, 6.283185482025146484375f, _7100 * (-6.283185482025146484375f)), 2097152.0f, mad(_7099, 6.283185482025146484375f, floor(mad(mad(_6743, _7095, -_7100), 2097152.0f, _7099)) * (-6.283185482025146484375f)))) * _7110)) + float3(_549, _549, sin(mad(mad(_7117, 6.283185482025146484375f, _7121 * (-6.283185482025146484375f)), 2097152.0f, mad(_7120, 6.283185482025146484375f, floor(mad(mad(_6778, _7116, -_7121), 2097152.0f, _7120)) * (-6.283185482025146484375f)))) * _7131));
    float _7137 = Material_Material_PreshaderBuffer[90].x * _7052;
    float _7138 = 2.0f / _7137;
    float _7139 = _6842 * _7138;
    float _7142 = mad(_6843, _7138, (_7138 * Material_Material_PreshaderBuffer[77].z) * _5982);
    float _7143 = floor(_7139);
    float _7155 = _7137 * Material_Material_PreshaderBuffer[20].w;
    float _7156 = 2.0f / _7155;
    float _7157 = _6876 * _7156;
    float _7160 = mad(_6877, _7156, (_7156 * Material_Material_PreshaderBuffer[77].w) * _5982);
    float _7161 = floor(_7157);
    float _7176 = _7155 * Material_Material_PreshaderBuffer[20].w;
    float _7177 = 2.0f / _7176;
    float _7178 = _6911 * _7177;
    float _7181 = mad(_6912, _7177, (_7177 * Material_Material_PreshaderBuffer[78].x) * _5982);
    float _7182 = floor(_7178);
    float _7197 = 2.0f / (_7176 * Material_Material_PreshaderBuffer[20].w);
    float _7198 = _6945 * _7197;
    float _7201 = mad(_6946, _7197, (_7197 * Material_Material_PreshaderBuffer[78].y) * _5982);
    float _7202 = floor(_7198);
    float3 _7216 = _7136 + (((float3(_549, _549, sin(mad(mad(_7139, 6.283185482025146484375f, _7143 * (-6.283185482025146484375f)), 2097152.0f, mad(_7142, 6.283185482025146484375f, floor(mad(mad(_6842, _7138, -_7143), 2097152.0f, _7142)) * (-6.283185482025146484375f)))) * _7069) + float3(_549, _549, sin(mad(mad(_7157, 6.283185482025146484375f, _7161 * (-6.283185482025146484375f)), 2097152.0f, mad(_7160, 6.283185482025146484375f, floor(mad(mad(_6876, _7156, -_7161), 2097152.0f, _7160)) * (-6.283185482025146484375f)))) * _7088)) + float3(_549, _549, sin(mad(mad(_7178, 6.283185482025146484375f, _7182 * (-6.283185482025146484375f)), 2097152.0f, mad(_7181, 6.283185482025146484375f, floor(mad(mad(_6911, _7177, -_7182), 2097152.0f, _7181)) * (-6.283185482025146484375f)))) * _7110)) + float3(_549, _549, sin(mad(mad(_7198, 6.283185482025146484375f, _7202 * (-6.283185482025146484375f)), 2097152.0f, mad(_7201, 6.283185482025146484375f, floor(mad(mad(_6945, _7197, -_7202), 2097152.0f, _7201)) * (-6.283185482025146484375f)))) * _7131));
    float _7217 = Material_Material_PreshaderBuffer[83].z * _5158;
    float _7218 = 2.0f / _7217;
    float _7219 = _5707 * _7218;
    float _7222 = mad(_5708, _7218, (_7218 * Material_Material_PreshaderBuffer[78].z) * _5982);
    float _7223 = floor(_7219);
    float _7233 = _6523 * 4.0f;
    float _7236 = _7217 * Material_Material_PreshaderBuffer[20].w;
    float _7237 = 2.0f / _7236;
    float _7238 = _6538 * _7237;
    float _7241 = mad(_6539, _7237, (_7237 * Material_Material_PreshaderBuffer[78].w) * _5982);
    float _7242 = floor(_7238);
    float _7252 = _7233 * Material_Material_PreshaderBuffer[22].z;
    float _7258 = _7236 * Material_Material_PreshaderBuffer[20].w;
    float _7259 = 2.0f / _7258;
    float _7260 = _6574 * _7259;
    float _7263 = mad(_6575, _7259, (_7259 * Material_Material_PreshaderBuffer[79].x) * _5982);
    float _7264 = floor(_7260);
    float _7274 = _7252 * Material_Material_PreshaderBuffer[22].z;
    float _7280 = 2.0f / (_7258 * Material_Material_PreshaderBuffer[20].w);
    float _7281 = _6609 * _7280;
    float _7284 = mad(_6610, _7280, (_7280 * Material_Material_PreshaderBuffer[79].y) * _5982);
    float _7285 = floor(_7281);
    float _7300 = Material_Material_PreshaderBuffer[86].w * _5246;
    float _7301 = 2.0f / _7300;
    float _7302 = _6672 * _7301;
    float _7305 = mad(_6673, _7301, (_7301 * Material_Material_PreshaderBuffer[79].z) * _5982);
    float _7306 = floor(_7302);
    float _7316 = _7233 * Material_Material_PreshaderBuffer[30].w;
    float _7319 = _7300 * Material_Material_PreshaderBuffer[20].w;
    float _7320 = 2.0f / _7319;
    float _7321 = _6707 * _7320;
    float _7324 = mad(_6708, _7320, (_7320 * Material_Material_PreshaderBuffer[79].w) * _5982);
    float _7325 = floor(_7321);
    float _7335 = _7316 * Material_Material_PreshaderBuffer[22].z;
    float _7341 = _7319 * Material_Material_PreshaderBuffer[20].w;
    float _7342 = 2.0f / _7341;
    float _7343 = _6743 * _7342;
    float _7346 = mad(_6744, _7342, (_7342 * Material_Material_PreshaderBuffer[80].x) * _5982);
    float _7347 = floor(_7343);
    float _7357 = _7335 * Material_Material_PreshaderBuffer[22].z;
    float _7363 = 2.0f / (_7341 * Material_Material_PreshaderBuffer[20].w);
    float _7364 = _6778 * _7363;
    float _7367 = mad(_6779, _7363, (_7363 * Material_Material_PreshaderBuffer[80].y) * _5982);
    float _7368 = floor(_7364);
    float _7378 = _7357 * Material_Material_PreshaderBuffer[22].z;
    float3 _7383 = (((float3(_549, _549, sin(mad(mad(_7219, 6.283185482025146484375f, _7223 * (-6.283185482025146484375f)), 2097152.0f, mad(_7222, 6.283185482025146484375f, floor(mad(mad(_5707, _7218, -_7223), 2097152.0f, _7222)) * (-6.283185482025146484375f)))) * _7233) + float3(_549, _549, sin(mad(mad(_7238, 6.283185482025146484375f, _7242 * (-6.283185482025146484375f)), 2097152.0f, mad(_7241, 6.283185482025146484375f, floor(mad(mad(_6538, _7237, -_7242), 2097152.0f, _7241)) * (-6.283185482025146484375f)))) * _7252)) + float3(_549, _549, sin(mad(mad(_7260, 6.283185482025146484375f, _7264 * (-6.283185482025146484375f)), 2097152.0f, mad(_7263, 6.283185482025146484375f, floor(mad(mad(_6574, _7259, -_7264), 2097152.0f, _7263)) * (-6.283185482025146484375f)))) * _7274)) + float3(_549, _549, sin(mad(mad(_7281, 6.283185482025146484375f, _7285 * (-6.283185482025146484375f)), 2097152.0f, mad(_7284, 6.283185482025146484375f, floor(mad(mad(_6609, _7280, -_7285), 2097152.0f, _7284)) * (-6.283185482025146484375f)))) * (_7274 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_549, _549, sin(mad(mad(_7302, 6.283185482025146484375f, _7306 * (-6.283185482025146484375f)), 2097152.0f, mad(_7305, 6.283185482025146484375f, floor(mad(mad(_6672, _7301, -_7306), 2097152.0f, _7305)) * (-6.283185482025146484375f)))) * _7316) + float3(_549, _549, sin(mad(mad(_7321, 6.283185482025146484375f, _7325 * (-6.283185482025146484375f)), 2097152.0f, mad(_7324, 6.283185482025146484375f, floor(mad(mad(_6707, _7320, -_7325), 2097152.0f, _7324)) * (-6.283185482025146484375f)))) * _7335)) + float3(_549, _549, sin(mad(mad(_7343, 6.283185482025146484375f, _7347 * (-6.283185482025146484375f)), 2097152.0f, mad(_7346, 6.283185482025146484375f, floor(mad(mad(_6743, _7342, -_7347), 2097152.0f, _7346)) * (-6.283185482025146484375f)))) * _7357)) + float3(_549, _549, sin(mad(mad(_7364, 6.283185482025146484375f, _7368 * (-6.283185482025146484375f)), 2097152.0f, mad(_7367, 6.283185482025146484375f, floor(mad(mad(_6778, _7363, -_7368), 2097152.0f, _7367)) * (-6.283185482025146484375f)))) * _7378));
    float _7384 = Material_Material_PreshaderBuffer[90].x * _5246;
    float _7385 = 2.0f / _7384;
    float _7386 = _6842 * _7385;
    float _7389 = mad(_6843, _7385, (_7385 * Material_Material_PreshaderBuffer[79].z) * _5982);
    float _7390 = floor(_7386);
    float _7402 = _7384 * Material_Material_PreshaderBuffer[20].w;
    float _7403 = 2.0f / _7402;
    float _7404 = _6876 * _7403;
    float _7407 = mad(_6877, _7403, (_7403 * Material_Material_PreshaderBuffer[79].w) * _5982);
    float _7408 = floor(_7404);
    float _7423 = _7402 * Material_Material_PreshaderBuffer[20].w;
    float _7424 = 2.0f / _7423;
    float _7425 = _6911 * _7424;
    float _7428 = mad(_6912, _7424, (_7424 * Material_Material_PreshaderBuffer[80].x) * _5982);
    float _7429 = floor(_7425);
    float _7444 = 2.0f / (_7423 * Material_Material_PreshaderBuffer[20].w);
    float _7445 = _6945 * _7444;
    float _7448 = mad(_6946, _7444, (_7444 * Material_Material_PreshaderBuffer[80].y) * _5982);
    float _7449 = floor(_7445);
    float3 _7463 = _7383 + (((float3(_549, _549, sin(mad(mad(_7386, 6.283185482025146484375f, _7390 * (-6.283185482025146484375f)), 2097152.0f, mad(_7389, 6.283185482025146484375f, floor(mad(mad(_6842, _7385, -_7390), 2097152.0f, _7389)) * (-6.283185482025146484375f)))) * _7316) + float3(_549, _549, sin(mad(mad(_7404, 6.283185482025146484375f, _7408 * (-6.283185482025146484375f)), 2097152.0f, mad(_7407, 6.283185482025146484375f, floor(mad(mad(_6876, _7403, -_7408), 2097152.0f, _7407)) * (-6.283185482025146484375f)))) * _7335)) + float3(_549, _549, sin(mad(mad(_7425, 6.283185482025146484375f, _7429 * (-6.283185482025146484375f)), 2097152.0f, mad(_7428, 6.283185482025146484375f, floor(mad(mad(_6911, _7424, -_7429), 2097152.0f, _7428)) * (-6.283185482025146484375f)))) * _7357)) + float3(_549, _549, sin(mad(mad(_7445, 6.283185482025146484375f, _7449 * (-6.283185482025146484375f)), 2097152.0f, mad(_7448, 6.283185482025146484375f, floor(mad(mad(_6945, _7444, -_7449), 2097152.0f, _7448)) * (-6.283185482025146484375f)))) * _7378));
    float _7464 = Material_Material_PreshaderBuffer[83].z * _5415;
    float _7465 = 2.0f / _7464;
    float _7466 = _5707 * _7465;
    float _7469 = mad(_5708, _7465, (_7465 * Material_Material_PreshaderBuffer[76].z) * _5982);
    float _7470 = floor(_7466);
    float _7480 = _6523 * 0.5f;
    float _7483 = _7464 * Material_Material_PreshaderBuffer[20].w;
    float _7484 = 2.0f / _7483;
    float _7485 = _6538 * _7484;
    float _7488 = mad(_6539, _7484, (_7484 * Material_Material_PreshaderBuffer[76].w) * _5982);
    float _7489 = floor(_7485);
    float _7499 = _7480 * Material_Material_PreshaderBuffer[22].z;
    float _7505 = _7483 * Material_Material_PreshaderBuffer[20].w;
    float _7506 = 2.0f / _7505;
    float _7507 = _6574 * _7506;
    float _7510 = mad(_6575, _7506, (_7506 * Material_Material_PreshaderBuffer[77].x) * _5982);
    float _7511 = floor(_7507);
    float _7521 = _7499 * Material_Material_PreshaderBuffer[22].z;
    float _7527 = 2.0f / (_7505 * Material_Material_PreshaderBuffer[20].w);
    float _7528 = _6609 * _7527;
    float _7531 = mad(_6610, _7527, (_7527 * Material_Material_PreshaderBuffer[77].y) * _5982);
    float _7532 = floor(_7528);
    float _7547 = Material_Material_PreshaderBuffer[86].w * _5499;
    float _7548 = 2.0f / _7547;
    float _7549 = _6672 * _7548;
    float _7552 = mad(_6673, _7548, (_7548 * Material_Material_PreshaderBuffer[77].z) * _5982);
    float _7553 = floor(_7549);
    float _7563 = _7480 * Material_Material_PreshaderBuffer[30].w;
    float _7566 = _7547 * Material_Material_PreshaderBuffer[20].w;
    float _7567 = 2.0f / _7566;
    float _7568 = _6707 * _7567;
    float _7571 = mad(_6708, _7567, (_7567 * Material_Material_PreshaderBuffer[77].w) * _5982);
    float _7572 = floor(_7568);
    float _7582 = _7563 * Material_Material_PreshaderBuffer[22].z;
    float _7588 = _7566 * Material_Material_PreshaderBuffer[20].w;
    float _7589 = 2.0f / _7588;
    float _7590 = _6743 * _7589;
    float _7593 = mad(_6744, _7589, (_7589 * Material_Material_PreshaderBuffer[78].x) * _5982);
    float _7594 = floor(_7590);
    float _7604 = _7582 * Material_Material_PreshaderBuffer[22].z;
    float _7610 = 2.0f / (_7588 * Material_Material_PreshaderBuffer[20].w);
    float _7611 = _6778 * _7610;
    float _7614 = mad(_6779, _7610, (_7610 * Material_Material_PreshaderBuffer[78].y) * _5982);
    float _7615 = floor(_7611);
    float _7625 = _7604 * Material_Material_PreshaderBuffer[22].z;
    float3 _7630 = (((float3(_549, _549, sin(mad(mad(_7466, 6.283185482025146484375f, _7470 * (-6.283185482025146484375f)), 2097152.0f, mad(_7469, 6.283185482025146484375f, floor(mad(mad(_5707, _7465, -_7470), 2097152.0f, _7469)) * (-6.283185482025146484375f)))) * _7480) + float3(_549, _549, sin(mad(mad(_7485, 6.283185482025146484375f, _7489 * (-6.283185482025146484375f)), 2097152.0f, mad(_7488, 6.283185482025146484375f, floor(mad(mad(_6538, _7484, -_7489), 2097152.0f, _7488)) * (-6.283185482025146484375f)))) * _7499)) + float3(_549, _549, sin(mad(mad(_7507, 6.283185482025146484375f, _7511 * (-6.283185482025146484375f)), 2097152.0f, mad(_7510, 6.283185482025146484375f, floor(mad(mad(_6574, _7506, -_7511), 2097152.0f, _7510)) * (-6.283185482025146484375f)))) * _7521)) + float3(_549, _549, sin(mad(mad(_7528, 6.283185482025146484375f, _7532 * (-6.283185482025146484375f)), 2097152.0f, mad(_7531, 6.283185482025146484375f, floor(mad(mad(_6609, _7527, -_7532), 2097152.0f, _7531)) * (-6.283185482025146484375f)))) * (_7521 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_549, _549, sin(mad(mad(_7549, 6.283185482025146484375f, _7553 * (-6.283185482025146484375f)), 2097152.0f, mad(_7552, 6.283185482025146484375f, floor(mad(mad(_6672, _7548, -_7553), 2097152.0f, _7552)) * (-6.283185482025146484375f)))) * _7563) + float3(_549, _549, sin(mad(mad(_7568, 6.283185482025146484375f, _7572 * (-6.283185482025146484375f)), 2097152.0f, mad(_7571, 6.283185482025146484375f, floor(mad(mad(_6707, _7567, -_7572), 2097152.0f, _7571)) * (-6.283185482025146484375f)))) * _7582)) + float3(_549, _549, sin(mad(mad(_7590, 6.283185482025146484375f, _7594 * (-6.283185482025146484375f)), 2097152.0f, mad(_7593, 6.283185482025146484375f, floor(mad(mad(_6743, _7589, -_7594), 2097152.0f, _7593)) * (-6.283185482025146484375f)))) * _7604)) + float3(_549, _549, sin(mad(mad(_7611, 6.283185482025146484375f, _7615 * (-6.283185482025146484375f)), 2097152.0f, mad(_7614, 6.283185482025146484375f, floor(mad(mad(_6778, _7610, -_7615), 2097152.0f, _7614)) * (-6.283185482025146484375f)))) * _7625));
    float _7631 = Material_Material_PreshaderBuffer[90].x * _5499;
    float _7632 = 2.0f / _7631;
    float _7633 = _6842 * _7632;
    float _7636 = mad(_6843, _7632, (_7632 * Material_Material_PreshaderBuffer[77].z) * _5982);
    float _7637 = floor(_7633);
    float _7649 = _7631 * Material_Material_PreshaderBuffer[20].w;
    float _7650 = 2.0f / _7649;
    float _7651 = _6876 * _7650;
    float _7654 = mad(_6877, _7650, (_7650 * Material_Material_PreshaderBuffer[77].w) * _5982);
    float _7655 = floor(_7651);
    float _7670 = _7649 * Material_Material_PreshaderBuffer[20].w;
    float _7671 = 2.0f / _7670;
    float _7672 = _6911 * _7671;
    float _7675 = mad(_6912, _7671, (_7671 * Material_Material_PreshaderBuffer[78].x) * _5982);
    float _7676 = floor(_7672);
    float _7691 = 2.0f / (_7670 * Material_Material_PreshaderBuffer[20].w);
    float _7692 = _6945 * _7691;
    float _7695 = mad(_6946, _7691, (_7691 * Material_Material_PreshaderBuffer[78].y) * _5982);
    float _7696 = floor(_7692);
    float3 _7710 = _7630 + (((float3(_549, _549, sin(mad(mad(_7633, 6.283185482025146484375f, _7637 * (-6.283185482025146484375f)), 2097152.0f, mad(_7636, 6.283185482025146484375f, floor(mad(mad(_6842, _7632, -_7637), 2097152.0f, _7636)) * (-6.283185482025146484375f)))) * _7563) + float3(_549, _549, sin(mad(mad(_7651, 6.283185482025146484375f, _7655 * (-6.283185482025146484375f)), 2097152.0f, mad(_7654, 6.283185482025146484375f, floor(mad(mad(_6876, _7650, -_7655), 2097152.0f, _7654)) * (-6.283185482025146484375f)))) * _7582)) + float3(_549, _549, sin(mad(mad(_7672, 6.283185482025146484375f, _7676 * (-6.283185482025146484375f)), 2097152.0f, mad(_7675, 6.283185482025146484375f, floor(mad(mad(_6911, _7671, -_7676), 2097152.0f, _7675)) * (-6.283185482025146484375f)))) * _7604)) + float3(_549, _549, sin(mad(mad(_7692, 6.283185482025146484375f, _7696 * (-6.283185482025146484375f)), 2097152.0f, mad(_7695, 6.283185482025146484375f, floor(mad(mad(_6945, _7691, -_7696), 2097152.0f, _7695)) * (-6.283185482025146484375f)))) * _7625));
    float3 _7715 = mad(_3517, Material_Material_PreshaderBuffer[59].x.xxx, (_4892 + (_5157 + (_5414 + _5663))) + (_6967 + (_7216 + (_7463 + _7710))));
    float _7716 = _7715.z;
    float _7734 = clamp(mad(clamp(mad(_7716, MaterialCollection0_MaterialCollection0_Vectors[0].y, -Material_Material_PreshaderBuffer[90].y) * Material_Material_PreshaderBuffer[91].x, 0.0f, 1.0f), Material_Material_PreshaderBuffer[91].y, -Material_Material_PreshaderBuffer[91].z) * Material_Material_PreshaderBuffer[92].y, 0.0f, 1.0f);
    float3 _7736 = mad(_7716.xxx, in_var_TEXCOORD11_centroid.xyz, _640);
    float3 _7737 = ddx(View_View_ViewTilePosition);
    float3 _7739 = ddx(_7736);
    float3 _7741 = ddy(View_View_ViewTilePosition);
    float3 _7743 = ddy(_7736);
    float3 _7747 = ddx(View_View_ViewTilePosition);
    float3 _7749 = ddx(_640);
    float3 _7751 = ddy(View_View_ViewTilePosition);
    float3 _7753 = ddy(_640);
    float3 _7756 = normalize(cross((_7747 * 2097152.0f) + _7749, (_7751 * 2097152.0f) + _7753));
    float3 _7762 = lerp((normalize(cross((_7737 * 2097152.0f) + _7739, (_7741 * 2097152.0f) + _7743)) - _7756) + in_var_TEXCOORD11_centroid.xyz, float3(0.0f, 0.0f, 1.0f), Material_Material_PreshaderBuffer[92].w.xxx);
    float3 _7769 = Material_Material_PreshaderBuffer[93].y.xxx;
    float3 _7782 = float3((View_View_ViewTilePosition * _7769).xy, 0.0f);
    float3 _7783 = float3((mad(_7762, Material_Material_PreshaderBuffer[93].x.xxx, _641) * _7769).xy, ((_1160 * Material_Material_PreshaderBuffer[93].w).xx + float2(1.0f, 0.0f)).x);
    float3 _7793 = 0.0f.xxx;
    float _7798 = 0.0f;
    _7793 = (((_7782 - floor(_7782 + ((_7783 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _7783) * 1.0f;
    _7798 = 0.0f;
    float _7796 = 1.0f;
    uint _7800 = 0u;
    [loop]
    for (; _7800 < 10u; )
    {
        float3 _7804 = frac(_7793);
        float _7806 = dot(floor(_7793), float3(19.0f, 47.0f, 101.0f));
        uint3 _7818 = (uint3(int3(int(_7806), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7819 = _7818.y;
        uint _7820 = _7818.z;
        uint _7823 = _7818.x + (_7819 * _7820);
        uint _7825 = _7819 + (_7820 * _7823);
        uint3 _7830 = uint3(0u, 0u, 0u);
        _7830.x = _7823 + (_7825 * (_7820 + (_7823 * _7825)));
        uint3 _7831 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _7844 = (uint3(int3(int(_7806 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7845 = _7844.y;
        uint _7846 = _7844.z;
        uint _7849 = _7844.x + (_7845 * _7846);
        uint _7851 = _7845 + (_7846 * _7849);
        uint3 _7856 = uint3(0u, 0u, 0u);
        _7856.x = _7849 + (_7851 * (_7846 + (_7849 * _7851)));
        uint3 _7869 = (uint3(int3(int(_7806 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7870 = _7869.y;
        uint _7871 = _7869.z;
        uint _7874 = _7869.x + (_7870 * _7871);
        uint _7876 = _7870 + (_7871 * _7874);
        uint3 _7881 = uint3(0u, 0u, 0u);
        _7881.x = _7874 + (_7876 * (_7871 + (_7874 * _7876)));
        uint3 _7894 = (uint3(int3(int(_7806 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7895 = _7894.y;
        uint _7896 = _7894.z;
        uint _7899 = _7894.x + (_7895 * _7896);
        uint _7901 = _7895 + (_7896 * _7899);
        uint3 _7906 = uint3(0u, 0u, 0u);
        _7906.x = _7899 + (_7901 * (_7896 + (_7899 * _7901)));
        uint3 _7919 = (uint3(int3(int(_7806 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7920 = _7919.y;
        uint _7921 = _7919.z;
        uint _7924 = _7919.x + (_7920 * _7921);
        uint _7926 = _7920 + (_7921 * _7924);
        uint3 _7931 = uint3(0u, 0u, 0u);
        _7931.x = _7924 + (_7926 * (_7921 + (_7924 * _7926)));
        uint3 _7944 = (uint3(int3(int(_7806 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7945 = _7944.y;
        uint _7946 = _7944.z;
        uint _7949 = _7944.x + (_7945 * _7946);
        uint _7951 = _7945 + (_7946 * _7949);
        uint3 _7956 = uint3(0u, 0u, 0u);
        _7956.x = _7949 + (_7951 * (_7946 + (_7949 * _7951)));
        uint3 _7969 = (uint3(int3(int(_7806 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7970 = _7969.y;
        uint _7971 = _7969.z;
        uint _7974 = _7969.x + (_7970 * _7971);
        uint _7976 = _7970 + (_7971 * _7974);
        uint3 _7981 = uint3(0u, 0u, 0u);
        _7981.x = _7974 + (_7976 * (_7971 + (_7974 * _7976)));
        uint3 _7994 = (uint3(int3(int(_7806 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7995 = _7994.y;
        uint _7996 = _7994.z;
        uint _7999 = _7994.x + (_7995 * _7996);
        uint _8001 = _7995 + (_7996 * _7999);
        uint3 _8006 = uint3(0u, 0u, 0u);
        _8006.x = _7999 + (_8001 * (_7996 + (_7999 * _8001)));
        float4 _8017 = float4(_7804, 0.0f);
        float4 _8023 = ((_8017 * _8017) * _8017) * mad(_8017, (_8017 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _8024 = _8023.x;
        float _8027 = _8023.y;
        float _8034 = abs(lerp(lerp(lerp(dot(mad(float3((_7830 >> _7831).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7804), dot(mad(float3((_7856 >> _7831).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7804 - float3(1.0f, 0.0f, 0.0f)), _8024), lerp(dot(mad(float3((_7881 >> _7831).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7804 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_7906 >> _7831).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7804 - float3(1.0f, 1.0f, 0.0f)), _8024), _8027), lerp(lerp(dot(mad(float3((_7931 >> _7831).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7804 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_7956 >> _7831).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7804 - float3(1.0f, 0.0f, 1.0f)), _8024), lerp(dot(mad(float3((_7981 >> _7831).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7804 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_8006 >> _7831).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7804 - 1.0f.xxx), _8024), _8027), _8023.z));
        float _7799 = mad(_8034, _7796, _7798);
        _7793 *= 2.0f;
        _7796 *= 0.5f;
        _7798 = _7799;
        _7800++;
        continue;
    }
    float _8038 = -_7734;
    float _8044 = clamp(mad(mad(_8038, Material_Material_PreshaderBuffer[94].x, lerp(0.0f, 1.0f, _7798)) / mad(_8038, Material_Material_PreshaderBuffer[94].x, mad(_7734, Material_Material_PreshaderBuffer[94].x, 1.0f)), -1.0f, 1.0f), 0.0f, 1.0f);
    float _8053 = clamp(lerp(Material_Material_PreshaderBuffer[94].z, Material_Material_PreshaderBuffer[94].y, (_8044 <= 0.0f) ? 0.0f : pow(_8044, 2.0f)), 0.0f, 1.0f);
    float _8054 = _7734 * _8053;
    float3 _8057 = Material_Material_PreshaderBuffer[94].w.xxx;
    float3 _8058 = View_View_ViewTilePosition * _8057;
    float3 _8059 = _641 * _8057;
    float3 _8070 = 0.0f.xxx;
    float3 _8073 = 0.0f.xxx;
    float _8077 = 0.0f;
    _8070 = _542;
    _8073 = mad(_641, _8057, mad(View_View_ViewTilePosition, _8057, -floor(mad(View_View_ViewTilePosition, _8057, (_8059 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _8077 = 0.0f;
    float3 _8074 = 0.0f.xxx;
    float _8076 = 0.0f;
    float _8078 = 0.0f;
    float3 _8071 = 0.0f.xxx;
    float _8075 = 1.0f;
    uint _8079 = 0u;
    [loop]
    for (; _8079 < 1u; _8070 = _8071, _8073 = _8074, _8075 = _8076, _8077 = _8078, _8079++)
    {
        float3 _8084 = frac(_8073);
        float3 _8085 = floor(_8073);
        float3 _8086 = _8070;
        _8086.x = 0.0f;
        float4 _8088 = 0.0f.xxxx;
        _8088 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _8071 = _8086;
        float3 _8091 = 0.0f.xxx;
        float4 _8089 = 0.0f.xxxx;
        float3 _8098 = 0.0f.xxx;
        for (; _8071.x <= 1.0f; _8091 = _8098, _8091.x = _8098.x + 1.0f, _8088 = _8089, _8071 = _8091)
        {
            float3 _8096 = _8071;
            _8096.y = 0.0f;
            _8098 = _8096;
            _8089 = _8088;
            float3 _8099 = 0.0f.xxx;
            float4 _8101 = 0.0f.xxxx;
            float3 _8110 = 0.0f.xxx;
            for (; _8098.y <= 1.0f; _8099 = _8110, _8099.y = _8110.y + 1.0f, _8098 = _8099, _8089 = _8101)
            {
                float3 _8106 = _8098;
                _8106.z = 0.0f;
                _8101 = _8089;
                _8110 = _8106;
                for (; _8110.z <= 1.0f; )
                {
                    float3 _8115 = _8085 + _8110;
                    uint3 _8120 = (uint3(int3(float3(_8115.x, _8115.y, _8115.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _8121 = _8120.y;
                    uint _8122 = _8120.z;
                    uint _8125 = _8120.x + (_8121 * _8122);
                    uint _8127 = _8121 + (_8122 * _8125);
                    uint _8129 = _8122 + (_8125 * _8127);
                    uint _8131 = _8125 + (_8127 * _8129);
                    uint3 _8132 = _8120;
                    _8132.x = _8131;
                    uint _8134 = _8127 + (_8129 * _8131);
                    _8132.y = _8134;
                    _8132.z = _8129 + (_8131 * _8134);
                    float3 _8146 = _8084 - (_8110 + (normalize(mad(float3(_8132 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _8111 = _8110;
                    _8111.z = _8110.z + 1.0f;
                    _8101 = float4(0.0f, 0.0f, 0.0f, min(_8101.w, dot(_8146, _8146)));
                    _8110 = _8111;
                    continue;
                }
            }
        }
        _8078 = mad(abs(mad(sqrt(_8088.w), 2.0f, -1.0f)), _8075, _8077);
        _8074 = _8073 * 2.0f;
        _8076 = _8075 * 0.5f;
    }
    float3 _8172 = 0.0f.xxx;
    float3 _8175 = 0.0f.xxx;
    float _8179 = 0.0f;
    _8172 = _542;
    _8175 = mad(_8059, 1.2000000476837158203125f.xxx, mad(_8058, 1.2000000476837158203125f.xxx, -floor(mad(_8058, 1.2000000476837158203125f.xxx, ((_8059 * 1.2000000476837158203125f.xxx) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _8179 = 0.0f;
    float3 _8176 = 0.0f.xxx;
    float _8178 = 0.0f;
    float _8180 = 0.0f;
    float3 _8173 = 0.0f.xxx;
    float _8177 = 1.0f;
    uint _8181 = 0u;
    [loop]
    for (; _8181 < 1u; _8172 = _8173, _8175 = _8176, _8177 = _8178, _8179 = _8180, _8181++)
    {
        float3 _8186 = frac(_8175);
        float3 _8187 = floor(_8175);
        float3 _8188 = _8172;
        _8188.x = 0.0f;
        float4 _8190 = 0.0f.xxxx;
        _8190 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _8173 = _8188;
        float3 _8193 = 0.0f.xxx;
        float4 _8191 = 0.0f.xxxx;
        float3 _8200 = 0.0f.xxx;
        for (; _8173.x <= 1.0f; _8193 = _8200, _8193.x = _8200.x + 1.0f, _8190 = _8191, _8173 = _8193)
        {
            float3 _8198 = _8173;
            _8198.y = 0.0f;
            _8200 = _8198;
            _8191 = _8190;
            float3 _8201 = 0.0f.xxx;
            float4 _8203 = 0.0f.xxxx;
            float3 _8212 = 0.0f.xxx;
            for (; _8200.y <= 1.0f; _8201 = _8212, _8201.y = _8212.y + 1.0f, _8200 = _8201, _8191 = _8203)
            {
                float3 _8208 = _8200;
                _8208.z = 0.0f;
                _8203 = _8191;
                _8212 = _8208;
                for (; _8212.z <= 1.0f; )
                {
                    float3 _8217 = _8187 + _8212;
                    uint3 _8222 = (uint3(int3(float3(_8217.x, _8217.y, _8217.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _8223 = _8222.y;
                    uint _8224 = _8222.z;
                    uint _8227 = _8222.x + (_8223 * _8224);
                    uint _8229 = _8223 + (_8224 * _8227);
                    uint _8231 = _8224 + (_8227 * _8229);
                    uint _8233 = _8227 + (_8229 * _8231);
                    uint3 _8234 = _8222;
                    _8234.x = _8233;
                    uint _8236 = _8229 + (_8231 * _8233);
                    _8234.y = _8236;
                    _8234.z = _8231 + (_8233 * _8236);
                    float3 _8248 = _8186 - (_8212 + (normalize(mad(float3(_8234 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _8213 = _8212;
                    _8213.z = _8212.z + 1.0f;
                    _8203 = float4(0.0f, 0.0f, 0.0f, min(_8203.w, dot(_8248, _8248)));
                    _8212 = _8213;
                    continue;
                }
            }
        }
        _8180 = mad(abs(mad(sqrt(_8190.w), 2.0f, -1.0f)), _8177, _8179);
        _8176 = _8175 * 2.0f;
        _8178 = _8177 * 0.5f;
    }
    float _8263 = clamp(lerp(-1.0f, 1.0f, _8077), 0.0f, 1.0f) + clamp(lerp(-1.0f, 1.0f, _8179), 0.0f, 1.0f);
    float _8268 = clamp(_773 * mad(mad(_886, _1442, -_1652), Material_Material_PreshaderBuffer[7].y, mad(_7734, _8053, -_8263)), 0.0f, 1.0f);
    float3 _8276 = mad(_3517.z.xxx, in_var_TEXCOORD11_centroid.xyz, _640);
    float _8293 = max(abs(1.0f - max(0.0f, dot(_7762, _657))), 9.9999997473787516355514526367188e-05f);
    bool _8296 = _8293 <= 0.0f;
    float3 _8323 = mad((_773 * (mad(_1443, _1652, _1443) + mad(_8054, _8263, _8054))).xxx, in_var_TEXCOORD11_centroid.xyz, _640);
    float3 _8324 = ddx(View_View_ViewTilePosition);
    float3 _8326 = ddx(_8323);
    float3 _8328 = ddy(View_View_ViewTilePosition);
    float3 _8330 = ddy(_8323);
    float3 _8337 = lerp(lerp(lerp((normalize(cross((ddx(View_View_ViewTilePosition) * 2097152.0f) + ddx(_8276), (ddy(View_View_ViewTilePosition) * 2097152.0f) + ddy(_8276))) - _7756) + in_var_TEXCOORD11_centroid.xyz, lerp(_7762, float3(0.0f, 0.0f, 1.0f), lerp(Material_Material_PreshaderBuffer[96].z, Material_Material_PreshaderBuffer[96].y, mad(_8296 ? 0.0f : pow(_8293, Material_Material_PreshaderBuffer[95].z), Material_Material_PreshaderBuffer[96].x, Material_Material_PreshaderBuffer[95].w)).xxx), _772.xxx), float3(0.0f, 0.0f, 1.0f), lerp(Material_Material_PreshaderBuffer[96].w, 0.0f, _772).xxx), (normalize(cross((_8324 * 2097152.0f) + _8326, (_8328 * 2097152.0f) + _8330)) - _7756) + in_var_TEXCOORD11_centroid.xyz, _1443.xxx);
    float3 _8369 = Material_Material_PreshaderBuffer[107].xyz + Material_Material_PreshaderBuffer[106].xyz;
    if ((lerp(1.0f, 0.0f, clamp(mad(sqrt(mad(mad(_678, _678 * 4.76837158203125e-07f, mad(_668, _668 * 4.76837158203125e-07f, _672 * (_672 * 4.76837158203125e-07f))), 4.76837158203125e-07f, mad(_677, mad(_678, 9.5367431640625e-07f, _677), mad(_667, mad(_668, 9.5367431640625e-07f, _667), _671 * mad(_672, 9.5367431640625e-07f, _671))))) * (1.0f / max(9.9999997473787516355514526367188e-06f, MaterialCollection0_MaterialCollection0_Vectors[1].x)), -209715200000.0f, 100000.0f), 0.0f, 1.0f)) - 0.33329999446868896484375f) < 0.0f)
    {
        discard;
    }
    float _8387 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    uint _8388 = in_var_PRIMITIVE_ID * 41u;
    uint _8405 = (((1u | (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8388].x) & 512u) != 0u) ? 32u : 0u)) | (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8388].x) & 256u) != 0u) ? 64u : 0u)) & 4294967288u) | 4u;
    float _8414 = mad(clamp(lerp(lerp(Material_Material_PreshaderBuffer[105].x, Material_Material_PreshaderBuffer[103].w, mad(_8296 ? 0.0f : pow(_8293, Material_Material_PreshaderBuffer[104].y), Material_Material_PreshaderBuffer[104].w, Material_Material_PreshaderBuffer[104].z)), 1.0f, _8268), 0.0f, 1.0f), View_View_SpecularOverrideParameter.w, View_View_SpecularOverrideParameter.x);
    float4 _8415 = 0.0f.xxxx;
    _8415.y = _8414;
    float _8422 = clamp(max(View_View_MinRoughness, mad(lerp(Material_Material_PreshaderBuffer[95].y, Material_Material_PreshaderBuffer[95].x, _8268), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x)), 0.0f, 1.0f);
    _8415.z = _8422;
    float _8424 = clamp(lerp(Material_Material_PreshaderBuffer[97].x, 1.0f, _8268), 0.0f, 1.0f);
    _8415.w = _8424;
    float3 _8427 = clamp((Material_Material_PreshaderBuffer[107].xyz / _8369).xyz, 0.0f.xxx, 1.0f.xxx);
    float4 _8428 = float4(_8427.x, _8427.y, _8427.z, 0.0f.xxxx.w);
    _8428.w = 0.0f;
    float3 _8434 = mad(clamp(lerp(0.0f, Material_Material_PreshaderBuffer[105].y, _8268).xxx.xyz, 0.0f.xxx, 1.0f.xxx), View_View_DiffuseOverrideParameter.www, View_View_DiffuseOverrideParameter.xyz).xyz;
    float3 _8435 = normalize(_8337);
    float3 _8444 = 0.0f.xxx;
    float3 _8445 = 0.0f.xxx;
    [branch]
    if (!((asuint(dot(_8435, _8435)) & 2139095040u) != 2139095040u))
    {
        float3 _8443 = normalize(in_var_TEXCOORD11_centroid.xyz);
        _8444 = _8443;
        _8445 = _8443;
    }
    else
    {
        _8444 = _8337;
        _8445 = _8435;
    }
    float _8446 = 1.0f - _8424;
    bool _8454 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _8460 = 0.0f;
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8388].x) & 2u) != 0u) && _8454)
    {
        _8460 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _8460 = 1.0f;
    }
    float _8510 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8388].x) & 4u) != 0u)
    {
        float3 _8478 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _640, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _8489 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_8478.x), int(_8478.y), int(_8478.z), 0).xyz, 0)));
        _8510 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_8489.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_8478 / _8489.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _8510 = _8460;
    }
    float4 _8511 = float4(_8510, 1.0f, 1.0f, 1.0f);
    bool _8513 = all(bool4(_8511.x == 0.0f.xxxx.x, _8511.y == 0.0f.xxxx.y, _8511.z == 0.0f.xxxx.z, _8511.w == 0.0f.xxxx.w));
    bool _8515 = all(bool4(_8511.x == 1.0f.xxxx.x, _8511.y == 1.0f.xxxx.y, _8511.z == 1.0f.xxxx.z, _8511.w == 1.0f.xxxx.w));
    uint _8534 = 0u;
    if ((!_8513) && (!_8515))
    {
        _8534 = _8405 | 8u;
    }
    else
    {
        uint _8532 = 0u;
        if (_8513)
        {
            _8532 = (_8405 | 0u) | 16u;
        }
        else
        {
            uint _8529 = 0u;
            if (_8515)
            {
                _8529 = (_8405 | 0u) | 0u;
            }
            else
            {
                _8529 = _8405;
            }
            _8532 = _8529;
        }
        _8534 = _8532;
    }
    float _8535 = 0.07999999821186065673828125f * _8414;
    float3 _8540 = (_8434 * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _8545 = (_8535.xxx * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _8548 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _8553 = 0.0f.xxx;
    if (_8548)
    {
        _8553 = _8540 + (_8545 * 0.449999988079071044921875f);
    }
    else
    {
        _8553 = _8540;
    }
    bool3 _8554 = _8548.xxx;
    float3 _8555 = float3(_8554.x ? 0.0f.xxx.x : _8545.x, _8554.y ? 0.0f.xxx.y : _8545.y, _8554.z ? 0.0f.xxx.z : _8545.z);
    float3 _8624 = 0.0f.xxx;
    if (_8454)
    {
        float4 _8578 = 0.0f.xxxx;
        _8578.y = (-0.48860299587249755859375f) * _8445.y;
        _8578.z = 0.48860299587249755859375f * _8445.z;
        _8578.w = (-0.48860299587249755859375f) * _8445.x;
        float3 _8585 = _8445 * _8445;
        float4 _8588 = 0.0f.xxxx;
        _8588.x = (1.09254801273345947265625f * _8445.x) * _8445.y;
        _8588.y = ((-1.09254801273345947265625f) * _8445.y) * _8445.z;
        _8588.z = 0.3153919875621795654296875f * mad(3.0f, _8585.z, -1.0f);
        _8588.w = ((-1.09254801273345947265625f) * _8445.x) * _8445.z;
        _8578.x = 0.886227548122406005859375f;
        float3 _8604 = _8578.yzw * 2.094395160675048828125f;
        float4 _8605 = float4(_8578.x, _8604.x, _8604.y, _8604.z);
        float4 _8606 = _8588 * 0.785398185253143310546875f;
        float _8607 = (_8585.x - _8585.y) * 0.4290426075458526611328125f;
        float3 _8612 = 0.0f.xxx;
        _8612.x = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x, _8607, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _8605) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _8606));
        _8612.y = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y, _8607, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _8605) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _8606));
        _8612.z = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z, _8607, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _8605) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _8606));
        _8624 = max(0.0f.xxx, _8612);
    }
    else
    {
        _8624 = 0.0f.xxx;
    }
    float3 _8627 = _8624 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _8642 = _8553 * _8424;
    uint2 _8669 = uint2(_623 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    bool _8686 = true && (SingleLayerWater_SingleLayerWater_bSeparateMainDirLightLuminance != 0u);
    float4 _8700 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _8700 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(0.0f.xx)), 0).xy, 0));
    }
    else
    {
        _8700 = 1.0f.xxxx;
    }
    float4 _8701 = _8700 * _8700;
    uint _8704 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8388].x);
    uint _8717 = (uint((_8704 & 2048u) != 0u) | (uint((_8704 & 4096u) != 0u) << 1u)) | (uint((_8704 & 8192u) != 0u) << 2u);
    float4 _9825 = 0.0f.xxxx;
    float3 _9826 = 0.0f.xxx;
    float _9827 = 0.0f;
    float4 _9828 = 0.0f.xxxx;
    float4 _9829 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        float4 _8742 = float4(_549, float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 2u) >> 1u), float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 4u) >> 2u), float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 8u) >> 3u));
        _8742.x = 1.0f;
        float4 _8746 = _8511;
        _8746.x = 1.0f;
        float _8825 = 0.0f;
        if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _8754 = _643.xxxx;
            float4 _8756 = float4(bool4(_8754.x >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.x, _8754.y >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.y, _8754.z >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.z, _8754.w >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _8764 = uint(((_8756.x + _8756.y) + _8756.z) + _8756.w);
            float _8824 = 0.0f;
            if (_8764 < OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _8774 = mul(float4(_639, 1.0f), OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_8764]);
                float2 _8778 = _8774.xy / _8774.w.xx;
                bool2 _8782 = bool2(_8778.x >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8764].xy.x, _8778.y >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8764].xy.y);
                bool2 _8784 = bool2(_8778.x <= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8764].zw.x, _8778.y <= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8764].zw.y);
                float _8823 = 0.0f;
                if (all(bool2(_8782.x && _8784.x, _8782.y && _8784.y)))
                {
                    float2 _8802 = mad(_8778, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy, (-0.5f).xx);
                    float2 _8803 = frac(_8802);
                    float4 _8814 = clamp((OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(OpaqueBasePass_Shared_Forward_ShadowmapSampler, (floor(_8802) + 1.0f.xx) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - mad(1.0f - _8774.z, 4000.0f, -1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _8818 = lerp(_8814.wx, _8814.zy, _8803.xx);
                    _8823 = lerp(_8818.x, _8818.y, _8803.y);
                }
                else
                {
                    _8823 = 1.0f;
                }
                _8824 = _8823;
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
        float _9512 = 0.0f;
        [branch]
        if ((!(SingleLayerWater_SingleLayerWater_bMainDirectionalLightVSMFiltering != 0u)) && (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM != (-1)))
        {
            float _9510 = 0.0f;
            do
            {
                float _8835 = max(0.0f, 0.0f);
                uint _8836 = uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM);
                uint _8837 = _8836 * 336u;
                uint _8839 = (_8837 + 96u) >> 2u;
                float4x4 _8853 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                _8853[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8839 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8839 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8839 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8839 + 3u) * 4 + 0)));
                uint _8855 = (_8837 + 128u) >> 2u;
                float4x4 _8869 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                _8869[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8855 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8855 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8855 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8855 + 3u) * 4 + 0)));
                uint _8871 = (_8837 + 144u) >> 2u;
                _8869[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8871 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8871 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8871 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8871 + 3u) * 4 + 0)));
                uint _8887 = (_8837 + 160u) >> 2u;
                _8869[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8887 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8887 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8887 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8887 + 3u) * 4 + 0)));
                uint _8903 = (_8837 + 176u) >> 2u;
                _8869[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8903 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8903 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8903 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8903 + 3u) * 4 + 0)));
                uint _8919 = (_8837 + 256u) >> 2u;
                float3 _8929 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_8919 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8919 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8919 + 2u) * 4 + 0)));
                uint _8931 = (_8837 + 268u) >> 2u;
                uint _8935 = (_8837 + 272u) >> 2u;
                uint _8947 = (_8837 + 288u) >> 2u;
                if (VirtualShadowMap_ProjectionData.Load(_8931 * 4 + 0) == 0u)
                {
                    int _9182 = max(0, (int(floor(log2(length(((View_View_ViewTilePosition - (-_8929)) * 2097152.0f) + (_640 - (-asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_8947 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8947 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8947 + 2u) * 4 + 0))))))) + asfloat(VirtualShadowMap_ProjectionData.Load(((_8837 + 300u) >> 2u) * 4 + 0)))) - int(VirtualShadowMap_ProjectionData.Load(((_8837 + 312u) >> 2u) * 4 + 0))));
                    if (_9182 < int(VirtualShadowMap_ProjectionData.Load(((_8837 + 316u) >> 2u) * 4 + 0)))
                    {
                        int _9186 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM + _9182;
                        uint _9187 = uint(_9186);
                        uint _9188 = _9187 * 336u;
                        uint _9190 = (_9188 + 96u) >> 2u;
                        uint _9205 = (_9188 + 112u) >> 2u;
                        uint _9214 = (_9188 + 128u) >> 2u;
                        float4x4 _9228 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9228[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9214 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9214 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9214 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9214 + 3u) * 4 + 0)));
                        uint _9230 = (_9188 + 144u) >> 2u;
                        _9228[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9230 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9230 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9230 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9230 + 3u) * 4 + 0)));
                        uint _9246 = (_9188 + 160u) >> 2u;
                        _9228[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9246 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9246 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9246 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9246 + 3u) * 4 + 0)));
                        uint _9262 = (_9188 + 176u) >> 2u;
                        _9228[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9262 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9262 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9262 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9262 + 3u) * 4 + 0)));
                        uint _9278 = (_9188 + 256u) >> 2u;
                        uint _9290 = (_9188 + 272u) >> 2u;
                        float4 _9309 = mul(float4(((View_View_ViewTilePosition + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9278 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9278 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9278 + 2u) * 4 + 0)))) * 2097152.0f) + (_640 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9290 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9290 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9290 + 2u) * 4 + 0)))), 1.0f), _9228);
                        float2 _9310 = _9309.xy;
                        uint2 _9312 = uint2(_9310 * 128.0f);
                        uint _9328 = 0u;
                        do
                        {
                            if (uint(int(_9187)) < 8192u)
                            {
                                _9328 = _9187;
                                break;
                            }
                            _9328 = (8192u + ((_9187 - 8192u) * 21845u)) + (_9312.x + (_9312.y << 7u));
                            break;
                        } while(false);
                        uint _9336 = (VirtualShadowMap_PageTable[_9328] >> 20u) & 63u;
                        bool _9338 = (VirtualShadowMap_PageTable[_9328] & 134217728u) != 0u;
                        float _9501 = 0.0f;
                        bool _9502 = false;
                        if (_9338)
                        {
                            float _9477 = 0.0f;
                            float _9478 = 0.0f;
                            uint2 _9479 = uint2(0u, 0u);
                            uint2 _9480 = uint2(0u, 0u);
                            bool _9481 = false;
                            if (_9336 > 0u)
                            {
                                uint _9351 = (_9188 + 304u) >> 2u;
                                uint _9354 = _9351 + 1u;
                                uint _9359 = uint(int(_9187 + _9336));
                                uint _9362 = ((_9359 * 336u) + 304u) >> 2u;
                                int _9374 = int(_9336);
                                uint2 _9382 = ((_9312 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_9351 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_9354 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_9362 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9362 + 1u) * 4 + 0)))) << (_9374.xx & int2(31, 31)))) >> (_9336.xx & uint2(31u, 31u));
                                uint2 _9383 = _9382 * uint2(128u, 128u);
                                uint _9397 = uint(_9186 + _9374) * 336u;
                                uint _9399 = (_9397 + 112u) >> 2u;
                                uint _9414 = (_9397 + 304u) >> 2u;
                                float _9435 = (_9374 >= 0) ? (1.0f / float(1u << (uint(_9374) & 31u))) : float(1u << (uint(-_9374) & 31u));
                                uint _9464 = 0u;
                                do
                                {
                                    if (uint(int(_9359)) < 8192u)
                                    {
                                        _9464 = _9359;
                                        break;
                                    }
                                    _9464 = (8192u + ((_9359 - 8192u) * 21845u)) + (_9382.x + (_9382.y << 7u));
                                    break;
                                } while(false);
                                _9477 = _9435;
                                _9478 = mad(-_9435, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9205 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9205 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9205 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9205 + 3u) * 4 + 0))).z, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9399 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9399 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9399 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9399 + 3u) * 4 + 0))).z);
                                _9479 = clamp(uint2(((_9310 * _9435) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_9414 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9414 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_9351 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_9354 * 4 + 0)))) * _9435)) * 0.25f).xy) * 16384.0f), _9383, _9383 + uint2(127u, 127u));
                                _9480 = uint2(VirtualShadowMap_PageTable[_9464] & 1023u, (VirtualShadowMap_PageTable[_9464] >> 10u) & 1023u);
                                _9481 = ((VirtualShadowMap_PageTable[_9464] & 134217728u) != 0u) && (((VirtualShadowMap_PageTable[_9464] >> 20u) & 63u) == 0u);
                            }
                            else
                            {
                                _9477 = 1.0f;
                                _9478 = 0.0f;
                                _9479 = uint2(_9310 * 16384.0f);
                                _9480 = uint2(VirtualShadowMap_PageTable[_9328] & 1023u, (VirtualShadowMap_PageTable[_9328] >> 10u) & 1023u);
                                _9481 = _9338 && (_9336 == 0u);
                            }
                            float _9499 = 0.0f;
                            if (_9481)
                            {
                                int4 _9490 = int4(uint4((_9480 * uint2(128u, 128u)) + (_9479 & uint2(127u, 127u)), 0u, 0u));
                                _9499 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_9490.xyz, _9490.w)).x) - _9478) / _9477;
                            }
                            else
                            {
                                _9499 = 0.0f;
                            }
                            _9501 = _9499;
                            _9502 = _9481 ? true : false;
                        }
                        else
                        {
                            _9501 = 0.0f;
                            _9502 = false;
                        }
                        if (_9502)
                        {
                            _9510 = (mad(_8835, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9190 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9190 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9190 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9190 + 3u) * 4 + 0))).z, _9501) > _9309.z) ? 0.0f : 1.0f;
                            break;
                        }
                    }
                }
                else
                {
                    float3 _8982 = ((View_View_ViewTilePosition + _8929) * 2097152.0f) + (_640 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_8935 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8935 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8935 + 2u) * 4 + 0))));
                    float4x4 _9095 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    int _9096 = 0;
                    float4x4 _9097 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    if (VirtualShadowMap_ProjectionData.Load(_8931 * 4 + 0) != 2u)
                    {
                        uint _9010 = 0u;
                        do
                        {
                            float _8988 = _8982.x;
                            float _8989 = abs(_8988);
                            float _8990 = _8982.y;
                            float _8991 = abs(_8990);
                            float _8993 = _8982.z;
                            float _8994 = abs(_8993);
                            if ((_8989 >= _8991) && (_8989 >= _8994))
                            {
                                _9010 = (_8988 > 0.0f) ? 0u : 1u;
                                break;
                            }
                            else
                            {
                                if (_8991 > _8994)
                                {
                                    _9010 = (_8990 > 0.0f) ? 2u : 3u;
                                    break;
                                }
                                else
                                {
                                    _9010 = (_8993 > 0.0f) ? 4u : 5u;
                                    break;
                                }
                                break; // unreachable workaround
                            }
                            break; // unreachable workaround
                        } while(false);
                        int _9012 = int(_8836 + _9010);
                        uint _9014 = uint(_9012) * 336u;
                        uint _9016 = (_9014 + 96u) >> 2u;
                        float4x4 _9030 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9030[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9016 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9016 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9016 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9016 + 3u) * 4 + 0)));
                        uint _9032 = (_9014 + 128u) >> 2u;
                        float4x4 _9046 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9046[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9032 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9032 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9032 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9032 + 3u) * 4 + 0)));
                        uint _9048 = (_9014 + 144u) >> 2u;
                        _9046[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9048 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9048 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9048 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9048 + 3u) * 4 + 0)));
                        uint _9064 = (_9014 + 160u) >> 2u;
                        _9046[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9064 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9064 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9064 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9064 + 3u) * 4 + 0)));
                        uint _9080 = (_9014 + 176u) >> 2u;
                        _9046[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9080 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9080 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9080 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9080 + 3u) * 4 + 0)));
                        _9095 = _9030;
                        _9096 = _9012;
                        _9097 = _9046;
                    }
                    else
                    {
                        _9095 = _8853;
                        _9096 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM;
                        _9097 = _8869;
                    }
                    float4 _9102 = mul(float4(_8982, 1.0f), _9097);
                    float _9103 = _9102.w;
                    float3 _9106 = _9102.xyz / _9103.xxx;
                    float2 _9107 = _9106.xy;
                    float _9160 = 0.0f;
                    bool _9161 = false;
                    do
                    {
                        bool _9117 = false;
                        uint _9110 = uint(_9096);
                        uint2 _9112 = uint2(_9107 * 128.0f);
                        uint _9128 = 0u;
                        do
                        {
                            _9117 = uint(int(_9110)) < 8192u;
                            if (_9117)
                            {
                                _9128 = _9110;
                                break;
                            }
                            _9128 = (8192u + ((_9110 - 8192u) * 21845u)) + (_9112.x + (_9112.y << 7u));
                            break;
                        } while(false);
                        if ((VirtualShadowMap_PageTable[_9128] & 134217728u) != 0u)
                        {
                            int4 _9153 = int4(uint4((uint2(VirtualShadowMap_PageTable[_9128] & 1023u, (VirtualShadowMap_PageTable[_9128] >> 10u) & 1023u) * uint2(128u, 128u)) + (uint2(_9107 * float(16384u >> ((_9117 ? 7u : ((VirtualShadowMap_PageTable[_9128] >> 20u) & 63u)) & 31u))) & uint2(127u, 127u)), 0u, 0u));
                            _9160 = asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_9153.xyz, _9153.w)).x);
                            _9161 = true;
                            break;
                        }
                        _9160 = 0.0f;
                        _9161 = false;
                        break;
                    } while(false);
                    if (_9161)
                    {
                        _9510 = ((_9160 - (((-_8835) * _9095[2].z) / _9103)) > _9106.z) ? 0.0f : 1.0f;
                        break;
                    }
                }
                _9510 = 1.0f;
                break;
            } while(false);
            _9512 = _8825 * _9510;
        }
        else
        {
            _9512 = _8825;
        }
        float _9519 = clamp(mad(_643, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
        float _9521 = lerp(_9512, lerp(1.0f, dot(_8746, _8742), dot(_8742, 1.0f.xxxx)), _9519 * _9519);
        float3 _9796 = 0.0f.xxx;
        float3 _9797 = 0.0f.xxx;
        [branch]
        if ((_9521 + min(_9521, 1.0f)) > 0.0f)
        {
            float _9527 = max(_8422, View_View_MinRoughness);
            float _9528 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _9531 = rsqrt(_9528);
            float3 _9532 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _9531;
            float _9533 = dot(_8445, _9532);
            float _9551 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _9540 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_9528 + 1.0f)), 0.0f, 1.0f));
                float _9550 = 0.0f;
                if (_9533 < _9540)
                {
                    float _9546 = _9540 + max(_9533, -_9540);
                    _9550 = (_9546 * _9546) / (4.0f * _9540);
                }
                else
                {
                    _9550 = _9533;
                }
                _9551 = _9550;
            }
            else
            {
                _9551 = _9533;
            }
            float _9552 = clamp(_9551, 0.0f, 1.0f);
            float _9553 = max(_9527, View_View_MinRoughness);
            float _9558 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _9531) * mad(-_9553, _9553, 1.0f), 0.0f, 1.0f);
            uint _9565 = 0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u);
            float _9566 = dot(_8445, _657);
            float _9567 = dot(_657, _9532);
            float _9569 = rsqrt(mad(2.0f, _9567, 2.0f));
            float _9572 = clamp((_9533 + _9566) * _9569, 0.0f, 1.0f);
            float _9574 = clamp(mad(_9569, _9567, _9569), 0.0f, 1.0f);
            bool _9575 = _9558 > 0.0f;
            float _9654 = 0.0f;
            float _9655 = 0.0f;
            if (_9575)
            {
                float _9580 = sqrt(mad(-_9558, _9558, 1.0f));
                float _9581 = 2.0f * _9533;
                float _9582 = -_9567;
                float _9583 = mad(_9581, _9566, _9582);
                float _9652 = 0.0f;
                float _9653 = 0.0f;
                if (_9583 >= _9580)
                {
                    _9652 = 1.0f;
                    _9653 = abs(_9566);
                }
                else
                {
                    float _9588 = -_9583;
                    float _9591 = _9558 * rsqrt(mad(_9588, _9583, 1.0f));
                    float _9592 = mad(_9588, _9533, _9566);
                    float _9596 = mad(_9588, _9567, mad(2.0f * _9566, _9566, -1.0f));
                    float _9607 = _9591 * sqrt(clamp(mad(_9581 * _9566, _9567, mad(_9582, _9567, mad(-_9566, _9566, mad(-_9533, _9533, 1.0f)))), 0.0f, 1.0f));
                    float _9609 = (_9607 * 2.0f) * _9566;
                    float _9610 = mad(_9533, _9580, _9566);
                    float _9611 = mad(_9591, _9592, _9610);
                    float _9613 = mad(_9591, _9596, mad(_9567, _9580, 1.0f));
                    float _9614 = _9607 * _9613;
                    float _9615 = _9611 * _9613;
                    float _9620 = _9615 * mad(-0.5f, _9614, (0.25f * _9609) * _9611);
                    float _9630 = mad(_9611, mad(_9610, _9613 * _9613, _9615 * mad(-0.5f, mad(_9567, _9580, _9613), -0.5f)), mad(_9614, _9614, (_9609 * _9611) * mad(_9609, _9611, _9614 * (-2.0f))));
                    float _9634 = (2.0f * _9620) / mad(_9630, _9630, _9620 * _9620);
                    float _9635 = _9634 * _9630;
                    float _9637 = mad(-_9634, _9620, 1.0f);
                    float _9643 = mad(_9567, _9580, mad(_9637, _9591 * _9596, _9635 * _9609));
                    float _9645 = rsqrt(mad(2.0f, _9643, 2.0f));
                    _9652 = clamp((mad(_9533, _9580, mad(_9637, _9591 * _9592, _9635 * _9607)) + _9566) * _9645, 0.0f, 1.0f);
                    _9653 = clamp(mad(_9645, _9643, _9645), 0.0f, 1.0f);
                }
                _9654 = _9652;
                _9655 = _9653;
            }
            else
            {
                _9654 = _9572;
                _9655 = _9574;
            }
            float _9658 = clamp(abs(_9566) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float _9659 = _9527 * _9527;
            float _9660 = _9659 * _9659;
            float _9665 = clamp(_9574, 0.0f, 1.0f);
            int _9667 = asint(_9660);
            float _9673 = clamp(0.0555555559694766998291015625f * log2(mad(2.0f, asfloat(2129859010 - _9667), -1.0f)), 0.0f, 1.0f);
            float _9674 = 1.0f - _9665;
            float _9675 = _9674 * _9674;
            float _9678 = 1.0f - clamp(_9566, 0.0f, 1.0f);
            float _9679 = _9678 * _9678;
            float _9683 = 1.0f - clamp(_9552, 0.0f, 1.0f);
            float _9684 = _9683 * _9683;
            float3 _9708 = 1.0f.xxx * _9552;
            float3 _9758 = 0.0f.xxx;
            if ((_9565 & 1u) == 1u)
            {
                _9758 = 0.0f.xxx;
            }
            else
            {
                float _9727 = 0.0f;
                if (_9575)
                {
                    _9727 = _9660 / mad(_9659, _9659, ((0.25f * _9558) * mad(3.0f, asfloat(532487669 + (_9667 >> 1)), _9558)) / (_9655 + 0.001000000047497451305389404296875f));
                }
                else
                {
                    _9727 = 1.0f;
                }
                float _9730 = mad(mad(_9654, _9660, -_9654), _9654, 1.0f);
                float _9735 = sqrt(_9660);
                float _9736 = 1.0f - _9735;
                float _9742 = 1.0f - _9655;
                float _9743 = _9742 * _9742;
                float _9744 = _9743 * _9743;
                _9758 = _9708 * (((clamp(50.0f * _8555.y, 0.0f, 1.0f) * (_9744 * _9742)).xxx + (_8555 * mad(-_9744, _9742, 1.0f))) * (((_9660 / ((3.1415927410125732421875f * _9730) * _9730)) * _9727) * (0.5f / mad(_9552, mad(_9658, _9736, _9735), _9658 * mad(_9552, _9736, _9735)))));
            }
            float4 _9767 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_9658, _9527), 0.0f);
            bool3 _9771 = (View_View_bShadingEnergyConservation != 0u).xxx;
            float _9772 = _9767.x;
            float3 _9776 = 1.0f.xxx + (_8555 * ((1.0f - _9772) / _9772));
            float3 _9777 = float3(_9771.x ? _9776.x : 1.0f.xxx.x, _9771.y ? _9776.y : 1.0f.xxx.y, _9771.z ? _9776.z : 1.0f.xxx.z);
            float3 _9793 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _9521;
            float3 _9795 = mad(((_8642 * (0.3183098733425140380859375f * mad((mad(mad(34.5f, _9673, -59.0f), _9673, 24.5f) * _9665) * exp2((-max(mad(73.1999969482421875f, _9673, -21.200000762939453125f), 8.8999996185302734375f)) * asfloat(532487669 + (asint(clamp(_9572, 0.0f, 1.0f)) >> 1))), asfloat(_9565 >> 1u), lerp(mad(_9675 * _9675, _9674, _9665), mad(-0.75f, (_9679 * _9679) * _9678, 1.0f) * mad(-0.75f, (_9684 * _9684) * _9683, 1.0f), clamp(mad(2.2000000476837158203125f, _9673, -0.5f), 0.0f, 1.0f))))) * _9708) * ((View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(_9777 * ((_8555 * _9772) + ((clamp(50.0f * _8555.y, 0.0f, 1.0f).xxx - _8555) * _9767.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f), _9793, 0.0f.xxx);
            _9796 = _9795;
            _9797 = ((_9758 * _9777) * 1.0f) * _9793;
        }
        else
        {
            _9796 = 0.0f.xxx;
            _9797 = 0.0f.xxx;
        }
        float4 _9801 = float4(_9796, 0.0f);
        float4 _9805 = float4(_9797, 0.0f);
        float3 _9822 = 0.0f.xxx;
        float4 _9823 = 0.0f.xxxx;
        float4 _9824 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _8717) != 0u)
        {
            float4 _9810 = float4(_9801.x, _9801.y, _9801.z, _9801.w);
            float4 _9811 = float4(_9805.x, _9805.y, _9805.z, _9805.w);
            float3 _9818 = 0.0f.xxx;
            if (_8686)
            {
                _9818 = _9801.xyz + _9805.xyz;
            }
            else
            {
                _9818 = 0.0f.xxx;
            }
            bool4 _9819 = _8686.xxxx;
            _9822 = _9818;
            _9823 = float4(_9819.x ? 0.0f.xxxx.x : _9810.x, _9819.y ? 0.0f.xxxx.y : _9810.y, _9819.z ? 0.0f.xxxx.z : _9810.z, _9819.w ? 0.0f.xxxx.w : _9810.w);
            _9824 = float4(_9819.x ? 0.0f.xxxx.x : _9811.x, _9819.y ? 0.0f.xxxx.y : _9811.y, _9819.z ? 0.0f.xxxx.z : _9811.z, _9819.w ? 0.0f.xxxx.w : _9811.w);
        }
        else
        {
            _9822 = 0.0f.xxx;
            _9823 = 0.0f.xxxx;
            _9824 = 0.0f.xxxx;
        }
        _9825 = _8746;
        _9826 = _9822;
        _9827 = _9521;
        _9828 = _9823;
        _9829 = _9824;
    }
    else
    {
        _9825 = _8511;
        _9826 = 0.0f.xxx;
        _9827 = 1.0f;
        _9828 = 0.0f.xxxx;
        _9829 = 0.0f.xxxx;
    }
    uint _9830 = ((((min(uint(max(0.0f, log2(mad(_584, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _8669.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _8669.x) * 2u;
    uint _9836 = _9830 + 1u;
    uint _9839 = min(min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_9830], OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
    float4 _9841 = 0.0f.xxxx;
    float4 _9844 = 0.0f.xxxx;
    _9841 = _9828;
    _9844 = _9829;
    float4 _9842 = 0.0f.xxxx;
    float4 _9845 = 0.0f.xxxx;
    [loop]
    for (uint _9846 = 0u; _9846 < _9839; _9841 = _9842, _9844 = _9845, _9846++)
    {
        uint _9855 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_9836] + _9846).x * 6u;
        uint _9858 = _9855 + 1u;
        uint _9861 = _9855 + 2u;
        uint _9864 = _9855 + 3u;
        uint _9867 = _9855 + 4u;
        uint _9871 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9861].w);
        uint _9877 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9858].y);
        uint _9893 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9864].z);
        float2 _9895 = spvUnpackHalf2x16(_9893 & 65535u);
        float _9896 = _9895.x;
        float2 _9899 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9864].w));
        float _9900 = _9899.x;
        bool _9905 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9858].w == 0.0f;
        float4 _9926 = float4(float(_9871 & 1u), float((_9871 & 2u) >> 1u), float((_9871 & 4u) >> 2u), float((_9871 & 8u) >> 3u));
        uint _9927 = _9871 >> 4u;
        float3 _9943 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9855].xyz - _639;
        float _9944 = dot(_9943, _9943);
        float _9961 = 0.0f;
        if (_9905)
        {
            float _9956 = _9944 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9855].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9855].w);
            float _9959 = clamp(mad(-_9956, _9956, 1.0f), 0.0f, 1.0f);
            _9961 = _9959 * _9959;
        }
        else
        {
            float3 _9950 = _9943 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9855].w;
            _9961 = pow(1.0f - clamp(dot(_9950, _9950), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9858].w);
        }
        float _9972 = 0.0f;
        if (((_9871 >> 16u) & 3u) == 2u)
        {
            float _9969 = clamp((dot(_9943 * rsqrt(_9944), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9861].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9864].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9864].y, 0.0f, 1.0f);
            _9972 = _9961 * (_9969 * _9969);
        }
        else
        {
            _9972 = _9961;
        }
        float3 _10343 = 0.0f.xxx;
        float3 _10344 = 0.0f.xxx;
        [branch]
        if (_9972 > 0.0f)
        {
            float _9984 = 0.0f;
            [branch]
            if (uint((_9871 & 255u) != 0u) != 0u)
            {
                _9984 = dot(float4(float(_9927 & 1u), float((_9927 & 2u) >> 1u), float((_9927 & 4u) >> 2u), float((_9927 & 8u) >> 3u)), _8701) * lerp(1.0f, dot(_9825, _9926), dot(_9926, 1.0f.xxxx));
            }
            else
            {
                _9984 = 1.0f;
            }
            float3 _10341 = 0.0f.xxx;
            float3 _10342 = 0.0f.xxx;
            [branch]
            if ((_9984 + _9984) > 0.0f)
            {
                float3 _9990 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9867].xyz * (0.5f * _9900);
                float3 _9991 = _9943 - _9990;
                float3 _9992 = _9943 + _9990;
                float _9993 = max(_8422, View_View_MinRoughness);
                bool _9994 = _9900 > 0.0f;
                float _10019 = 0.0f;
                float _10020 = 0.0f;
                float _10021 = 0.0f;
                [branch]
                if (_9994)
                {
                    float _10006 = rsqrt(dot(_9991, _9991));
                    float _10007 = rsqrt(dot(_9992, _9992));
                    float _10008 = _10006 * _10007;
                    float _10010 = dot(_9991, _9992) * _10008;
                    _10019 = _10010;
                    _10020 = 0.5f * mad(dot(_8445, _9991), _10006, dot(_8445, _9992) * _10007);
                    _10021 = _10008 / mad(_10006, _10007, mad(_10010, 0.5f, 0.5f));
                }
                else
                {
                    float _9998 = dot(_9991, _9991);
                    _10019 = 1.0f;
                    _10020 = dot(_8445, _9991 * rsqrt(_9998));
                    _10021 = 1.0f / (_9998 + 1.0f);
                }
                float _10039 = 0.0f;
                if (_9896 > 0.0f)
                {
                    float _10028 = sqrt(clamp((_9896 * _9896) * _10021, 0.0f, 1.0f));
                    float _10038 = 0.0f;
                    if (_10020 < _10028)
                    {
                        float _10034 = _10028 + max(_10020, -_10028);
                        _10038 = (_10034 * _10034) / (4.0f * _10028);
                    }
                    else
                    {
                        _10038 = _10020;
                    }
                    _10039 = _10038;
                }
                else
                {
                    _10039 = _10020;
                }
                float _10040 = clamp(_10039, 0.0f, 1.0f);
                float3 _10058 = 0.0f.xxx;
                if (_9994)
                {
                    float3 _10045 = reflect(-_657, _8445);
                    float3 _10046 = _9992 - _9991;
                    float _10047 = dot(_10045, _10046);
                    _10058 = _9991 + (_10046 * clamp(dot(_9991, (_10045 * _10047) - _10046) / mad(_9900, _9900, -(_10047 * _10047)), 0.0f, 1.0f));
                }
                else
                {
                    _10058 = _9991;
                }
                float _10060 = rsqrt(dot(_10058, _10058));
                float3 _10061 = _10058 * _10060;
                float _10062 = max(_9993, View_View_MinRoughness);
                float _10067 = clamp((_9896 * _10060) * mad(-_10062, _10062, 1.0f), 0.0f, 1.0f);
                float _10069 = clamp(spvUnpackHalf2x16(_9893 >> 16u).x * _10060, 0.0f, 1.0f);
                uint _10076 = 0u | (asuint(clamp(mad(-max(_9900, _9896), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u);
                float _10077 = dot(_8445, _10061);
                float _10078 = dot(_8445, _657);
                float _10079 = dot(_657, _10061);
                float _10081 = rsqrt(mad(2.0f, _10079, 2.0f));
                float _10084 = clamp((_10077 + _10078) * _10081, 0.0f, 1.0f);
                float _10086 = clamp(mad(_10081, _10079, _10081), 0.0f, 1.0f);
                bool _10087 = _10067 > 0.0f;
                float _10166 = 0.0f;
                float _10167 = 0.0f;
                if (_10087)
                {
                    float _10092 = sqrt(mad(-_10067, _10067, 1.0f));
                    float _10093 = 2.0f * _10077;
                    float _10094 = -_10079;
                    float _10095 = mad(_10093, _10078, _10094);
                    float _10164 = 0.0f;
                    float _10165 = 0.0f;
                    if (_10095 >= _10092)
                    {
                        _10164 = 1.0f;
                        _10165 = abs(_10078);
                    }
                    else
                    {
                        float _10100 = -_10095;
                        float _10103 = _10067 * rsqrt(mad(_10100, _10095, 1.0f));
                        float _10104 = mad(_10100, _10077, _10078);
                        float _10108 = mad(_10100, _10079, mad(2.0f * _10078, _10078, -1.0f));
                        float _10119 = _10103 * sqrt(clamp(mad(_10093 * _10078, _10079, mad(_10094, _10079, mad(-_10078, _10078, mad(-_10077, _10077, 1.0f)))), 0.0f, 1.0f));
                        float _10121 = (_10119 * 2.0f) * _10078;
                        float _10122 = mad(_10077, _10092, _10078);
                        float _10123 = mad(_10103, _10104, _10122);
                        float _10125 = mad(_10103, _10108, mad(_10079, _10092, 1.0f));
                        float _10126 = _10119 * _10125;
                        float _10127 = _10123 * _10125;
                        float _10132 = _10127 * mad(-0.5f, _10126, (0.25f * _10121) * _10123);
                        float _10142 = mad(_10123, mad(_10122, _10125 * _10125, _10127 * mad(-0.5f, mad(_10079, _10092, _10125), -0.5f)), mad(_10126, _10126, (_10121 * _10123) * mad(_10121, _10123, _10126 * (-2.0f))));
                        float _10146 = (2.0f * _10132) / mad(_10142, _10142, _10132 * _10132);
                        float _10147 = _10146 * _10142;
                        float _10149 = mad(-_10146, _10132, 1.0f);
                        float _10155 = mad(_10079, _10092, mad(_10149, _10103 * _10108, _10147 * _10121));
                        float _10157 = rsqrt(mad(2.0f, _10155, 2.0f));
                        _10164 = clamp((mad(_10077, _10092, mad(_10149, _10103 * _10104, _10147 * _10119)) + _10078) * _10157, 0.0f, 1.0f);
                        _10165 = clamp(mad(_10157, _10155, _10157), 0.0f, 1.0f);
                    }
                    _10166 = _10164;
                    _10167 = _10165;
                }
                else
                {
                    _10166 = _10084;
                    _10167 = _10086;
                }
                float _10170 = clamp(abs(_10078) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float _10171 = _9993 * _9993;
                float _10172 = _10171 * _10171;
                float _10177 = clamp(_10086, 0.0f, 1.0f);
                float _10185 = clamp(0.0555555559694766998291015625f * log2(mad(2.0f, asfloat(2129859010 - asint(_10172)), -1.0f)), 0.0f, 1.0f);
                float _10186 = 1.0f - _10177;
                float _10187 = _10186 * _10186;
                float _10190 = 1.0f - clamp(_10078, 0.0f, 1.0f);
                float _10191 = _10190 * _10190;
                float _10195 = 1.0f - clamp(_10040, 0.0f, 1.0f);
                float _10196 = _10195 * _10195;
                float3 _10221 = 1.0f.xxx * ((_9905 ? _10021 : 1.0f) * _10040);
                float3 _10303 = 0.0f.xxx;
                if ((_10076 & 1u) == 1u)
                {
                    _10303 = 0.0f.xxx;
                }
                else
                {
                    float _10236 = 0.0f;
                    if (_10069 > 0.0f)
                    {
                        _10236 = clamp(mad(_10171, _10171, (_10069 * _10069) / mad(_10167, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _10236 = _10172;
                    }
                    float _10250 = 0.0f;
                    float _10251 = 0.0f;
                    if (_10087)
                    {
                        float _10248 = _10236 + (((0.25f * _10067) * mad(3.0f, asfloat(532487669 + (asint(_10236) >> 1)), _10067)) / (_10167 + 0.001000000047497451305389404296875f));
                        _10250 = _10236 / _10248;
                        _10251 = _10248;
                    }
                    else
                    {
                        _10250 = 1.0f;
                        _10251 = _10236;
                    }
                    float _10272 = 0.0f;
                    if (_10019 < 1.0f)
                    {
                        float _10258 = sqrt((1.00010001659393310546875f - _10019) / (1.0f + _10019));
                        _10272 = _10250 * sqrt(_10251 / (_10251 + (((0.25f * _10258) * mad(3.0f, asfloat(532487669 + (asint(_10251) >> 1)), _10258)) / (_10167 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _10272 = _10250;
                    }
                    float _10275 = mad(mad(_10166, _10236, -_10166), _10166, 1.0f);
                    float _10280 = sqrt(_10236);
                    float _10281 = 1.0f - _10280;
                    float _10287 = 1.0f - _10167;
                    float _10288 = _10287 * _10287;
                    float _10289 = _10288 * _10288;
                    _10303 = _10221 * (((clamp(50.0f * _8555.y, 0.0f, 1.0f) * (_10289 * _10287)).xxx + (_8555 * mad(-_10289, _10287, 1.0f))) * (((_10236 / ((3.1415927410125732421875f * _10275) * _10275)) * _10272) * (0.5f / mad(_10040, mad(_10170, _10281, _10280), _10170 * mad(_10040, _10281, _10280)))));
                }
                float4 _10312 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_10170, _9993), 0.0f);
                bool3 _10316 = (View_View_bShadingEnergyConservation != 0u).xxx;
                float _10317 = _10312.x;
                float3 _10321 = 1.0f.xxx + (_8555 * ((1.0f - _10317) / _10317));
                float3 _10322 = float3(_10316.x ? _10321.x : 1.0f.xxx.x, _10316.y ? _10321.y : 1.0f.xxx.y, _10316.z ? _10321.z : 1.0f.xxx.z);
                float3 _10338 = ((float3(float((_9877 >> 0u) & 1023u), float((_9877 >> 10u) & 1023u), float((_9877 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9858].x) * _9972) * _9984;
                float3 _10340 = mad(((_8642 * (0.3183098733425140380859375f * mad((mad(mad(34.5f, _10185, -59.0f), _10185, 24.5f) * _10177) * exp2((-max(mad(73.1999969482421875f, _10185, -21.200000762939453125f), 8.8999996185302734375f)) * asfloat(532487669 + (asint(clamp(_10084, 0.0f, 1.0f)) >> 1))), asfloat(_10076 >> 1u), lerp(mad(_10187 * _10187, _10186, _10177), mad(-0.75f, (_10191 * _10191) * _10190, 1.0f) * mad(-0.75f, (_10196 * _10196) * _10195, 1.0f), clamp(mad(2.2000000476837158203125f, _10185, -0.5f), 0.0f, 1.0f))))) * _10221) * ((View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(_10322 * ((_8555 * _10317) + ((clamp(50.0f * _8555.y, 0.0f, 1.0f).xxx - _8555) * _10312.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f), _10338, 0.0f.xxx);
                _10341 = _10340;
                _10342 = ((_10303 * _10322) * spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9867].w) & 65535u).x) * _10338;
            }
            else
            {
                _10341 = 0.0f.xxx;
                _10342 = 0.0f.xxx;
            }
            _10343 = _10341;
            _10344 = _10342;
        }
        else
        {
            _10343 = 0.0f.xxx;
            _10344 = 0.0f.xxx;
        }
        [flatten]
        if ((((_9871 >> 8u) & 7u) & _8717) != 0u)
        {
            _9842 = _9841 + float4(_10343, 0.0f);
            _9845 = _9844 + float4(_10344, 0.0f);
        }
        else
        {
            _9842 = _9841;
            _9845 = _9844;
        }
    }
    bool4 _10362 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    float3 _10448 = 0.0f.xxx;
    float3 _10449 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _10393 = _8388 + 31u;
        float3 _10402 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_8388 + 1u].xyz) * 2097152.0f) + (_640 - Scene_GPUScene_GPUScenePrimitiveSceneData[_8388 + 18u].xyz));
        float3 _10403 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_8388 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_8388 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_8388 + 25u].w) + 1.0f.xxx;
        float3 _10446 = 0.0f.xxx;
        float3 _10447 = 0.0f.xxx;
        if (any(bool3(_10402.x > _10403.x, _10402.y > _10403.y, _10402.z > _10403.z)))
        {
            float3 _10426 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _10427 = _640 * 0.57700002193450927734375f.xxx;
            float3 _10442 = frac(mad((_10427.x + _10427.y) + _10427.z, 0.00200000009499490261077880859375f, frac(((_10426.x + _10426.y) + _10426.z) * 4194.30419921875f))).xxx;
            float3 _10445 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_10442.x > 0.5f.xxx.x, _10442.y > 0.5f.xxx.y, _10442.z > 0.5f.xxx.z)));
            _10446 = _10445;
            _10447 = _10445;
        }
        else
        {
            float3 _10425 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_10393].x > 0.0f)
            {
                float3 _10413 = abs(_639 - in_var_TEXCOORD9);
                _10425 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_10413.x, max(_10413.y, _10413.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_10393].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _10425 = 0.0f.xxx;
            }
            _10446 = 0.0f.xxx;
            _10447 = _10425;
        }
        _10448 = _10446;
        _10449 = _10447;
    }
    else
    {
        _10448 = 0.0f.xxx;
        _10449 = 0.0f.xxx;
    }
    float4 _10461 = OpaqueBasePass_PreIntegratedGFTexture.SampleLevel(View_SharedBilinearClampedSampler, float2(max(0.0f, dot(_8445, _657)), _8422), 0.0f);
    float3 _10699 = 0.0f.xxx;
    float3 _10700 = 0.0f.xxx;
    if (_8446 > 0.0f)
    {
        float2 _10489 = clamp(mad(_630.xy / _643.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz), SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.xy, SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.zw);
        float4 _10491 = SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture.SampleLevel(View_SharedBilinearClampedSampler, _10489, 0.0f);
        float _10492 = _10491.x;
        float _10502 = -View_View_InvDeviceZToWorldZTransform.w;
        float _10505 = mad(_10492, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10492, View_View_InvDeviceZToWorldZTransform.z, _10502));
        float _10536 = _10505 - _643;
        float2 _10545 = clamp(_10489 + (((((((normalize(mul(_8445, float3x3(View_View_TranslatedWorldToView[0].xyz, View_View_TranslatedWorldToView[1].xyz, View_View_TranslatedWorldToView[2].xyz))).xy * (Material_Material_PreshaderBuffer[107].w - 1.0f)) * View_View_ViewSizeAndInvSize.xy) * View_View_BufferSizeAndInvSize.zw) * ((SingleLayerWater_SingleLayerWater_DistortionParams.zw * float2(0.000230000005103647708892822265625f, -0.000230000005103647708892822265625f)) * float2(SingleLayerWater_SingleLayerWater_DistortionParams.x, SingleLayerWater_SingleLayerWater_DistortionParams.y * SingleLayerWater_SingleLayerWater_DistortionParams.x))) * clamp(mad(_10536, 1.0f / max(1.0f, clamp(abs(Material_Material_PreshaderBuffer[108].x * (-0.5f)), 0.0f, 50.0f)), -Material_Material_PreshaderBuffer[108].x), 0.0f, 1.0f)) * 4.0f) * clamp(_10536 * 0.0333333350718021392822265625f, 0.0f, 1.0f)), SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.xy, SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.zw);
        float4 _10547 = SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture.GatherRed(View_SharedBilinearClampedSampler, _10545);
        float _10548 = _10547.x;
        float _10553 = _10547.y;
        float _10558 = _10547.z;
        float _10563 = _10547.w;
        float4 _10568 = float4(mad(_10548, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10548, View_View_InvDeviceZToWorldZTransform.z, _10502)), mad(_10553, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10553, View_View_InvDeviceZToWorldZTransform.z, _10502)), mad(_10558, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10558, View_View_InvDeviceZToWorldZTransform.z, _10502)), mad(_10563, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10563, View_View_InvDeviceZToWorldZTransform.z, _10502)));
        float4 _10569 = _643.xxxx;
        bool _10571 = any(bool4(_10568.x < _10569.x, _10568.y < _10569.y, _10568.z < _10569.z, _10568.w < _10569.w));
        float _10597 = 0.0f;
        float _10598 = 0.0f;
        if (_10571)
        {
            _10597 = _10505;
            _10598 = _10492;
        }
        else
        {
            float2 _10578 = frac(((_10545 * SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterTextureSize) * 1.0f) - 0.5f.xx);
            float _10580 = _10578.x;
            float _10581 = 1.0f - _10580;
            float _10582 = _10578.y;
            float _10583 = 1.0f - _10582;
            float4 _10585 = 0.0f.xxxx;
            _10585.x = _10581 * _10583;
            _10585.y = _10580 * _10583;
            _10585.z = _10581 * _10582;
            _10585.w = _10580 * _10582;
            float _10592 = dot(_10547.wzxy, _10585);
            _10597 = mad(_10592, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10592, View_View_InvDeviceZToWorldZTransform.z, _10502));
            _10598 = _10592;
        }
        bool2 _10599 = _10571.xx;
        float _10603 = max(0.0f, _10597 - _643);
        float3 _10605 = clamp(_8369.xyz, 0.0f.xxx, 64512.0f.xxx).xyz;
        float _10613 = 1.0f / ((2.0f / (1.0f - sqrt(min(_8535, 0.9900000095367431640625f)))) - 1.0f);
        float3 _10636 = 0.0f.xxx;
        bool _10637 = false;
        do
        {
            float _10616 = dot(_657, _8445);
            float _10621 = mad(-(_10613 * _10613), mad(-_10616, _10616, 1.0f), 1.0f);
            if (_10621 < 0.0f)
            {
                _10636 = reflect(-_657, _8445);
                _10637 = false;
                break;
            }
            _10636 = (_8445 * mad(_10613, _10616, (-((_10616 >= 0.0f) ? 1.0f : (-1.0f))) * sqrt(_10621))) - (_657 * _10613);
            _10637 = true;
            break;
        } while(false);
        float _10649 = 0.0f;
        if (_10637)
        {
            float _10642 = mad(1.5499999523162841796875f, 0.0f, -0.0f);
            float _10643 = mad(_10642, dot(-View_View_DirectionalLightDirection, _10636), 1.0f);
            _10649 = mad(-_10642, _10642, 1.0f) / ((12.56637096405029296875f * _10643) * _10643);
        }
        else
        {
            _10649 = 0.0f;
        }
        float4 _10651 = mul(float4(gl_FragCoord.xy, max(9.9999999600419720025001879548654e-13f, _10598), 1.0f), View_View_SVPositionToTranslatedWorld);
        float3 _10677 = exp(-(_10605 * _10603));
        float3 _10678 = ((View_View_DirectionalLightColor.xyz * 3.1415927410125732421875f) * _10649) * _9827;
        float3 _10684 = clamp(((_8428.xyz * _10605) * (1.0f.xxx - _10677)) / max(_10605, 9.9999997473787516355514526367188e-06f.xxx), 0.0f.xxx, 1.0f.xxx);
        float3 _10688 = 1.0f.xxx - ((_8555 * _10461.x) + (clamp(50.0f * _8555.y, 0.0f, 1.0f) * _10461.y).xxx);
        float3 _10689 = float3(_10688.x, _10688.y, _10688.z);
        _10699 = _9826 + ((((_10678 * float(_8686)) * _10684) * _10689) * _8446);
        _10700 = mad((((_8627 * 3.1415927410125732421875f) * 0.079577468335628509521484375f) + (_10678 * (_8686 ? 0.0f : 1.0f))) * _10684, _10689, (_10677 * float3(1.0f.xxx.x, 1.0f.xxx.y, 1.0f.xxx.z)) * (((exp(_10605 * (-max(0.0f, (((View_View_ViewTilePosition - View_View_ViewTilePosition) * 2097152.0f) + (_640 - ((_10651.xyz / _10651.w.xxx) - View_View_RelativePreViewTranslation))).z))) * View_View_OneOverPreExposure) * SingleLayerWater_SceneColorWithoutSingleLayerWaterTexture.SampleLevel(View_SharedBilinearClampedSampler, float2(_10599.x ? _10489.x : _10545.x, _10599.y ? _10489.y : _10545.y), 0.0f).xyz) * lerp(1.0f.xxx, clamp(Material_Material_PreshaderBuffer[105].z.xxx.xyz, 0.0f.xxx, 64512.0f.xxx).xyz, clamp(_10603 * 0.0199999995529651641845703125f, 0.0f, 1.0f).xxx))) * _8446;
    }
    else
    {
        _10699 = _9826;
        _10700 = 0.0f.xxx;
    }
    float3 _10702 = normalize(_8444);
    uint2 _10703 = uint2(gl_FragCoord.xy);
    float3 _10706 = mad(clamp(_8434, 0.0f.xxx, 1.0f.xxx), View_View_DiffuseOverrideParameter.www, View_View_DiffuseOverrideParameter.xyz);
    _8415.x = 0.0f;
    float _10709 = mad(clamp(_8414, 0.0f, 1.0f), View_View_SpecularOverrideParameter.w, View_View_SpecularOverrideParameter.x);
    _8415.y = _10709;
    float _10713 = clamp(max(View_View_MinRoughness, mad(_8422, View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x)), 0.0f, 1.0f);
    _8415.z = _10713;
    float _10715 = clamp(_8424, 0.0f, 1.0f);
    _8415.w = _10715;
    bool3 _10722 = (View_View_bShadingEnergyConservation != 0u).xxx;
    bool _10723 = any(bool3(true, true, true));
    uint _10846 = 0u;
    float3 _10847 = 0.0f.xxx;
    uint _10848 = 0u;
    uint _10849 = 0u;
    bool _10850 = false;
    bool _10851 = false;
    float3 _10852 = 0.0f.xxx;
    float _10853 = 0.0f;
    float3 _10854 = 0.0f.xxx;
    float _10855 = 0.0f;
    if (_10723)
    {
        float3 _10834 = 0.0f.xxx;
        uint _10835 = 0u;
        bool _10836 = false;
        bool _10837 = false;
        float3 _10838 = 0.0f.xxx;
        float _10839 = 0.0f;
        float _10840 = 0.0f;
        uint _10841 = 0u;
        switch (4u)
        {
            case 0u:
            {
                float3 _10815 = 0.0f.xxx;
                do
                {
                    float3 _10812 = 0.0f.xxx;
                    bool _10813 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10812 = lerp(_10706.xyz, _8415.xyz, clamp((max(0.0f, max(_10709, _10713)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10813 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10812 = _10706.xyz;
                            _10813 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10812 = _10706.xyz;
                            _10813 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10812 = _10706.xyz;
                            _10813 = true;
                            break;
                        }
                        default:
                        {
                            _10812 = _455;
                            _10813 = false;
                            break;
                        }
                    }
                    if (_10813)
                    {
                        _10815 = _10812;
                        break;
                    }
                    _10815 = 0.0f.xxx;
                    break;
                } while(false);
                float3 _10816 = _10815 * 1.0f;
                float3 _10830 = 0.0f.xxx;
                float _10831 = 0.0f;
                if (false)
                {
                    float3 _10828 = 0.0f.xxx;
                    float _10829 = 0.0f;
                    if (false)
                    {
                        _10828 = lerp(0.0f, 0.039999999105930328369140625f, clamp((max(0.039999999105930328369140625f, max(0.039999999105930328369140625f, 0.039999999105930328369140625f)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f)).xxx;
                        _10829 = 0.0f;
                    }
                    else
                    {
                        _10828 = _10816;
                        _10829 = 0.0f;
                    }
                    _10830 = _10828;
                    _10831 = _10829;
                }
                else
                {
                    _10830 = _10816;
                    _10831 = 0.0f;
                }
                _10834 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10835 = 1u;
                _10836 = (true && all(bool3(true, true, true))) && true;
                _10837 = true;
                _10838 = _10830;
                _10839 = _10831;
                _10840 = 1.0f;
                _10841 = (_8534 | 0u) | 0u;
                break;
            }
            case 3u:
            {
                float3 _10785 = 0.0f.xxx;
                do
                {
                    float3 _10782 = 0.0f.xxx;
                    bool _10783 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10782 = lerp(_10706.xyz, _8415.xyz, clamp((max(0.0f, max(_10709, _10713)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10783 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10782 = _10706.xyz;
                            _10783 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10782 = _10706.xyz;
                            _10783 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10782 = _10706.xyz;
                            _10783 = true;
                            break;
                        }
                        default:
                        {
                            _10782 = _455;
                            _10783 = false;
                            break;
                        }
                    }
                    if (_10783)
                    {
                        _10785 = _10782;
                        break;
                    }
                    _10785 = 0.0f.xxx;
                    break;
                } while(false);
                _10834 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10835 = 1u;
                _10836 = false;
                _10837 = false;
                _10838 = _10785 * 1.0f;
                _10839 = 1.0f;
                _10840 = 1.0f;
                _10841 = (_8534 & 4294967288u) | 5u;
                break;
            }
            case 5u:
            {
                _10834 = 0.0f.xxx;
                _10835 = 1u;
                _10836 = false;
                _10837 = false;
                _10838 = 0.0f.xxx;
                _10839 = 1.0f;
                _10840 = 1.0f;
                _10841 = ((_8534 | 0u) & 4294967288u) | 6u;
                break;
            }
            case 4u:
            {
                float3 _10755 = 0.0f.xxx;
                do
                {
                    float3 _10752 = 0.0f.xxx;
                    bool _10753 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10752 = lerp(_10706.xyz, _8415.xyz, clamp((max(0.0f, max(_10709, _10713)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10753 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10752 = _10706.xyz;
                            _10753 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10752 = _10706.xyz;
                            _10753 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10752 = _10706.xyz;
                            _10753 = true;
                            break;
                        }
                        default:
                        {
                            _10752 = _455;
                            _10753 = false;
                            break;
                        }
                    }
                    if (_10753)
                    {
                        _10755 = _10752;
                        break;
                    }
                    _10755 = 0.0f.xxx;
                    break;
                } while(false);
                _10834 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10835 = 2u;
                _10836 = false;
                _10837 = false;
                _10838 = _10755 * 1.0f;
                _10839 = mad(1.0f, _10713, 0.0f);
                _10840 = 1.0f;
                _10841 = (_8534 & 4294967288u) | 4u;
                break;
            }
            default:
            {
                _10834 = 0.0f.xxx;
                _10835 = 0u;
                _10836 = true;
                _10837 = true;
                _10838 = 0.0f.xxx;
                _10839 = 0.0f;
                _10840 = 0.0f;
                _10841 = _8534;
                break;
            }
        }
        float3 _10842[4] = { _10702, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx };
        float3 _577[4] = _10842;
        _10846 = 8194u;
        _10847 = _10834;
        _10848 = _10835;
        _10849 = _10841;
        _10850 = _10836;
        _10851 = _10837;
        _10852 = _10838;
        _10853 = _10839;
        _10854 = _577[0u] * 1.0f;
        _10855 = _10840;
    }
    else
    {
        _10846 = 8192u;
        _10847 = 0.0f.xxx;
        _10848 = 0u;
        _10849 = _8534;
        _10850 = true;
        _10851 = true;
        _10852 = 0.0f.xxx;
        _10853 = 0.0f;
        _10854 = 0.0f.xxx;
        _10855 = 0.0f;
    }
    uint _10856 = uint(_10723);
    bool _10857 = _10855 > 0.0f;
    bool3 _10858 = _10857.xxx;
    float3 _10859 = normalize(_10854);
    float3 _10860 = float3(_10858.x ? _10859.x : 0.0f.xxx.x, _10858.y ? _10859.y : 0.0f.xxx.y, _10858.z ? _10859.z : 0.0f.xxx.z);
    float3 _10864 = _10852 / _10855.xxx;
    uint _10951 = 0u;
    uint _10952 = 0u;
    uint _10953 = 0u;
    if (_10851)
    {
        bool _10869 = _10850 && (_10856 == 1u);
        uint _10949 = 0u;
        uint _10950 = 0u;
        if (_10869)
        {
            uint _10882 = 0u;
            if (((_10846 >> 6u) & 1u) != 0u)
            {
                _10882 = 1u;
            }
            else
            {
                _10882 = 0u;
            }
            uint _10890 = 0u;
            if ((((_10846 >> 9u) & 1u) != 0u) && true)
            {
                _10890 = _10882 | 4u;
            }
            else
            {
                _10890 = _10882;
            }
            uint _10897 = 0u;
            if (((_10846 >> 10u) & 1u) != 0u)
            {
                _10897 = _10890 | 8u;
            }
            else
            {
                _10897 = _10890;
            }
            uint _10899 = (_10846 >> 2u) & 7u;
            uint _10904 = 0u;
            if (_10899 == 4u)
            {
                _10904 = _10897 | 16u;
            }
            else
            {
                _10904 = _10897;
            }
            uint _10909 = 0u;
            if (_10899 == 1u)
            {
                _10909 = _10904 | 32u;
            }
            else
            {
                _10909 = _10904;
            }
            uint _10914 = 0u;
            if (_10899 == 3u)
            {
                _10914 = _10909 | 64u;
            }
            else
            {
                _10914 = _10909;
            }
            uint _10915 = _10914 & 2u;
            uint _10947 = 0u;
            uint _10948 = 0u;
            if ((_10915 == 2u) || (_10915 == 3u))
            {
                _10947 = 1u;
                _10948 = 0u;
            }
            else
            {
                uint _10945 = 0u;
                uint _10946 = 0u;
                if ((_10914 & 4u) == 4u)
                {
                    _10945 = 2u;
                    _10946 = 0u;
                }
                else
                {
                    uint _10943 = 0u;
                    uint _10944 = 0u;
                    if ((_10914 & 40u) == 40u)
                    {
                        _10943 = 5u;
                        _10944 = 0u;
                    }
                    else
                    {
                        uint _10941 = 0u;
                        uint _10942 = 0u;
                        if ((_10914 & 32u) == 32u)
                        {
                            _10941 = 3u;
                            _10942 = 0u;
                        }
                        else
                        {
                            bool _10938 = (_10914 & 72u) == 64u;
                            _10941 = _10938 ? 4u : 0u;
                            _10942 = _10938 ? 0u : 0u;
                        }
                        _10943 = _10941;
                        _10944 = _10942;
                    }
                    _10945 = _10943;
                    _10946 = _10944;
                }
                _10947 = _10945;
                _10948 = _10946;
            }
            _10949 = _10947;
            _10950 = _10948;
        }
        else
        {
            _10949 = 0u;
            _10950 = 0u;
        }
        _10951 = _10949;
        _10952 = _10950;
        _10953 = (_10849 & 4294967288u) | ((_10869 ? 1u : (_10869 ? 2u : 3u)) & 7u);
    }
    else
    {
        _10951 = 0u;
        _10952 = 0u;
        _10953 = _10849;
    }
    float3 _11389 = 0.0f.xxx;
    float _11390 = 0.0f;
    float2 _11391 = 0.0f.xx;
    [branch]
    if (_10723)
    {
        float3 _10956[4] = { _10702, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx };
        float3 _578[4] = _10956;
        uint _10958 = (_10846 >> 14u) & 3u;
        float _10961 = dot(_578[_10958], _657);
        float3 _11239 = 0.0f.xxx;
        float3 _11240 = 0.0f.xxx;
        float3 _11241 = 0.0f.xxx;
        float3 _11242 = 0.0f.xxx;
        switch ((_10846 >> 11u) & 7u)
        {
            case 0u:
            {
                float3 _11130 = _10706.xyz;
                float4 _11134 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_10961, 0.001000000047497451305389404296875f), 0.0f);
                float _11135 = _11134.x;
                float3 _11139 = 1.0f.xxx + (_8415.xyz * ((1.0f - _11135) / _11135));
                float _11152 = (View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(float3(_10722.x ? _11139.x : 1.0f.xxx.x, _10722.y ? _11139.y : 1.0f.xxx.y, _10722.z ? _11139.z : 1.0f.xxx.z) * ((_8415.xyz * _11135) + ((-_8415.xyz) * _11134.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f;
                float3 _11153 = _11130 * _11152;
                uint _11155 = (_10846 >> 2u) & 7u;
                float3 _11216 = 0.0f.xxx;
                [branch]
                if (_11155 == 4u)
                {
                    float _11164 = clamp(max(0.0f, max(0.0f, max(0.0f, 0.0f)) - 0.039999999105930328369140625f) * 3.0f, 0.0f, 1.0f);
                    float _11168 = abs(clamp(_10961, 0.0f, 1.0f));
                    float _11174 = clamp((mad(-0.15658299624919891357421875f, _11168, 1.57079637050628662109375f) * sqrt(1.0f - _11168)) * 0.636619746685028076171875f, 0.0f, 1.0f);
                    float _11183 = clamp(mad(10.0f, 0.001587301609106361865997314453125f, 1.0f), 0.0f, 1.0f);
                    float _11184 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10706.x, _11174), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11183;
                    float _11191 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10706.y, _11174), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11183;
                    float _11198 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10706.z, _11174), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11183;
                    float3 _11199 = float3(_11184, _11191, _11198);
                    float _11204 = max(_11153.x, max(_11153.y, _11153.z));
                    float _11206 = max(_11184, max(_11191, _11198));
                    float3 _11212 = 0.0f.xxx;
                    if (_11204 < _11206)
                    {
                        _11212 = _11199 * (_11204 / _11206);
                    }
                    else
                    {
                        _11212 = _11199;
                    }
                    _11216 = lerp(_11153, _11212 * _11152, (_11164 * _11164).xxx);
                }
                else
                {
                    _11216 = _11153;
                }
                float3 _11231 = 0.0f.xxx;
                [branch]
                if (_11155 == 1u)
                {
                    _11231 = (0.3183098733425140380859375f.xxx * exp((-max(9.9999999747524270787835121154785e-07f.xxx, 1.0f.xxx / max(9.9999999600419720025001879548654e-13f.xxx, 0.0f.xxx))) * (1.0f / max(9.9999997473787516355514526367188e-05f, abs(1.0f))))) * _11152;
                }
                else
                {
                    _11231 = 0.0f.xxx;
                }
                [branch]
                if (((_10846 >> 9u) & 1u) != 0u)
                {
                    _11239 = _11216 * 1.0f;
                    _11240 = _578[_10958];
                    _11241 = _11231;
                    _11242 = _11130 * 1.0f;
                    break;
                }
                _11239 = _11216;
                _11240 = _578[_10958];
                _11241 = _11231;
                _11242 = _11130;
                break;
            }
            case 3u:
            {
                float3 _10974 = normalize(_657 - (_578[_10958] * dot(_657, _578[_10958])));
                float _10975 = min(0.0f, 1.0f);
                float _10976 = dot(_657, _10974);
                float _10978 = clamp(dot(_578[_10958], _10974), -1.0f, 1.0f);
                float _10979 = clamp(_10961, -1.0f, 1.0f);
                float _10980 = abs(_10979);
                float _10981 = mad(-0.15658299624919891357421875f, _10980, 1.57079637050628662109375f);
                float _10983 = sqrt(1.0f - _10980);
                float _10990 = abs(_10978);
                float _10991 = mad(-0.15658299624919891357421875f, _10990, 1.57079637050628662109375f);
                float _10993 = sqrt(1.0f - _10990);
                float _11003 = cos(0.5f * abs((1.57079637050628662109375f - ((_10979 >= 0.0f) ? (_10981 * _10983) : mad(-_10981, _10983, 3.1415927410125732421875f))) - (1.57079637050628662109375f - ((_10978 >= 0.0f) ? (_10991 * _10993) : mad(-_10991, _10993, 3.1415927410125732421875f)))));
                float3 _11005 = _10974 - (_578[_10958] * _10978);
                float3 _11007 = _657 - (_578[_10958] * _10979);
                float _11013 = dot(_11005, _11007) * rsqrt(mad(dot(_11005, _11005), dot(_11007, _11007), 9.9999997473787516355514526367188e-05f));
                float _11016 = sqrt(clamp(mad(0.5f, _11013, 0.5f), 0.0f, 1.0f));
                float _11020 = mad(1.5378702300949953496456146240234e-05f, 0.5f, 0.20000000298023223876953125f);
                float _11021 = mad(1.5378702300949953496456146240234e-05f, 2.0f, 0.20000000298023223876953125f);
                float _11029 = mad(0.0039215688593685626983642578125f, 0.0039215688593685626983642578125f, 0.20000000298023223876953125f) * (1.41421353816986083984375f * _11016);
                float _11030 = _10978 + _10979;
                float _11031 = mad(0.1398856937885284423828125f, mad(0.997551023960113525390625f * _11016, sqrt(mad(-_10979, _10979, 1.0f)), (-0.06994284689426422119140625f) * _10979), _11030);
                float _11043 = 1.0f - sqrt(clamp(mad(0.5f, _10976, 0.5f), 0.0f, 1.0f));
                float _11044 = _11043 * _11043;
                float _11057 = _11030 - 0.0350000001490116119384765625f;
                float _11065 = 1.0f / mad(0.36000001430511474609375f, _11003, 1.190000057220458984375f / _11003);
                float _11068 = _11016 * mad(_11065, mad(-0.800000011920928955078125f, _11013, 0.60000002384185791015625f), 1.0f);
                float _11073 = -_11003;
                float _11074 = mad(_11073, sqrt(clamp(mad(-_11068, _11068, 1.0f), 0.0f, 1.0f)), 1.0f);
                float _11075 = _11074 * _11074;
                float _11079 = 1.0f - mad(0.95347940921783447265625f, (_11075 * _11075) * _11074, 0.0465205647051334381103515625f);
                float3 _11081 = abs(_10706.xyz);
                float _11082 = _11068 * _11065;
                float _11097 = _11030 - 0.14000000059604644775390625f;
                float _11105 = mad(_11073, 0.5f, 1.0f);
                float _11106 = _11105 * _11105;
                float _11109 = mad(0.95347940921783447265625f, (_11106 * _11106) * _11105, 0.0465205647051334381103515625f);
                float _11110 = 1.0f - _11109;
                float3 _11122 = (((((((exp(((-0.5f) * (_11031 * _11031)) / (_11029 * _11029)) / (2.5066282749176025390625f * _11029)) * (0.25f * _11016)) * mad(0.95347940921783447265625f, (_11044 * _11044) * _11043, 0.0465205647051334381103515625f)) * (_10709 * 2.0f)) * lerp(1.0f, _10975, clamp(-_10976, 0.0f, 1.0f))).xxx + ((pow(_11081, ((0.5f * sqrt(mad(-_11082, _11082, 1.0f))) / _11003).xxx) * (((exp(((-0.5f) * (_11057 * _11057)) / (_11020 * _11020)) / (2.5066282749176025390625f * _11020)) * exp(mad(-3.650000095367431640625f, _11013, -3.980000019073486328125f))) * (_11079 * _11079))) * _10975)) + (pow(_11081, (0.800000011920928955078125f / _11003).xxx) * (((exp(((-0.5f) * (_11097 * _11097)) / (_11021 * _11021)) / (2.5066282749176025390625f * _11021)) * exp(mad(17.0f, _11013, -16.7800006866455078125f))) * ((_11110 * _11110) * _11109)))) * 1.0f;
                _11239 = min(1.0f.xxx, (-min(-mad(0.0f.xxx, float3(1.0f.xxx.x, 1.0f.xxx.y, 1.0f.xxx.z), _11122), 0.0f.xxx)) * 6.283185482025146484375f);
                _11240 = _10974;
                _11241 = 0.0f.xxx;
                _11242 = 0.0f.xxx;
                break;
            }
            case 5u:
            {
                float3 _10968 = _10706.xyz;
                _11239 = _10968 * 1.0f;
                _11240 = _578[_10958];
                _11241 = 0.0f.xxx;
                _11242 = _10968;
                break;
            }
            default:
            {
                _11239 = 0.0f.xxx;
                _11240 = 0.0f.xxx;
                _11241 = 0.0f.xxx;
                _11242 = 0.0f.xxx;
                break;
            }
        }
        float3 _11365 = 0.0f.xxx;
        float3 _11366 = 0.0f.xxx;
        if (_8454)
        {
            float4 _11267 = 0.0f.xxxx;
            _11267.y = (-0.48860299587249755859375f) * _11240.y;
            _11267.z = 0.48860299587249755859375f * _11240.z;
            _11267.w = (-0.48860299587249755859375f) * _11240.x;
            float3 _11274 = _11240 * _11240;
            float4 _11277 = 0.0f.xxxx;
            _11277.x = (1.09254801273345947265625f * _11240.x) * _11240.y;
            _11277.y = ((-1.09254801273345947265625f) * _11240.y) * _11240.z;
            _11277.z = 0.3153919875621795654296875f * mad(3.0f, _11274.z, -1.0f);
            _11277.w = ((-1.09254801273345947265625f) * _11240.x) * _11240.z;
            _11267.x = 0.886227548122406005859375f;
            float3 _11293 = _11267.yzw * 2.094395160675048828125f;
            float4 _11294 = float4(_11267.x, _11293.x, _11293.y, _11293.z);
            float4 _11295 = _11277 * 0.785398185253143310546875f;
            float _11296 = (_11274.x - _11274.y) * 0.4290426075458526611328125f;
            float3 _11301 = 0.0f.xxx;
            _11301.x = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x, _11296, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _11294) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _11295));
            _11301.y = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y, _11296, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _11294) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _11295));
            _11301.z = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z, _11296, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _11294) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _11295));
            float3 _11364 = 0.0f.xxx;
            if (any(bool3(_11241.x > 0.0f.xxx.x, _11241.y > 0.0f.xxx.y, _11241.z > 0.0f.xxx.z)))
            {
                float3 _11315 = -_11240;
                float _11316 = _11315.y;
                float4 _11318 = 0.0f.xxxx;
                _11318.y = (-0.48860299587249755859375f) * _11316;
                float _11319 = _11315.z;
                _11318.z = 0.48860299587249755859375f * _11319;
                float _11322 = _11315.x;
                _11318.w = (-0.48860299587249755859375f) * _11322;
                float3 _11325 = _11315 * _11315;
                float4 _11328 = 0.0f.xxxx;
                _11328.x = (1.09254801273345947265625f * _11322) * _11316;
                _11328.y = ((-1.09254801273345947265625f) * _11316) * _11319;
                _11328.z = 0.3153919875621795654296875f * mad(3.0f, _11325.z, -1.0f);
                _11328.w = ((-1.09254801273345947265625f) * _11322) * _11319;
                _11318.x = 0.886227548122406005859375f;
                float3 _11344 = _11318.yzw * 2.094395160675048828125f;
                float4 _11345 = float4(_11318.x, _11344.x, _11344.y, _11344.z);
                float4 _11346 = _11328 * 0.785398185253143310546875f;
                float _11347 = (_11325.x - _11325.y) * 0.4290426075458526611328125f;
                float3 _11352 = 0.0f.xxx;
                _11352.x = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x, _11347, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _11345) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _11346));
                _11352.y = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y, _11347, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _11345) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _11346));
                _11352.z = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z, _11347, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _11345) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _11346));
                _11364 = max(0.0f.xxx, _11352);
            }
            else
            {
                _11364 = 0.0f.xxx;
            }
            _11365 = _11364;
            _11366 = max(0.0f.xxx, _11301);
        }
        else
        {
            _11365 = 0.0f.xxx;
            _11366 = 0.0f.xxx;
        }
        float3 _11367 = _11366 * View_View_PrecomputedIndirectLightingColorScale;
        float2 _11384 = 0.0f.xx;
        _11384.x = max(1.0f.xxx, 0.99960005283355712890625f.xxx).y;
        _11384.y = dot(_11367, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f));
        _11389 = mad(mad(_11367, _11239, (_11365 * View_View_PrecomputedIndirectLightingColorScale) * _11241), max(1.0f.xxx, ((((((_11242 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_11242 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_11242 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), _10847);
        _11390 = 1.0f;
        _11391 = _11384;
    }
    else
    {
        _11389 = _10847;
        _11390 = 0.0f;
        _11391 = 0.0f.xx;
    }
    float2 _11394 = _11391 * (1.0f / max(1.0f, _11390));
    uint _11409 = (_10953 & 4294902015u) | ((uint(min(255.0f, mad(log2(mad(_11394.y * _11394.x, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f) * 255.0f)) & 255u) << 8u);
    uint _11410 = _11409 & 7u;
    bool _11412 = (_11410 == 1u) || false;
    bool _11413 = _11410 == 4u;
    bool _11415 = (_11410 == 2u) || false;
    bool _11416 = _11410 == 5u;
    bool _11417 = _11410 == 6u;
    bool _11424 = !_11413;
    bool _11425 = (((!_11412) && (!_11415)) && (!(_11416 || _11417))) && _11424;
    uint _11472 = 0u;
    uint _11473 = 0u;
    if (_11425)
    {
        float2 _11445 = _10702.xy / dot(1.0f.xxx, abs(_10702)).xx;
        float3 _11463 = 0.0f.xxx;
        if (_10702.z <= 0.0f)
        {
            float2 _11454 = _11445.xy;
            bool2 _11455 = bool2(_11454.x >= 0.0f.xx.x, _11454.y >= 0.0f.xx.y);
            float2 _11461 = (1.0f.xx - abs(_11445.yx)) * float2(_11455.x ? 1.0f : (-1.0f), _11455.y ? 1.0f : (-1.0f));
            _11463 = float3(_11461.x, _11461.y, _10702.z);
        }
        else
        {
            _11463 = float3(_11445.x, _11445.y, _10702.z);
        }
        _11472 = spvPackHalf2x16(float2(_11463.x, 0.0f)) | (spvPackHalf2x16(float2(_11463.y, 0.0f)) << 16u);
        _11473 = (((((((0u | ((_10856 & 15u) << 16u)) & 4287627263u) | 1048576u) & 4169138175u) | 0u) | (_11409 & 134217728u)) & 4294901760u) | ((_11409 & 65535u) << 0u);
    }
    else
    {
        _11472 = 0u;
        _11473 = 0u;
    }
    uint _11474 = _11425 ? 2u : 0u;
    uint _13482 = 0u;
    uint _13483 = 0u;
    uint _13484 = 0u;
    uint _13485 = 0u;
    uint _13486 = 0u;
    [branch]
    if (_10723)
    {
        uint _11484 = (((_10846 & 4294967263u) | 32u) & 4294901759u) | ((uint(any(bool3(false, false, false))) & 1u) << 16u);
        bool _11485 = _11412 && true;
        uint _12659 = 0u;
        uint _12660 = 0u;
        uint _12661 = 0u;
        uint _12662 = 0u;
        uint _12663 = 0u;
        if (_11485)
        {
            float _12501 = _8387 - 0.5f;
            float _12502 = _12501 * 0.0078740157186985015869140625f;
            float3 _12504 = float3(_12502, _12502, _12501 * 0.01587301678955554962158203125f);
            float3 _12505 = clamp(_10706.xyz, 0.0f.xxx, 1.0f.xxx);
            float _12506 = _12505.x;
            float _12515 = 0.0f;
            do
            {
                if (_12506 < 0.00313066993840038776397705078125f)
                {
                    _12515 = _12506 * 12.9200000762939453125f;
                    break;
                }
                _12515 = mad(pow(_12506, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12516 = _12505.y;
            float _12525 = 0.0f;
            do
            {
                if (_12516 < 0.00313066993840038776397705078125f)
                {
                    _12525 = _12516 * 12.9200000762939453125f;
                    break;
                }
                _12525 = mad(pow(_12516, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12526 = _12505.z;
            float _12535 = 0.0f;
            do
            {
                if (_12526 < 0.00313066993840038776397705078125f)
                {
                    _12535 = _12526 * 12.9200000762939453125f;
                    break;
                }
                _12535 = mad(pow(_12526, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float3 _12536 = float3(_12515, _12525, _12535);
            float3 _12542 = clamp(mad(_12504, float3(min((asuint(_12536) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12536), 0.0f.xxx, 1.0f.xxx);
            uint _12556 = ((uint(_12542.x * 127.0f) << 0u) | (uint(_12542.y * 127.0f) << 7u)) | (uint(_12542.z * 63.0f) << 14u);
            float3 _12561 = clamp(_8415.xyz, 0.0f.xxx, 1.0f.xxx);
            float _12562 = _12561.x;
            float _12571 = 0.0f;
            do
            {
                if (_12562 < 0.00313066993840038776397705078125f)
                {
                    _12571 = _12562 * 12.9200000762939453125f;
                    break;
                }
                _12571 = mad(pow(_12562, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12572 = _12561.y;
            float _12581 = 0.0f;
            do
            {
                if (_12572 < 0.00313066993840038776397705078125f)
                {
                    _12581 = _12572 * 12.9200000762939453125f;
                    break;
                }
                _12581 = mad(pow(_12572, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12582 = _12561.z;
            float _12591 = 0.0f;
            do
            {
                if (_12582 < 0.00313066993840038776397705078125f)
                {
                    _12591 = _12582 * 12.9200000762939453125f;
                    break;
                }
                _12591 = mad(pow(_12582, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float3 _12592 = float3(_12571, _12581, _12591);
            float3 _12598 = clamp(mad(_12504, float3(min((asuint(_12592) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12592), 0.0f.xxx, 1.0f.xxx);
            uint _12620 = ((0u | ((_11409 & 65535u) << 0u)) & 65535u) | (((((_12556 >> 12u) & 255u) << 8u) | 0u) << 16u);
            uint _12635 = 0u;
            uint _12636 = 0u;
            uint _12637 = 0u;
            if (_11474 < 3u)
            {
                _12635 = (_11474 == 2u) ? _12620 : 0u;
                _12636 = (_11474 == 1u) ? _12620 : _11472;
                _12637 = (_11474 == 0u) ? _12620 : _11473;
            }
            else
            {
                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 - 3u)] = _12620;
                _12635 = 0u;
                _12636 = _11472;
                _12637 = _11473;
            }
            uint _12638 = _11474 + 1u;
            uint _12640 = (((uint(_12598.x * 127.0f) << 0u) | (uint(_12598.y * 127.0f) << 7u)) | (uint(_12598.z * 63.0f) << 14u)) | ((_12556 & 4095u) << 20u);
            uint _12655 = 0u;
            uint _12656 = 0u;
            uint _12657 = 0u;
            if (_12638 < 3u)
            {
                _12655 = (_12638 == 2u) ? _12640 : _12635;
                _12656 = (_12638 == 1u) ? _12640 : _12636;
                _12657 = (_12638 == 0u) ? _12640 : _12637;
            }
            else
            {
                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 + 4294967294u)] = _12640;
                _12655 = _12635;
                _12656 = _12636;
                _12657 = _12637;
            }
            _12659 = 0u;
            _12660 = _12655;
            _12661 = _12656;
            _12662 = _12657;
            _12663 = _11474 + 2u;
        }
        else
        {
            uint _12495 = 0u;
            uint _12496 = 0u;
            uint _12497 = 0u;
            uint _12498 = 0u;
            uint _12499 = 0u;
            if (_11415 && true)
            {
                uint _11725 = (_11484 & 4294967293u) | 2u;
                uint _11732 = ((0u | ((_11409 & 65535u) << 0u)) & 65535u) | ((_10951 & 7u) << 16u);
                uint _12490 = 0u;
                uint _12491 = 0u;
                uint _12492 = 0u;
                uint _12493 = 0u;
                uint _12494 = 0u;
                [branch]
                if (_10951 == 0u)
                {
                    uint _12471 = _11732 | ((_11725 & 2047u) << 19u);
                    uint _12486 = 0u;
                    uint _12487 = 0u;
                    uint _12488 = 0u;
                    if (_11474 < 3u)
                    {
                        _12486 = (_11474 == 2u) ? _12471 : 0u;
                        _12487 = (_11474 == 1u) ? _12471 : _11472;
                        _12488 = (_11474 == 0u) ? _12471 : _11473;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 - 3u)] = _12471;
                        _12486 = 0u;
                        _12487 = _11472;
                        _12488 = _11473;
                    }
                    _12490 = _11725;
                    _12491 = _12486;
                    _12492 = _12487;
                    _12493 = _12488;
                    _12494 = _11474 + 1u;
                }
                else
                {
                    uint _12464 = 0u;
                    uint _12465 = 0u;
                    uint _12466 = 0u;
                    uint _12467 = 0u;
                    uint _12468 = 0u;
                    if (_10951 == 1u)
                    {
                        float _12340 = _8387 - 0.5f;
                        float _12341 = _12340 * 0.0078740157186985015869140625f;
                        float3 _12344 = clamp(_10706.xyz, 0.0f.xxx, 1.0f.xxx);
                        float _12345 = _12344.x;
                        float _12354 = 0.0f;
                        do
                        {
                            if (_12345 < 0.00313066993840038776397705078125f)
                            {
                                _12354 = _12345 * 12.9200000762939453125f;
                                break;
                            }
                            _12354 = mad(pow(_12345, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12355 = _12344.y;
                        float _12364 = 0.0f;
                        do
                        {
                            if (_12355 < 0.00313066993840038776397705078125f)
                            {
                                _12364 = _12355 * 12.9200000762939453125f;
                                break;
                            }
                            _12364 = mad(pow(_12355, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12365 = _12344.z;
                        float _12374 = 0.0f;
                        do
                        {
                            if (_12365 < 0.00313066993840038776397705078125f)
                            {
                                _12374 = _12365 * 12.9200000762939453125f;
                                break;
                            }
                            _12374 = mad(pow(_12365, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float3 _12375 = float3(_12354, _12364, _12374);
                        float3 _12381 = clamp(mad(float3(_12341, _12341, _12340 * 0.01587301678955554962158203125f), float3(min((asuint(_12375) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12375), 0.0f.xxx, 1.0f.xxx);
                        uint _12407 = _11732 | 0u;
                        uint _12422 = 0u;
                        uint _12423 = 0u;
                        uint _12424 = 0u;
                        if (_11474 < 3u)
                        {
                            _12422 = (_11474 == 2u) ? _12407 : 0u;
                            _12423 = (_11474 == 1u) ? _12407 : _11472;
                            _12424 = (_11474 == 0u) ? _12407 : _11473;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 - 3u)] = _12407;
                            _12422 = 0u;
                            _12423 = _11472;
                            _12424 = _11473;
                        }
                        uint _12425 = _11474 + 1u;
                        uint _12426 = (((uint(_12381.x * 127.0f) << 0u) | (uint(_12381.y * 127.0f) << 7u)) | (uint(_12381.z * 63.0f) << 14u)) | 0u;
                        uint _12441 = 0u;
                        uint _12442 = 0u;
                        uint _12443 = 0u;
                        if (_12425 < 3u)
                        {
                            _12441 = (_12425 == 2u) ? _12426 : _12422;
                            _12442 = (_12425 == 1u) ? _12426 : _12423;
                            _12443 = (_12425 == 0u) ? _12426 : _12424;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 + 4294967294u)] = _12426;
                            _12441 = _12422;
                            _12442 = _12423;
                            _12443 = _12424;
                        }
                        uint _12444 = _11474 + 2u;
                        uint _12445 = (((0u | (uint(clamp(_10709, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_10713, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u) | 0u;
                        uint _12460 = 0u;
                        uint _12461 = 0u;
                        uint _12462 = 0u;
                        if (_12444 < 3u)
                        {
                            _12460 = (_12444 == 2u) ? _12445 : _12441;
                            _12461 = (_12444 == 1u) ? _12445 : _12442;
                            _12462 = (_12444 == 0u) ? _12445 : _12443;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 + 4294967295u)] = _12445;
                            _12460 = _12441;
                            _12461 = _12442;
                            _12462 = _12443;
                        }
                        _12464 = 0u;
                        _12465 = _12460;
                        _12466 = _12461;
                        _12467 = _12462;
                        _12468 = _11474 + 3u;
                    }
                    else
                    {
                        uint _12334 = 0u;
                        uint _12335 = 0u;
                        uint _12336 = 0u;
                        uint _12337 = 0u;
                        uint _12338 = 0u;
                        if (_10951 == 2u)
                        {
                            float _12125 = _8387 - 0.5f;
                            float _12126 = _12125 * 0.0078740157186985015869140625f;
                            float3 _12128 = float3(_12126, _12126, _12125 * 0.01587301678955554962158203125f);
                            float3 _12129 = clamp(_10706.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _12130 = _12129.x;
                            float _12139 = 0.0f;
                            do
                            {
                                if (_12130 < 0.00313066993840038776397705078125f)
                                {
                                    _12139 = _12130 * 12.9200000762939453125f;
                                    break;
                                }
                                _12139 = mad(pow(_12130, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12140 = _12129.y;
                            float _12149 = 0.0f;
                            do
                            {
                                if (_12140 < 0.00313066993840038776397705078125f)
                                {
                                    _12149 = _12140 * 12.9200000762939453125f;
                                    break;
                                }
                                _12149 = mad(pow(_12140, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12150 = _12129.z;
                            float _12159 = 0.0f;
                            do
                            {
                                if (_12150 < 0.00313066993840038776397705078125f)
                                {
                                    _12159 = _12150 * 12.9200000762939453125f;
                                    break;
                                }
                                _12159 = mad(pow(_12150, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12160 = float3(_12139, _12149, _12159);
                            float3 _12166 = clamp(mad(_12128, float3(min((asuint(_12160) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12160), 0.0f.xxx, 1.0f.xxx);
                            float3 _12182 = clamp(_8415.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _12183 = _12182.x;
                            float _12192 = 0.0f;
                            do
                            {
                                if (_12183 < 0.00313066993840038776397705078125f)
                                {
                                    _12192 = _12183 * 12.9200000762939453125f;
                                    break;
                                }
                                _12192 = mad(pow(_12183, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12193 = _12182.y;
                            float _12202 = 0.0f;
                            do
                            {
                                if (_12193 < 0.00313066993840038776397705078125f)
                                {
                                    _12202 = _12193 * 12.9200000762939453125f;
                                    break;
                                }
                                _12202 = mad(pow(_12193, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12203 = _12182.z;
                            float _12212 = 0.0f;
                            do
                            {
                                if (_12203 < 0.00313066993840038776397705078125f)
                                {
                                    _12212 = _12203 * 12.9200000762939453125f;
                                    break;
                                }
                                _12212 = mad(pow(_12203, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12213 = float3(_12192, _12202, _12212);
                            float3 _12219 = clamp(mad(_12128, float3(min((asuint(_12213) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12213), 0.0f.xxx, 1.0f.xxx);
                            float _12239 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12239 = 0.0f;
                                    break;
                                }
                                _12239 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12245 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12245 = 0.0f;
                                    break;
                                }
                                _12245 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12251 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12251 = 0.0f;
                                    break;
                                }
                                _12251 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12252 = float3(_12239, _12245, _12251);
                            float3 _12258 = clamp(mad(_12128, float3(min((asuint(_12252) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12252), 0.0f.xxx, 1.0f.xxx);
                            uint _12272 = ((uint(_12258.x * 127.0f) << 0u) | (uint(_12258.y * 127.0f) << 7u)) | (uint(_12258.z * 63.0f) << 14u);
                            uint _12273 = _11732 | 0u;
                            uint _12288 = 0u;
                            uint _12289 = 0u;
                            uint _12290 = 0u;
                            if (_11474 < 3u)
                            {
                                _12288 = (_11474 == 2u) ? _12273 : 0u;
                                _12289 = (_11474 == 1u) ? _12273 : _11472;
                                _12290 = (_11474 == 0u) ? _12273 : _11473;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 - 3u)] = _12273;
                                _12288 = 0u;
                                _12289 = _11472;
                                _12290 = _11473;
                            }
                            uint _12291 = _11474 + 1u;
                            uint _12294 = (((uint(_12166.x * 127.0f) << 0u) | (uint(_12166.y * 127.0f) << 7u)) | (uint(_12166.z * 63.0f) << 14u)) | ((_12272 & 1047552u) << 10u);
                            uint _12309 = 0u;
                            uint _12310 = 0u;
                            uint _12311 = 0u;
                            if (_12291 < 3u)
                            {
                                _12309 = (_12291 == 2u) ? _12294 : _12288;
                                _12310 = (_12291 == 1u) ? _12294 : _12289;
                                _12311 = (_12291 == 0u) ? _12294 : _12290;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 + 4294967294u)] = _12294;
                                _12309 = _12288;
                                _12310 = _12289;
                                _12311 = _12290;
                            }
                            uint _12312 = _11474 + 2u;
                            uint _12315 = (((uint(_12219.x * 127.0f) << 0u) | (uint(_12219.y * 127.0f) << 7u)) | (uint(_12219.z * 63.0f) << 14u)) | ((_12272 & 1023u) << 20u);
                            uint _12330 = 0u;
                            uint _12331 = 0u;
                            uint _12332 = 0u;
                            if (_12312 < 3u)
                            {
                                _12330 = (_12312 == 2u) ? _12315 : _12309;
                                _12331 = (_12312 == 1u) ? _12315 : _12310;
                                _12332 = (_12312 == 0u) ? _12315 : _12311;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 + 4294967295u)] = _12315;
                                _12330 = _12309;
                                _12331 = _12310;
                                _12332 = _12311;
                            }
                            _12334 = 0u;
                            _12335 = _12330;
                            _12336 = _12331;
                            _12337 = _12332;
                            _12338 = _11474 + 3u;
                        }
                        else
                        {
                            uint _12119 = 0u;
                            uint _12120 = 0u;
                            uint _12121 = 0u;
                            uint _12122 = 0u;
                            uint _12123 = 0u;
                            if ((_10951 == 3u) || (_10951 == 5u))
                            {
                                float _11929 = _8387 - 0.5f;
                                float _11930 = _11929 * 0.0078740157186985015869140625f;
                                float3 _11932 = float3(_11930, _11930, _11929 * 0.01587301678955554962158203125f);
                                float3 _11933 = clamp(_10706.xyz, 0.0f.xxx, 1.0f.xxx);
                                float _11934 = _11933.x;
                                float _11943 = 0.0f;
                                do
                                {
                                    if (_11934 < 0.00313066993840038776397705078125f)
                                    {
                                        _11943 = _11934 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11943 = mad(pow(_11934, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _11944 = _11933.y;
                                float _11953 = 0.0f;
                                do
                                {
                                    if (_11944 < 0.00313066993840038776397705078125f)
                                    {
                                        _11953 = _11944 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11953 = mad(pow(_11944, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _11954 = _11933.z;
                                float _11963 = 0.0f;
                                do
                                {
                                    if (_11954 < 0.00313066993840038776397705078125f)
                                    {
                                        _11963 = _11954 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11963 = mad(pow(_11954, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float3 _11964 = float3(_11943, _11953, _11963);
                                float3 _11970 = clamp(mad(_11932, float3(min((asuint(_11964) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11964), 0.0f.xxx, 1.0f.xxx);
                                float3 _11986 = clamp(_8415.xyz, 0.0f.xxx, 1.0f.xxx);
                                float _11987 = _11986.x;
                                float _11996 = 0.0f;
                                do
                                {
                                    if (_11987 < 0.00313066993840038776397705078125f)
                                    {
                                        _11996 = _11987 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11996 = mad(pow(_11987, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _11997 = _11986.y;
                                float _12006 = 0.0f;
                                do
                                {
                                    if (_11997 < 0.00313066993840038776397705078125f)
                                    {
                                        _12006 = _11997 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12006 = mad(pow(_11997, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _12007 = _11986.z;
                                float _12016 = 0.0f;
                                do
                                {
                                    if (_12007 < 0.00313066993840038776397705078125f)
                                    {
                                        _12016 = _12007 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12016 = mad(pow(_12007, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float3 _12017 = float3(_11996, _12006, _12016);
                                float3 _12023 = clamp(mad(_11932, float3(min((asuint(_12017) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12017), 0.0f.xxx, 1.0f.xxx);
                                uint _12042 = spvPackHalf2x16(0.0f.xx);
                                uint _12050 = (((_12042 << 15u) & 1072693248u) | ((_12042 << 5u) & 1047552u)) | ((_12042 >> 5u) & 1023u);
                                uint _12060 = (_11732 | ((uint(clamp(clamp(1.0f - abs(0.0f), 0.0f, 1.0f), 0.0f, 1.0f) * 127.0f) & 127u) << 19u)) | (((_12050 >> 24u) & 63u) << 26u);
                                uint _12075 = 0u;
                                uint _12076 = 0u;
                                uint _12077 = 0u;
                                if (_11474 < 3u)
                                {
                                    _12075 = (_11474 == 2u) ? _12060 : 0u;
                                    _12076 = (_11474 == 1u) ? _12060 : _11472;
                                    _12077 = (_11474 == 0u) ? _12060 : _11473;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 - 3u)] = _12060;
                                    _12075 = 0u;
                                    _12076 = _11472;
                                    _12077 = _11473;
                                }
                                uint _12078 = _11474 + 1u;
                                uint _12080 = (((uint(_11970.x * 127.0f) << 0u) | (uint(_11970.y * 127.0f) << 7u)) | (uint(_11970.z * 63.0f) << 14u)) | ((_12050 & 4095u) << 20u);
                                uint _12095 = 0u;
                                uint _12096 = 0u;
                                uint _12097 = 0u;
                                if (_12078 < 3u)
                                {
                                    _12095 = (_12078 == 2u) ? _12080 : _12075;
                                    _12096 = (_12078 == 1u) ? _12080 : _12076;
                                    _12097 = (_12078 == 0u) ? _12080 : _12077;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 + 4294967294u)] = _12080;
                                    _12095 = _12075;
                                    _12096 = _12076;
                                    _12097 = _12077;
                                }
                                uint _12098 = _11474 + 2u;
                                uint _12100 = (((uint(_12023.x * 127.0f) << 0u) | (uint(_12023.y * 127.0f) << 7u)) | (uint(_12023.z * 63.0f) << 14u)) | (((_12050 >> 12u) & 4095u) << 20u);
                                uint _12115 = 0u;
                                uint _12116 = 0u;
                                uint _12117 = 0u;
                                if (_12098 < 3u)
                                {
                                    _12115 = (_12098 == 2u) ? _12100 : _12095;
                                    _12116 = (_12098 == 1u) ? _12100 : _12096;
                                    _12117 = (_12098 == 0u) ? _12100 : _12097;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 + 4294967295u)] = _12100;
                                    _12115 = _12095;
                                    _12116 = _12096;
                                    _12117 = _12097;
                                }
                                _12119 = 0u;
                                _12120 = _12115;
                                _12121 = _12116;
                                _12122 = _12117;
                                _12123 = _11474 + 3u;
                            }
                            else
                            {
                                bool _11751 = _10951 == 4u;
                                uint _11921 = 0u;
                                uint _11922 = 0u;
                                uint _11923 = 0u;
                                uint _11924 = 0u;
                                if (_11751)
                                {
                                    float _11755 = _8387 - 0.5f;
                                    float _11756 = _11755 * 0.0078740157186985015869140625f;
                                    float3 _11758 = float3(_11756, _11756, _11755 * 0.01587301678955554962158203125f);
                                    float3 _11759 = clamp(_10706.xyz, 0.0f.xxx, 1.0f.xxx);
                                    float _11760 = _11759.x;
                                    float _11769 = 0.0f;
                                    do
                                    {
                                        if (_11760 < 0.00313066993840038776397705078125f)
                                        {
                                            _11769 = _11760 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11769 = mad(pow(_11760, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11770 = _11759.y;
                                    float _11779 = 0.0f;
                                    do
                                    {
                                        if (_11770 < 0.00313066993840038776397705078125f)
                                        {
                                            _11779 = _11770 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11779 = mad(pow(_11770, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11780 = _11759.z;
                                    float _11789 = 0.0f;
                                    do
                                    {
                                        if (_11780 < 0.00313066993840038776397705078125f)
                                        {
                                            _11789 = _11780 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11789 = mad(pow(_11780, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float3 _11790 = float3(_11769, _11779, _11789);
                                    float3 _11796 = clamp(mad(_11758, float3(min((asuint(_11790) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11790), 0.0f.xxx, 1.0f.xxx);
                                    float3 _11812 = clamp(_8415.xyz, 0.0f.xxx, 1.0f.xxx);
                                    float _11813 = _11812.x;
                                    float _11822 = 0.0f;
                                    do
                                    {
                                        if (_11813 < 0.00313066993840038776397705078125f)
                                        {
                                            _11822 = _11813 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11822 = mad(pow(_11813, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11823 = _11812.y;
                                    float _11832 = 0.0f;
                                    do
                                    {
                                        if (_11823 < 0.00313066993840038776397705078125f)
                                        {
                                            _11832 = _11823 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11832 = mad(pow(_11823, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11833 = _11812.z;
                                    float _11842 = 0.0f;
                                    do
                                    {
                                        if (_11833 < 0.00313066993840038776397705078125f)
                                        {
                                            _11842 = _11833 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11842 = mad(pow(_11833, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float3 _11843 = float3(_11822, _11832, _11842);
                                    float3 _11849 = clamp(mad(_11758, float3(min((asuint(_11843) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11843), 0.0f.xxx, 1.0f.xxx);
                                    uint _11864 = _11732 | 0u;
                                    uint _11879 = 0u;
                                    uint _11880 = 0u;
                                    uint _11881 = 0u;
                                    if (_11474 < 3u)
                                    {
                                        _11879 = (_11474 == 2u) ? _11864 : 0u;
                                        _11880 = (_11474 == 1u) ? _11864 : _11472;
                                        _11881 = (_11474 == 0u) ? _11864 : _11473;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 - 3u)] = _11864;
                                        _11879 = 0u;
                                        _11880 = _11472;
                                        _11881 = _11473;
                                    }
                                    uint _11882 = _11474 + 1u;
                                    uint _11883 = (((uint(_11796.x * 127.0f) << 0u) | (uint(_11796.y * 127.0f) << 7u)) | (uint(_11796.z * 63.0f) << 14u)) | 0u;
                                    uint _11898 = 0u;
                                    uint _11899 = 0u;
                                    uint _11900 = 0u;
                                    if (_11882 < 3u)
                                    {
                                        _11898 = (_11882 == 2u) ? _11883 : _11879;
                                        _11899 = (_11882 == 1u) ? _11883 : _11880;
                                        _11900 = (_11882 == 0u) ? _11883 : _11881;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 + 4294967294u)] = _11883;
                                        _11898 = _11879;
                                        _11899 = _11880;
                                        _11900 = _11881;
                                    }
                                    uint _11901 = _11474 + 2u;
                                    uint _11902 = (((uint(_11849.x * 127.0f) << 0u) | (uint(_11849.y * 127.0f) << 7u)) | (uint(_11849.z * 63.0f) << 14u)) | 0u;
                                    uint _11917 = 0u;
                                    uint _11918 = 0u;
                                    uint _11919 = 0u;
                                    if (_11901 < 3u)
                                    {
                                        _11917 = (_11901 == 2u) ? _11902 : _11898;
                                        _11918 = (_11901 == 1u) ? _11902 : _11899;
                                        _11919 = (_11901 == 0u) ? _11902 : _11900;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 + 4294967295u)] = _11902;
                                        _11917 = _11898;
                                        _11918 = _11899;
                                        _11919 = _11900;
                                    }
                                    _11921 = _11917;
                                    _11922 = _11918;
                                    _11923 = _11919;
                                    _11924 = _11474 + 3u;
                                }
                                else
                                {
                                    _11921 = 0u;
                                    _11922 = _11472;
                                    _11923 = _11473;
                                    _11924 = _11474;
                                }
                                _12119 = _11751 ? 0u : _11725;
                                _12120 = _11921;
                                _12121 = _11922;
                                _12122 = _11923;
                                _12123 = _11924;
                            }
                            _12334 = _12119;
                            _12335 = _12120;
                            _12336 = _12121;
                            _12337 = _12122;
                            _12338 = _12123;
                        }
                        _12464 = _12334;
                        _12465 = _12335;
                        _12466 = _12336;
                        _12467 = _12337;
                        _12468 = _12338;
                    }
                    _12490 = _12464;
                    _12491 = _12465;
                    _12492 = _12466;
                    _12493 = _12467;
                    _12494 = _12468;
                }
                _12495 = _12490;
                _12496 = _12491;
                _12497 = _12492;
                _12498 = _12493;
                _12499 = _12494;
            }
            else
            {
                uint _11719 = 0u;
                uint _11720 = 0u;
                uint _11721 = 0u;
                uint _11722 = 0u;
                uint _11723 = 0u;
                if (_11417)
                {
                    uint _11700 = ((0u | ((_11409 & 65535u) << 0u)) & 65535u) | ((0u | (uint(clamp(_10709, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u);
                    uint _11715 = 0u;
                    uint _11716 = 0u;
                    uint _11717 = 0u;
                    if (_11474 < 3u)
                    {
                        _11715 = (_11474 == 2u) ? _11700 : 0u;
                        _11716 = (_11474 == 1u) ? _11700 : _11472;
                        _11717 = (_11474 == 0u) ? _11700 : _11473;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 - 3u)] = _11700;
                        _11715 = 0u;
                        _11716 = _11472;
                        _11717 = _11473;
                    }
                    _11719 = _11484;
                    _11720 = _11715;
                    _11721 = _11716;
                    _11722 = _11717;
                    _11723 = _11474 + 1u;
                }
                else
                {
                    uint _11685 = 0u;
                    uint _11686 = 0u;
                    uint _11687 = 0u;
                    uint _11688 = 0u;
                    uint _11689 = 0u;
                    if (_11416)
                    {
                        uint _11666 = (0u | ((_11409 & 65535u) << 0u)) & 65535u;
                        uint _11681 = 0u;
                        uint _11682 = 0u;
                        uint _11683 = 0u;
                        if (_11474 < 3u)
                        {
                            _11681 = (_11474 == 2u) ? _11666 : 0u;
                            _11682 = (_11474 == 1u) ? _11666 : _11472;
                            _11683 = (_11474 == 0u) ? _11666 : _11473;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 - 3u)] = _11666;
                            _11681 = 0u;
                            _11682 = _11472;
                            _11683 = _11473;
                        }
                        _11685 = _11484;
                        _11686 = _11681;
                        _11687 = _11682;
                        _11688 = _11683;
                        _11689 = _11474 + 1u;
                    }
                    else
                    {
                        uint _11658 = 0u;
                        uint _11659 = 0u;
                        uint _11660 = 0u;
                        uint _11661 = 0u;
                        uint _11662 = 0u;
                        if (_11413)
                        {
                            float _11528 = _8387 - 0.5f;
                            float _11529 = _11528 * 0.0078740157186985015869140625f;
                            float3 _11531 = float3(_11529, _11529, _11528 * 0.01587301678955554962158203125f);
                            float3 _11532 = clamp(_10706.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _11533 = _11532.x;
                            float _11542 = 0.0f;
                            do
                            {
                                if (_11533 < 0.00313066993840038776397705078125f)
                                {
                                    _11542 = _11533 * 12.9200000762939453125f;
                                    break;
                                }
                                _11542 = mad(pow(_11533, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _11543 = _11532.y;
                            float _11552 = 0.0f;
                            do
                            {
                                if (_11543 < 0.00313066993840038776397705078125f)
                                {
                                    _11552 = _11543 * 12.9200000762939453125f;
                                    break;
                                }
                                _11552 = mad(pow(_11543, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _11553 = _11532.z;
                            float _11562 = 0.0f;
                            do
                            {
                                if (_11553 < 0.00313066993840038776397705078125f)
                                {
                                    _11562 = _11553 * 12.9200000762939453125f;
                                    break;
                                }
                                _11562 = mad(pow(_11553, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _11563 = float3(_11542, _11552, _11562);
                            float3 _11569 = clamp(mad(_11531, float3(min((asuint(_11563) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11563), 0.0f.xxx, 1.0f.xxx);
                            uint _11583 = ((uint(_11569.x * 127.0f) << 0u) | (uint(_11569.y * 127.0f) << 7u)) | (uint(_11569.z * 63.0f) << 14u);
                            float3 _11591 = clamp(float3(_10715, 0.0f, _10709), 0.0f.xxx, 1.0f.xxx);
                            float3 _11597 = clamp(mad(_11531, float3(min((asuint(_11591) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11591), 0.0f.xxx, 1.0f.xxx);
                            uint _11619 = ((0u | ((_11409 & 65535u) << 0u)) & 65535u) | (((((_11583 >> 12u) & 255u) << 8u) | uint(clamp(_10713, 0.0f, 1.0f) * 255.0f)) << 16u);
                            uint _11634 = 0u;
                            uint _11635 = 0u;
                            uint _11636 = 0u;
                            if (_11474 < 3u)
                            {
                                _11634 = (_11474 == 2u) ? _11619 : 0u;
                                _11635 = (_11474 == 1u) ? _11619 : _11472;
                                _11636 = (_11474 == 0u) ? _11619 : _11473;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 - 3u)] = _11619;
                                _11634 = 0u;
                                _11635 = _11472;
                                _11636 = _11473;
                            }
                            uint _11637 = _11474 + 1u;
                            uint _11639 = ((_11583 & 4095u) << 20u) | (((uint(_11597.x * 127.0f) << 0u) | (uint(_11597.y * 127.0f) << 7u)) | (uint(_11597.z * 63.0f) << 14u));
                            uint _11654 = 0u;
                            uint _11655 = 0u;
                            uint _11656 = 0u;
                            if (_11637 < 3u)
                            {
                                _11654 = (_11637 == 2u) ? _11639 : _11634;
                                _11655 = (_11637 == 1u) ? _11639 : _11635;
                                _11656 = (_11637 == 0u) ? _11639 : _11636;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 + 4294967294u)] = _11639;
                                _11654 = _11634;
                                _11655 = _11635;
                                _11656 = _11636;
                            }
                            _11658 = 0u;
                            _11659 = _11654;
                            _11660 = _11655;
                            _11661 = _11656;
                            _11662 = _11474 + 2u;
                        }
                        else
                        {
                            uint _11508 = (_11484 & 4194303u) | ((((spvPackHalf2x16(float2(1.0f, 0.0f)) >> 5u) & 1023u) & 1023u) << 22u);
                            uint _11523 = 0u;
                            uint _11524 = 0u;
                            uint _11525 = 0u;
                            if (_11474 < 3u)
                            {
                                _11523 = (_11474 == 2u) ? _11508 : 0u;
                                _11524 = (_11474 == 1u) ? _11508 : _11472;
                                _11525 = (_11474 == 0u) ? _11508 : _11473;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _11474 - 3u)] = _11508;
                                _11523 = 0u;
                                _11524 = _11472;
                                _11525 = _11473;
                            }
                            _11658 = _11508;
                            _11659 = _11523;
                            _11660 = _11524;
                            _11661 = _11525;
                            _11662 = _11474 + 1u;
                        }
                        _11685 = _11658;
                        _11686 = _11659;
                        _11687 = _11660;
                        _11688 = _11661;
                        _11689 = _11662;
                    }
                    _11719 = _11685;
                    _11720 = _11686;
                    _11721 = _11687;
                    _11722 = _11688;
                    _11723 = _11689;
                }
                _12495 = _11719;
                _12496 = _11720;
                _12497 = _11721;
                _12498 = _11722;
                _12499 = _11723;
            }
            _12659 = _12495;
            _12660 = _12496;
            _12661 = _12497;
            _12662 = _12498;
            _12663 = _12499;
        }
        uint _13477 = 0u;
        uint _13478 = 0u;
        uint _13479 = 0u;
        uint _13480 = 0u;
        uint _13481 = 0u;
        if (((!_11485) && _11424) && (_10951 == 0u))
        {
            uint _13472 = 0u;
            uint _13473 = 0u;
            uint _13474 = 0u;
            uint _13475 = 0u;
            uint _13476 = 0u;
            switch ((_12659 >> 11u) & 7u)
            {
                case 0u:
                {
                    float _12967 = _8387 - 0.5f;
                    float _12968 = _12967 * 0.0078740157186985015869140625f;
                    float _12969 = _12967 * 0.01587301678955554962158203125f;
                    float3 _12970 = float3(_12968, _12968, _12969);
                    float3 _12971 = clamp(_10706.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12972 = _12971.x;
                    float _12981 = 0.0f;
                    do
                    {
                        if (_12972 < 0.00313066993840038776397705078125f)
                        {
                            _12981 = _12972 * 12.9200000762939453125f;
                            break;
                        }
                        _12981 = mad(pow(_12972, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12982 = _12971.y;
                    float _12991 = 0.0f;
                    do
                    {
                        if (_12982 < 0.00313066993840038776397705078125f)
                        {
                            _12991 = _12982 * 12.9200000762939453125f;
                            break;
                        }
                        _12991 = mad(pow(_12982, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12992 = _12971.z;
                    float _13001 = 0.0f;
                    do
                    {
                        if (_12992 < 0.00313066993840038776397705078125f)
                        {
                            _13001 = _12992 * 12.9200000762939453125f;
                            break;
                        }
                        _13001 = mad(pow(_12992, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float3 _13002 = float3(_12981, _12991, _13001);
                    float3 _13008 = clamp(mad(_12970, float3(min((asuint(_13002) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13002), 0.0f.xxx, 1.0f.xxx);
                    float3 _13024 = clamp(_8415.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _13025 = _13024.x;
                    float _13034 = 0.0f;
                    do
                    {
                        if (_13025 < 0.00313066993840038776397705078125f)
                        {
                            _13034 = _13025 * 12.9200000762939453125f;
                            break;
                        }
                        _13034 = mad(pow(_13025, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13035 = _13024.y;
                    float _13044 = 0.0f;
                    do
                    {
                        if (_13035 < 0.00313066993840038776397705078125f)
                        {
                            _13044 = _13035 * 12.9200000762939453125f;
                            break;
                        }
                        _13044 = mad(pow(_13035, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13045 = _13024.z;
                    float _13054 = 0.0f;
                    do
                    {
                        if (_13045 < 0.00313066993840038776397705078125f)
                        {
                            _13054 = _13045 * 12.9200000762939453125f;
                            break;
                        }
                        _13054 = mad(pow(_13045, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float3 _13055 = float3(_13034, _13044, _13054);
                    float3 _13061 = clamp(mad(_12970, float3(min((asuint(_13055) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13055), 0.0f.xxx, 1.0f.xxx);
                    uint _13075 = ((uint(_13061.x * 127.0f) << 0u) | (uint(_13061.y * 127.0f) << 7u)) | (uint(_13061.z * 63.0f) << 14u);
                    uint _13079 = (((((uint(_13008.x * 127.0f) << 0u) | (uint(_13008.y * 127.0f) << 7u)) | (uint(_13008.z * 63.0f) << 14u)) << 12u) & 4294963200u) | (_13075 & 4095u);
                    uint _13096 = 0u;
                    uint _13097 = 0u;
                    uint _13098 = 0u;
                    if (_12663 < 3u)
                    {
                        _13096 = (_12663 == 2u) ? _13079 : _12660;
                        _13097 = (_12663 == 1u) ? _13079 : _12661;
                        _13098 = (_12663 == 0u) ? _13079 : _12662;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _12663 - 3u)] = _13079;
                        _13096 = _12660;
                        _13097 = _12661;
                        _13098 = _12662;
                    }
                    uint _13099 = _12663 + 1u;
                    uint _13108 = ((_13075 >> 12u) & 255u) | ((0u | (uint(clamp((_10715 + 1.0f) * 0.5f, 0.0f, 1.0f) * 255.0f) << 16u)) | 2130706432u);
                    uint _13123 = 0u;
                    uint _13124 = 0u;
                    uint _13125 = 0u;
                    if (_13099 < 3u)
                    {
                        _13123 = (_13099 == 2u) ? _13108 : _13096;
                        _13124 = (_13099 == 1u) ? _13108 : _13097;
                        _13125 = (_13099 == 0u) ? _13108 : _13098;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _12663 + 4294967294u)] = _13108;
                        _13123 = _13096;
                        _13124 = _13097;
                        _13125 = _13098;
                    }
                    uint _13126 = _12663 + 2u;
                    uint _13177 = 0u;
                    uint _13178 = 0u;
                    uint _13179 = 0u;
                    uint _13180 = 0u;
                    if ((((_12659 >> 7u) & 1u) != 0u) || (((_12659 >> 6u) & 1u) != 0u))
                    {
                        bool3 _13139 = (max(0.0f, max(0.0f, 0.0f)) > 0.0f).xxx;
                        float3 _13140 = float3(_13139.x ? 0.0f.xxx.x : 1.0f.xxx.x, _13139.y ? 0.0f.xxx.y : 1.0f.xxx.y, _13139.z ? 0.0f.xxx.z : 1.0f.xxx.z);
                        float3 _13144 = mad(float3(_549, dot(_13140, float3(2.0f, 0.0f, -2.0f)), dot(_13140, float3(-1.0f, 2.0f, -1.0f))), 0.25f.xxx, float3(0.0f, 0.5f, 0.5f));
                        uint _13158 = 0u | ((((uint(clamp(_13144.y, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13144.z, 0.0f, 1.0f) * 255.0f) << 8u)) | 0u) | 0u);
                        uint _13173 = 0u;
                        uint _13174 = 0u;
                        uint _13175 = 0u;
                        if (_13126 < 3u)
                        {
                            _13173 = (_13126 == 2u) ? _13158 : _13123;
                            _13174 = (_13126 == 1u) ? _13158 : _13124;
                            _13175 = (_13126 == 0u) ? _13158 : _13125;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _12663 + 4294967295u)] = _13158;
                            _13173 = _13123;
                            _13174 = _13124;
                            _13175 = _13125;
                        }
                        _13177 = _13173;
                        _13178 = _13174;
                        _13179 = _13175;
                        _13180 = _12663 + 3u;
                    }
                    else
                    {
                        _13177 = _13123;
                        _13178 = _13124;
                        _13179 = _13125;
                        _13180 = _13126;
                    }
                    uint _13182 = (_12659 >> 2u) & 7u;
                    uint _13353 = 0u;
                    uint _13354 = 0u;
                    uint _13355 = 0u;
                    uint _13356 = 0u;
                    uint _13357 = 0u;
                    uint _13358 = 0u;
                    if (_13182 != 0u)
                    {
                        uint _13277 = 0u;
                        uint _13278 = 0u;
                        if (_13182 != 4u)
                        {
                            uint _13191 = (_10952 & 4294967292u) | (_13182 & 3u);
                            uint _13225 = 0u;
                            if (_13182 == 1u)
                            {
                                _13225 = (_13191 & 3u) | (uint(clamp(1.0f - abs(0.0f), 0.0f, 1.0f) * 255.0f) << 2u);
                            }
                            else
                            {
                                uint _13216 = 0u;
                                if (_13182 == 3u)
                                {
                                    _13216 = ((_13191 & 3u) | (uint(mad(0.0f, 255.0f, 0.5f)) << 24u)) | 0u;
                                }
                                else
                                {
                                    uint _13203 = (spvPackHalf2x16(0.0f.xx) >> 5u) & 1023u;
                                    _13216 = (_13191 & 3u) | (((_13203 << 22u) | (_13203 << 12u)) | (_13203 << 2u));
                                }
                                _13225 = _13216;
                            }
                            float3 _13231 = clamp(float4(_10706, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                            float _13232 = _13231.x;
                            float _13241 = 0.0f;
                            do
                            {
                                if (_13232 < 0.00313066993840038776397705078125f)
                                {
                                    _13241 = _13232 * 12.9200000762939453125f;
                                    break;
                                }
                                _13241 = mad(pow(_13232, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _13242 = _13231.y;
                            float _13251 = 0.0f;
                            do
                            {
                                if (_13242 < 0.00313066993840038776397705078125f)
                                {
                                    _13251 = _13242 * 12.9200000762939453125f;
                                    break;
                                }
                                _13251 = mad(pow(_13242, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _13252 = _13231.z;
                            float _13261 = 0.0f;
                            do
                            {
                                if (_13252 < 0.00313066993840038776397705078125f)
                                {
                                    _13261 = _13252 * 12.9200000762939453125f;
                                    break;
                                }
                                _13261 = mad(pow(_13252, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            _13277 = (((uint(clamp(_13241, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13251, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_13261, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                            _13278 = _13225;
                        }
                        else
                        {
                            _13277 = 0u;
                            _13278 = _10952;
                        }
                        uint _13350 = 0u;
                        uint _13351 = 0u;
                        uint _13352 = 0u;
                        if (_13182 == 3u)
                        {
                            uint _13332 = 0u | (((spvPackHalf2x16(0.0f.xx) >> 5u) & 1023u) << 16u);
                            uint _13347 = 0u;
                            uint _13348 = 0u;
                            uint _13349 = 0u;
                            if (_13180 < 3u)
                            {
                                _13347 = (_13180 == 2u) ? _13332 : _13177;
                                _13348 = (_13180 == 1u) ? _13332 : _13178;
                                _13349 = (_13180 == 0u) ? _13332 : _13179;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _13180 - 3u)] = _13332;
                                _13347 = _13177;
                                _13348 = _13178;
                                _13349 = _13179;
                            }
                            _13350 = _13347;
                            _13351 = _13348;
                            _13352 = _13349;
                        }
                        else
                        {
                            float4 _13293 = 0.0f.xxxx;
                            if ((((_12659 >> 10u) & 1u) != 0u) && (_13182 == 2u))
                            {
                                float3 _13291 = max(0.0f.xxx, 0.0f.xxx);
                                _13293 = float4(_13291.x, _13291.y, _13291.z, 0.0f.xxxx.w);
                            }
                            else
                            {
                                _13293 = 0.0f.xxxx;
                            }
                            uint _13310 = (((spvPackHalf2x16(float2(_13293.x, 0.0f)) << 17u) & 4292870144u) | ((spvPackHalf2x16(float2(_13293.y, 0.0f)) << 6u) & 2096128u)) | ((spvPackHalf2x16(float2(_13293.z, 0.0f)) >> 5u) & 1023u);
                            uint _13325 = 0u;
                            uint _13326 = 0u;
                            uint _13327 = 0u;
                            if (_13180 < 3u)
                            {
                                _13325 = (_13180 == 2u) ? _13310 : _13177;
                                _13326 = (_13180 == 1u) ? _13310 : _13178;
                                _13327 = (_13180 == 0u) ? _13310 : _13179;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _13180 - 3u)] = _13310;
                                _13325 = _13177;
                                _13326 = _13178;
                                _13327 = _13179;
                            }
                            _13350 = _13325;
                            _13351 = _13326;
                            _13352 = _13327;
                        }
                        _13353 = _13277;
                        _13354 = _13278;
                        _13355 = _13350;
                        _13356 = _13351;
                        _13357 = _13352;
                        _13358 = _13180 + 1u;
                    }
                    else
                    {
                        _13353 = 0u;
                        _13354 = _10952;
                        _13355 = _13177;
                        _13356 = _13178;
                        _13357 = _13179;
                        _13358 = _13180;
                    }
                    uint _13429 = 0u;
                    uint _13430 = 0u;
                    uint _13431 = 0u;
                    uint _13432 = 0u;
                    if (((_12659 >> 9u) & 1u) != 0u)
                    {
                        float _13369 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13369 = 0.0f;
                                break;
                            }
                            _13369 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13375 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13375 = 0.0f;
                                break;
                            }
                            _13375 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13381 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13381 = 0.0f;
                                break;
                            }
                            _13381 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float3 _13382 = float3(_13369, _13375, _13381);
                        float3 _13388 = clamp(mad(_12970, float3(min((asuint(_13382) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13382), 0.0f.xxx, 1.0f.xxx);
                        uint _13406 = uint(clamp(mad(_12969, 0.0f, 0.0f), 0.0f, 1.0f) * 63.0f);
                        uint _13410 = ((((uint(_13388.x * 127.0f) << 0u) | (uint(_13388.y * 127.0f) << 7u)) | (uint(_13388.z * 63.0f) << 14u)) | (_13406 << 20u)) | (_13406 << 26u);
                        uint _13425 = 0u;
                        uint _13426 = 0u;
                        uint _13427 = 0u;
                        if (_13358 < 3u)
                        {
                            _13425 = (_13358 == 2u) ? _13410 : _13355;
                            _13426 = (_13358 == 1u) ? _13410 : _13356;
                            _13427 = (_13358 == 0u) ? _13410 : _13357;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _13358 - 3u)] = _13410;
                            _13425 = _13355;
                            _13426 = _13356;
                            _13427 = _13357;
                        }
                        _13429 = _13425;
                        _13430 = _13426;
                        _13431 = _13427;
                        _13432 = _13358 + 1u;
                    }
                    else
                    {
                        _13429 = _13355;
                        _13430 = _13356;
                        _13431 = _13357;
                        _13432 = _13358;
                    }
                    uint _13469 = 0u;
                    uint _13470 = 0u;
                    uint _13471 = 0u;
                    if (((_12659 >> 16u) & 1u) != 0u)
                    {
                        float _13440 = 0.0f;
                        do
                        {
                            _13440 = mad(1.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        uint _13445 = uint(clamp(_13440, 0.0f, 1.0f) * 255.0f);
                        uint _13451 = (((_13445 << 0u) | (_13445 << 8u)) | (_13445 << 16u)) | 0u;
                        uint _13466 = 0u;
                        uint _13467 = 0u;
                        uint _13468 = 0u;
                        if (_13432 < 3u)
                        {
                            _13466 = (_13432 == 2u) ? _13451 : _13429;
                            _13467 = (_13432 == 1u) ? _13451 : _13430;
                            _13468 = (_13432 == 0u) ? _13451 : _13431;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _13432 - 3u)] = _13451;
                            _13466 = _13429;
                            _13467 = _13430;
                            _13468 = _13431;
                        }
                        _13469 = _13466;
                        _13470 = _13467;
                        _13471 = _13468;
                    }
                    else
                    {
                        _13469 = _13429;
                        _13470 = _13430;
                        _13471 = _13431;
                    }
                    _13472 = _13353;
                    _13473 = _13354;
                    _13474 = _13469;
                    _13475 = _13470;
                    _13476 = _13471;
                    break;
                }
                case 3u:
                {
                    float3 _12870 = clamp(float4(_10706, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12871 = _12870.x;
                    float _12880 = 0.0f;
                    do
                    {
                        if (_12871 < 0.00313066993840038776397705078125f)
                        {
                            _12880 = _12871 * 12.9200000762939453125f;
                            break;
                        }
                        _12880 = mad(pow(_12871, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12881 = _12870.y;
                    float _12890 = 0.0f;
                    do
                    {
                        if (_12881 < 0.00313066993840038776397705078125f)
                        {
                            _12890 = _12881 * 12.9200000762939453125f;
                            break;
                        }
                        _12890 = mad(pow(_12881, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12891 = _12870.z;
                    float _12900 = 0.0f;
                    do
                    {
                        if (_12891 < 0.00313066993840038776397705078125f)
                        {
                            _12900 = _12891 * 12.9200000762939453125f;
                            break;
                        }
                        _12900 = mad(pow(_12891, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    uint _12915 = (((uint(clamp(_12880, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12890, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12900, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                    uint _12930 = 0u;
                    uint _12931 = 0u;
                    uint _12932 = 0u;
                    if (_12663 < 3u)
                    {
                        _12930 = (_12663 == 2u) ? _12915 : _12660;
                        _12931 = (_12663 == 1u) ? _12915 : _12661;
                        _12932 = (_12663 == 0u) ? _12915 : _12662;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _12663 - 3u)] = _12915;
                        _12930 = _12660;
                        _12931 = _12661;
                        _12932 = _12662;
                    }
                    uint _12933 = _12663 + 1u;
                    uint _12948 = ((0u | (uint(clamp(_10709, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_10713, 0.0f, 1.0f) * 255.0f) << 16u)) | (uint(clamp(_10715, 0.0f, 1.0f) * 255.0f) << 24u);
                    uint _12963 = 0u;
                    uint _12964 = 0u;
                    uint _12965 = 0u;
                    if (_12933 < 3u)
                    {
                        _12963 = (_12933 == 2u) ? _12948 : _12930;
                        _12964 = (_12933 == 1u) ? _12948 : _12931;
                        _12965 = (_12933 == 0u) ? _12948 : _12932;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _12663 + 4294967294u)] = _12948;
                        _12963 = _12930;
                        _12964 = _12931;
                        _12965 = _12932;
                    }
                    _13472 = 0u;
                    _13473 = _10952;
                    _13474 = _12963;
                    _13475 = _12964;
                    _13476 = _12965;
                    break;
                }
                case 5u:
                {
                    float3 _12681 = 0.0f.xxx;
                    if (true)
                    {
                        float2 _12679 = 1.0f.xx - abs(0.0f.xx);
                        _12681 = float3(_12679.x, _12679.y, 0.0f.xxxx.z);
                    }
                    else
                    {
                        _12681 = 0.0f.xxx;
                    }
                    float3 _12688 = 0.0f.xxx;
                    if (true)
                    {
                        float2 _12686 = 1.0f.xx - abs(0.0f.xx);
                        _12688 = float3(_12686.x, _12686.y, 0.0f.xxxx.z);
                    }
                    else
                    {
                        _12688 = 0.0f.xxx;
                    }
                    float3 _12691 = clamp(_10706.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12692 = _12691.x;
                    float _12701 = 0.0f;
                    do
                    {
                        if (_12692 < 0.00313066993840038776397705078125f)
                        {
                            _12701 = _12692 * 12.9200000762939453125f;
                            break;
                        }
                        _12701 = mad(pow(_12692, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12702 = _12691.y;
                    float _12711 = 0.0f;
                    do
                    {
                        if (_12702 < 0.00313066993840038776397705078125f)
                        {
                            _12711 = _12702 * 12.9200000762939453125f;
                            break;
                        }
                        _12711 = mad(pow(_12702, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12712 = _12691.z;
                    float _12721 = 0.0f;
                    do
                    {
                        if (_12712 < 0.00313066993840038776397705078125f)
                        {
                            _12721 = _12712 * 12.9200000762939453125f;
                            break;
                        }
                        _12721 = mad(pow(_12712, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    uint _12736 = (((uint(clamp(_12701, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12711, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12721, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                    uint _12751 = 0u;
                    uint _12752 = 0u;
                    uint _12753 = 0u;
                    if (_12663 < 3u)
                    {
                        _12751 = (_12663 == 2u) ? _12736 : _12660;
                        _12752 = (_12663 == 1u) ? _12736 : _12661;
                        _12753 = (_12663 == 0u) ? _12736 : _12662;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _12663 - 3u)] = _12736;
                        _12751 = _12660;
                        _12752 = _12661;
                        _12753 = _12662;
                    }
                    uint _12754 = _12663 + 1u;
                    float2 _12756 = (_12681.xy * 0.5f) + 0.5f.xx;
                    float2 _12758 = (_12688.xy * 0.5f) + 0.5f.xx;
                    uint _12781 = (((uint(clamp(_12756.x, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12756.y, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12758.x, 0.0f, 1.0f) * 255.0f) << 16u)) | (uint(clamp(_12758.y, 0.0f, 1.0f) * 255.0f) << 24u);
                    uint _12796 = 0u;
                    uint _12797 = 0u;
                    uint _12798 = 0u;
                    if (_12754 < 3u)
                    {
                        _12796 = (_12754 == 2u) ? _12781 : _12751;
                        _12797 = (_12754 == 1u) ? _12781 : _12752;
                        _12798 = (_12754 == 0u) ? _12781 : _12753;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10703, _12663 + 4294967294u)] = _12781;
                        _12796 = _12751;
                        _12797 = _12752;
                        _12798 = _12753;
                    }
                    uint _12863 = 0u;
                    uint _12864 = 0u;
                    if (((_12659 >> 2u) & 7u) == 3u)
                    {
                        float3 _12817 = clamp(float4(_10706, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                        float _12818 = _12817.x;
                        float _12827 = 0.0f;
                        do
                        {
                            if (_12818 < 0.00313066993840038776397705078125f)
                            {
                                _12827 = _12818 * 12.9200000762939453125f;
                                break;
                            }
                            _12827 = mad(pow(_12818, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12828 = _12817.y;
                        float _12837 = 0.0f;
                        do
                        {
                            if (_12828 < 0.00313066993840038776397705078125f)
                            {
                                _12837 = _12828 * 12.9200000762939453125f;
                                break;
                            }
                            _12837 = mad(pow(_12828, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12838 = _12817.z;
                        float _12847 = 0.0f;
                        do
                        {
                            if (_12838 < 0.00313066993840038776397705078125f)
                            {
                                _12847 = _12838 * 12.9200000762939453125f;
                                break;
                            }
                            _12847 = mad(pow(_12838, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        _12863 = (((uint(clamp(_12827, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12837, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12847, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                        _12864 = ((((_10952 & 4294967292u) | 3u) & 3u) | (uint(mad(_10713, 255.0f, 0.5f)) << 24u)) | 16711680u;
                    }
                    else
                    {
                        _12863 = 0u;
                        _12864 = _10952;
                    }
                    _13472 = _12863;
                    _13473 = _12864;
                    _13474 = _12796;
                    _13475 = _12797;
                    _13476 = _12798;
                    break;
                }
                default:
                {
                    _13472 = 0u;
                    _13473 = _10952;
                    _13474 = _12660;
                    _13475 = _12661;
                    _13476 = _12662;
                    break;
                }
            }
            _13477 = _13472;
            _13478 = _13473;
            _13479 = _13474;
            _13480 = _13475;
            _13481 = _13476;
        }
        else
        {
            _13477 = 0u;
            _13478 = _10952;
            _13479 = _12660;
            _13480 = _12661;
            _13481 = _12662;
        }
        _13482 = _13477;
        _13483 = _13478;
        _13484 = _13479;
        _13485 = _13480;
        _13486 = _13481;
    }
    else
    {
        _13482 = 0u;
        _13483 = _10952;
        _13484 = 0u;
        _13485 = _11472;
        _13486 = _11473;
    }
    float2 _13491 = _10860.xy / dot(1.0f.xxx, abs(_10860)).xx;
    float3 _13509 = 0.0f.xxx;
    if (_10860.z <= 0.0f)
    {
        float2 _13500 = _13491.xy;
        bool2 _13501 = bool2(_13500.x >= 0.0f.xx.x, _13500.y >= 0.0f.xx.y);
        float2 _13507 = (1.0f.xx - abs(_13491.yx)) * float2(_13501.x ? 1.0f : (-1.0f), _13501.y ? 1.0f : (-1.0f));
        _13509 = float3(_13507.x, _13507.y, _10860.z);
    }
    else
    {
        _13509 = float3(_13491.x, _13491.y, _10860.z);
    }
    uint2 _13514 = uint2(clamp((_13509.xy * 1023.0f) + 1024.0f.xx, 0.0f.xx, 2047.0f.xx));
    uint _13526 = _13483 & 3u;
    [branch]
    if (_13526 != 0u)
    {
        uint _13533 = uint(OpaqueBasePass_OpaqueBasePass_Strata_FirstSliceStoringStrataSSSDataWithoutMRT);
        uint _13534 = _10703.x;
        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_13534, _10703.y, _13533)] = _13483;
        if ((_13526 == 2u) || (_13526 == 3u))
        {
            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_13534, _10703.y, _13533 + 1u)] = _13482;
        }
    }
    float4 _13555 = float4((lerp((((float4(_10362.x ? 0.0f.xxxx.x : _9841.x, _10362.y ? 0.0f.xxxx.y : _9841.y, _10362.z ? 0.0f.xxxx.z : _9841.z, _10362.w ? 0.0f.xxxx.w : _9841.w).xyz + float4(_10362.x ? 0.0f.xxxx.x : _9844.x, _10362.y ? 0.0f.xxxx.y : _9844.y, _10362.z ? 0.0f.xxxx.z : _9844.z, _10362.w ? 0.0f.xxxx.w : _9844.w).xyz) + (((_8627 * _8553) * max(1.0f.xxx, ((((((_8434 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_8434 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_8434 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)) * _8424)) + _10449) + _10700, float3(_10858.x ? _10864.x : 0.0f.xxx.x, _10858.y ? _10864.y : 0.0f.xxx.y, _10858.z ? _10864.z : 0.0f.xxx.z), View_View_UnlitViewmodeMask.xxx) + (_11389 + _10448)) * 1.0f, 0.0f);
    float4 _13562 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _13561 = _13555;
        _13561.w = 0.0f;
        _13562 = _13561;
    }
    else
    {
        _13562 = _13555;
    }
    float4 _13563 = 0.0f.xxxx;
    _13563.x = _8510;
    _13563.y = 1.0f;
    _13563.z = 1.0f;
    _13563.w = 1.0f;
    float4 _13572 = _13562 * View_View_PreExposure;
    float3 _13574 = min(_13572.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_13574.x, _13574.y, _13574.z, _13572.w);
    out_var_SV_Target1 = _13563;
    out_var_SV_Target2 = float4(_10699 * View_View_PreExposure, 1.0f);
    out_var_SV_Target3 = _13486;
    out_var_SV_Target4 = _13485;
    out_var_SV_Target5 = _13484;
    out_var_SV_Target6 = (((_13514.x | (_13514.y << 11u)) << 10u) | (uint(clamp(_10857 ? (_10853 / _10855) : 0.0f, 0.0f, 1.0f) * 255.0f) << 2u)) | _10848;
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
