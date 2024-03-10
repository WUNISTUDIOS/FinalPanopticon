#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _457 = 0.0f.xxx;
static float3 _537 = 0.0f.xxx;
static uint3 _538 = uint3(0u, 0u, 0u);
static float4 _539 = 0.0f.xxxx;
static float3 _540 = 0.0f.xxx;
static float4x4 _541 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
static float _548 = 0.0f;
static uint3 _549 = uint3(0u, 0u, 0u);
static float4 _550 = 0.0f.xxxx;
static float3 _551 = 0.0f.xxx;
static float2 _552 = 0.0f.xx;

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
    float View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag : packoffset(c182.y);
    float4 View_View_SkyLightColor : packoffset(c183);
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

StructuredBuffer<float4> View_SkyIrradianceEnvironmentMap;
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
    uint OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight : packoffset(c140);
    int OpaqueBasePass_OpaqueBasePass_Strata_FirstSliceStoringStrataSSSDataWithoutMRT : packoffset(c142.y);
    int OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask : packoffset(c144);
};

StructuredBuffer<float4> OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer;
StructuredBuffer<uint> OpaqueBasePass_Shared_Forward_NumCulledLightsGrid;
cbuffer IndirectLightingCache
{
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
    float4 IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal : packoffset(c4);
    float IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing : packoffset(c5);
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
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture0;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture1;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture2;
SamplerState IndirectLightingCache_IndirectLightingCacheTextureSampler0;
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
    float2 _626 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _633 = float4(mad(_626, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _548, 1.0f) * _585;
    float4 _638 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _642 = _638.xyz / _638.w.xxx;
    float3 _643 = _642 - View_View_RelativePreViewTranslation;
    float3 _644 = in_var_TEXCOORD9 - View_View_RelativePreViewTranslation;
    float _646 = _633.w;
    float3 _660 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _660 = -View_View_ViewForward;
    }
    else
    {
        _660 = normalize(-_642);
    }
    float3 _667 = View_View_ViewTilePosition * float3(-1.0f, -1.0f, -0.0f);
    float3 _669 = mad(-_643, float3(1.0f, 1.0f, 0.0f), float3(MaterialCollection0_MaterialCollection0_Vectors[4].xyz));
    float _670 = _667.x;
    float _671 = _669.x;
    float _674 = _667.y;
    float _675 = _669.y;
    float _680 = _667.z;
    float _681 = _669.z;
    float3 _701 = Material_Material_PreshaderBuffer[2].x.xxx;
    float3 _713 = 0.0f.xxx;
    float _718 = 0.0f;
    _713 = mad(_643, _701, mad(View_View_ViewTilePosition, _701, -floor(mad(View_View_ViewTilePosition, _701, ((_643 * _701) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _718 = 0.0f;
    float _716 = 1.0f;
    uint _720 = 0u;
    [loop]
    for (; _720 < 6u; )
    {
        float3 _724 = _713 * 0.066666670143604278564453125f.xxx;
        float3 _726 = frac(_724) * 15.0f;
        float3 _727 = frac(_726);
        float4 _732 = float4(_727, 0.0f);
        float4 _745 = View_PerlinNoise3DTexture.SampleLevel(View_PerlinNoise3DTextureSampler, mad((_726 - _727) + (((_732 * _732) * _732) * mad(_732, (_732 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx)).xyz, 0.0625f.xxx, 0.03125f.xxx), 0.0f);
        float _719 = mad(abs(dot(_726, mad(_745.xyz * 255.0f, 0.0078740157186985015869140625f.xxx, (-1.0f).xxx)) - mad(_745.w, 255.0f, -127.0f)), _716, _718);
        _713 *= 2.0f;
        _716 *= 0.5f;
        _718 = _719;
        _720++;
        continue;
    }
    float _775 = clamp(mad(-length((mad(View_View_ViewTilePosition, float3(1.0f, 1.0f, 0.0f), _667) * 2097152.0f) + mad(View_View_RelativeWorldCameraOrigin, float3(1.0f, 1.0f, 0.0f), _643 * float3(-1.0f, -1.0f, -0.0f))), 1.0f / max(9.9999997473787516355514526367188e-06f, MaterialCollection0_MaterialCollection0_Vectors[0].x * Material_Material_PreshaderBuffer[2].y), 1.0f) * Material_Material_PreshaderBuffer[3].y, 0.0f, 1.0f);
    float _776 = lerp(clamp(lerp(-1.0f, 1.0f, _718), 0.0f, 1.0f), 1.0f, _775);
    float3 _779 = ((View_View_ViewTilePosition + (-View_View_ViewTilePosition)) * 2097152.0f) + _642;
    uint3 _781 = uint3(0u, 0u, 0u);
    _781 = _538;
    float _787 = 0.0f;
    uint3 _782 = uint3(0u, 0u, 0u);
    float _878 = 0.0f;
    uint _784 = 0u;
    float _786 = 0.0f;
    uint _789 = 0u;
    for (;;)
    {
        _789 = View_View_NumGlobalSDFClipmaps;
        if (_784 < _789)
        {
            float3 _803 = min(max((_779 - View_View_GlobalVolumeTranslatedCenterAndExtent[_784].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_784].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_784].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_784].www) - _779, 0.0f.xxx));
            float _813 = View_View_GlobalVolumeTranslatedCenterAndExtent[_784].w * View_View_GlobalVolumeTexelSize;
            _787 = 8.0f * _813;
            if (min(_803.x, min(_803.y, _803.z)) > _813)
            {
                float3 _823 = frac(frac(mad(_779, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_784].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_784].xyz)));
                float _827 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _834 = (clamp(_823, 0.0f.xxx, 1.0f.xxx) * _827) + float3(int3(0, 0, int(_784 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                uint4 _844 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_834.x), int(_834.y), int(_834.z), 0).xyz, 0));
                uint _845 = _844.x;
                uint _846 = _845 & 16777215u;
                uint3 _877 = uint3(0u, 0u, 0u);
                if (_845 < 4294967295u)
                {
                    uint3 _851 = _781;
                    _851.x = _846 & 127u;
                    _851.y = (_846 >> 7u) & 127u;
                    _851.z = _846 >> 14u;
                    float4 _870 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_851 * uint3(8u, 8u, 8u)) + (frac(_823 * _827) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f);
                    float _871 = _870.x;
                    if (_871 < 1.0f)
                    {
                        _878 = mad(_871, 2.0f, -1.0f) * _787;
                        break;
                    }
                    _877 = _851;
                }
                else
                {
                    _877 = _781;
                }
                _782 = _877;
            }
            else
            {
                _782 = _781;
            }
            _781 = _782;
            _784++;
            _786 = _787;
            continue;
        }
        else
        {
            _878 = _786;
            break;
        }
    }
    float _889 = clamp(mad(mad(_878, Material_Material_PreshaderBuffer[3].w, -Material_Material_PreshaderBuffer[4].x) * Material_Material_PreshaderBuffer[4].w, -1.0f, 1.0f), 0.0f, 1.0f);
    uint3 _891 = uint3(0u, 0u, 0u);
    _891 = _538;
    uint3 _892 = uint3(0u, 0u, 0u);
    float3 _1149 = 0.0f.xxx;
    uint _894 = 0u;
    for (;;)
    {
        if (_894 < _789)
        {
            float _904 = View_View_GlobalVolumeTranslatedCenterAndExtent[_894].w * View_View_GlobalVolumeTexelSize;
            float3 _914 = min(max((_779 - View_View_GlobalVolumeTranslatedCenterAndExtent[_894].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_894].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_894].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_894].www) - _779, 0.0f.xxx));
            if (min(_914.x, min(_914.y, _914.z)) >= _904)
            {
                float3 _929 = frac(frac(mad(_779, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_894].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_894].xyz)));
                float _933 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _939 = float3(int3(0, 0, int(_894 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                float3 _940 = (clamp(_929, 0.0f.xxx, 1.0f.xxx) * _933) + _939;
                uint4 _950 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_940.x), int(_940.y), int(_940.z), 0).xyz, 0));
                uint _951 = _950.x;
                uint _952 = _951 & 16777215u;
                uint3 _1148 = uint3(0u, 0u, 0u);
                if (_951 < 4294967295u)
                {
                    uint3 _957 = _891;
                    _957.x = _952 & 127u;
                    _957.y = (_952 >> 7u) & 127u;
                    _957.z = _952 >> 14u;
                    if (View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_957 * uint3(8u, 8u, 8u)) + (frac(_929 * _933) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x < 0.89999997615814208984375f)
                    {
                        float _981 = 0.5f * View_View_GlobalVolumeTexelSize;
                        float3 _984 = frac(_929 + float3(_981, 0.0f, 0.0f));
                        float3 _987 = (clamp(_984, 0.0f.xxx, 1.0f.xxx) * _933) + _939;
                        uint4 _996 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_987.x), int(_987.y), int(_987.z), 0).xyz, 0));
                        uint _997 = _996.x;
                        uint _998 = _997 & 16777215u;
                        float _1020 = 0.0f;
                        if (_997 < 4294967295u)
                        {
                            uint3 _1003 = uint3(0u, 0u, 0u);
                            _1003.x = _998 & 127u;
                            _1003.y = (_998 >> 7u) & 127u;
                            _1003.z = _998 >> 14u;
                            _1020 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1003 * uint3(8u, 8u, 8u)) + (frac(_984 * _933) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1020 = 1.0f;
                        }
                        float _1021 = View_View_GlobalVolumeTexelSize * (-0.5f);
                        float3 _1024 = frac(_929 + float3(_1021, 0.0f, 0.0f));
                        float3 _1027 = (clamp(_1024, 0.0f.xxx, 1.0f.xxx) * _933) + _939;
                        uint4 _1036 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1027.x), int(_1027.y), int(_1027.z), 0).xyz, 0));
                        uint _1037 = _1036.x;
                        uint _1038 = _1037 & 16777215u;
                        float _1060 = 0.0f;
                        if (_1037 < 4294967295u)
                        {
                            uint3 _1043 = uint3(0u, 0u, 0u);
                            _1043.x = _1038 & 127u;
                            _1043.y = (_1038 >> 7u) & 127u;
                            _1043.z = _1038 >> 14u;
                            _1060 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1043 * uint3(8u, 8u, 8u)) + (frac(_1024 * _933) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1060 = 1.0f;
                        }
                        float3 _1063 = frac(_929 + float3(0.0f, _981, 0.0f));
                        float3 _1066 = (clamp(_1063, 0.0f.xxx, 1.0f.xxx) * _933) + _939;
                        uint4 _1075 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1066.x), int(_1066.y), int(_1066.z), 0).xyz, 0));
                        uint _1076 = _1075.x;
                        uint _1077 = _1076 & 16777215u;
                        float _1099 = 0.0f;
                        if (_1076 < 4294967295u)
                        {
                            uint3 _1082 = uint3(0u, 0u, 0u);
                            _1082.x = _1077 & 127u;
                            _1082.y = (_1077 >> 7u) & 127u;
                            _1082.z = _1077 >> 14u;
                            _1099 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1082 * uint3(8u, 8u, 8u)) + (frac(_1063 * _933) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1099 = 1.0f;
                        }
                        float3 _1102 = frac(_929 + float3(0.0f, _1021, 0.0f));
                        float3 _1105 = (clamp(_1102, 0.0f.xxx, 1.0f.xxx) * _933) + _939;
                        uint4 _1114 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1105.x), int(_1105.y), int(_1105.z), 0).xyz, 0));
                        uint _1115 = _1114.x;
                        uint _1116 = _1115 & 16777215u;
                        float _1138 = 0.0f;
                        if (_1115 < 4294967295u)
                        {
                            uint3 _1121 = uint3(0u, 0u, 0u);
                            _1121.x = _1116 & 127u;
                            _1121.y = (_1116 >> 7u) & 127u;
                            _1121.z = _1116 >> 14u;
                            _1138 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1121 * uint3(8u, 8u, 8u)) + (frac(_1102 * _933) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1138 = 1.0f;
                        }
                        _1149 = (float3(_1020 - _1060, _1099 - _1138, _548) * (_904 * 16.0f)) / (View_View_GlobalVolumeTranslatedCenterAndExtent[_894].w * (128.0f * View_View_GlobalVolumeTexelSize)).xxx;
                        break;
                    }
                    _1148 = _957;
                }
                else
                {
                    _1148 = _891;
                }
                _892 = _1148;
            }
            else
            {
                _892 = _891;
            }
            _891 = _892;
            _894++;
            continue;
        }
        else
        {
            _1149 = float3(0.0f, 0.0f, 0.001000000047497451305389404296875f);
            break;
        }
    }
    float3 _1156 = Material_Material_PreshaderBuffer[5].z.xxx;
    float _1163 = lerp(View_View_GameTime, MaterialCollection0_MaterialCollection0_Vectors[0].z, MaterialCollection0_MaterialCollection0_Vectors[0].w);
    float3 _1174 = float3((View_View_ViewTilePosition * _1156).xy, 0.0f);
    float3 _1175 = float3((mad(_1149, Material_Material_PreshaderBuffer[5].y.xxx, _644) * _1156).xy, ((_1163 * Material_Material_PreshaderBuffer[6].x).xx + float2(1.0f, 0.0f)).x);
    float3 _1185 = 0.0f.xxx;
    float _1190 = 0.0f;
    _1185 = (((_1174 - floor(_1174 + ((_1175 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _1175) * 1.0f;
    _1190 = 0.0f;
    float _1188 = 1.0f;
    uint _1192 = 0u;
    [loop]
    for (; _1192 < 10u; )
    {
        float3 _1196 = frac(_1185);
        float _1198 = dot(floor(_1185), float3(19.0f, 47.0f, 101.0f));
        uint3 _1210 = (uint3(int3(int(_1198), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1211 = _1210.y;
        uint _1212 = _1210.z;
        uint _1215 = _1210.x + (_1211 * _1212);
        uint _1217 = _1211 + (_1212 * _1215);
        uint3 _1222 = uint3(0u, 0u, 0u);
        _1222.x = _1215 + (_1217 * (_1212 + (_1215 * _1217)));
        uint3 _1223 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _1236 = (uint3(int3(int(_1198 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1237 = _1236.y;
        uint _1238 = _1236.z;
        uint _1241 = _1236.x + (_1237 * _1238);
        uint _1243 = _1237 + (_1238 * _1241);
        uint3 _1248 = uint3(0u, 0u, 0u);
        _1248.x = _1241 + (_1243 * (_1238 + (_1241 * _1243)));
        uint3 _1261 = (uint3(int3(int(_1198 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1262 = _1261.y;
        uint _1263 = _1261.z;
        uint _1266 = _1261.x + (_1262 * _1263);
        uint _1268 = _1262 + (_1263 * _1266);
        uint3 _1273 = uint3(0u, 0u, 0u);
        _1273.x = _1266 + (_1268 * (_1263 + (_1266 * _1268)));
        uint3 _1286 = (uint3(int3(int(_1198 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1287 = _1286.y;
        uint _1288 = _1286.z;
        uint _1291 = _1286.x + (_1287 * _1288);
        uint _1293 = _1287 + (_1288 * _1291);
        uint3 _1298 = uint3(0u, 0u, 0u);
        _1298.x = _1291 + (_1293 * (_1288 + (_1291 * _1293)));
        uint3 _1311 = (uint3(int3(int(_1198 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1312 = _1311.y;
        uint _1313 = _1311.z;
        uint _1316 = _1311.x + (_1312 * _1313);
        uint _1318 = _1312 + (_1313 * _1316);
        uint3 _1323 = uint3(0u, 0u, 0u);
        _1323.x = _1316 + (_1318 * (_1313 + (_1316 * _1318)));
        uint3 _1336 = (uint3(int3(int(_1198 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1337 = _1336.y;
        uint _1338 = _1336.z;
        uint _1341 = _1336.x + (_1337 * _1338);
        uint _1343 = _1337 + (_1338 * _1341);
        uint3 _1348 = uint3(0u, 0u, 0u);
        _1348.x = _1341 + (_1343 * (_1338 + (_1341 * _1343)));
        uint3 _1361 = (uint3(int3(int(_1198 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1362 = _1361.y;
        uint _1363 = _1361.z;
        uint _1366 = _1361.x + (_1362 * _1363);
        uint _1368 = _1362 + (_1363 * _1366);
        uint3 _1373 = uint3(0u, 0u, 0u);
        _1373.x = _1366 + (_1368 * (_1363 + (_1366 * _1368)));
        uint3 _1386 = (uint3(int3(int(_1198 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1387 = _1386.y;
        uint _1388 = _1386.z;
        uint _1391 = _1386.x + (_1387 * _1388);
        uint _1393 = _1387 + (_1388 * _1391);
        uint3 _1398 = uint3(0u, 0u, 0u);
        _1398.x = _1391 + (_1393 * (_1388 + (_1391 * _1393)));
        float4 _1409 = float4(_1196, 0.0f);
        float4 _1415 = ((_1409 * _1409) * _1409) * mad(_1409, (_1409 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _1416 = _1415.x;
        float _1419 = _1415.y;
        float _1426 = abs(lerp(lerp(lerp(dot(mad(float3((_1222 >> _1223).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1196), dot(mad(float3((_1248 >> _1223).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1196 - float3(1.0f, 0.0f, 0.0f)), _1416), lerp(dot(mad(float3((_1273 >> _1223).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1196 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_1298 >> _1223).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1196 - float3(1.0f, 1.0f, 0.0f)), _1416), _1419), lerp(lerp(dot(mad(float3((_1323 >> _1223).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1196 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_1348 >> _1223).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1196 - float3(1.0f, 0.0f, 1.0f)), _1416), lerp(dot(mad(float3((_1373 >> _1223).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1196 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_1398 >> _1223).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1196 - 1.0f.xxx), _1416), _1419), _1415.z));
        float _1191 = mad(_1426, _1188, _1190);
        _1185 *= 2.0f;
        _1188 *= 0.5f;
        _1190 = _1191;
        _1192++;
        continue;
    }
    float _1430 = -_889;
    float _1436 = clamp(mad(mad(_1430, Material_Material_PreshaderBuffer[6].y, lerp(0.0f, 1.0f, _1190)) / mad(_1430, Material_Material_PreshaderBuffer[6].y, mad(_889, Material_Material_PreshaderBuffer[6].y, 1.0f)), -1.0f, 1.0f), 0.0f, 1.0f);
    float _1445 = clamp(lerp(Material_Material_PreshaderBuffer[6].w, Material_Material_PreshaderBuffer[6].z, (_1436 <= 0.0f) ? 0.0f : pow(_1436, 2.0f)), 0.0f, 1.0f);
    float _1446 = _889 * _1445;
    float3 _1449 = Material_Material_PreshaderBuffer[7].x.xxx;
    float3 _1450 = View_View_ViewTilePosition * _1449;
    float3 _1451 = _644 * _1449;
    float3 _1462 = 0.0f.xxx;
    float3 _1465 = 0.0f.xxx;
    float _1469 = 0.0f;
    _1462 = _540;
    _1465 = mad(_644, _1449, mad(View_View_ViewTilePosition, _1449, -floor(mad(View_View_ViewTilePosition, _1449, (_1451 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _1469 = 0.0f;
    float3 _1466 = 0.0f.xxx;
    float _1468 = 0.0f;
    float _1470 = 0.0f;
    float3 _1463 = 0.0f.xxx;
    float _1467 = 1.0f;
    uint _1471 = 0u;
    [loop]
    for (; _1471 < 1u; _1462 = _1463, _1465 = _1466, _1467 = _1468, _1469 = _1470, _1471++)
    {
        float3 _1476 = frac(_1465);
        float3 _1477 = floor(_1465);
        float3 _1478 = _1462;
        _1478.x = 0.0f;
        float4 _1480 = 0.0f.xxxx;
        _1480 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _1463 = _1478;
        float3 _1483 = 0.0f.xxx;
        float4 _1481 = 0.0f.xxxx;
        float3 _1490 = 0.0f.xxx;
        for (; _1463.x <= 1.0f; _1483 = _1490, _1483.x = _1490.x + 1.0f, _1480 = _1481, _1463 = _1483)
        {
            float3 _1488 = _1463;
            _1488.y = 0.0f;
            _1490 = _1488;
            _1481 = _1480;
            float3 _1491 = 0.0f.xxx;
            float4 _1493 = 0.0f.xxxx;
            float3 _1502 = 0.0f.xxx;
            for (; _1490.y <= 1.0f; _1491 = _1502, _1491.y = _1502.y + 1.0f, _1490 = _1491, _1481 = _1493)
            {
                float3 _1498 = _1490;
                _1498.z = 0.0f;
                _1493 = _1481;
                _1502 = _1498;
                for (; _1502.z <= 1.0f; )
                {
                    float3 _1507 = _1477 + _1502;
                    uint3 _1512 = (uint3(int3(float3(_1507.x, _1507.y, _1507.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _1513 = _1512.y;
                    uint _1514 = _1512.z;
                    uint _1517 = _1512.x + (_1513 * _1514);
                    uint _1519 = _1513 + (_1514 * _1517);
                    uint _1521 = _1514 + (_1517 * _1519);
                    uint _1523 = _1517 + (_1519 * _1521);
                    uint3 _1524 = _1512;
                    _1524.x = _1523;
                    uint _1526 = _1519 + (_1521 * _1523);
                    _1524.y = _1526;
                    _1524.z = _1521 + (_1523 * _1526);
                    float3 _1538 = _1476 - (_1502 + (normalize(mad(float3(_1524 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _1503 = _1502;
                    _1503.z = _1502.z + 1.0f;
                    _1493 = float4(0.0f, 0.0f, 0.0f, min(_1493.w, dot(_1538, _1538)));
                    _1502 = _1503;
                    continue;
                }
            }
        }
        _1470 = mad(abs(mad(sqrt(_1480.w), 2.0f, -1.0f)), _1467, _1469);
        _1466 = _1465 * 2.0f;
        _1468 = _1467 * 0.5f;
    }
    float3 _1564 = 0.0f.xxx;
    float3 _1567 = 0.0f.xxx;
    float _1571 = 0.0f;
    _1564 = _540;
    _1567 = mad(_1451, 1.2000000476837158203125f.xxx, mad(_1450, 1.2000000476837158203125f.xxx, -floor(mad(_1450, 1.2000000476837158203125f.xxx, ((_1451 * 1.2000000476837158203125f.xxx) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _1571 = 0.0f;
    float3 _1568 = 0.0f.xxx;
    float _1570 = 0.0f;
    float _1572 = 0.0f;
    float3 _1565 = 0.0f.xxx;
    float _1569 = 1.0f;
    uint _1573 = 0u;
    [loop]
    for (; _1573 < 1u; _1564 = _1565, _1567 = _1568, _1569 = _1570, _1571 = _1572, _1573++)
    {
        float3 _1578 = frac(_1567);
        float3 _1579 = floor(_1567);
        float3 _1580 = _1564;
        _1580.x = 0.0f;
        float4 _1582 = 0.0f.xxxx;
        _1582 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _1565 = _1580;
        float3 _1585 = 0.0f.xxx;
        float4 _1583 = 0.0f.xxxx;
        float3 _1592 = 0.0f.xxx;
        for (; _1565.x <= 1.0f; _1585 = _1592, _1585.x = _1592.x + 1.0f, _1582 = _1583, _1565 = _1585)
        {
            float3 _1590 = _1565;
            _1590.y = 0.0f;
            _1592 = _1590;
            _1583 = _1582;
            float3 _1593 = 0.0f.xxx;
            float4 _1595 = 0.0f.xxxx;
            float3 _1604 = 0.0f.xxx;
            for (; _1592.y <= 1.0f; _1593 = _1604, _1593.y = _1604.y + 1.0f, _1592 = _1593, _1583 = _1595)
            {
                float3 _1600 = _1592;
                _1600.z = 0.0f;
                _1595 = _1583;
                _1604 = _1600;
                for (; _1604.z <= 1.0f; )
                {
                    float3 _1609 = _1579 + _1604;
                    uint3 _1614 = (uint3(int3(float3(_1609.x, _1609.y, _1609.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _1615 = _1614.y;
                    uint _1616 = _1614.z;
                    uint _1619 = _1614.x + (_1615 * _1616);
                    uint _1621 = _1615 + (_1616 * _1619);
                    uint _1623 = _1616 + (_1619 * _1621);
                    uint _1625 = _1619 + (_1621 * _1623);
                    uint3 _1626 = _1614;
                    _1626.x = _1625;
                    uint _1628 = _1621 + (_1623 * _1625);
                    _1626.y = _1628;
                    _1626.z = _1623 + (_1625 * _1628);
                    float3 _1640 = _1578 - (_1604 + (normalize(mad(float3(_1626 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _1605 = _1604;
                    _1605.z = _1604.z + 1.0f;
                    _1595 = float4(0.0f, 0.0f, 0.0f, min(_1595.w, dot(_1640, _1640)));
                    _1604 = _1605;
                    continue;
                }
            }
        }
        _1572 = mad(abs(mad(sqrt(_1582.w), 2.0f, -1.0f)), _1569, _1571);
        _1568 = _1567 * 2.0f;
        _1570 = _1569 * 0.5f;
    }
    float _1655 = clamp(lerp(-1.0f, 1.0f, _1469), 0.0f, 1.0f) + clamp(lerp(-1.0f, 1.0f, _1571), 0.0f, 1.0f);
    float _1669 = (abs(Material_Material_PreshaderBuffer[7].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[7].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[7].z : Material_Material_PreshaderBuffer[7].w) : Material_Material_PreshaderBuffer[7].z;
    float _1677 = (abs(_1669 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_1669 >= 1.0f) ? Material_Material_PreshaderBuffer[8].x : Material_Material_PreshaderBuffer[7].z) : Material_Material_PreshaderBuffer[7].z;
    float3 _1687 = float3(min(max((abs(_1677) > 9.9999997473787516355514526367188e-06f) ? ((_1677 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[10].y, 0.0f);
    float2 _1698 = float2(View_View_ViewTilePosition.xy);
    float2 _1699 = float2(_644.xy);
    float2 _1702 = float2(min(max(_1687 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _1703 = _1698 * _1702;
    float2 _1704 = _1702 * _1699;
    float _1709 = _1703.x + _1703.y;
    float _1713 = _1709 * Material_Material_PreshaderBuffer[14].x;
    float _1716 = _1163 - Material_Material_PreshaderBuffer[14].z;
    float3 _1719 = Material_Material_PreshaderBuffer[14].w.xxx;
    float3 _1724 = Material_Material_PreshaderBuffer[15].x.xxx;
    float3 _1728 = MaterialCollection0_MaterialCollection0_Vectors[0].y.xxx;
    float3 _1729 = ((View_View_ViewTilePosition * _1719) * _1724) * _1728;
    float3 _1731 = (((_1719 * _644) * _1724) * _1728) * 0.100000001490116119384765625f.xxx;
    float3 _1742 = float3(_1731.xy, ((_1163 * Material_Material_PreshaderBuffer[15].z).xx + _1731.z.xx).x);
    float3 _1753 = 0.0f.xxx;
    float _1758 = 0.0f;
    _1753 = ((mad(_1729, 0.100000001490116119384765625f.xxx, -floor(mad(_1729, 0.100000001490116119384765625f.xxx, (_1742 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _1742) * 1.0f;
    _1758 = 0.0f;
    float _1756 = 1.0f;
    uint _1760 = 0u;
    [loop]
    for (; _1760 < 6u; )
    {
        float3 _1764 = frac(_1753);
        float _1766 = dot(floor(_1753), float3(19.0f, 47.0f, 101.0f));
        uint3 _1778 = (uint3(int3(int(_1766), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1779 = _1778.y;
        uint _1780 = _1778.z;
        uint _1783 = _1778.x + (_1779 * _1780);
        uint _1785 = _1779 + (_1780 * _1783);
        uint3 _1790 = uint3(0u, 0u, 0u);
        _1790.x = _1783 + (_1785 * (_1780 + (_1783 * _1785)));
        uint3 _1791 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _1804 = (uint3(int3(int(_1766 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1805 = _1804.y;
        uint _1806 = _1804.z;
        uint _1809 = _1804.x + (_1805 * _1806);
        uint _1811 = _1805 + (_1806 * _1809);
        uint3 _1816 = uint3(0u, 0u, 0u);
        _1816.x = _1809 + (_1811 * (_1806 + (_1809 * _1811)));
        uint3 _1829 = (uint3(int3(int(_1766 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1830 = _1829.y;
        uint _1831 = _1829.z;
        uint _1834 = _1829.x + (_1830 * _1831);
        uint _1836 = _1830 + (_1831 * _1834);
        uint3 _1841 = uint3(0u, 0u, 0u);
        _1841.x = _1834 + (_1836 * (_1831 + (_1834 * _1836)));
        uint3 _1854 = (uint3(int3(int(_1766 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1855 = _1854.y;
        uint _1856 = _1854.z;
        uint _1859 = _1854.x + (_1855 * _1856);
        uint _1861 = _1855 + (_1856 * _1859);
        uint3 _1866 = uint3(0u, 0u, 0u);
        _1866.x = _1859 + (_1861 * (_1856 + (_1859 * _1861)));
        uint3 _1879 = (uint3(int3(int(_1766 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1880 = _1879.y;
        uint _1881 = _1879.z;
        uint _1884 = _1879.x + (_1880 * _1881);
        uint _1886 = _1880 + (_1881 * _1884);
        uint3 _1891 = uint3(0u, 0u, 0u);
        _1891.x = _1884 + (_1886 * (_1881 + (_1884 * _1886)));
        uint3 _1904 = (uint3(int3(int(_1766 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1905 = _1904.y;
        uint _1906 = _1904.z;
        uint _1909 = _1904.x + (_1905 * _1906);
        uint _1911 = _1905 + (_1906 * _1909);
        uint3 _1916 = uint3(0u, 0u, 0u);
        _1916.x = _1909 + (_1911 * (_1906 + (_1909 * _1911)));
        uint3 _1929 = (uint3(int3(int(_1766 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1930 = _1929.y;
        uint _1931 = _1929.z;
        uint _1934 = _1929.x + (_1930 * _1931);
        uint _1936 = _1930 + (_1931 * _1934);
        uint3 _1941 = uint3(0u, 0u, 0u);
        _1941.x = _1934 + (_1936 * (_1931 + (_1934 * _1936)));
        uint3 _1954 = (uint3(int3(int(_1766 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1955 = _1954.y;
        uint _1956 = _1954.z;
        uint _1959 = _1954.x + (_1955 * _1956);
        uint _1961 = _1955 + (_1956 * _1959);
        uint3 _1966 = uint3(0u, 0u, 0u);
        _1966.x = _1959 + (_1961 * (_1956 + (_1959 * _1961)));
        float4 _1977 = float4(_1764, 0.0f);
        float4 _1983 = ((_1977 * _1977) * _1977) * mad(_1977, (_1977 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _1984 = _1983.x;
        float _1987 = _1983.y;
        float _1759 = mad(lerp(lerp(lerp(dot(mad(float3((_1790 >> _1791).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1764), dot(mad(float3((_1816 >> _1791).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1764 - float3(1.0f, 0.0f, 0.0f)), _1984), lerp(dot(mad(float3((_1841 >> _1791).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1764 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_1866 >> _1791).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1764 - float3(1.0f, 1.0f, 0.0f)), _1984), _1987), lerp(lerp(dot(mad(float3((_1891 >> _1791).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1764 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_1916 >> _1791).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1764 - float3(1.0f, 0.0f, 1.0f)), _1984), lerp(dot(mad(float3((_1941 >> _1791).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1764 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_1966 >> _1791).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1764 - 1.0f.xxx), _1984), _1987), _1983.z), _1756, _1758);
        _1753 *= 2.0f;
        _1756 *= 0.5f;
        _1758 = _1759;
        _1760++;
        continue;
    }
    float _1997 = lerp(_1163, _1716, clamp(lerp(0.0f, 1.0f, mad(_1758, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _2001 = mad(_1704.x + _1704.y, Material_Material_PreshaderBuffer[14].x, Material_Material_PreshaderBuffer[15].w * _1997);
    float _2002 = floor(_1713);
    float3 _2014 = Material_Material_PreshaderBuffer[17].x.xxx;
    float3 _2019 = Material_Material_PreshaderBuffer[17].y.xxx;
    float3 _2020 = (View_View_ViewTilePosition * _2014) * _2019;
    float3 _2021 = (_2014 * _644) * _2019;
    float3 _2022 = _2021 * 0.0001000000047497451305389404296875f.xxx;
    float2 _2029 = (_1163 * Material_Material_PreshaderBuffer[17].w).xx;
    float3 _2033 = float3(_2022.xy, (_2029 + _2022.z.xx).x);
    float3 _2044 = 0.0f.xxx;
    float _2049 = 0.0f;
    _2044 = ((mad(_2020, 0.0001000000047497451305389404296875f.xxx, -floor(mad(_2020, 0.0001000000047497451305389404296875f.xxx, (_2033 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _2033) * 1.0f;
    _2049 = 0.0f;
    float _2047 = 1.0f;
    uint _2051 = 0u;
    [loop]
    for (; _2051 < 10u; )
    {
        float3 _2055 = frac(_2044);
        float _2057 = dot(floor(_2044), float3(19.0f, 47.0f, 101.0f));
        uint3 _2069 = (uint3(int3(int(_2057), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2070 = _2069.y;
        uint _2071 = _2069.z;
        uint _2074 = _2069.x + (_2070 * _2071);
        uint _2076 = _2070 + (_2071 * _2074);
        uint3 _2081 = uint3(0u, 0u, 0u);
        _2081.x = _2074 + (_2076 * (_2071 + (_2074 * _2076)));
        uint3 _2082 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _2095 = (uint3(int3(int(_2057 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2096 = _2095.y;
        uint _2097 = _2095.z;
        uint _2100 = _2095.x + (_2096 * _2097);
        uint _2102 = _2096 + (_2097 * _2100);
        uint3 _2107 = uint3(0u, 0u, 0u);
        _2107.x = _2100 + (_2102 * (_2097 + (_2100 * _2102)));
        uint3 _2120 = (uint3(int3(int(_2057 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2121 = _2120.y;
        uint _2122 = _2120.z;
        uint _2125 = _2120.x + (_2121 * _2122);
        uint _2127 = _2121 + (_2122 * _2125);
        uint3 _2132 = uint3(0u, 0u, 0u);
        _2132.x = _2125 + (_2127 * (_2122 + (_2125 * _2127)));
        uint3 _2145 = (uint3(int3(int(_2057 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2146 = _2145.y;
        uint _2147 = _2145.z;
        uint _2150 = _2145.x + (_2146 * _2147);
        uint _2152 = _2146 + (_2147 * _2150);
        uint3 _2157 = uint3(0u, 0u, 0u);
        _2157.x = _2150 + (_2152 * (_2147 + (_2150 * _2152)));
        uint3 _2170 = (uint3(int3(int(_2057 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2171 = _2170.y;
        uint _2172 = _2170.z;
        uint _2175 = _2170.x + (_2171 * _2172);
        uint _2177 = _2171 + (_2172 * _2175);
        uint3 _2182 = uint3(0u, 0u, 0u);
        _2182.x = _2175 + (_2177 * (_2172 + (_2175 * _2177)));
        uint3 _2195 = (uint3(int3(int(_2057 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2196 = _2195.y;
        uint _2197 = _2195.z;
        uint _2200 = _2195.x + (_2196 * _2197);
        uint _2202 = _2196 + (_2197 * _2200);
        uint3 _2207 = uint3(0u, 0u, 0u);
        _2207.x = _2200 + (_2202 * (_2197 + (_2200 * _2202)));
        uint3 _2220 = (uint3(int3(int(_2057 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2221 = _2220.y;
        uint _2222 = _2220.z;
        uint _2225 = _2220.x + (_2221 * _2222);
        uint _2227 = _2221 + (_2222 * _2225);
        uint3 _2232 = uint3(0u, 0u, 0u);
        _2232.x = _2225 + (_2227 * (_2222 + (_2225 * _2227)));
        uint3 _2245 = (uint3(int3(int(_2057 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2246 = _2245.y;
        uint _2247 = _2245.z;
        uint _2250 = _2245.x + (_2246 * _2247);
        uint _2252 = _2246 + (_2247 * _2250);
        uint3 _2257 = uint3(0u, 0u, 0u);
        _2257.x = _2250 + (_2252 * (_2247 + (_2250 * _2252)));
        float4 _2268 = float4(_2055, 0.0f);
        float4 _2274 = ((_2268 * _2268) * _2268) * mad(_2268, (_2268 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _2275 = _2274.x;
        float _2278 = _2274.y;
        float _2285 = abs(lerp(lerp(lerp(dot(mad(float3((_2081 >> _2082).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2055), dot(mad(float3((_2107 >> _2082).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2055 - float3(1.0f, 0.0f, 0.0f)), _2275), lerp(dot(mad(float3((_2132 >> _2082).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2055 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_2157 >> _2082).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2055 - float3(1.0f, 1.0f, 0.0f)), _2275), _2278), lerp(lerp(dot(mad(float3((_2182 >> _2082).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2055 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_2207 >> _2082).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2055 - float3(1.0f, 0.0f, 1.0f)), _2275), lerp(dot(mad(float3((_2232 >> _2082).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2055 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_2257 >> _2082).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2055 - 1.0f.xxx), _2275), _2278), _2274.z));
        float _2050 = mad(_2285, _2047, _2049);
        _2044 *= 2.0f;
        _2047 *= 0.5f;
        _2049 = _2050;
        _2051++;
        continue;
    }
    float3 _2287 = _2021 * 0.000200000009499490261077880859375f.xxx;
    float3 _2294 = float3(_2287.xy, (_2029 + _2287.z.xx).x);
    float3 _2305 = 0.0f.xxx;
    float _2310 = 0.0f;
    _2305 = ((mad(_2020, 0.000200000009499490261077880859375f.xxx, -floor(mad(_2020, 0.000200000009499490261077880859375f.xxx, (_2294 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _2294) * 1.0f;
    _2310 = 0.0f;
    float _2308 = 1.0f;
    uint _2312 = 0u;
    [loop]
    for (; _2312 < 10u; )
    {
        float3 _2316 = frac(_2305);
        float _2318 = dot(floor(_2305), float3(19.0f, 47.0f, 101.0f));
        uint3 _2330 = (uint3(int3(int(_2318), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2331 = _2330.y;
        uint _2332 = _2330.z;
        uint _2335 = _2330.x + (_2331 * _2332);
        uint _2337 = _2331 + (_2332 * _2335);
        uint3 _2342 = uint3(0u, 0u, 0u);
        _2342.x = _2335 + (_2337 * (_2332 + (_2335 * _2337)));
        uint3 _2343 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _2356 = (uint3(int3(int(_2318 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2357 = _2356.y;
        uint _2358 = _2356.z;
        uint _2361 = _2356.x + (_2357 * _2358);
        uint _2363 = _2357 + (_2358 * _2361);
        uint3 _2368 = uint3(0u, 0u, 0u);
        _2368.x = _2361 + (_2363 * (_2358 + (_2361 * _2363)));
        uint3 _2381 = (uint3(int3(int(_2318 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2382 = _2381.y;
        uint _2383 = _2381.z;
        uint _2386 = _2381.x + (_2382 * _2383);
        uint _2388 = _2382 + (_2383 * _2386);
        uint3 _2393 = uint3(0u, 0u, 0u);
        _2393.x = _2386 + (_2388 * (_2383 + (_2386 * _2388)));
        uint3 _2406 = (uint3(int3(int(_2318 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2407 = _2406.y;
        uint _2408 = _2406.z;
        uint _2411 = _2406.x + (_2407 * _2408);
        uint _2413 = _2407 + (_2408 * _2411);
        uint3 _2418 = uint3(0u, 0u, 0u);
        _2418.x = _2411 + (_2413 * (_2408 + (_2411 * _2413)));
        uint3 _2431 = (uint3(int3(int(_2318 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2432 = _2431.y;
        uint _2433 = _2431.z;
        uint _2436 = _2431.x + (_2432 * _2433);
        uint _2438 = _2432 + (_2433 * _2436);
        uint3 _2443 = uint3(0u, 0u, 0u);
        _2443.x = _2436 + (_2438 * (_2433 + (_2436 * _2438)));
        uint3 _2456 = (uint3(int3(int(_2318 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2457 = _2456.y;
        uint _2458 = _2456.z;
        uint _2461 = _2456.x + (_2457 * _2458);
        uint _2463 = _2457 + (_2458 * _2461);
        uint3 _2468 = uint3(0u, 0u, 0u);
        _2468.x = _2461 + (_2463 * (_2458 + (_2461 * _2463)));
        uint3 _2481 = (uint3(int3(int(_2318 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2482 = _2481.y;
        uint _2483 = _2481.z;
        uint _2486 = _2481.x + (_2482 * _2483);
        uint _2488 = _2482 + (_2483 * _2486);
        uint3 _2493 = uint3(0u, 0u, 0u);
        _2493.x = _2486 + (_2488 * (_2483 + (_2486 * _2488)));
        uint3 _2506 = (uint3(int3(int(_2318 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2507 = _2506.y;
        uint _2508 = _2506.z;
        uint _2511 = _2506.x + (_2507 * _2508);
        uint _2513 = _2507 + (_2508 * _2511);
        uint3 _2518 = uint3(0u, 0u, 0u);
        _2518.x = _2511 + (_2513 * (_2508 + (_2511 * _2513)));
        float4 _2529 = float4(_2316, 0.0f);
        float4 _2535 = ((_2529 * _2529) * _2529) * mad(_2529, (_2529 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _2536 = _2535.x;
        float _2539 = _2535.y;
        float _2546 = abs(lerp(lerp(lerp(dot(mad(float3((_2342 >> _2343).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2316), dot(mad(float3((_2368 >> _2343).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2316 - float3(1.0f, 0.0f, 0.0f)), _2536), lerp(dot(mad(float3((_2393 >> _2343).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2316 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_2418 >> _2343).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2316 - float3(1.0f, 1.0f, 0.0f)), _2536), _2539), lerp(lerp(dot(mad(float3((_2443 >> _2343).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2316 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_2468 >> _2343).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2316 - float3(1.0f, 0.0f, 1.0f)), _2536), lerp(dot(mad(float3((_2493 >> _2343).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2316 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_2518 >> _2343).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2316 - 1.0f.xxx), _2536), _2539), _2535.z));
        float _2311 = mad(_2546, _2308, _2310);
        _2305 *= 2.0f;
        _2308 *= 0.5f;
        _2310 = _2311;
        _2312++;
        continue;
    }
    float _2558 = lerp(Material_Material_PreshaderBuffer[16].w, Material_Material_PreshaderBuffer[18].z, lerp(0.0f, 1.0f, _2049) * mad(lerp(0.0f, 1.0f, _2310), Material_Material_PreshaderBuffer[18].y, Material_Material_PreshaderBuffer[18].x));
    float2 _2569 = float2(min(max(_1687 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2570 = _1698 * _2569;
    float2 _2571 = _2569 * _1699;
    float _2576 = _2570.x + _2570.y;
    float _2580 = _2576 * Material_Material_PreshaderBuffer[21].y;
    float _2584 = mad(_2571.x + _2571.y, Material_Material_PreshaderBuffer[21].y, Material_Material_PreshaderBuffer[22].x * _1997);
    float _2585 = floor(_2580);
    float _2597 = _2558 * Material_Material_PreshaderBuffer[22].z;
    float2 _2608 = float2(min(max(_1687 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2609 = _1698 * _2608;
    float2 _2610 = _2608 * _1699;
    float _2615 = _2609.x + _2609.y;
    float _2619 = _2615 * Material_Material_PreshaderBuffer[23].y;
    float _2623 = mad(_2610.x + _2610.y, Material_Material_PreshaderBuffer[23].y, Material_Material_PreshaderBuffer[23].w * _1997);
    float _2624 = floor(_2619);
    float _2634 = _2597 * Material_Material_PreshaderBuffer[22].z;
    float2 _2644 = float2(min(max(_1687 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2645 = _1698 * _2644;
    float2 _2646 = _2644 * _1699;
    float _2651 = _2645.x + _2645.y;
    float _2655 = _2651 * Material_Material_PreshaderBuffer[24].z;
    float _2659 = mad(_2646.x + _2646.y, Material_Material_PreshaderBuffer[24].z, Material_Material_PreshaderBuffer[25].x * _1997);
    float _2660 = floor(_2655);
    float _2670 = _2634 * Material_Material_PreshaderBuffer[22].z;
    float _2684 = (abs(Material_Material_PreshaderBuffer[25].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[25].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[25].w : Material_Material_PreshaderBuffer[26].x) : Material_Material_PreshaderBuffer[25].w;
    float _2692 = (abs(_2684 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_2684 >= 1.0f) ? Material_Material_PreshaderBuffer[26].y : Material_Material_PreshaderBuffer[25].w) : Material_Material_PreshaderBuffer[25].w;
    float3 _2702 = float3(min(max((abs(_2692) > 9.9999997473787516355514526367188e-06f) ? ((_2692 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[27].z, 0.0f);
    float2 _2708 = float2(min(max(_2702 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2709 = _1698 * _2708;
    float2 _2710 = _2708 * _1699;
    float _2715 = _2709.x + _2709.y;
    float _2719 = _2715 * Material_Material_PreshaderBuffer[29].w;
    float _2723 = mad(_2710.x + _2710.y, Material_Material_PreshaderBuffer[29].w, Material_Material_PreshaderBuffer[30].z * _1997);
    float _2724 = floor(_2719);
    float _2736 = _2558 * Material_Material_PreshaderBuffer[30].w;
    float2 _2744 = float2(min(max(_2702 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2745 = _1698 * _2744;
    float2 _2746 = _2744 * _1699;
    float _2751 = _2745.x + _2745.y;
    float _2755 = _2751 * Material_Material_PreshaderBuffer[31].y;
    float _2759 = mad(_2746.x + _2746.y, Material_Material_PreshaderBuffer[31].y, Material_Material_PreshaderBuffer[31].w * _1997);
    float _2760 = floor(_2755);
    float _2770 = _2736 * Material_Material_PreshaderBuffer[22].z;
    float2 _2781 = float2(min(max(_2702 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2782 = _1698 * _2781;
    float2 _2783 = _2781 * _1699;
    float _2788 = _2782.x + _2782.y;
    float _2792 = _2788 * Material_Material_PreshaderBuffer[32].y;
    float _2796 = mad(_2783.x + _2783.y, Material_Material_PreshaderBuffer[32].y, Material_Material_PreshaderBuffer[32].w * _1997);
    float _2797 = floor(_2792);
    float _2807 = _2770 * Material_Material_PreshaderBuffer[22].z;
    float2 _2817 = float2(min(max(_2702 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2818 = _1698 * _2817;
    float2 _2819 = _2817 * _1699;
    float _2824 = _2818.x + _2818.y;
    float _2828 = _2824 * Material_Material_PreshaderBuffer[33].y;
    float _2832 = mad(_2819.x + _2819.y, Material_Material_PreshaderBuffer[33].y, Material_Material_PreshaderBuffer[33].w * _1997);
    float _2833 = floor(_2828);
    float _2843 = _2807 * Material_Material_PreshaderBuffer[22].z;
    float3 _2848 = (((float3(_548, _548, sin(mad(mad(_1713, 6.283185482025146484375f, _2002 * (-6.283185482025146484375f)), 2097152.0f, mad(_2001, 6.283185482025146484375f, floor(mad(mad(_1709, Material_Material_PreshaderBuffer[14].x, -_2002), 2097152.0f, _2001)) * (-6.283185482025146484375f)))) * _2558) + float3(_548, _548, sin(mad(mad(_2580, 6.283185482025146484375f, _2585 * (-6.283185482025146484375f)), 2097152.0f, mad(_2584, 6.283185482025146484375f, floor(mad(mad(_2576, Material_Material_PreshaderBuffer[21].y, -_2585), 2097152.0f, _2584)) * (-6.283185482025146484375f)))) * _2597)) + float3(_548, _548, sin(mad(mad(_2619, 6.283185482025146484375f, _2624 * (-6.283185482025146484375f)), 2097152.0f, mad(_2623, 6.283185482025146484375f, floor(mad(mad(_2615, Material_Material_PreshaderBuffer[23].y, -_2624), 2097152.0f, _2623)) * (-6.283185482025146484375f)))) * _2634)) + float3(_548, _548, sin(mad(mad(_2655, 6.283185482025146484375f, _2660 * (-6.283185482025146484375f)), 2097152.0f, mad(_2659, 6.283185482025146484375f, floor(mad(mad(_2651, Material_Material_PreshaderBuffer[24].z, -_2660), 2097152.0f, _2659)) * (-6.283185482025146484375f)))) * _2670)) + (((float3(_548, _548, sin(mad(mad(_2719, 6.283185482025146484375f, _2724 * (-6.283185482025146484375f)), 2097152.0f, mad(_2723, 6.283185482025146484375f, floor(mad(mad(_2715, Material_Material_PreshaderBuffer[29].w, -_2724), 2097152.0f, _2723)) * (-6.283185482025146484375f)))) * _2736) + float3(_548, _548, sin(mad(mad(_2755, 6.283185482025146484375f, _2760 * (-6.283185482025146484375f)), 2097152.0f, mad(_2759, 6.283185482025146484375f, floor(mad(mad(_2751, Material_Material_PreshaderBuffer[31].y, -_2760), 2097152.0f, _2759)) * (-6.283185482025146484375f)))) * _2770)) + float3(_548, _548, sin(mad(mad(_2792, 6.283185482025146484375f, _2797 * (-6.283185482025146484375f)), 2097152.0f, mad(_2796, 6.283185482025146484375f, floor(mad(mad(_2788, Material_Material_PreshaderBuffer[32].y, -_2797), 2097152.0f, _2796)) * (-6.283185482025146484375f)))) * _2807)) + float3(_548, _548, sin(mad(mad(_2828, 6.283185482025146484375f, _2833 * (-6.283185482025146484375f)), 2097152.0f, mad(_2832, 6.283185482025146484375f, floor(mad(mad(_2824, Material_Material_PreshaderBuffer[33].y, -_2833), 2097152.0f, _2832)) * (-6.283185482025146484375f)))) * _2843));
    float _2858 = (abs(Material_Material_PreshaderBuffer[34].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[34].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[34].x : Material_Material_PreshaderBuffer[34].y) : Material_Material_PreshaderBuffer[34].x;
    float _2866 = (abs(_2858 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_2858 >= 1.0f) ? Material_Material_PreshaderBuffer[34].z : Material_Material_PreshaderBuffer[34].x) : Material_Material_PreshaderBuffer[34].x;
    float3 _2876 = float3(min(max((abs(_2866) > 9.9999997473787516355514526367188e-06f) ? ((_2866 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[35].w, 0.0f);
    float2 _2882 = float2(min(max(_2876 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2883 = _1698 * _2882;
    float2 _2884 = _2882 * _1699;
    float _2889 = _2883.x + _2883.y;
    float _2893 = _2889 * Material_Material_PreshaderBuffer[37].z;
    float _2897 = mad(_2884.x + _2884.y, Material_Material_PreshaderBuffer[37].z, Material_Material_PreshaderBuffer[37].w * _1997);
    float _2898 = floor(_2893);
    float2 _2915 = float2(min(max(_2876 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2916 = _1698 * _2915;
    float2 _2917 = _2915 * _1699;
    float _2922 = _2916.x + _2916.y;
    float _2926 = _2922 * Material_Material_PreshaderBuffer[38].y;
    float _2930 = mad(_2917.x + _2917.y, Material_Material_PreshaderBuffer[38].y, Material_Material_PreshaderBuffer[38].z * _1997);
    float _2931 = floor(_2926);
    float2 _2951 = float2(min(max(_2876 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2952 = _1698 * _2951;
    float2 _2953 = _2951 * _1699;
    float _2958 = _2952.x + _2952.y;
    float _2962 = _2958 * Material_Material_PreshaderBuffer[39].x;
    float _2966 = mad(_2953.x + _2953.y, Material_Material_PreshaderBuffer[39].x, Material_Material_PreshaderBuffer[39].y * _1997);
    float _2967 = floor(_2962);
    float2 _2986 = float2(min(max(_2876 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2987 = _1698 * _2986;
    float2 _2988 = _2986 * _1699;
    float _2993 = _2987.x + _2987.y;
    float _2997 = _2993 * Material_Material_PreshaderBuffer[39].w;
    float _3001 = mad(_2988.x + _2988.y, Material_Material_PreshaderBuffer[39].w, Material_Material_PreshaderBuffer[40].x * _1997);
    float _3002 = floor(_2997);
    float3 _3016 = _2848 + (((float3(_548, _548, sin(mad(mad(_2893, 6.283185482025146484375f, _2898 * (-6.283185482025146484375f)), 2097152.0f, mad(_2897, 6.283185482025146484375f, floor(mad(mad(_2889, Material_Material_PreshaderBuffer[37].z, -_2898), 2097152.0f, _2897)) * (-6.283185482025146484375f)))) * _2736) + float3(_548, _548, sin(mad(mad(_2926, 6.283185482025146484375f, _2931 * (-6.283185482025146484375f)), 2097152.0f, mad(_2930, 6.283185482025146484375f, floor(mad(mad(_2922, Material_Material_PreshaderBuffer[38].y, -_2931), 2097152.0f, _2930)) * (-6.283185482025146484375f)))) * _2770)) + float3(_548, _548, sin(mad(mad(_2962, 6.283185482025146484375f, _2967 * (-6.283185482025146484375f)), 2097152.0f, mad(_2966, 6.283185482025146484375f, floor(mad(mad(_2958, Material_Material_PreshaderBuffer[39].x, -_2967), 2097152.0f, _2966)) * (-6.283185482025146484375f)))) * _2807)) + float3(_548, _548, sin(mad(mad(_2997, 6.283185482025146484375f, _3002 * (-6.283185482025146484375f)), 2097152.0f, mad(_3001, 6.283185482025146484375f, floor(mad(mad(_2993, Material_Material_PreshaderBuffer[39].w, -_3002), 2097152.0f, _3001)) * (-6.283185482025146484375f)))) * _2843));
    float _3026 = (abs(Material_Material_PreshaderBuffer[40].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[40].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[40].y : Material_Material_PreshaderBuffer[40].z) : Material_Material_PreshaderBuffer[40].y;
    float _3034 = (abs(_3026 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3026 >= 1.0f) ? Material_Material_PreshaderBuffer[40].w : Material_Material_PreshaderBuffer[40].y) : Material_Material_PreshaderBuffer[40].y;
    float3 _3044 = float3(min(max((abs(_3034) > 9.9999997473787516355514526367188e-06f) ? ((_3034 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[42].x, 0.0f);
    float2 _3050 = float2(min(max(_3044 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3051 = _1698 * _3050;
    float2 _3052 = _3050 * _1699;
    float _3057 = _3051.x + _3051.y;
    float _3061 = _3057 * Material_Material_PreshaderBuffer[43].w;
    float _3065 = mad(_3052.x + _3052.y, Material_Material_PreshaderBuffer[43].w, Material_Material_PreshaderBuffer[44].x * _1997);
    float _3066 = floor(_3061);
    float2 _3083 = float2(min(max(_3044 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3084 = _1698 * _3083;
    float2 _3085 = _3083 * _1699;
    float _3090 = _3084.x + _3084.y;
    float _3094 = _3090 * Material_Material_PreshaderBuffer[44].z;
    float _3098 = mad(_3085.x + _3085.y, Material_Material_PreshaderBuffer[44].z, Material_Material_PreshaderBuffer[44].w * _1997);
    float _3099 = floor(_3094);
    float2 _3119 = float2(min(max(_3044 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3120 = _1698 * _3119;
    float2 _3121 = _3119 * _1699;
    float _3126 = _3120.x + _3120.y;
    float _3130 = _3126 * Material_Material_PreshaderBuffer[45].y;
    float _3134 = mad(_3121.x + _3121.y, Material_Material_PreshaderBuffer[45].y, Material_Material_PreshaderBuffer[45].z * _1997);
    float _3135 = floor(_3130);
    float2 _3154 = float2(min(max(_3044 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3155 = _1698 * _3154;
    float2 _3156 = _3154 * _1699;
    float _3161 = _3155.x + _3155.y;
    float _3165 = _3161 * Material_Material_PreshaderBuffer[46].x;
    float _3169 = mad(_3156.x + _3156.y, Material_Material_PreshaderBuffer[46].x, Material_Material_PreshaderBuffer[46].y * _1997);
    float _3170 = floor(_3165);
    float _3193 = (abs(Material_Material_PreshaderBuffer[46].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[46].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[46].z : Material_Material_PreshaderBuffer[46].w) : Material_Material_PreshaderBuffer[46].z;
    float _3201 = (abs(_3193 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3193 >= 1.0f) ? Material_Material_PreshaderBuffer[47].x : Material_Material_PreshaderBuffer[46].z) : Material_Material_PreshaderBuffer[46].z;
    float3 _3211 = float3(min(max((abs(_3201) > 9.9999997473787516355514526367188e-06f) ? ((_3201 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[48].y, 0.0f);
    float2 _3217 = float2(min(max(_3211 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3218 = _1698 * _3217;
    float2 _3219 = _3217 * _1699;
    float _3224 = _3218.x + _3218.y;
    float _3228 = _3224 * Material_Material_PreshaderBuffer[50].x;
    float _3232 = mad(_3219.x + _3219.y, Material_Material_PreshaderBuffer[50].x, Material_Material_PreshaderBuffer[50].y * _1997);
    float _3233 = floor(_3228);
    float2 _3250 = float2(min(max(_3211 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3251 = _1698 * _3250;
    float2 _3252 = _3250 * _1699;
    float _3257 = _3251.x + _3251.y;
    float _3261 = _3257 * Material_Material_PreshaderBuffer[50].w;
    float _3265 = mad(_3252.x + _3252.y, Material_Material_PreshaderBuffer[50].w, Material_Material_PreshaderBuffer[51].x * _1997);
    float _3266 = floor(_3261);
    float2 _3286 = float2(min(max(_3211 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3287 = _1698 * _3286;
    float2 _3288 = _3286 * _1699;
    float _3293 = _3287.x + _3287.y;
    float _3297 = _3293 * Material_Material_PreshaderBuffer[51].z;
    float _3301 = mad(_3288.x + _3288.y, Material_Material_PreshaderBuffer[51].z, Material_Material_PreshaderBuffer[51].w * _1997);
    float _3302 = floor(_3297);
    float2 _3321 = float2(min(max(_3211 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3322 = _1698 * _3321;
    float2 _3323 = _3321 * _1699;
    float _3328 = _3322.x + _3322.y;
    float _3332 = _3328 * Material_Material_PreshaderBuffer[52].y;
    float _3336 = mad(_3323.x + _3323.y, Material_Material_PreshaderBuffer[52].y, Material_Material_PreshaderBuffer[52].z * _1997);
    float _3337 = floor(_3332);
    float3 _3351 = (((float3(_548, _548, sin(mad(mad(_3061, 6.283185482025146484375f, _3066 * (-6.283185482025146484375f)), 2097152.0f, mad(_3065, 6.283185482025146484375f, floor(mad(mad(_3057, Material_Material_PreshaderBuffer[43].w, -_3066), 2097152.0f, _3065)) * (-6.283185482025146484375f)))) * _2558) + float3(_548, _548, sin(mad(mad(_3094, 6.283185482025146484375f, _3099 * (-6.283185482025146484375f)), 2097152.0f, mad(_3098, 6.283185482025146484375f, floor(mad(mad(_3090, Material_Material_PreshaderBuffer[44].z, -_3099), 2097152.0f, _3098)) * (-6.283185482025146484375f)))) * _2597)) + float3(_548, _548, sin(mad(mad(_3130, 6.283185482025146484375f, _3135 * (-6.283185482025146484375f)), 2097152.0f, mad(_3134, 6.283185482025146484375f, floor(mad(mad(_3126, Material_Material_PreshaderBuffer[45].y, -_3135), 2097152.0f, _3134)) * (-6.283185482025146484375f)))) * _2634)) + float3(_548, _548, sin(mad(mad(_3165, 6.283185482025146484375f, _3170 * (-6.283185482025146484375f)), 2097152.0f, mad(_3169, 6.283185482025146484375f, floor(mad(mad(_3161, Material_Material_PreshaderBuffer[46].x, -_3170), 2097152.0f, _3169)) * (-6.283185482025146484375f)))) * _2670)) + (((float3(_548, _548, sin(mad(mad(_3228, 6.283185482025146484375f, _3233 * (-6.283185482025146484375f)), 2097152.0f, mad(_3232, 6.283185482025146484375f, floor(mad(mad(_3224, Material_Material_PreshaderBuffer[50].x, -_3233), 2097152.0f, _3232)) * (-6.283185482025146484375f)))) * _2736) + float3(_548, _548, sin(mad(mad(_3261, 6.283185482025146484375f, _3266 * (-6.283185482025146484375f)), 2097152.0f, mad(_3265, 6.283185482025146484375f, floor(mad(mad(_3257, Material_Material_PreshaderBuffer[50].w, -_3266), 2097152.0f, _3265)) * (-6.283185482025146484375f)))) * _2770)) + float3(_548, _548, sin(mad(mad(_3297, 6.283185482025146484375f, _3302 * (-6.283185482025146484375f)), 2097152.0f, mad(_3301, 6.283185482025146484375f, floor(mad(mad(_3293, Material_Material_PreshaderBuffer[51].z, -_3302), 2097152.0f, _3301)) * (-6.283185482025146484375f)))) * _2807)) + float3(_548, _548, sin(mad(mad(_3332, 6.283185482025146484375f, _3337 * (-6.283185482025146484375f)), 2097152.0f, mad(_3336, 6.283185482025146484375f, floor(mad(mad(_3328, Material_Material_PreshaderBuffer[52].y, -_3337), 2097152.0f, _3336)) * (-6.283185482025146484375f)))) * _2843));
    float _3361 = (abs(Material_Material_PreshaderBuffer[52].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[52].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[52].w : Material_Material_PreshaderBuffer[53].x) : Material_Material_PreshaderBuffer[52].w;
    float _3369 = (abs(_3361 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3361 >= 1.0f) ? Material_Material_PreshaderBuffer[53].y : Material_Material_PreshaderBuffer[52].w) : Material_Material_PreshaderBuffer[52].w;
    float3 _3379 = float3(min(max((abs(_3369) > 9.9999997473787516355514526367188e-06f) ? ((_3369 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[54].z, 0.0f);
    float2 _3385 = float2(min(max(_3379 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3386 = _1698 * _3385;
    float2 _3387 = _3385 * _1699;
    float _3392 = _3386.x + _3386.y;
    float _3396 = _3392 * Material_Material_PreshaderBuffer[56].y;
    float _3400 = mad(_3387.x + _3387.y, Material_Material_PreshaderBuffer[56].y, Material_Material_PreshaderBuffer[56].z * _1997);
    float _3401 = floor(_3396);
    float2 _3418 = float2(min(max(_3379 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3419 = _1698 * _3418;
    float2 _3420 = _3418 * _1699;
    float _3425 = _3419.x + _3419.y;
    float _3429 = _3425 * Material_Material_PreshaderBuffer[57].x;
    float _3433 = mad(_3420.x + _3420.y, Material_Material_PreshaderBuffer[57].x, Material_Material_PreshaderBuffer[57].y * _1997);
    float _3434 = floor(_3429);
    float2 _3454 = float2(min(max(_3379 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3455 = _1698 * _3454;
    float2 _3456 = _3454 * _1699;
    float _3461 = _3455.x + _3455.y;
    float _3465 = _3461 * Material_Material_PreshaderBuffer[57].w;
    float _3469 = mad(_3456.x + _3456.y, Material_Material_PreshaderBuffer[57].w, Material_Material_PreshaderBuffer[58].x * _1997);
    float _3470 = floor(_3465);
    float2 _3489 = float2(min(max(_3379 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3490 = _1698 * _3489;
    float2 _3491 = _3489 * _1699;
    float _3496 = _3490.x + _3490.y;
    float _3500 = _3496 * Material_Material_PreshaderBuffer[58].z;
    float _3504 = mad(_3491.x + _3491.y, Material_Material_PreshaderBuffer[58].z, Material_Material_PreshaderBuffer[58].w * _1997);
    float _3505 = floor(_3500);
    float3 _3519 = _3351 + (((float3(_548, _548, sin(mad(mad(_3396, 6.283185482025146484375f, _3401 * (-6.283185482025146484375f)), 2097152.0f, mad(_3400, 6.283185482025146484375f, floor(mad(mad(_3392, Material_Material_PreshaderBuffer[56].y, -_3401), 2097152.0f, _3400)) * (-6.283185482025146484375f)))) * _2736) + float3(_548, _548, sin(mad(mad(_3429, 6.283185482025146484375f, _3434 * (-6.283185482025146484375f)), 2097152.0f, mad(_3433, 6.283185482025146484375f, floor(mad(mad(_3425, Material_Material_PreshaderBuffer[57].x, -_3434), 2097152.0f, _3433)) * (-6.283185482025146484375f)))) * _2770)) + float3(_548, _548, sin(mad(mad(_3465, 6.283185482025146484375f, _3470 * (-6.283185482025146484375f)), 2097152.0f, mad(_3469, 6.283185482025146484375f, floor(mad(mad(_3461, Material_Material_PreshaderBuffer[57].w, -_3470), 2097152.0f, _3469)) * (-6.283185482025146484375f)))) * _2807)) + float3(_548, _548, sin(mad(mad(_3500, 6.283185482025146484375f, _3505 * (-6.283185482025146484375f)), 2097152.0f, mad(_3504, 6.283185482025146484375f, floor(mad(mad(_3496, Material_Material_PreshaderBuffer[58].z, -_3505), 2097152.0f, _3504)) * (-6.283185482025146484375f)))) * _2843));
    float3 _3520 = _3016 + _3519;
    float _3533 = (abs(Material_Material_PreshaderBuffer[59].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[59].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[59].y : Material_Material_PreshaderBuffer[59].z) : Material_Material_PreshaderBuffer[59].y;
    float _3541 = (abs(_3533 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3533 >= 1.0f) ? Material_Material_PreshaderBuffer[59].w : Material_Material_PreshaderBuffer[59].y) : Material_Material_PreshaderBuffer[59].y;
    float3 _3551 = float3(min(max((abs(_3541) > 9.9999997473787516355514526367188e-06f) ? ((_3541 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[61].x, 0.0f);
    float2 _3557 = float2(min(max(_3551 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3558 = _1698 * _3557;
    float2 _3559 = _3557 * _1699;
    float _3564 = _3558.x + _3558.y;
    float _3565 = _3559.x + _3559.y;
    float _3568 = Material_Material_PreshaderBuffer[62].y * MaterialCollection0_MaterialCollection0_Vectors[0].y;
    float _3571 = Material_Material_PreshaderBuffer[62].z * _3568;
    float _3572 = 2.0f / _3571;
    float _3573 = _3564 * _3572;
    float3 _3579 = Material_Material_PreshaderBuffer[63].x.xxx;
    float3 _3584 = Material_Material_PreshaderBuffer[63].y.xxx;
    float3 _3585 = (View_View_ViewTilePosition * _3579) * _3584;
    float3 _3588 = (1.0f / MaterialCollection0_MaterialCollection0_Vectors[0].y).xxx;
    float3 _3589 = ((_3579 * _644) * _3584) * _3588;
    float2 _3596 = (_1163 * Material_Material_PreshaderBuffer[63].w).xx;
    float3 _3600 = float3(_3589.xy, (_3596 + _3589.z.xx).x);
    float3 _3611 = 0.0f.xxx;
    float _3616 = 0.0f;
    _3611 = ((mad(_3585, _3588, -floor(mad(_3585, _3588, (_3600 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _3600) * 1.0f;
    _3616 = 0.0f;
    float _3614 = 1.0f;
    uint _3618 = 0u;
    [loop]
    for (; _3618 < 6u; )
    {
        float3 _3622 = frac(_3611);
        float _3624 = dot(floor(_3611), float3(19.0f, 47.0f, 101.0f));
        uint3 _3636 = (uint3(int3(int(_3624), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3637 = _3636.y;
        uint _3638 = _3636.z;
        uint _3641 = _3636.x + (_3637 * _3638);
        uint _3643 = _3637 + (_3638 * _3641);
        uint3 _3648 = uint3(0u, 0u, 0u);
        _3648.x = _3641 + (_3643 * (_3638 + (_3641 * _3643)));
        uint3 _3649 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _3662 = (uint3(int3(int(_3624 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3663 = _3662.y;
        uint _3664 = _3662.z;
        uint _3667 = _3662.x + (_3663 * _3664);
        uint _3669 = _3663 + (_3664 * _3667);
        uint3 _3674 = uint3(0u, 0u, 0u);
        _3674.x = _3667 + (_3669 * (_3664 + (_3667 * _3669)));
        uint3 _3687 = (uint3(int3(int(_3624 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3688 = _3687.y;
        uint _3689 = _3687.z;
        uint _3692 = _3687.x + (_3688 * _3689);
        uint _3694 = _3688 + (_3689 * _3692);
        uint3 _3699 = uint3(0u, 0u, 0u);
        _3699.x = _3692 + (_3694 * (_3689 + (_3692 * _3694)));
        uint3 _3712 = (uint3(int3(int(_3624 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3713 = _3712.y;
        uint _3714 = _3712.z;
        uint _3717 = _3712.x + (_3713 * _3714);
        uint _3719 = _3713 + (_3714 * _3717);
        uint3 _3724 = uint3(0u, 0u, 0u);
        _3724.x = _3717 + (_3719 * (_3714 + (_3717 * _3719)));
        uint3 _3737 = (uint3(int3(int(_3624 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3738 = _3737.y;
        uint _3739 = _3737.z;
        uint _3742 = _3737.x + (_3738 * _3739);
        uint _3744 = _3738 + (_3739 * _3742);
        uint3 _3749 = uint3(0u, 0u, 0u);
        _3749.x = _3742 + (_3744 * (_3739 + (_3742 * _3744)));
        uint3 _3762 = (uint3(int3(int(_3624 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3763 = _3762.y;
        uint _3764 = _3762.z;
        uint _3767 = _3762.x + (_3763 * _3764);
        uint _3769 = _3763 + (_3764 * _3767);
        uint3 _3774 = uint3(0u, 0u, 0u);
        _3774.x = _3767 + (_3769 * (_3764 + (_3767 * _3769)));
        uint3 _3787 = (uint3(int3(int(_3624 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3788 = _3787.y;
        uint _3789 = _3787.z;
        uint _3792 = _3787.x + (_3788 * _3789);
        uint _3794 = _3788 + (_3789 * _3792);
        uint3 _3799 = uint3(0u, 0u, 0u);
        _3799.x = _3792 + (_3794 * (_3789 + (_3792 * _3794)));
        uint3 _3812 = (uint3(int3(int(_3624 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3813 = _3812.y;
        uint _3814 = _3812.z;
        uint _3817 = _3812.x + (_3813 * _3814);
        uint _3819 = _3813 + (_3814 * _3817);
        uint3 _3824 = uint3(0u, 0u, 0u);
        _3824.x = _3817 + (_3819 * (_3814 + (_3817 * _3819)));
        float4 _3835 = float4(_3622, 0.0f);
        float4 _3841 = ((_3835 * _3835) * _3835) * mad(_3835, (_3835 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _3842 = _3841.x;
        float _3845 = _3841.y;
        float _3617 = mad(lerp(lerp(lerp(dot(mad(float3((_3648 >> _3649).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3622), dot(mad(float3((_3674 >> _3649).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3622 - float3(1.0f, 0.0f, 0.0f)), _3842), lerp(dot(mad(float3((_3699 >> _3649).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3622 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_3724 >> _3649).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3622 - float3(1.0f, 1.0f, 0.0f)), _3842), _3845), lerp(lerp(dot(mad(float3((_3749 >> _3649).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3622 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_3774 >> _3649).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3622 - float3(1.0f, 0.0f, 1.0f)), _3842), lerp(dot(mad(float3((_3799 >> _3649).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3622 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_3824 >> _3649).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3622 - 1.0f.xxx), _3842), _3845), _3841.z), _3614, _3616);
        _3611 *= 2.0f;
        _3614 *= 0.5f;
        _3616 = _3617;
        _3618++;
        continue;
    }
    float _3855 = lerp(_1163, _1716, clamp(lerp(0.0f, 1.0f, mad(_3616, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _3857 = mad(_3565, _3572, (_3572 * Material_Material_PreshaderBuffer[62].w) * _3855);
    float _3858 = floor(_3573);
    float _3870 = Material_Material_PreshaderBuffer[64].x * MaterialCollection0_MaterialCollection0_Vectors[0].y;
    float _3875 = mad(Material_Material_PreshaderBuffer[64].x, MaterialCollection0_MaterialCollection0_Vectors[0].y, -(Material_Material_PreshaderBuffer[64].y * MaterialCollection0_MaterialCollection0_Vectors[0].y));
    float3 _3878 = Material_Material_PreshaderBuffer[64].z.xxx;
    float3 _3883 = Material_Material_PreshaderBuffer[64].w.xxx;
    float3 _3884 = (View_View_ViewTilePosition * _3878) * _3883;
    float3 _3886 = ((_3878 * _644) * _3883) * _3588;
    float2 _3893 = (_1163 * Material_Material_PreshaderBuffer[65].y).xx;
    float3 _3897 = float3(_3886.xy, (_3893 + _3886.z.xx).x);
    float3 _3908 = 0.0f.xxx;
    float _3913 = 0.0f;
    _3908 = ((mad(_3884, _3588, -floor(mad(_3884, _3588, (_3897 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _3897) * 1.0f;
    _3913 = 0.0f;
    float _3911 = 1.0f;
    uint _3915 = 0u;
    [loop]
    for (; _3915 < 10u; )
    {
        float3 _3919 = frac(_3908);
        float _3921 = dot(floor(_3908), float3(19.0f, 47.0f, 101.0f));
        uint3 _3933 = (uint3(int3(int(_3921), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3934 = _3933.y;
        uint _3935 = _3933.z;
        uint _3938 = _3933.x + (_3934 * _3935);
        uint _3940 = _3934 + (_3935 * _3938);
        uint3 _3945 = uint3(0u, 0u, 0u);
        _3945.x = _3938 + (_3940 * (_3935 + (_3938 * _3940)));
        uint3 _3946 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _3959 = (uint3(int3(int(_3921 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3960 = _3959.y;
        uint _3961 = _3959.z;
        uint _3964 = _3959.x + (_3960 * _3961);
        uint _3966 = _3960 + (_3961 * _3964);
        uint3 _3971 = uint3(0u, 0u, 0u);
        _3971.x = _3964 + (_3966 * (_3961 + (_3964 * _3966)));
        uint3 _3984 = (uint3(int3(int(_3921 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3985 = _3984.y;
        uint _3986 = _3984.z;
        uint _3989 = _3984.x + (_3985 * _3986);
        uint _3991 = _3985 + (_3986 * _3989);
        uint3 _3996 = uint3(0u, 0u, 0u);
        _3996.x = _3989 + (_3991 * (_3986 + (_3989 * _3991)));
        uint3 _4009 = (uint3(int3(int(_3921 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4010 = _4009.y;
        uint _4011 = _4009.z;
        uint _4014 = _4009.x + (_4010 * _4011);
        uint _4016 = _4010 + (_4011 * _4014);
        uint3 _4021 = uint3(0u, 0u, 0u);
        _4021.x = _4014 + (_4016 * (_4011 + (_4014 * _4016)));
        uint3 _4034 = (uint3(int3(int(_3921 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4035 = _4034.y;
        uint _4036 = _4034.z;
        uint _4039 = _4034.x + (_4035 * _4036);
        uint _4041 = _4035 + (_4036 * _4039);
        uint3 _4046 = uint3(0u, 0u, 0u);
        _4046.x = _4039 + (_4041 * (_4036 + (_4039 * _4041)));
        uint3 _4059 = (uint3(int3(int(_3921 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4060 = _4059.y;
        uint _4061 = _4059.z;
        uint _4064 = _4059.x + (_4060 * _4061);
        uint _4066 = _4060 + (_4061 * _4064);
        uint3 _4071 = uint3(0u, 0u, 0u);
        _4071.x = _4064 + (_4066 * (_4061 + (_4064 * _4066)));
        uint3 _4084 = (uint3(int3(int(_3921 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4085 = _4084.y;
        uint _4086 = _4084.z;
        uint _4089 = _4084.x + (_4085 * _4086);
        uint _4091 = _4085 + (_4086 * _4089);
        uint3 _4096 = uint3(0u, 0u, 0u);
        _4096.x = _4089 + (_4091 * (_4086 + (_4089 * _4091)));
        uint3 _4109 = (uint3(int3(int(_3921 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4110 = _4109.y;
        uint _4111 = _4109.z;
        uint _4114 = _4109.x + (_4110 * _4111);
        uint _4116 = _4110 + (_4111 * _4114);
        uint3 _4121 = uint3(0u, 0u, 0u);
        _4121.x = _4114 + (_4116 * (_4111 + (_4114 * _4116)));
        float4 _4132 = float4(_3919, 0.0f);
        float4 _4138 = ((_4132 * _4132) * _4132) * mad(_4132, (_4132 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _4139 = _4138.x;
        float _4142 = _4138.y;
        float _4149 = abs(lerp(lerp(lerp(dot(mad(float3((_3945 >> _3946).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3919), dot(mad(float3((_3971 >> _3946).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3919 - float3(1.0f, 0.0f, 0.0f)), _4139), lerp(dot(mad(float3((_3996 >> _3946).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3919 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_4021 >> _3946).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3919 - float3(1.0f, 1.0f, 0.0f)), _4139), _4142), lerp(lerp(dot(mad(float3((_4046 >> _3946).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3919 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_4071 >> _3946).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3919 - float3(1.0f, 0.0f, 1.0f)), _4139), lerp(dot(mad(float3((_4096 >> _3946).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3919 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_4121 >> _3946).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3919 - 1.0f.xxx), _4139), _4142), _4138.z));
        float _3914 = mad(_4149, _3911, _3913);
        _3908 *= 2.0f;
        _3911 *= 0.5f;
        _3913 = _3914;
        _3915++;
        continue;
    }
    float3 _4153 = Material_Material_PreshaderBuffer[65].z.xxx;
    float3 _4158 = Material_Material_PreshaderBuffer[65].w.xxx;
    float3 _4159 = (View_View_ViewTilePosition * _4153) * _4158;
    float3 _4161 = ((_4153 * _644) * _4158) * _3588;
    float2 _4168 = (_1163 * Material_Material_PreshaderBuffer[66].y).xx;
    float3 _4172 = float3(_4161.xy, (_4168 + _4161.z.xx).x);
    float3 _4183 = 0.0f.xxx;
    float _4188 = 0.0f;
    _4183 = ((mad(_4159, _3588, -floor(mad(_4159, _3588, (_4172 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _4172) * 1.0f;
    _4188 = 0.0f;
    float _4186 = 1.0f;
    uint _4190 = 0u;
    [loop]
    for (; _4190 < 10u; )
    {
        float3 _4194 = frac(_4183);
        float _4196 = dot(floor(_4183), float3(19.0f, 47.0f, 101.0f));
        uint3 _4208 = (uint3(int3(int(_4196), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4209 = _4208.y;
        uint _4210 = _4208.z;
        uint _4213 = _4208.x + (_4209 * _4210);
        uint _4215 = _4209 + (_4210 * _4213);
        uint3 _4220 = uint3(0u, 0u, 0u);
        _4220.x = _4213 + (_4215 * (_4210 + (_4213 * _4215)));
        uint3 _4221 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _4234 = (uint3(int3(int(_4196 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4235 = _4234.y;
        uint _4236 = _4234.z;
        uint _4239 = _4234.x + (_4235 * _4236);
        uint _4241 = _4235 + (_4236 * _4239);
        uint3 _4246 = uint3(0u, 0u, 0u);
        _4246.x = _4239 + (_4241 * (_4236 + (_4239 * _4241)));
        uint3 _4259 = (uint3(int3(int(_4196 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4260 = _4259.y;
        uint _4261 = _4259.z;
        uint _4264 = _4259.x + (_4260 * _4261);
        uint _4266 = _4260 + (_4261 * _4264);
        uint3 _4271 = uint3(0u, 0u, 0u);
        _4271.x = _4264 + (_4266 * (_4261 + (_4264 * _4266)));
        uint3 _4284 = (uint3(int3(int(_4196 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4285 = _4284.y;
        uint _4286 = _4284.z;
        uint _4289 = _4284.x + (_4285 * _4286);
        uint _4291 = _4285 + (_4286 * _4289);
        uint3 _4296 = uint3(0u, 0u, 0u);
        _4296.x = _4289 + (_4291 * (_4286 + (_4289 * _4291)));
        uint3 _4309 = (uint3(int3(int(_4196 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4310 = _4309.y;
        uint _4311 = _4309.z;
        uint _4314 = _4309.x + (_4310 * _4311);
        uint _4316 = _4310 + (_4311 * _4314);
        uint3 _4321 = uint3(0u, 0u, 0u);
        _4321.x = _4314 + (_4316 * (_4311 + (_4314 * _4316)));
        uint3 _4334 = (uint3(int3(int(_4196 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4335 = _4334.y;
        uint _4336 = _4334.z;
        uint _4339 = _4334.x + (_4335 * _4336);
        uint _4341 = _4335 + (_4336 * _4339);
        uint3 _4346 = uint3(0u, 0u, 0u);
        _4346.x = _4339 + (_4341 * (_4336 + (_4339 * _4341)));
        uint3 _4359 = (uint3(int3(int(_4196 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4360 = _4359.y;
        uint _4361 = _4359.z;
        uint _4364 = _4359.x + (_4360 * _4361);
        uint _4366 = _4360 + (_4361 * _4364);
        uint3 _4371 = uint3(0u, 0u, 0u);
        _4371.x = _4364 + (_4366 * (_4361 + (_4364 * _4366)));
        uint3 _4384 = (uint3(int3(int(_4196 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4385 = _4384.y;
        uint _4386 = _4384.z;
        uint _4389 = _4384.x + (_4385 * _4386);
        uint _4391 = _4385 + (_4386 * _4389);
        uint3 _4396 = uint3(0u, 0u, 0u);
        _4396.x = _4389 + (_4391 * (_4386 + (_4389 * _4391)));
        float4 _4407 = float4(_4194, 0.0f);
        float4 _4413 = ((_4407 * _4407) * _4407) * mad(_4407, (_4407 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _4414 = _4413.x;
        float _4417 = _4413.y;
        float _4424 = abs(lerp(lerp(lerp(dot(mad(float3((_4220 >> _4221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4194), dot(mad(float3((_4246 >> _4221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4194 - float3(1.0f, 0.0f, 0.0f)), _4414), lerp(dot(mad(float3((_4271 >> _4221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4194 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_4296 >> _4221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4194 - float3(1.0f, 1.0f, 0.0f)), _4414), _4417), lerp(lerp(dot(mad(float3((_4321 >> _4221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4194 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_4346 >> _4221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4194 - float3(1.0f, 0.0f, 1.0f)), _4414), lerp(dot(mad(float3((_4371 >> _4221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4194 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_4396 >> _4221).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4194 - 1.0f.xxx), _4414), _4417), _4413.z));
        float _4189 = mad(_4424, _4186, _4188);
        _4183 *= 2.0f;
        _4186 *= 0.5f;
        _4188 = _4189;
        _4190++;
        continue;
    }
    float _4432 = lerp(_3870, _3875, lerp(0.0f, 1.0f, _3913) * mad(lerp(0.0f, 1.0f, _4188), Material_Material_PreshaderBuffer[66].w, Material_Material_PreshaderBuffer[66].z));
    float2 _4440 = float2(min(max(_3551 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4441 = _1698 * _4440;
    float2 _4442 = _4440 * _1699;
    float _4447 = _4441.x + _4441.y;
    float _4448 = _4442.x + _4442.y;
    float _4451 = _3571 * Material_Material_PreshaderBuffer[20].w;
    float _4452 = 2.0f / _4451;
    float _4453 = _4447 * _4452;
    float _4458 = mad(_4448, _4452, (_4452 * Material_Material_PreshaderBuffer[67].y) * _3855);
    float _4459 = floor(_4453);
    float _4469 = _4432 * Material_Material_PreshaderBuffer[22].z;
    float2 _4480 = float2(min(max(_3551 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4481 = _1698 * _4480;
    float2 _4482 = _4480 * _1699;
    float _4487 = _4481.x + _4481.y;
    float _4488 = _4482.x + _4482.y;
    float _4489 = _4451 * Material_Material_PreshaderBuffer[20].w;
    float _4490 = 2.0f / _4489;
    float _4491 = _4487 * _4490;
    float _4496 = mad(_4488, _4490, (_4490 * Material_Material_PreshaderBuffer[67].w) * _3855);
    float _4497 = floor(_4491);
    float _4507 = _4469 * Material_Material_PreshaderBuffer[22].z;
    float2 _4517 = float2(min(max(_3551 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4518 = _1698 * _4517;
    float2 _4519 = _4517 * _1699;
    float _4524 = _4518.x + _4518.y;
    float _4525 = _4519.x + _4519.y;
    float _4527 = 2.0f / (_4489 * Material_Material_PreshaderBuffer[20].w);
    float _4528 = _4524 * _4527;
    float _4533 = mad(_4525, _4527, (_4527 * Material_Material_PreshaderBuffer[68].y) * _3855);
    float _4534 = floor(_4528);
    float _4558 = (abs(Material_Material_PreshaderBuffer[69].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[69].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[69].x : Material_Material_PreshaderBuffer[69].y) : Material_Material_PreshaderBuffer[69].x;
    float _4566 = (abs(_4558 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_4558 >= 1.0f) ? Material_Material_PreshaderBuffer[69].z : Material_Material_PreshaderBuffer[69].x) : Material_Material_PreshaderBuffer[69].x;
    float3 _4576 = float3(min(max((abs(_4566) > 9.9999997473787516355514526367188e-06f) ? ((_4566 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[70].w, 0.0f);
    float2 _4582 = float2(min(max(_4576 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4583 = _1698 * _4582;
    float2 _4584 = _4582 * _1699;
    float _4589 = _4583.x + _4583.y;
    float _4590 = _4584.x + _4584.y;
    float _4593 = _3568 * Material_Material_PreshaderBuffer[28].w;
    float _4596 = Material_Material_PreshaderBuffer[72].x * _4593;
    float _4597 = 2.0f / _4596;
    float _4598 = _4589 * _4597;
    float _4603 = mad(_4590, _4597, (_4597 * Material_Material_PreshaderBuffer[72].y) * _3855);
    float _4604 = floor(_4598);
    float _4614 = _4432 * Material_Material_PreshaderBuffer[30].w;
    float2 _4622 = float2(min(max(_4576 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4623 = _1698 * _4622;
    float2 _4624 = _4622 * _1699;
    float _4629 = _4623.x + _4623.y;
    float _4630 = _4624.x + _4624.y;
    float _4631 = _4596 * Material_Material_PreshaderBuffer[20].w;
    float _4632 = 2.0f / _4631;
    float _4633 = _4629 * _4632;
    float _4638 = mad(_4630, _4632, (_4632 * Material_Material_PreshaderBuffer[72].z) * _3855);
    float _4639 = floor(_4633);
    float _4649 = _4614 * Material_Material_PreshaderBuffer[22].z;
    float2 _4660 = float2(min(max(_4576 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4661 = _1698 * _4660;
    float2 _4662 = _4660 * _1699;
    float _4667 = _4661.x + _4661.y;
    float _4668 = _4662.x + _4662.y;
    float _4669 = _4631 * Material_Material_PreshaderBuffer[20].w;
    float _4670 = 2.0f / _4669;
    float _4671 = _4667 * _4670;
    float _4676 = mad(_4668, _4670, (_4670 * Material_Material_PreshaderBuffer[72].w) * _3855);
    float _4677 = floor(_4671);
    float _4687 = _4649 * Material_Material_PreshaderBuffer[22].z;
    float2 _4697 = float2(min(max(_4576 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4698 = _1698 * _4697;
    float2 _4699 = _4697 * _1699;
    float _4704 = _4698.x + _4698.y;
    float _4705 = _4699.x + _4699.y;
    float _4707 = 2.0f / (_4669 * Material_Material_PreshaderBuffer[20].w);
    float _4708 = _4704 * _4707;
    float _4713 = mad(_4705, _4707, (_4707 * Material_Material_PreshaderBuffer[73].x) * _3855);
    float _4714 = floor(_4708);
    float _4724 = _4687 * Material_Material_PreshaderBuffer[22].z;
    float3 _4729 = (((float3(_548, _548, sin(mad(mad(_3573, 6.283185482025146484375f, _3858 * (-6.283185482025146484375f)), 2097152.0f, mad(_3857, 6.283185482025146484375f, floor(mad(mad(_3564, _3572, -_3858), 2097152.0f, _3857)) * (-6.283185482025146484375f)))) * _4432) + float3(_548, _548, sin(mad(mad(_4453, 6.283185482025146484375f, _4459 * (-6.283185482025146484375f)), 2097152.0f, mad(_4458, 6.283185482025146484375f, floor(mad(mad(_4447, _4452, -_4459), 2097152.0f, _4458)) * (-6.283185482025146484375f)))) * _4469)) + float3(_548, _548, sin(mad(mad(_4491, 6.283185482025146484375f, _4497 * (-6.283185482025146484375f)), 2097152.0f, mad(_4496, 6.283185482025146484375f, floor(mad(mad(_4487, _4490, -_4497), 2097152.0f, _4496)) * (-6.283185482025146484375f)))) * _4507)) + float3(_548, _548, sin(mad(mad(_4528, 6.283185482025146484375f, _4534 * (-6.283185482025146484375f)), 2097152.0f, mad(_4533, 6.283185482025146484375f, floor(mad(mad(_4524, _4527, -_4534), 2097152.0f, _4533)) * (-6.283185482025146484375f)))) * (_4507 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_548, _548, sin(mad(mad(_4598, 6.283185482025146484375f, _4604 * (-6.283185482025146484375f)), 2097152.0f, mad(_4603, 6.283185482025146484375f, floor(mad(mad(_4589, _4597, -_4604), 2097152.0f, _4603)) * (-6.283185482025146484375f)))) * _4614) + float3(_548, _548, sin(mad(mad(_4633, 6.283185482025146484375f, _4639 * (-6.283185482025146484375f)), 2097152.0f, mad(_4638, 6.283185482025146484375f, floor(mad(mad(_4629, _4632, -_4639), 2097152.0f, _4638)) * (-6.283185482025146484375f)))) * _4649)) + float3(_548, _548, sin(mad(mad(_4671, 6.283185482025146484375f, _4677 * (-6.283185482025146484375f)), 2097152.0f, mad(_4676, 6.283185482025146484375f, floor(mad(mad(_4667, _4670, -_4677), 2097152.0f, _4676)) * (-6.283185482025146484375f)))) * _4687)) + float3(_548, _548, sin(mad(mad(_4708, 6.283185482025146484375f, _4714 * (-6.283185482025146484375f)), 2097152.0f, mad(_4713, 6.283185482025146484375f, floor(mad(mad(_4704, _4707, -_4714), 2097152.0f, _4713)) * (-6.283185482025146484375f)))) * _4724));
    float _4739 = (abs(Material_Material_PreshaderBuffer[73].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[73].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[73].y : Material_Material_PreshaderBuffer[73].z) : Material_Material_PreshaderBuffer[73].y;
    float _4747 = (abs(_4739 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_4739 >= 1.0f) ? Material_Material_PreshaderBuffer[73].w : Material_Material_PreshaderBuffer[73].y) : Material_Material_PreshaderBuffer[73].y;
    float3 _4757 = float3(min(max((abs(_4747) > 9.9999997473787516355514526367188e-06f) ? ((_4747 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[75].x, 0.0f);
    float2 _4763 = float2(min(max(_4757 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4764 = _1698 * _4763;
    float2 _4765 = _4763 * _1699;
    float _4770 = _4764.x + _4764.y;
    float _4771 = _4765.x + _4765.y;
    float _4774 = Material_Material_PreshaderBuffer[76].y * _4593;
    float _4775 = 2.0f / _4774;
    float _4776 = _4770 * _4775;
    float _4779 = mad(_4771, _4775, (_4775 * Material_Material_PreshaderBuffer[72].y) * _3855);
    float _4780 = floor(_4776);
    float2 _4797 = float2(min(max(_4757 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4798 = _1698 * _4797;
    float2 _4799 = _4797 * _1699;
    float _4804 = _4798.x + _4798.y;
    float _4805 = _4799.x + _4799.y;
    float _4806 = _4774 * Material_Material_PreshaderBuffer[20].w;
    float _4807 = 2.0f / _4806;
    float _4808 = _4804 * _4807;
    float _4811 = mad(_4805, _4807, (_4807 * Material_Material_PreshaderBuffer[72].z) * _3855);
    float _4812 = floor(_4808);
    float2 _4832 = float2(min(max(_4757 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4833 = _1698 * _4832;
    float2 _4834 = _4832 * _1699;
    float _4839 = _4833.x + _4833.y;
    float _4840 = _4834.x + _4834.y;
    float _4841 = _4806 * Material_Material_PreshaderBuffer[20].w;
    float _4842 = 2.0f / _4841;
    float _4843 = _4839 * _4842;
    float _4846 = mad(_4840, _4842, (_4842 * Material_Material_PreshaderBuffer[72].w) * _3855);
    float _4847 = floor(_4843);
    float2 _4866 = float2(min(max(_4757 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4867 = _1698 * _4866;
    float2 _4868 = _4866 * _1699;
    float _4873 = _4867.x + _4867.y;
    float _4874 = _4868.x + _4868.y;
    float _4876 = 2.0f / (_4841 * Material_Material_PreshaderBuffer[20].w);
    float _4877 = _4873 * _4876;
    float _4880 = mad(_4874, _4876, (_4876 * Material_Material_PreshaderBuffer[73].x) * _3855);
    float _4881 = floor(_4877);
    float3 _4895 = _4729 + (((float3(_548, _548, sin(mad(mad(_4776, 6.283185482025146484375f, _4780 * (-6.283185482025146484375f)), 2097152.0f, mad(_4779, 6.283185482025146484375f, floor(mad(mad(_4770, _4775, -_4780), 2097152.0f, _4779)) * (-6.283185482025146484375f)))) * _4614) + float3(_548, _548, sin(mad(mad(_4808, 6.283185482025146484375f, _4812 * (-6.283185482025146484375f)), 2097152.0f, mad(_4811, 6.283185482025146484375f, floor(mad(mad(_4804, _4807, -_4812), 2097152.0f, _4811)) * (-6.283185482025146484375f)))) * _4649)) + float3(_548, _548, sin(mad(mad(_4843, 6.283185482025146484375f, _4847 * (-6.283185482025146484375f)), 2097152.0f, mad(_4846, 6.283185482025146484375f, floor(mad(mad(_4839, _4842, -_4847), 2097152.0f, _4846)) * (-6.283185482025146484375f)))) * _4687)) + float3(_548, _548, sin(mad(mad(_4877, 6.283185482025146484375f, _4881 * (-6.283185482025146484375f)), 2097152.0f, mad(_4880, 6.283185482025146484375f, floor(mad(mad(_4873, _4876, -_4881), 2097152.0f, _4880)) * (-6.283185482025146484375f)))) * _4724));
    float _4896 = _3568 * 0.800000011920928955078125f;
    float _4897 = Material_Material_PreshaderBuffer[62].z * _4896;
    float _4898 = 2.0f / _4897;
    float _4899 = _3564 * _4898;
    float _4904 = mad(_3565, _4898, (_4898 * Material_Material_PreshaderBuffer[76].z) * _3855);
    float _4905 = floor(_4899);
    float _4915 = _4432 * 0.800000011920928955078125f;
    float _4918 = _4897 * Material_Material_PreshaderBuffer[20].w;
    float _4919 = 2.0f / _4918;
    float _4920 = _4447 * _4919;
    float _4925 = mad(_4448, _4919, (_4919 * Material_Material_PreshaderBuffer[76].w) * _3855);
    float _4926 = floor(_4920);
    float _4936 = _4915 * Material_Material_PreshaderBuffer[22].z;
    float _4942 = _4918 * Material_Material_PreshaderBuffer[20].w;
    float _4943 = 2.0f / _4942;
    float _4944 = _4487 * _4943;
    float _4949 = mad(_4488, _4943, (_4943 * Material_Material_PreshaderBuffer[77].x) * _3855);
    float _4950 = floor(_4944);
    float _4960 = _4936 * Material_Material_PreshaderBuffer[22].z;
    float _4966 = 2.0f / (_4942 * Material_Material_PreshaderBuffer[20].w);
    float _4967 = _4524 * _4966;
    float _4972 = mad(_4525, _4966, (_4966 * Material_Material_PreshaderBuffer[77].y) * _3855);
    float _4973 = floor(_4967);
    float _4983 = _4960 * Material_Material_PreshaderBuffer[22].z;
    float _4988 = _4896 * Material_Material_PreshaderBuffer[28].w;
    float _4989 = Material_Material_PreshaderBuffer[72].x * _4988;
    float _4990 = 2.0f / _4989;
    float _4991 = _4589 * _4990;
    float _4996 = mad(_4590, _4990, (_4990 * Material_Material_PreshaderBuffer[77].z) * _3855);
    float _4997 = floor(_4991);
    float _5007 = _4915 * Material_Material_PreshaderBuffer[30].w;
    float _5010 = _4989 * Material_Material_PreshaderBuffer[20].w;
    float _5011 = 2.0f / _5010;
    float _5012 = _4629 * _5011;
    float _5017 = mad(_4630, _5011, (_5011 * Material_Material_PreshaderBuffer[77].w) * _3855);
    float _5018 = floor(_5012);
    float _5028 = _5007 * Material_Material_PreshaderBuffer[22].z;
    float _5034 = _5010 * Material_Material_PreshaderBuffer[20].w;
    float _5035 = 2.0f / _5034;
    float _5036 = _4667 * _5035;
    float _5041 = mad(_4668, _5035, (_5035 * Material_Material_PreshaderBuffer[78].x) * _3855);
    float _5042 = floor(_5036);
    float _5052 = _5028 * Material_Material_PreshaderBuffer[22].z;
    float _5058 = 2.0f / (_5034 * Material_Material_PreshaderBuffer[20].w);
    float _5059 = _4704 * _5058;
    float _5064 = mad(_4705, _5058, (_5058 * Material_Material_PreshaderBuffer[78].y) * _3855);
    float _5065 = floor(_5059);
    float _5075 = _5052 * Material_Material_PreshaderBuffer[22].z;
    float3 _5080 = (((float3(_548, _548, sin(mad(mad(_4899, 6.283185482025146484375f, _4905 * (-6.283185482025146484375f)), 2097152.0f, mad(_4904, 6.283185482025146484375f, floor(mad(mad(_3564, _4898, -_4905), 2097152.0f, _4904)) * (-6.283185482025146484375f)))) * _4915) + float3(_548, _548, sin(mad(mad(_4920, 6.283185482025146484375f, _4926 * (-6.283185482025146484375f)), 2097152.0f, mad(_4925, 6.283185482025146484375f, floor(mad(mad(_4447, _4919, -_4926), 2097152.0f, _4925)) * (-6.283185482025146484375f)))) * _4936)) + float3(_548, _548, sin(mad(mad(_4944, 6.283185482025146484375f, _4950 * (-6.283185482025146484375f)), 2097152.0f, mad(_4949, 6.283185482025146484375f, floor(mad(mad(_4487, _4943, -_4950), 2097152.0f, _4949)) * (-6.283185482025146484375f)))) * _4960)) + float3(_548, _548, sin(mad(mad(_4967, 6.283185482025146484375f, _4973 * (-6.283185482025146484375f)), 2097152.0f, mad(_4972, 6.283185482025146484375f, floor(mad(mad(_4524, _4966, -_4973), 2097152.0f, _4972)) * (-6.283185482025146484375f)))) * _4983)) + (((float3(_548, _548, sin(mad(mad(_4991, 6.283185482025146484375f, _4997 * (-6.283185482025146484375f)), 2097152.0f, mad(_4996, 6.283185482025146484375f, floor(mad(mad(_4589, _4990, -_4997), 2097152.0f, _4996)) * (-6.283185482025146484375f)))) * _5007) + float3(_548, _548, sin(mad(mad(_5012, 6.283185482025146484375f, _5018 * (-6.283185482025146484375f)), 2097152.0f, mad(_5017, 6.283185482025146484375f, floor(mad(mad(_4629, _5011, -_5018), 2097152.0f, _5017)) * (-6.283185482025146484375f)))) * _5028)) + float3(_548, _548, sin(mad(mad(_5036, 6.283185482025146484375f, _5042 * (-6.283185482025146484375f)), 2097152.0f, mad(_5041, 6.283185482025146484375f, floor(mad(mad(_4667, _5035, -_5042), 2097152.0f, _5041)) * (-6.283185482025146484375f)))) * _5052)) + float3(_548, _548, sin(mad(mad(_5059, 6.283185482025146484375f, _5065 * (-6.283185482025146484375f)), 2097152.0f, mad(_5064, 6.283185482025146484375f, floor(mad(mad(_4704, _5058, -_5065), 2097152.0f, _5064)) * (-6.283185482025146484375f)))) * _5075));
    float _5081 = Material_Material_PreshaderBuffer[76].y * _4988;
    float _5082 = 2.0f / _5081;
    float _5083 = _4770 * _5082;
    float _5086 = mad(_4771, _5082, (_5082 * Material_Material_PreshaderBuffer[77].z) * _3855);
    float _5087 = floor(_5083);
    float _5099 = _5081 * Material_Material_PreshaderBuffer[20].w;
    float _5100 = 2.0f / _5099;
    float _5101 = _4804 * _5100;
    float _5104 = mad(_4805, _5100, (_5100 * Material_Material_PreshaderBuffer[77].w) * _3855);
    float _5105 = floor(_5101);
    float _5120 = _5099 * Material_Material_PreshaderBuffer[20].w;
    float _5121 = 2.0f / _5120;
    float _5122 = _4839 * _5121;
    float _5125 = mad(_4840, _5121, (_5121 * Material_Material_PreshaderBuffer[78].x) * _3855);
    float _5126 = floor(_5122);
    float _5141 = 2.0f / (_5120 * Material_Material_PreshaderBuffer[20].w);
    float _5142 = _4873 * _5141;
    float _5145 = mad(_4874, _5141, (_5141 * Material_Material_PreshaderBuffer[78].y) * _3855);
    float _5146 = floor(_5142);
    float3 _5160 = _5080 + (((float3(_548, _548, sin(mad(mad(_5083, 6.283185482025146484375f, _5087 * (-6.283185482025146484375f)), 2097152.0f, mad(_5086, 6.283185482025146484375f, floor(mad(mad(_4770, _5082, -_5087), 2097152.0f, _5086)) * (-6.283185482025146484375f)))) * _5007) + float3(_548, _548, sin(mad(mad(_5101, 6.283185482025146484375f, _5105 * (-6.283185482025146484375f)), 2097152.0f, mad(_5104, 6.283185482025146484375f, floor(mad(mad(_4804, _5100, -_5105), 2097152.0f, _5104)) * (-6.283185482025146484375f)))) * _5028)) + float3(_548, _548, sin(mad(mad(_5122, 6.283185482025146484375f, _5126 * (-6.283185482025146484375f)), 2097152.0f, mad(_5125, 6.283185482025146484375f, floor(mad(mad(_4839, _5121, -_5126), 2097152.0f, _5125)) * (-6.283185482025146484375f)))) * _5052)) + float3(_548, _548, sin(mad(mad(_5142, 6.283185482025146484375f, _5146 * (-6.283185482025146484375f)), 2097152.0f, mad(_5145, 6.283185482025146484375f, floor(mad(mad(_4873, _5141, -_5146), 2097152.0f, _5145)) * (-6.283185482025146484375f)))) * _5075));
    float _5161 = _3568 * 4.0f;
    float _5162 = Material_Material_PreshaderBuffer[62].z * _5161;
    float _5163 = 2.0f / _5162;
    float _5164 = _3564 * _5163;
    float _5169 = mad(_3565, _5163, (_5163 * Material_Material_PreshaderBuffer[78].z) * _3855);
    float _5170 = floor(_5164);
    float _5182 = _5162 * Material_Material_PreshaderBuffer[20].w;
    float _5183 = 2.0f / _5182;
    float _5184 = _4447 * _5183;
    float _5189 = mad(_4448, _5183, (_5183 * Material_Material_PreshaderBuffer[78].w) * _3855);
    float _5190 = floor(_5184);
    float _5205 = _5182 * Material_Material_PreshaderBuffer[20].w;
    float _5206 = 2.0f / _5205;
    float _5207 = _4487 * _5206;
    float _5212 = mad(_4488, _5206, (_5206 * Material_Material_PreshaderBuffer[79].x) * _3855);
    float _5213 = floor(_5207);
    float _5228 = 2.0f / (_5205 * Material_Material_PreshaderBuffer[20].w);
    float _5229 = _4524 * _5228;
    float _5234 = mad(_4525, _5228, (_5228 * Material_Material_PreshaderBuffer[79].y) * _3855);
    float _5235 = floor(_5229);
    float _5249 = _5161 * Material_Material_PreshaderBuffer[28].w;
    float _5250 = Material_Material_PreshaderBuffer[72].x * _5249;
    float _5251 = 2.0f / _5250;
    float _5252 = _4589 * _5251;
    float _5257 = mad(_4590, _5251, (_5251 * Material_Material_PreshaderBuffer[79].z) * _3855);
    float _5258 = floor(_5252);
    float _5270 = _5250 * Material_Material_PreshaderBuffer[20].w;
    float _5271 = 2.0f / _5270;
    float _5272 = _4629 * _5271;
    float _5277 = mad(_4630, _5271, (_5271 * Material_Material_PreshaderBuffer[79].w) * _3855);
    float _5278 = floor(_5272);
    float _5293 = _5270 * Material_Material_PreshaderBuffer[20].w;
    float _5294 = 2.0f / _5293;
    float _5295 = _4667 * _5294;
    float _5300 = mad(_4668, _5294, (_5294 * Material_Material_PreshaderBuffer[80].x) * _3855);
    float _5301 = floor(_5295);
    float _5316 = 2.0f / (_5293 * Material_Material_PreshaderBuffer[20].w);
    float _5317 = _4704 * _5316;
    float _5322 = mad(_4705, _5316, (_5316 * Material_Material_PreshaderBuffer[80].y) * _3855);
    float _5323 = floor(_5317);
    float3 _5337 = (((float3(_548, _548, sin(mad(mad(_5164, 6.283185482025146484375f, _5170 * (-6.283185482025146484375f)), 2097152.0f, mad(_5169, 6.283185482025146484375f, floor(mad(mad(_3564, _5163, -_5170), 2097152.0f, _5169)) * (-6.283185482025146484375f)))) * _4915) + float3(_548, _548, sin(mad(mad(_5184, 6.283185482025146484375f, _5190 * (-6.283185482025146484375f)), 2097152.0f, mad(_5189, 6.283185482025146484375f, floor(mad(mad(_4447, _5183, -_5190), 2097152.0f, _5189)) * (-6.283185482025146484375f)))) * _4936)) + float3(_548, _548, sin(mad(mad(_5207, 6.283185482025146484375f, _5213 * (-6.283185482025146484375f)), 2097152.0f, mad(_5212, 6.283185482025146484375f, floor(mad(mad(_4487, _5206, -_5213), 2097152.0f, _5212)) * (-6.283185482025146484375f)))) * _4960)) + float3(_548, _548, sin(mad(mad(_5229, 6.283185482025146484375f, _5235 * (-6.283185482025146484375f)), 2097152.0f, mad(_5234, 6.283185482025146484375f, floor(mad(mad(_4524, _5228, -_5235), 2097152.0f, _5234)) * (-6.283185482025146484375f)))) * _4983)) + (((float3(_548, _548, sin(mad(mad(_5252, 6.283185482025146484375f, _5258 * (-6.283185482025146484375f)), 2097152.0f, mad(_5257, 6.283185482025146484375f, floor(mad(mad(_4589, _5251, -_5258), 2097152.0f, _5257)) * (-6.283185482025146484375f)))) * _5007) + float3(_548, _548, sin(mad(mad(_5272, 6.283185482025146484375f, _5278 * (-6.283185482025146484375f)), 2097152.0f, mad(_5277, 6.283185482025146484375f, floor(mad(mad(_4629, _5271, -_5278), 2097152.0f, _5277)) * (-6.283185482025146484375f)))) * _5028)) + float3(_548, _548, sin(mad(mad(_5295, 6.283185482025146484375f, _5301 * (-6.283185482025146484375f)), 2097152.0f, mad(_5300, 6.283185482025146484375f, floor(mad(mad(_4667, _5294, -_5301), 2097152.0f, _5300)) * (-6.283185482025146484375f)))) * _5052)) + float3(_548, _548, sin(mad(mad(_5317, 6.283185482025146484375f, _5323 * (-6.283185482025146484375f)), 2097152.0f, mad(_5322, 6.283185482025146484375f, floor(mad(mad(_4704, _5316, -_5323), 2097152.0f, _5322)) * (-6.283185482025146484375f)))) * _5075));
    float _5338 = Material_Material_PreshaderBuffer[76].y * _5249;
    float _5339 = 2.0f / _5338;
    float _5340 = _4770 * _5339;
    float _5343 = mad(_4771, _5339, (_5339 * Material_Material_PreshaderBuffer[79].z) * _3855);
    float _5344 = floor(_5340);
    float _5356 = _5338 * Material_Material_PreshaderBuffer[20].w;
    float _5357 = 2.0f / _5356;
    float _5358 = _4804 * _5357;
    float _5361 = mad(_4805, _5357, (_5357 * Material_Material_PreshaderBuffer[79].w) * _3855);
    float _5362 = floor(_5358);
    float _5377 = _5356 * Material_Material_PreshaderBuffer[20].w;
    float _5378 = 2.0f / _5377;
    float _5379 = _4839 * _5378;
    float _5382 = mad(_4840, _5378, (_5378 * Material_Material_PreshaderBuffer[80].x) * _3855);
    float _5383 = floor(_5379);
    float _5398 = 2.0f / (_5377 * Material_Material_PreshaderBuffer[20].w);
    float _5399 = _4873 * _5398;
    float _5402 = mad(_4874, _5398, (_5398 * Material_Material_PreshaderBuffer[80].y) * _3855);
    float _5403 = floor(_5399);
    float3 _5417 = _5337 + (((float3(_548, _548, sin(mad(mad(_5340, 6.283185482025146484375f, _5344 * (-6.283185482025146484375f)), 2097152.0f, mad(_5343, 6.283185482025146484375f, floor(mad(mad(_4770, _5339, -_5344), 2097152.0f, _5343)) * (-6.283185482025146484375f)))) * _5007) + float3(_548, _548, sin(mad(mad(_5358, 6.283185482025146484375f, _5362 * (-6.283185482025146484375f)), 2097152.0f, mad(_5361, 6.283185482025146484375f, floor(mad(mad(_4804, _5357, -_5362), 2097152.0f, _5361)) * (-6.283185482025146484375f)))) * _5028)) + float3(_548, _548, sin(mad(mad(_5379, 6.283185482025146484375f, _5383 * (-6.283185482025146484375f)), 2097152.0f, mad(_5382, 6.283185482025146484375f, floor(mad(mad(_4839, _5378, -_5383), 2097152.0f, _5382)) * (-6.283185482025146484375f)))) * _5052)) + float3(_548, _548, sin(mad(mad(_5399, 6.283185482025146484375f, _5403 * (-6.283185482025146484375f)), 2097152.0f, mad(_5402, 6.283185482025146484375f, floor(mad(mad(_4873, _5398, -_5403), 2097152.0f, _5402)) * (-6.283185482025146484375f)))) * _5075));
    float _5418 = _3568 * 0.75f;
    float _5419 = Material_Material_PreshaderBuffer[62].z * _5418;
    float _5420 = 2.0f / _5419;
    float _5421 = _3564 * _5420;
    float _5424 = mad(_3565, _5420, (_5420 * Material_Material_PreshaderBuffer[76].z) * _3855);
    float _5425 = floor(_5421);
    float _5435 = _4432 * 0.5f;
    float _5438 = _5419 * Material_Material_PreshaderBuffer[20].w;
    float _5439 = 2.0f / _5438;
    float _5440 = _4447 * _5439;
    float _5443 = mad(_4448, _5439, (_5439 * Material_Material_PreshaderBuffer[76].w) * _3855);
    float _5444 = floor(_5440);
    float _5454 = _5435 * Material_Material_PreshaderBuffer[22].z;
    float _5460 = _5438 * Material_Material_PreshaderBuffer[20].w;
    float _5461 = 2.0f / _5460;
    float _5462 = _4487 * _5461;
    float _5465 = mad(_4488, _5461, (_5461 * Material_Material_PreshaderBuffer[77].x) * _3855);
    float _5466 = floor(_5462);
    float _5476 = _5454 * Material_Material_PreshaderBuffer[22].z;
    float _5482 = 2.0f / (_5460 * Material_Material_PreshaderBuffer[20].w);
    float _5483 = _4524 * _5482;
    float _5486 = mad(_4525, _5482, (_5482 * Material_Material_PreshaderBuffer[77].y) * _3855);
    float _5487 = floor(_5483);
    float _5502 = _5418 * Material_Material_PreshaderBuffer[28].w;
    float _5503 = Material_Material_PreshaderBuffer[72].x * _5502;
    float _5504 = 2.0f / _5503;
    float _5505 = _4589 * _5504;
    float _5508 = mad(_4590, _5504, (_5504 * Material_Material_PreshaderBuffer[77].z) * _3855);
    float _5509 = floor(_5505);
    float _5519 = _5435 * Material_Material_PreshaderBuffer[30].w;
    float _5522 = _5503 * Material_Material_PreshaderBuffer[20].w;
    float _5523 = 2.0f / _5522;
    float _5524 = _4629 * _5523;
    float _5527 = mad(_4630, _5523, (_5523 * Material_Material_PreshaderBuffer[77].w) * _3855);
    float _5528 = floor(_5524);
    float _5538 = _5519 * Material_Material_PreshaderBuffer[22].z;
    float _5544 = _5522 * Material_Material_PreshaderBuffer[20].w;
    float _5545 = 2.0f / _5544;
    float _5546 = _4667 * _5545;
    float _5549 = mad(_4668, _5545, (_5545 * Material_Material_PreshaderBuffer[78].x) * _3855);
    float _5550 = floor(_5546);
    float _5560 = _5538 * Material_Material_PreshaderBuffer[22].z;
    float _5566 = 2.0f / (_5544 * Material_Material_PreshaderBuffer[20].w);
    float _5567 = _4704 * _5566;
    float _5570 = mad(_4705, _5566, (_5566 * Material_Material_PreshaderBuffer[78].y) * _3855);
    float _5571 = floor(_5567);
    float _5581 = _5560 * Material_Material_PreshaderBuffer[22].z;
    float3 _5586 = (((float3(_548, _548, sin(mad(mad(_5421, 6.283185482025146484375f, _5425 * (-6.283185482025146484375f)), 2097152.0f, mad(_5424, 6.283185482025146484375f, floor(mad(mad(_3564, _5420, -_5425), 2097152.0f, _5424)) * (-6.283185482025146484375f)))) * _5435) + float3(_548, _548, sin(mad(mad(_5440, 6.283185482025146484375f, _5444 * (-6.283185482025146484375f)), 2097152.0f, mad(_5443, 6.283185482025146484375f, floor(mad(mad(_4447, _5439, -_5444), 2097152.0f, _5443)) * (-6.283185482025146484375f)))) * _5454)) + float3(_548, _548, sin(mad(mad(_5462, 6.283185482025146484375f, _5466 * (-6.283185482025146484375f)), 2097152.0f, mad(_5465, 6.283185482025146484375f, floor(mad(mad(_4487, _5461, -_5466), 2097152.0f, _5465)) * (-6.283185482025146484375f)))) * _5476)) + float3(_548, _548, sin(mad(mad(_5483, 6.283185482025146484375f, _5487 * (-6.283185482025146484375f)), 2097152.0f, mad(_5486, 6.283185482025146484375f, floor(mad(mad(_4524, _5482, -_5487), 2097152.0f, _5486)) * (-6.283185482025146484375f)))) * (_5476 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_548, _548, sin(mad(mad(_5505, 6.283185482025146484375f, _5509 * (-6.283185482025146484375f)), 2097152.0f, mad(_5508, 6.283185482025146484375f, floor(mad(mad(_4589, _5504, -_5509), 2097152.0f, _5508)) * (-6.283185482025146484375f)))) * _5519) + float3(_548, _548, sin(mad(mad(_5524, 6.283185482025146484375f, _5528 * (-6.283185482025146484375f)), 2097152.0f, mad(_5527, 6.283185482025146484375f, floor(mad(mad(_4629, _5523, -_5528), 2097152.0f, _5527)) * (-6.283185482025146484375f)))) * _5538)) + float3(_548, _548, sin(mad(mad(_5546, 6.283185482025146484375f, _5550 * (-6.283185482025146484375f)), 2097152.0f, mad(_5549, 6.283185482025146484375f, floor(mad(mad(_4667, _5545, -_5550), 2097152.0f, _5549)) * (-6.283185482025146484375f)))) * _5560)) + float3(_548, _548, sin(mad(mad(_5567, 6.283185482025146484375f, _5571 * (-6.283185482025146484375f)), 2097152.0f, mad(_5570, 6.283185482025146484375f, floor(mad(mad(_4704, _5566, -_5571), 2097152.0f, _5570)) * (-6.283185482025146484375f)))) * _5581));
    float _5587 = Material_Material_PreshaderBuffer[76].y * _5502;
    float _5588 = 2.0f / _5587;
    float _5589 = _4770 * _5588;
    float _5592 = mad(_4771, _5588, (_5588 * Material_Material_PreshaderBuffer[77].z) * _3855);
    float _5593 = floor(_5589);
    float _5605 = _5587 * Material_Material_PreshaderBuffer[20].w;
    float _5606 = 2.0f / _5605;
    float _5607 = _4804 * _5606;
    float _5610 = mad(_4805, _5606, (_5606 * Material_Material_PreshaderBuffer[77].w) * _3855);
    float _5611 = floor(_5607);
    float _5626 = _5605 * Material_Material_PreshaderBuffer[20].w;
    float _5627 = 2.0f / _5626;
    float _5628 = _4839 * _5627;
    float _5631 = mad(_4840, _5627, (_5627 * Material_Material_PreshaderBuffer[78].x) * _3855);
    float _5632 = floor(_5628);
    float _5647 = 2.0f / (_5626 * Material_Material_PreshaderBuffer[20].w);
    float _5648 = _4873 * _5647;
    float _5651 = mad(_4874, _5647, (_5647 * Material_Material_PreshaderBuffer[78].y) * _3855);
    float _5652 = floor(_5648);
    float3 _5666 = _5586 + (((float3(_548, _548, sin(mad(mad(_5589, 6.283185482025146484375f, _5593 * (-6.283185482025146484375f)), 2097152.0f, mad(_5592, 6.283185482025146484375f, floor(mad(mad(_4770, _5588, -_5593), 2097152.0f, _5592)) * (-6.283185482025146484375f)))) * _5519) + float3(_548, _548, sin(mad(mad(_5607, 6.283185482025146484375f, _5611 * (-6.283185482025146484375f)), 2097152.0f, mad(_5610, 6.283185482025146484375f, floor(mad(mad(_4804, _5606, -_5611), 2097152.0f, _5610)) * (-6.283185482025146484375f)))) * _5538)) + float3(_548, _548, sin(mad(mad(_5628, 6.283185482025146484375f, _5632 * (-6.283185482025146484375f)), 2097152.0f, mad(_5631, 6.283185482025146484375f, floor(mad(mad(_4839, _5627, -_5632), 2097152.0f, _5631)) * (-6.283185482025146484375f)))) * _5560)) + float3(_548, _548, sin(mad(mad(_5648, 6.283185482025146484375f, _5652 * (-6.283185482025146484375f)), 2097152.0f, mad(_5651, 6.283185482025146484375f, floor(mad(mad(_4873, _5647, -_5652), 2097152.0f, _5651)) * (-6.283185482025146484375f)))) * _5581));
    float _5679 = (abs(Material_Material_PreshaderBuffer[80].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[80].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[80].z : Material_Material_PreshaderBuffer[80].w) : Material_Material_PreshaderBuffer[80].z;
    float _5687 = (abs(_5679 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_5679 >= 1.0f) ? Material_Material_PreshaderBuffer[81].x : Material_Material_PreshaderBuffer[80].z) : Material_Material_PreshaderBuffer[80].z;
    float3 _5697 = float3(min(max((abs(_5687) > 9.9999997473787516355514526367188e-06f) ? ((_5687 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[82].y, 0.0f);
    float2 _5703 = float2(min(max(_5697 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _5704 = _1698 * _5703;
    float2 _5705 = _5703 * _1699;
    float _5710 = _5704.x + _5704.y;
    float _5711 = _5705.x + _5705.y;
    float _5714 = Material_Material_PreshaderBuffer[83].z * _3568;
    float _5715 = 2.0f / _5714;
    float _5716 = _5710 * _5715;
    float3 _5719 = View_View_ViewTilePosition * _3588;
    float3 _5720 = (_644 + 10000.0f.xxx) * _3588;
    float3 _5721 = _5719 * _3579;
    float3 _5723 = (_3579 * _5720) * _3584;
    float3 _5730 = float3(_5723.xy, (_3596 + _5723.z.xx).x);
    float3 _5741 = 0.0f.xxx;
    float _5746 = 0.0f;
    _5741 = ((mad(_5721, _3584, -floor(mad(_5721, _3584, (_5730 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _5730) * 1.0f;
    _5746 = 0.0f;
    float _5744 = 1.0f;
    uint _5748 = 0u;
    [loop]
    for (; _5748 < 6u; )
    {
        float3 _5752 = frac(_5741);
        float _5754 = dot(floor(_5741), float3(19.0f, 47.0f, 101.0f));
        uint3 _5766 = (uint3(int3(int(_5754), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5767 = _5766.y;
        uint _5768 = _5766.z;
        uint _5771 = _5766.x + (_5767 * _5768);
        uint _5773 = _5767 + (_5768 * _5771);
        uint3 _5778 = uint3(0u, 0u, 0u);
        _5778.x = _5771 + (_5773 * (_5768 + (_5771 * _5773)));
        uint3 _5779 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _5792 = (uint3(int3(int(_5754 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5793 = _5792.y;
        uint _5794 = _5792.z;
        uint _5797 = _5792.x + (_5793 * _5794);
        uint _5799 = _5793 + (_5794 * _5797);
        uint3 _5804 = uint3(0u, 0u, 0u);
        _5804.x = _5797 + (_5799 * (_5794 + (_5797 * _5799)));
        uint3 _5817 = (uint3(int3(int(_5754 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5818 = _5817.y;
        uint _5819 = _5817.z;
        uint _5822 = _5817.x + (_5818 * _5819);
        uint _5824 = _5818 + (_5819 * _5822);
        uint3 _5829 = uint3(0u, 0u, 0u);
        _5829.x = _5822 + (_5824 * (_5819 + (_5822 * _5824)));
        uint3 _5842 = (uint3(int3(int(_5754 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5843 = _5842.y;
        uint _5844 = _5842.z;
        uint _5847 = _5842.x + (_5843 * _5844);
        uint _5849 = _5843 + (_5844 * _5847);
        uint3 _5854 = uint3(0u, 0u, 0u);
        _5854.x = _5847 + (_5849 * (_5844 + (_5847 * _5849)));
        uint3 _5867 = (uint3(int3(int(_5754 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5868 = _5867.y;
        uint _5869 = _5867.z;
        uint _5872 = _5867.x + (_5868 * _5869);
        uint _5874 = _5868 + (_5869 * _5872);
        uint3 _5879 = uint3(0u, 0u, 0u);
        _5879.x = _5872 + (_5874 * (_5869 + (_5872 * _5874)));
        uint3 _5892 = (uint3(int3(int(_5754 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5893 = _5892.y;
        uint _5894 = _5892.z;
        uint _5897 = _5892.x + (_5893 * _5894);
        uint _5899 = _5893 + (_5894 * _5897);
        uint3 _5904 = uint3(0u, 0u, 0u);
        _5904.x = _5897 + (_5899 * (_5894 + (_5897 * _5899)));
        uint3 _5917 = (uint3(int3(int(_5754 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5918 = _5917.y;
        uint _5919 = _5917.z;
        uint _5922 = _5917.x + (_5918 * _5919);
        uint _5924 = _5918 + (_5919 * _5922);
        uint3 _5929 = uint3(0u, 0u, 0u);
        _5929.x = _5922 + (_5924 * (_5919 + (_5922 * _5924)));
        uint3 _5942 = (uint3(int3(int(_5754 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5943 = _5942.y;
        uint _5944 = _5942.z;
        uint _5947 = _5942.x + (_5943 * _5944);
        uint _5949 = _5943 + (_5944 * _5947);
        uint3 _5954 = uint3(0u, 0u, 0u);
        _5954.x = _5947 + (_5949 * (_5944 + (_5947 * _5949)));
        float4 _5965 = float4(_5752, 0.0f);
        float4 _5971 = ((_5965 * _5965) * _5965) * mad(_5965, (_5965 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _5972 = _5971.x;
        float _5975 = _5971.y;
        float _5747 = mad(lerp(lerp(lerp(dot(mad(float3((_5778 >> _5779).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5752), dot(mad(float3((_5804 >> _5779).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5752 - float3(1.0f, 0.0f, 0.0f)), _5972), lerp(dot(mad(float3((_5829 >> _5779).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5752 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_5854 >> _5779).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5752 - float3(1.0f, 1.0f, 0.0f)), _5972), _5975), lerp(lerp(dot(mad(float3((_5879 >> _5779).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5752 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_5904 >> _5779).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5752 - float3(1.0f, 0.0f, 1.0f)), _5972), lerp(dot(mad(float3((_5929 >> _5779).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5752 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_5954 >> _5779).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5752 - 1.0f.xxx), _5972), _5975), _5971.z), _5744, _5746);
        _5741 *= 2.0f;
        _5744 *= 0.5f;
        _5746 = _5747;
        _5748++;
        continue;
    }
    float _5985 = lerp(_1163, _1716, clamp(lerp(0.0f, 1.0f, mad(_5746, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _5987 = mad(_5711, _5715, (_5715 * Material_Material_PreshaderBuffer[62].w) * _5985);
    float _5988 = floor(_5716);
    float3 _5998 = _5719 * _3878;
    float3 _6000 = (_3878 * _5720) * _3883;
    float3 _6007 = float3(_6000.xy, (_3893 + _6000.z.xx).x);
    float3 _6018 = 0.0f.xxx;
    float _6023 = 0.0f;
    _6018 = ((mad(_5998, _3883, -floor(mad(_5998, _3883, (_6007 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _6007) * 1.0f;
    _6023 = 0.0f;
    float _6021 = 1.0f;
    uint _6025 = 0u;
    [loop]
    for (; _6025 < 10u; )
    {
        float3 _6029 = frac(_6018);
        float _6031 = dot(floor(_6018), float3(19.0f, 47.0f, 101.0f));
        uint3 _6043 = (uint3(int3(int(_6031), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6044 = _6043.y;
        uint _6045 = _6043.z;
        uint _6048 = _6043.x + (_6044 * _6045);
        uint _6050 = _6044 + (_6045 * _6048);
        uint3 _6055 = uint3(0u, 0u, 0u);
        _6055.x = _6048 + (_6050 * (_6045 + (_6048 * _6050)));
        uint3 _6056 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _6069 = (uint3(int3(int(_6031 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6070 = _6069.y;
        uint _6071 = _6069.z;
        uint _6074 = _6069.x + (_6070 * _6071);
        uint _6076 = _6070 + (_6071 * _6074);
        uint3 _6081 = uint3(0u, 0u, 0u);
        _6081.x = _6074 + (_6076 * (_6071 + (_6074 * _6076)));
        uint3 _6094 = (uint3(int3(int(_6031 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6095 = _6094.y;
        uint _6096 = _6094.z;
        uint _6099 = _6094.x + (_6095 * _6096);
        uint _6101 = _6095 + (_6096 * _6099);
        uint3 _6106 = uint3(0u, 0u, 0u);
        _6106.x = _6099 + (_6101 * (_6096 + (_6099 * _6101)));
        uint3 _6119 = (uint3(int3(int(_6031 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6120 = _6119.y;
        uint _6121 = _6119.z;
        uint _6124 = _6119.x + (_6120 * _6121);
        uint _6126 = _6120 + (_6121 * _6124);
        uint3 _6131 = uint3(0u, 0u, 0u);
        _6131.x = _6124 + (_6126 * (_6121 + (_6124 * _6126)));
        uint3 _6144 = (uint3(int3(int(_6031 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6145 = _6144.y;
        uint _6146 = _6144.z;
        uint _6149 = _6144.x + (_6145 * _6146);
        uint _6151 = _6145 + (_6146 * _6149);
        uint3 _6156 = uint3(0u, 0u, 0u);
        _6156.x = _6149 + (_6151 * (_6146 + (_6149 * _6151)));
        uint3 _6169 = (uint3(int3(int(_6031 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6170 = _6169.y;
        uint _6171 = _6169.z;
        uint _6174 = _6169.x + (_6170 * _6171);
        uint _6176 = _6170 + (_6171 * _6174);
        uint3 _6181 = uint3(0u, 0u, 0u);
        _6181.x = _6174 + (_6176 * (_6171 + (_6174 * _6176)));
        uint3 _6194 = (uint3(int3(int(_6031 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6195 = _6194.y;
        uint _6196 = _6194.z;
        uint _6199 = _6194.x + (_6195 * _6196);
        uint _6201 = _6195 + (_6196 * _6199);
        uint3 _6206 = uint3(0u, 0u, 0u);
        _6206.x = _6199 + (_6201 * (_6196 + (_6199 * _6201)));
        uint3 _6219 = (uint3(int3(int(_6031 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6220 = _6219.y;
        uint _6221 = _6219.z;
        uint _6224 = _6219.x + (_6220 * _6221);
        uint _6226 = _6220 + (_6221 * _6224);
        uint3 _6231 = uint3(0u, 0u, 0u);
        _6231.x = _6224 + (_6226 * (_6221 + (_6224 * _6226)));
        float4 _6242 = float4(_6029, 0.0f);
        float4 _6248 = ((_6242 * _6242) * _6242) * mad(_6242, (_6242 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _6249 = _6248.x;
        float _6252 = _6248.y;
        float _6259 = abs(lerp(lerp(lerp(dot(mad(float3((_6055 >> _6056).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6029), dot(mad(float3((_6081 >> _6056).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6029 - float3(1.0f, 0.0f, 0.0f)), _6249), lerp(dot(mad(float3((_6106 >> _6056).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6029 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_6131 >> _6056).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6029 - float3(1.0f, 1.0f, 0.0f)), _6249), _6252), lerp(lerp(dot(mad(float3((_6156 >> _6056).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6029 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_6181 >> _6056).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6029 - float3(1.0f, 0.0f, 1.0f)), _6249), lerp(dot(mad(float3((_6206 >> _6056).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6029 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_6231 >> _6056).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6029 - 1.0f.xxx), _6249), _6252), _6248.z));
        float _6024 = mad(_6259, _6021, _6023);
        _6018 *= 2.0f;
        _6021 *= 0.5f;
        _6023 = _6024;
        _6025++;
        continue;
    }
    float3 _6261 = _5719 * _4153;
    float3 _6263 = (_4153 * _5720) * _4158;
    float3 _6270 = float3(_6263.xy, (_4168 + _6263.z.xx).x);
    float3 _6281 = 0.0f.xxx;
    float _6286 = 0.0f;
    _6281 = ((mad(_6261, _4158, -floor(mad(_6261, _4158, (_6270 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _6270) * 1.0f;
    _6286 = 0.0f;
    float _6284 = 1.0f;
    uint _6288 = 0u;
    [loop]
    for (; _6288 < 10u; )
    {
        float3 _6292 = frac(_6281);
        float _6294 = dot(floor(_6281), float3(19.0f, 47.0f, 101.0f));
        uint3 _6306 = (uint3(int3(int(_6294), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6307 = _6306.y;
        uint _6308 = _6306.z;
        uint _6311 = _6306.x + (_6307 * _6308);
        uint _6313 = _6307 + (_6308 * _6311);
        uint3 _6318 = uint3(0u, 0u, 0u);
        _6318.x = _6311 + (_6313 * (_6308 + (_6311 * _6313)));
        uint3 _6319 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _6332 = (uint3(int3(int(_6294 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6333 = _6332.y;
        uint _6334 = _6332.z;
        uint _6337 = _6332.x + (_6333 * _6334);
        uint _6339 = _6333 + (_6334 * _6337);
        uint3 _6344 = uint3(0u, 0u, 0u);
        _6344.x = _6337 + (_6339 * (_6334 + (_6337 * _6339)));
        uint3 _6357 = (uint3(int3(int(_6294 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6358 = _6357.y;
        uint _6359 = _6357.z;
        uint _6362 = _6357.x + (_6358 * _6359);
        uint _6364 = _6358 + (_6359 * _6362);
        uint3 _6369 = uint3(0u, 0u, 0u);
        _6369.x = _6362 + (_6364 * (_6359 + (_6362 * _6364)));
        uint3 _6382 = (uint3(int3(int(_6294 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6383 = _6382.y;
        uint _6384 = _6382.z;
        uint _6387 = _6382.x + (_6383 * _6384);
        uint _6389 = _6383 + (_6384 * _6387);
        uint3 _6394 = uint3(0u, 0u, 0u);
        _6394.x = _6387 + (_6389 * (_6384 + (_6387 * _6389)));
        uint3 _6407 = (uint3(int3(int(_6294 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6408 = _6407.y;
        uint _6409 = _6407.z;
        uint _6412 = _6407.x + (_6408 * _6409);
        uint _6414 = _6408 + (_6409 * _6412);
        uint3 _6419 = uint3(0u, 0u, 0u);
        _6419.x = _6412 + (_6414 * (_6409 + (_6412 * _6414)));
        uint3 _6432 = (uint3(int3(int(_6294 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6433 = _6432.y;
        uint _6434 = _6432.z;
        uint _6437 = _6432.x + (_6433 * _6434);
        uint _6439 = _6433 + (_6434 * _6437);
        uint3 _6444 = uint3(0u, 0u, 0u);
        _6444.x = _6437 + (_6439 * (_6434 + (_6437 * _6439)));
        uint3 _6457 = (uint3(int3(int(_6294 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6458 = _6457.y;
        uint _6459 = _6457.z;
        uint _6462 = _6457.x + (_6458 * _6459);
        uint _6464 = _6458 + (_6459 * _6462);
        uint3 _6469 = uint3(0u, 0u, 0u);
        _6469.x = _6462 + (_6464 * (_6459 + (_6462 * _6464)));
        uint3 _6482 = (uint3(int3(int(_6294 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6483 = _6482.y;
        uint _6484 = _6482.z;
        uint _6487 = _6482.x + (_6483 * _6484);
        uint _6489 = _6483 + (_6484 * _6487);
        uint3 _6494 = uint3(0u, 0u, 0u);
        _6494.x = _6487 + (_6489 * (_6484 + (_6487 * _6489)));
        float4 _6505 = float4(_6292, 0.0f);
        float4 _6511 = ((_6505 * _6505) * _6505) * mad(_6505, (_6505 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _6512 = _6511.x;
        float _6515 = _6511.y;
        float _6522 = abs(lerp(lerp(lerp(dot(mad(float3((_6318 >> _6319).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6292), dot(mad(float3((_6344 >> _6319).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6292 - float3(1.0f, 0.0f, 0.0f)), _6512), lerp(dot(mad(float3((_6369 >> _6319).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6292 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_6394 >> _6319).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6292 - float3(1.0f, 1.0f, 0.0f)), _6512), _6515), lerp(lerp(dot(mad(float3((_6419 >> _6319).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6292 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_6444 >> _6319).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6292 - float3(1.0f, 0.0f, 1.0f)), _6512), lerp(dot(mad(float3((_6469 >> _6319).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6292 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_6494 >> _6319).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6292 - 1.0f.xxx), _6512), _6515), _6511.z));
        float _6287 = mad(_6522, _6284, _6286);
        _6281 *= 2.0f;
        _6284 *= 0.5f;
        _6286 = _6287;
        _6288++;
        continue;
    }
    float _6526 = lerp(_3870, _3875, lerp(0.0f, 1.0f, _6023) * mad(lerp(0.0f, 1.0f, _6286), Material_Material_PreshaderBuffer[66].w, Material_Material_PreshaderBuffer[66].z));
    float2 _6534 = float2(min(max(_5697 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6535 = _1698 * _6534;
    float2 _6536 = _6534 * _1699;
    float _6541 = _6535.x + _6535.y;
    float _6542 = _6536.x + _6536.y;
    float _6543 = _5714 * Material_Material_PreshaderBuffer[20].w;
    float _6544 = 2.0f / _6543;
    float _6545 = _6541 * _6544;
    float _6548 = mad(_6542, _6544, (_6544 * Material_Material_PreshaderBuffer[67].y) * _5985);
    float _6549 = floor(_6545);
    float _6559 = _6526 * Material_Material_PreshaderBuffer[22].z;
    float2 _6570 = float2(min(max(_5697 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6571 = _1698 * _6570;
    float2 _6572 = _6570 * _1699;
    float _6577 = _6571.x + _6571.y;
    float _6578 = _6572.x + _6572.y;
    float _6579 = _6543 * Material_Material_PreshaderBuffer[20].w;
    float _6580 = 2.0f / _6579;
    float _6581 = _6577 * _6580;
    float _6584 = mad(_6578, _6580, (_6580 * Material_Material_PreshaderBuffer[67].w) * _5985);
    float _6585 = floor(_6581);
    float _6595 = _6559 * Material_Material_PreshaderBuffer[22].z;
    float2 _6605 = float2(min(max(_5697 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6606 = _1698 * _6605;
    float2 _6607 = _6605 * _1699;
    float _6612 = _6606.x + _6606.y;
    float _6613 = _6607.x + _6607.y;
    float _6615 = 2.0f / (_6579 * Material_Material_PreshaderBuffer[20].w);
    float _6616 = _6612 * _6615;
    float _6619 = mad(_6613, _6615, (_6615 * Material_Material_PreshaderBuffer[68].y) * _5985);
    float _6620 = floor(_6616);
    float _6644 = (abs(Material_Material_PreshaderBuffer[83].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[83].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[83].w : Material_Material_PreshaderBuffer[84].x) : Material_Material_PreshaderBuffer[83].w;
    float _6652 = (abs(_6644 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_6644 >= 1.0f) ? Material_Material_PreshaderBuffer[84].y : Material_Material_PreshaderBuffer[83].w) : Material_Material_PreshaderBuffer[83].w;
    float3 _6662 = float3(min(max((abs(_6652) > 9.9999997473787516355514526367188e-06f) ? ((_6652 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[85].z, 0.0f);
    float2 _6668 = float2(min(max(_6662 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6669 = _1698 * _6668;
    float2 _6670 = _6668 * _1699;
    float _6675 = _6669.x + _6669.y;
    float _6676 = _6670.x + _6670.y;
    float _6679 = Material_Material_PreshaderBuffer[86].w * _4593;
    float _6680 = 2.0f / _6679;
    float _6681 = _6675 * _6680;
    float _6684 = mad(_6676, _6680, (_6680 * Material_Material_PreshaderBuffer[72].y) * _5985);
    float _6685 = floor(_6681);
    float _6695 = _6526 * Material_Material_PreshaderBuffer[30].w;
    float2 _6703 = float2(min(max(_6662 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6704 = _1698 * _6703;
    float2 _6705 = _6703 * _1699;
    float _6710 = _6704.x + _6704.y;
    float _6711 = _6705.x + _6705.y;
    float _6712 = _6679 * Material_Material_PreshaderBuffer[20].w;
    float _6713 = 2.0f / _6712;
    float _6714 = _6710 * _6713;
    float _6717 = mad(_6711, _6713, (_6713 * Material_Material_PreshaderBuffer[72].z) * _5985);
    float _6718 = floor(_6714);
    float _6728 = _6695 * Material_Material_PreshaderBuffer[22].z;
    float2 _6739 = float2(min(max(_6662 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6740 = _1698 * _6739;
    float2 _6741 = _6739 * _1699;
    float _6746 = _6740.x + _6740.y;
    float _6747 = _6741.x + _6741.y;
    float _6748 = _6712 * Material_Material_PreshaderBuffer[20].w;
    float _6749 = 2.0f / _6748;
    float _6750 = _6746 * _6749;
    float _6753 = mad(_6747, _6749, (_6749 * Material_Material_PreshaderBuffer[72].w) * _5985);
    float _6754 = floor(_6750);
    float _6764 = _6728 * Material_Material_PreshaderBuffer[22].z;
    float2 _6774 = float2(min(max(_6662 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6775 = _1698 * _6774;
    float2 _6776 = _6774 * _1699;
    float _6781 = _6775.x + _6775.y;
    float _6782 = _6776.x + _6776.y;
    float _6784 = 2.0f / (_6748 * Material_Material_PreshaderBuffer[20].w);
    float _6785 = _6781 * _6784;
    float _6788 = mad(_6782, _6784, (_6784 * Material_Material_PreshaderBuffer[73].x) * _5985);
    float _6789 = floor(_6785);
    float _6799 = _6764 * Material_Material_PreshaderBuffer[22].z;
    float3 _6804 = (((float3(_548, _548, sin(mad(mad(_5716, 6.283185482025146484375f, _5988 * (-6.283185482025146484375f)), 2097152.0f, mad(_5987, 6.283185482025146484375f, floor(mad(mad(_5710, _5715, -_5988), 2097152.0f, _5987)) * (-6.283185482025146484375f)))) * _6526) + float3(_548, _548, sin(mad(mad(_6545, 6.283185482025146484375f, _6549 * (-6.283185482025146484375f)), 2097152.0f, mad(_6548, 6.283185482025146484375f, floor(mad(mad(_6541, _6544, -_6549), 2097152.0f, _6548)) * (-6.283185482025146484375f)))) * _6559)) + float3(_548, _548, sin(mad(mad(_6581, 6.283185482025146484375f, _6585 * (-6.283185482025146484375f)), 2097152.0f, mad(_6584, 6.283185482025146484375f, floor(mad(mad(_6577, _6580, -_6585), 2097152.0f, _6584)) * (-6.283185482025146484375f)))) * _6595)) + float3(_548, _548, sin(mad(mad(_6616, 6.283185482025146484375f, _6620 * (-6.283185482025146484375f)), 2097152.0f, mad(_6619, 6.283185482025146484375f, floor(mad(mad(_6612, _6615, -_6620), 2097152.0f, _6619)) * (-6.283185482025146484375f)))) * (_6595 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_548, _548, sin(mad(mad(_6681, 6.283185482025146484375f, _6685 * (-6.283185482025146484375f)), 2097152.0f, mad(_6684, 6.283185482025146484375f, floor(mad(mad(_6675, _6680, -_6685), 2097152.0f, _6684)) * (-6.283185482025146484375f)))) * _6695) + float3(_548, _548, sin(mad(mad(_6714, 6.283185482025146484375f, _6718 * (-6.283185482025146484375f)), 2097152.0f, mad(_6717, 6.283185482025146484375f, floor(mad(mad(_6710, _6713, -_6718), 2097152.0f, _6717)) * (-6.283185482025146484375f)))) * _6728)) + float3(_548, _548, sin(mad(mad(_6750, 6.283185482025146484375f, _6754 * (-6.283185482025146484375f)), 2097152.0f, mad(_6753, 6.283185482025146484375f, floor(mad(mad(_6746, _6749, -_6754), 2097152.0f, _6753)) * (-6.283185482025146484375f)))) * _6764)) + float3(_548, _548, sin(mad(mad(_6785, 6.283185482025146484375f, _6789 * (-6.283185482025146484375f)), 2097152.0f, mad(_6788, 6.283185482025146484375f, floor(mad(mad(_6781, _6784, -_6789), 2097152.0f, _6788)) * (-6.283185482025146484375f)))) * _6799));
    float _6814 = (abs(Material_Material_PreshaderBuffer[87].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[87].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[87].x : Material_Material_PreshaderBuffer[87].y) : Material_Material_PreshaderBuffer[87].x;
    float _6822 = (abs(_6814 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_6814 >= 1.0f) ? Material_Material_PreshaderBuffer[87].z : Material_Material_PreshaderBuffer[87].x) : Material_Material_PreshaderBuffer[87].x;
    float3 _6832 = float3(min(max((abs(_6822) > 9.9999997473787516355514526367188e-06f) ? ((_6822 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[88].w, 0.0f);
    float2 _6838 = float2(min(max(_6832 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6839 = _1698 * _6838;
    float2 _6840 = _6838 * _1699;
    float _6845 = _6839.x + _6839.y;
    float _6846 = _6840.x + _6840.y;
    float _6849 = Material_Material_PreshaderBuffer[90].x * _4593;
    float _6850 = 2.0f / _6849;
    float _6851 = _6845 * _6850;
    float _6854 = mad(_6846, _6850, (_6850 * Material_Material_PreshaderBuffer[72].y) * _5985);
    float _6855 = floor(_6851);
    float2 _6872 = float2(min(max(_6832 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6873 = _1698 * _6872;
    float2 _6874 = _6872 * _1699;
    float _6879 = _6873.x + _6873.y;
    float _6880 = _6874.x + _6874.y;
    float _6881 = _6849 * Material_Material_PreshaderBuffer[20].w;
    float _6882 = 2.0f / _6881;
    float _6883 = _6879 * _6882;
    float _6886 = mad(_6880, _6882, (_6882 * Material_Material_PreshaderBuffer[72].z) * _5985);
    float _6887 = floor(_6883);
    float2 _6907 = float2(min(max(_6832 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6908 = _1698 * _6907;
    float2 _6909 = _6907 * _1699;
    float _6914 = _6908.x + _6908.y;
    float _6915 = _6909.x + _6909.y;
    float _6916 = _6881 * Material_Material_PreshaderBuffer[20].w;
    float _6917 = 2.0f / _6916;
    float _6918 = _6914 * _6917;
    float _6921 = mad(_6915, _6917, (_6917 * Material_Material_PreshaderBuffer[72].w) * _5985);
    float _6922 = floor(_6918);
    float2 _6941 = float2(min(max(_6832 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6942 = _1698 * _6941;
    float2 _6943 = _6941 * _1699;
    float _6948 = _6942.x + _6942.y;
    float _6949 = _6943.x + _6943.y;
    float _6951 = 2.0f / (_6916 * Material_Material_PreshaderBuffer[20].w);
    float _6952 = _6948 * _6951;
    float _6955 = mad(_6949, _6951, (_6951 * Material_Material_PreshaderBuffer[73].x) * _5985);
    float _6956 = floor(_6952);
    float3 _6970 = _6804 + (((float3(_548, _548, sin(mad(mad(_6851, 6.283185482025146484375f, _6855 * (-6.283185482025146484375f)), 2097152.0f, mad(_6854, 6.283185482025146484375f, floor(mad(mad(_6845, _6850, -_6855), 2097152.0f, _6854)) * (-6.283185482025146484375f)))) * _6695) + float3(_548, _548, sin(mad(mad(_6883, 6.283185482025146484375f, _6887 * (-6.283185482025146484375f)), 2097152.0f, mad(_6886, 6.283185482025146484375f, floor(mad(mad(_6879, _6882, -_6887), 2097152.0f, _6886)) * (-6.283185482025146484375f)))) * _6728)) + float3(_548, _548, sin(mad(mad(_6918, 6.283185482025146484375f, _6922 * (-6.283185482025146484375f)), 2097152.0f, mad(_6921, 6.283185482025146484375f, floor(mad(mad(_6914, _6917, -_6922), 2097152.0f, _6921)) * (-6.283185482025146484375f)))) * _6764)) + float3(_548, _548, sin(mad(mad(_6952, 6.283185482025146484375f, _6956 * (-6.283185482025146484375f)), 2097152.0f, mad(_6955, 6.283185482025146484375f, floor(mad(mad(_6948, _6951, -_6956), 2097152.0f, _6955)) * (-6.283185482025146484375f)))) * _6799));
    float _6971 = _3568 * 8.0f;
    float _6972 = Material_Material_PreshaderBuffer[83].z * _6971;
    float _6973 = 2.0f / _6972;
    float _6974 = _5710 * _6973;
    float _6977 = mad(_5711, _6973, (_6973 * Material_Material_PreshaderBuffer[76].z) * _5985);
    float _6978 = floor(_6974);
    float _6988 = _6526 * 8.0f;
    float _6991 = _6972 * Material_Material_PreshaderBuffer[20].w;
    float _6992 = 2.0f / _6991;
    float _6993 = _6541 * _6992;
    float _6996 = mad(_6542, _6992, (_6992 * Material_Material_PreshaderBuffer[76].w) * _5985);
    float _6997 = floor(_6993);
    float _7007 = _6988 * Material_Material_PreshaderBuffer[22].z;
    float _7013 = _6991 * Material_Material_PreshaderBuffer[20].w;
    float _7014 = 2.0f / _7013;
    float _7015 = _6577 * _7014;
    float _7018 = mad(_6578, _7014, (_7014 * Material_Material_PreshaderBuffer[77].x) * _5985);
    float _7019 = floor(_7015);
    float _7029 = _7007 * Material_Material_PreshaderBuffer[22].z;
    float _7035 = 2.0f / (_7013 * Material_Material_PreshaderBuffer[20].w);
    float _7036 = _6612 * _7035;
    float _7039 = mad(_6613, _7035, (_7035 * Material_Material_PreshaderBuffer[77].y) * _5985);
    float _7040 = floor(_7036);
    float _7055 = _6971 * Material_Material_PreshaderBuffer[28].w;
    float _7056 = Material_Material_PreshaderBuffer[86].w * _7055;
    float _7057 = 2.0f / _7056;
    float _7058 = _6675 * _7057;
    float _7061 = mad(_6676, _7057, (_7057 * Material_Material_PreshaderBuffer[77].z) * _5985);
    float _7062 = floor(_7058);
    float _7072 = _6988 * Material_Material_PreshaderBuffer[30].w;
    float _7075 = _7056 * Material_Material_PreshaderBuffer[20].w;
    float _7076 = 2.0f / _7075;
    float _7077 = _6710 * _7076;
    float _7080 = mad(_6711, _7076, (_7076 * Material_Material_PreshaderBuffer[77].w) * _5985);
    float _7081 = floor(_7077);
    float _7091 = _7072 * Material_Material_PreshaderBuffer[22].z;
    float _7097 = _7075 * Material_Material_PreshaderBuffer[20].w;
    float _7098 = 2.0f / _7097;
    float _7099 = _6746 * _7098;
    float _7102 = mad(_6747, _7098, (_7098 * Material_Material_PreshaderBuffer[78].x) * _5985);
    float _7103 = floor(_7099);
    float _7113 = _7091 * Material_Material_PreshaderBuffer[22].z;
    float _7119 = 2.0f / (_7097 * Material_Material_PreshaderBuffer[20].w);
    float _7120 = _6781 * _7119;
    float _7123 = mad(_6782, _7119, (_7119 * Material_Material_PreshaderBuffer[78].y) * _5985);
    float _7124 = floor(_7120);
    float _7134 = _7113 * Material_Material_PreshaderBuffer[22].z;
    float3 _7139 = (((float3(_548, _548, sin(mad(mad(_6974, 6.283185482025146484375f, _6978 * (-6.283185482025146484375f)), 2097152.0f, mad(_6977, 6.283185482025146484375f, floor(mad(mad(_5710, _6973, -_6978), 2097152.0f, _6977)) * (-6.283185482025146484375f)))) * _6988) + float3(_548, _548, sin(mad(mad(_6993, 6.283185482025146484375f, _6997 * (-6.283185482025146484375f)), 2097152.0f, mad(_6996, 6.283185482025146484375f, floor(mad(mad(_6541, _6992, -_6997), 2097152.0f, _6996)) * (-6.283185482025146484375f)))) * _7007)) + float3(_548, _548, sin(mad(mad(_7015, 6.283185482025146484375f, _7019 * (-6.283185482025146484375f)), 2097152.0f, mad(_7018, 6.283185482025146484375f, floor(mad(mad(_6577, _7014, -_7019), 2097152.0f, _7018)) * (-6.283185482025146484375f)))) * _7029)) + float3(_548, _548, sin(mad(mad(_7036, 6.283185482025146484375f, _7040 * (-6.283185482025146484375f)), 2097152.0f, mad(_7039, 6.283185482025146484375f, floor(mad(mad(_6612, _7035, -_7040), 2097152.0f, _7039)) * (-6.283185482025146484375f)))) * (_7029 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_548, _548, sin(mad(mad(_7058, 6.283185482025146484375f, _7062 * (-6.283185482025146484375f)), 2097152.0f, mad(_7061, 6.283185482025146484375f, floor(mad(mad(_6675, _7057, -_7062), 2097152.0f, _7061)) * (-6.283185482025146484375f)))) * _7072) + float3(_548, _548, sin(mad(mad(_7077, 6.283185482025146484375f, _7081 * (-6.283185482025146484375f)), 2097152.0f, mad(_7080, 6.283185482025146484375f, floor(mad(mad(_6710, _7076, -_7081), 2097152.0f, _7080)) * (-6.283185482025146484375f)))) * _7091)) + float3(_548, _548, sin(mad(mad(_7099, 6.283185482025146484375f, _7103 * (-6.283185482025146484375f)), 2097152.0f, mad(_7102, 6.283185482025146484375f, floor(mad(mad(_6746, _7098, -_7103), 2097152.0f, _7102)) * (-6.283185482025146484375f)))) * _7113)) + float3(_548, _548, sin(mad(mad(_7120, 6.283185482025146484375f, _7124 * (-6.283185482025146484375f)), 2097152.0f, mad(_7123, 6.283185482025146484375f, floor(mad(mad(_6781, _7119, -_7124), 2097152.0f, _7123)) * (-6.283185482025146484375f)))) * _7134));
    float _7140 = Material_Material_PreshaderBuffer[90].x * _7055;
    float _7141 = 2.0f / _7140;
    float _7142 = _6845 * _7141;
    float _7145 = mad(_6846, _7141, (_7141 * Material_Material_PreshaderBuffer[77].z) * _5985);
    float _7146 = floor(_7142);
    float _7158 = _7140 * Material_Material_PreshaderBuffer[20].w;
    float _7159 = 2.0f / _7158;
    float _7160 = _6879 * _7159;
    float _7163 = mad(_6880, _7159, (_7159 * Material_Material_PreshaderBuffer[77].w) * _5985);
    float _7164 = floor(_7160);
    float _7179 = _7158 * Material_Material_PreshaderBuffer[20].w;
    float _7180 = 2.0f / _7179;
    float _7181 = _6914 * _7180;
    float _7184 = mad(_6915, _7180, (_7180 * Material_Material_PreshaderBuffer[78].x) * _5985);
    float _7185 = floor(_7181);
    float _7200 = 2.0f / (_7179 * Material_Material_PreshaderBuffer[20].w);
    float _7201 = _6948 * _7200;
    float _7204 = mad(_6949, _7200, (_7200 * Material_Material_PreshaderBuffer[78].y) * _5985);
    float _7205 = floor(_7201);
    float3 _7219 = _7139 + (((float3(_548, _548, sin(mad(mad(_7142, 6.283185482025146484375f, _7146 * (-6.283185482025146484375f)), 2097152.0f, mad(_7145, 6.283185482025146484375f, floor(mad(mad(_6845, _7141, -_7146), 2097152.0f, _7145)) * (-6.283185482025146484375f)))) * _7072) + float3(_548, _548, sin(mad(mad(_7160, 6.283185482025146484375f, _7164 * (-6.283185482025146484375f)), 2097152.0f, mad(_7163, 6.283185482025146484375f, floor(mad(mad(_6879, _7159, -_7164), 2097152.0f, _7163)) * (-6.283185482025146484375f)))) * _7091)) + float3(_548, _548, sin(mad(mad(_7181, 6.283185482025146484375f, _7185 * (-6.283185482025146484375f)), 2097152.0f, mad(_7184, 6.283185482025146484375f, floor(mad(mad(_6914, _7180, -_7185), 2097152.0f, _7184)) * (-6.283185482025146484375f)))) * _7113)) + float3(_548, _548, sin(mad(mad(_7201, 6.283185482025146484375f, _7205 * (-6.283185482025146484375f)), 2097152.0f, mad(_7204, 6.283185482025146484375f, floor(mad(mad(_6948, _7200, -_7205), 2097152.0f, _7204)) * (-6.283185482025146484375f)))) * _7134));
    float _7220 = Material_Material_PreshaderBuffer[83].z * _5161;
    float _7221 = 2.0f / _7220;
    float _7222 = _5710 * _7221;
    float _7225 = mad(_5711, _7221, (_7221 * Material_Material_PreshaderBuffer[78].z) * _5985);
    float _7226 = floor(_7222);
    float _7236 = _6526 * 4.0f;
    float _7239 = _7220 * Material_Material_PreshaderBuffer[20].w;
    float _7240 = 2.0f / _7239;
    float _7241 = _6541 * _7240;
    float _7244 = mad(_6542, _7240, (_7240 * Material_Material_PreshaderBuffer[78].w) * _5985);
    float _7245 = floor(_7241);
    float _7255 = _7236 * Material_Material_PreshaderBuffer[22].z;
    float _7261 = _7239 * Material_Material_PreshaderBuffer[20].w;
    float _7262 = 2.0f / _7261;
    float _7263 = _6577 * _7262;
    float _7266 = mad(_6578, _7262, (_7262 * Material_Material_PreshaderBuffer[79].x) * _5985);
    float _7267 = floor(_7263);
    float _7277 = _7255 * Material_Material_PreshaderBuffer[22].z;
    float _7283 = 2.0f / (_7261 * Material_Material_PreshaderBuffer[20].w);
    float _7284 = _6612 * _7283;
    float _7287 = mad(_6613, _7283, (_7283 * Material_Material_PreshaderBuffer[79].y) * _5985);
    float _7288 = floor(_7284);
    float _7303 = Material_Material_PreshaderBuffer[86].w * _5249;
    float _7304 = 2.0f / _7303;
    float _7305 = _6675 * _7304;
    float _7308 = mad(_6676, _7304, (_7304 * Material_Material_PreshaderBuffer[79].z) * _5985);
    float _7309 = floor(_7305);
    float _7319 = _7236 * Material_Material_PreshaderBuffer[30].w;
    float _7322 = _7303 * Material_Material_PreshaderBuffer[20].w;
    float _7323 = 2.0f / _7322;
    float _7324 = _6710 * _7323;
    float _7327 = mad(_6711, _7323, (_7323 * Material_Material_PreshaderBuffer[79].w) * _5985);
    float _7328 = floor(_7324);
    float _7338 = _7319 * Material_Material_PreshaderBuffer[22].z;
    float _7344 = _7322 * Material_Material_PreshaderBuffer[20].w;
    float _7345 = 2.0f / _7344;
    float _7346 = _6746 * _7345;
    float _7349 = mad(_6747, _7345, (_7345 * Material_Material_PreshaderBuffer[80].x) * _5985);
    float _7350 = floor(_7346);
    float _7360 = _7338 * Material_Material_PreshaderBuffer[22].z;
    float _7366 = 2.0f / (_7344 * Material_Material_PreshaderBuffer[20].w);
    float _7367 = _6781 * _7366;
    float _7370 = mad(_6782, _7366, (_7366 * Material_Material_PreshaderBuffer[80].y) * _5985);
    float _7371 = floor(_7367);
    float _7381 = _7360 * Material_Material_PreshaderBuffer[22].z;
    float3 _7386 = (((float3(_548, _548, sin(mad(mad(_7222, 6.283185482025146484375f, _7226 * (-6.283185482025146484375f)), 2097152.0f, mad(_7225, 6.283185482025146484375f, floor(mad(mad(_5710, _7221, -_7226), 2097152.0f, _7225)) * (-6.283185482025146484375f)))) * _7236) + float3(_548, _548, sin(mad(mad(_7241, 6.283185482025146484375f, _7245 * (-6.283185482025146484375f)), 2097152.0f, mad(_7244, 6.283185482025146484375f, floor(mad(mad(_6541, _7240, -_7245), 2097152.0f, _7244)) * (-6.283185482025146484375f)))) * _7255)) + float3(_548, _548, sin(mad(mad(_7263, 6.283185482025146484375f, _7267 * (-6.283185482025146484375f)), 2097152.0f, mad(_7266, 6.283185482025146484375f, floor(mad(mad(_6577, _7262, -_7267), 2097152.0f, _7266)) * (-6.283185482025146484375f)))) * _7277)) + float3(_548, _548, sin(mad(mad(_7284, 6.283185482025146484375f, _7288 * (-6.283185482025146484375f)), 2097152.0f, mad(_7287, 6.283185482025146484375f, floor(mad(mad(_6612, _7283, -_7288), 2097152.0f, _7287)) * (-6.283185482025146484375f)))) * (_7277 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_548, _548, sin(mad(mad(_7305, 6.283185482025146484375f, _7309 * (-6.283185482025146484375f)), 2097152.0f, mad(_7308, 6.283185482025146484375f, floor(mad(mad(_6675, _7304, -_7309), 2097152.0f, _7308)) * (-6.283185482025146484375f)))) * _7319) + float3(_548, _548, sin(mad(mad(_7324, 6.283185482025146484375f, _7328 * (-6.283185482025146484375f)), 2097152.0f, mad(_7327, 6.283185482025146484375f, floor(mad(mad(_6710, _7323, -_7328), 2097152.0f, _7327)) * (-6.283185482025146484375f)))) * _7338)) + float3(_548, _548, sin(mad(mad(_7346, 6.283185482025146484375f, _7350 * (-6.283185482025146484375f)), 2097152.0f, mad(_7349, 6.283185482025146484375f, floor(mad(mad(_6746, _7345, -_7350), 2097152.0f, _7349)) * (-6.283185482025146484375f)))) * _7360)) + float3(_548, _548, sin(mad(mad(_7367, 6.283185482025146484375f, _7371 * (-6.283185482025146484375f)), 2097152.0f, mad(_7370, 6.283185482025146484375f, floor(mad(mad(_6781, _7366, -_7371), 2097152.0f, _7370)) * (-6.283185482025146484375f)))) * _7381));
    float _7387 = Material_Material_PreshaderBuffer[90].x * _5249;
    float _7388 = 2.0f / _7387;
    float _7389 = _6845 * _7388;
    float _7392 = mad(_6846, _7388, (_7388 * Material_Material_PreshaderBuffer[79].z) * _5985);
    float _7393 = floor(_7389);
    float _7405 = _7387 * Material_Material_PreshaderBuffer[20].w;
    float _7406 = 2.0f / _7405;
    float _7407 = _6879 * _7406;
    float _7410 = mad(_6880, _7406, (_7406 * Material_Material_PreshaderBuffer[79].w) * _5985);
    float _7411 = floor(_7407);
    float _7426 = _7405 * Material_Material_PreshaderBuffer[20].w;
    float _7427 = 2.0f / _7426;
    float _7428 = _6914 * _7427;
    float _7431 = mad(_6915, _7427, (_7427 * Material_Material_PreshaderBuffer[80].x) * _5985);
    float _7432 = floor(_7428);
    float _7447 = 2.0f / (_7426 * Material_Material_PreshaderBuffer[20].w);
    float _7448 = _6948 * _7447;
    float _7451 = mad(_6949, _7447, (_7447 * Material_Material_PreshaderBuffer[80].y) * _5985);
    float _7452 = floor(_7448);
    float3 _7466 = _7386 + (((float3(_548, _548, sin(mad(mad(_7389, 6.283185482025146484375f, _7393 * (-6.283185482025146484375f)), 2097152.0f, mad(_7392, 6.283185482025146484375f, floor(mad(mad(_6845, _7388, -_7393), 2097152.0f, _7392)) * (-6.283185482025146484375f)))) * _7319) + float3(_548, _548, sin(mad(mad(_7407, 6.283185482025146484375f, _7411 * (-6.283185482025146484375f)), 2097152.0f, mad(_7410, 6.283185482025146484375f, floor(mad(mad(_6879, _7406, -_7411), 2097152.0f, _7410)) * (-6.283185482025146484375f)))) * _7338)) + float3(_548, _548, sin(mad(mad(_7428, 6.283185482025146484375f, _7432 * (-6.283185482025146484375f)), 2097152.0f, mad(_7431, 6.283185482025146484375f, floor(mad(mad(_6914, _7427, -_7432), 2097152.0f, _7431)) * (-6.283185482025146484375f)))) * _7360)) + float3(_548, _548, sin(mad(mad(_7448, 6.283185482025146484375f, _7452 * (-6.283185482025146484375f)), 2097152.0f, mad(_7451, 6.283185482025146484375f, floor(mad(mad(_6948, _7447, -_7452), 2097152.0f, _7451)) * (-6.283185482025146484375f)))) * _7381));
    float _7467 = Material_Material_PreshaderBuffer[83].z * _5418;
    float _7468 = 2.0f / _7467;
    float _7469 = _5710 * _7468;
    float _7472 = mad(_5711, _7468, (_7468 * Material_Material_PreshaderBuffer[76].z) * _5985);
    float _7473 = floor(_7469);
    float _7483 = _6526 * 0.5f;
    float _7486 = _7467 * Material_Material_PreshaderBuffer[20].w;
    float _7487 = 2.0f / _7486;
    float _7488 = _6541 * _7487;
    float _7491 = mad(_6542, _7487, (_7487 * Material_Material_PreshaderBuffer[76].w) * _5985);
    float _7492 = floor(_7488);
    float _7502 = _7483 * Material_Material_PreshaderBuffer[22].z;
    float _7508 = _7486 * Material_Material_PreshaderBuffer[20].w;
    float _7509 = 2.0f / _7508;
    float _7510 = _6577 * _7509;
    float _7513 = mad(_6578, _7509, (_7509 * Material_Material_PreshaderBuffer[77].x) * _5985);
    float _7514 = floor(_7510);
    float _7524 = _7502 * Material_Material_PreshaderBuffer[22].z;
    float _7530 = 2.0f / (_7508 * Material_Material_PreshaderBuffer[20].w);
    float _7531 = _6612 * _7530;
    float _7534 = mad(_6613, _7530, (_7530 * Material_Material_PreshaderBuffer[77].y) * _5985);
    float _7535 = floor(_7531);
    float _7550 = Material_Material_PreshaderBuffer[86].w * _5502;
    float _7551 = 2.0f / _7550;
    float _7552 = _6675 * _7551;
    float _7555 = mad(_6676, _7551, (_7551 * Material_Material_PreshaderBuffer[77].z) * _5985);
    float _7556 = floor(_7552);
    float _7566 = _7483 * Material_Material_PreshaderBuffer[30].w;
    float _7569 = _7550 * Material_Material_PreshaderBuffer[20].w;
    float _7570 = 2.0f / _7569;
    float _7571 = _6710 * _7570;
    float _7574 = mad(_6711, _7570, (_7570 * Material_Material_PreshaderBuffer[77].w) * _5985);
    float _7575 = floor(_7571);
    float _7585 = _7566 * Material_Material_PreshaderBuffer[22].z;
    float _7591 = _7569 * Material_Material_PreshaderBuffer[20].w;
    float _7592 = 2.0f / _7591;
    float _7593 = _6746 * _7592;
    float _7596 = mad(_6747, _7592, (_7592 * Material_Material_PreshaderBuffer[78].x) * _5985);
    float _7597 = floor(_7593);
    float _7607 = _7585 * Material_Material_PreshaderBuffer[22].z;
    float _7613 = 2.0f / (_7591 * Material_Material_PreshaderBuffer[20].w);
    float _7614 = _6781 * _7613;
    float _7617 = mad(_6782, _7613, (_7613 * Material_Material_PreshaderBuffer[78].y) * _5985);
    float _7618 = floor(_7614);
    float _7628 = _7607 * Material_Material_PreshaderBuffer[22].z;
    float3 _7633 = (((float3(_548, _548, sin(mad(mad(_7469, 6.283185482025146484375f, _7473 * (-6.283185482025146484375f)), 2097152.0f, mad(_7472, 6.283185482025146484375f, floor(mad(mad(_5710, _7468, -_7473), 2097152.0f, _7472)) * (-6.283185482025146484375f)))) * _7483) + float3(_548, _548, sin(mad(mad(_7488, 6.283185482025146484375f, _7492 * (-6.283185482025146484375f)), 2097152.0f, mad(_7491, 6.283185482025146484375f, floor(mad(mad(_6541, _7487, -_7492), 2097152.0f, _7491)) * (-6.283185482025146484375f)))) * _7502)) + float3(_548, _548, sin(mad(mad(_7510, 6.283185482025146484375f, _7514 * (-6.283185482025146484375f)), 2097152.0f, mad(_7513, 6.283185482025146484375f, floor(mad(mad(_6577, _7509, -_7514), 2097152.0f, _7513)) * (-6.283185482025146484375f)))) * _7524)) + float3(_548, _548, sin(mad(mad(_7531, 6.283185482025146484375f, _7535 * (-6.283185482025146484375f)), 2097152.0f, mad(_7534, 6.283185482025146484375f, floor(mad(mad(_6612, _7530, -_7535), 2097152.0f, _7534)) * (-6.283185482025146484375f)))) * (_7524 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_548, _548, sin(mad(mad(_7552, 6.283185482025146484375f, _7556 * (-6.283185482025146484375f)), 2097152.0f, mad(_7555, 6.283185482025146484375f, floor(mad(mad(_6675, _7551, -_7556), 2097152.0f, _7555)) * (-6.283185482025146484375f)))) * _7566) + float3(_548, _548, sin(mad(mad(_7571, 6.283185482025146484375f, _7575 * (-6.283185482025146484375f)), 2097152.0f, mad(_7574, 6.283185482025146484375f, floor(mad(mad(_6710, _7570, -_7575), 2097152.0f, _7574)) * (-6.283185482025146484375f)))) * _7585)) + float3(_548, _548, sin(mad(mad(_7593, 6.283185482025146484375f, _7597 * (-6.283185482025146484375f)), 2097152.0f, mad(_7596, 6.283185482025146484375f, floor(mad(mad(_6746, _7592, -_7597), 2097152.0f, _7596)) * (-6.283185482025146484375f)))) * _7607)) + float3(_548, _548, sin(mad(mad(_7614, 6.283185482025146484375f, _7618 * (-6.283185482025146484375f)), 2097152.0f, mad(_7617, 6.283185482025146484375f, floor(mad(mad(_6781, _7613, -_7618), 2097152.0f, _7617)) * (-6.283185482025146484375f)))) * _7628));
    float _7634 = Material_Material_PreshaderBuffer[90].x * _5502;
    float _7635 = 2.0f / _7634;
    float _7636 = _6845 * _7635;
    float _7639 = mad(_6846, _7635, (_7635 * Material_Material_PreshaderBuffer[77].z) * _5985);
    float _7640 = floor(_7636);
    float _7652 = _7634 * Material_Material_PreshaderBuffer[20].w;
    float _7653 = 2.0f / _7652;
    float _7654 = _6879 * _7653;
    float _7657 = mad(_6880, _7653, (_7653 * Material_Material_PreshaderBuffer[77].w) * _5985);
    float _7658 = floor(_7654);
    float _7673 = _7652 * Material_Material_PreshaderBuffer[20].w;
    float _7674 = 2.0f / _7673;
    float _7675 = _6914 * _7674;
    float _7678 = mad(_6915, _7674, (_7674 * Material_Material_PreshaderBuffer[78].x) * _5985);
    float _7679 = floor(_7675);
    float _7694 = 2.0f / (_7673 * Material_Material_PreshaderBuffer[20].w);
    float _7695 = _6948 * _7694;
    float _7698 = mad(_6949, _7694, (_7694 * Material_Material_PreshaderBuffer[78].y) * _5985);
    float _7699 = floor(_7695);
    float3 _7713 = _7633 + (((float3(_548, _548, sin(mad(mad(_7636, 6.283185482025146484375f, _7640 * (-6.283185482025146484375f)), 2097152.0f, mad(_7639, 6.283185482025146484375f, floor(mad(mad(_6845, _7635, -_7640), 2097152.0f, _7639)) * (-6.283185482025146484375f)))) * _7566) + float3(_548, _548, sin(mad(mad(_7654, 6.283185482025146484375f, _7658 * (-6.283185482025146484375f)), 2097152.0f, mad(_7657, 6.283185482025146484375f, floor(mad(mad(_6879, _7653, -_7658), 2097152.0f, _7657)) * (-6.283185482025146484375f)))) * _7585)) + float3(_548, _548, sin(mad(mad(_7675, 6.283185482025146484375f, _7679 * (-6.283185482025146484375f)), 2097152.0f, mad(_7678, 6.283185482025146484375f, floor(mad(mad(_6914, _7674, -_7679), 2097152.0f, _7678)) * (-6.283185482025146484375f)))) * _7607)) + float3(_548, _548, sin(mad(mad(_7695, 6.283185482025146484375f, _7699 * (-6.283185482025146484375f)), 2097152.0f, mad(_7698, 6.283185482025146484375f, floor(mad(mad(_6948, _7694, -_7699), 2097152.0f, _7698)) * (-6.283185482025146484375f)))) * _7628));
    float3 _7718 = mad(_3520, Material_Material_PreshaderBuffer[59].x.xxx, (_4895 + (_5160 + (_5417 + _5666))) + (_6970 + (_7219 + (_7466 + _7713))));
    float _7719 = _7718.z;
    float _7737 = clamp(mad(clamp(mad(_7719, MaterialCollection0_MaterialCollection0_Vectors[0].y, -Material_Material_PreshaderBuffer[90].y) * Material_Material_PreshaderBuffer[91].x, 0.0f, 1.0f), Material_Material_PreshaderBuffer[91].y, -Material_Material_PreshaderBuffer[91].z) * Material_Material_PreshaderBuffer[92].y, 0.0f, 1.0f);
    float3 _7739 = mad(_7719.xxx, in_var_TEXCOORD11_centroid.xyz, _643);
    float3 _7740 = ddx(View_View_ViewTilePosition);
    float3 _7742 = ddx(_7739);
    float3 _7744 = ddy(View_View_ViewTilePosition);
    float3 _7746 = ddy(_7739);
    float3 _7750 = ddx(View_View_ViewTilePosition);
    float3 _7752 = ddx(_643);
    float3 _7754 = ddy(View_View_ViewTilePosition);
    float3 _7756 = ddy(_643);
    float3 _7759 = normalize(cross((_7750 * 2097152.0f) + _7752, (_7754 * 2097152.0f) + _7756));
    float3 _7765 = lerp((normalize(cross((_7740 * 2097152.0f) + _7742, (_7744 * 2097152.0f) + _7746)) - _7759) + in_var_TEXCOORD11_centroid.xyz, float3(0.0f, 0.0f, 1.0f), Material_Material_PreshaderBuffer[92].w.xxx);
    float3 _7772 = Material_Material_PreshaderBuffer[93].y.xxx;
    float3 _7785 = float3((View_View_ViewTilePosition * _7772).xy, 0.0f);
    float3 _7786 = float3((mad(_7765, Material_Material_PreshaderBuffer[93].x.xxx, _644) * _7772).xy, ((_1163 * Material_Material_PreshaderBuffer[93].w).xx + float2(1.0f, 0.0f)).x);
    float3 _7796 = 0.0f.xxx;
    float _7801 = 0.0f;
    _7796 = (((_7785 - floor(_7785 + ((_7786 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _7786) * 1.0f;
    _7801 = 0.0f;
    float _7799 = 1.0f;
    uint _7803 = 0u;
    [loop]
    for (; _7803 < 10u; )
    {
        float3 _7807 = frac(_7796);
        float _7809 = dot(floor(_7796), float3(19.0f, 47.0f, 101.0f));
        uint3 _7821 = (uint3(int3(int(_7809), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7822 = _7821.y;
        uint _7823 = _7821.z;
        uint _7826 = _7821.x + (_7822 * _7823);
        uint _7828 = _7822 + (_7823 * _7826);
        uint3 _7833 = uint3(0u, 0u, 0u);
        _7833.x = _7826 + (_7828 * (_7823 + (_7826 * _7828)));
        uint3 _7834 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _7847 = (uint3(int3(int(_7809 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7848 = _7847.y;
        uint _7849 = _7847.z;
        uint _7852 = _7847.x + (_7848 * _7849);
        uint _7854 = _7848 + (_7849 * _7852);
        uint3 _7859 = uint3(0u, 0u, 0u);
        _7859.x = _7852 + (_7854 * (_7849 + (_7852 * _7854)));
        uint3 _7872 = (uint3(int3(int(_7809 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7873 = _7872.y;
        uint _7874 = _7872.z;
        uint _7877 = _7872.x + (_7873 * _7874);
        uint _7879 = _7873 + (_7874 * _7877);
        uint3 _7884 = uint3(0u, 0u, 0u);
        _7884.x = _7877 + (_7879 * (_7874 + (_7877 * _7879)));
        uint3 _7897 = (uint3(int3(int(_7809 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7898 = _7897.y;
        uint _7899 = _7897.z;
        uint _7902 = _7897.x + (_7898 * _7899);
        uint _7904 = _7898 + (_7899 * _7902);
        uint3 _7909 = uint3(0u, 0u, 0u);
        _7909.x = _7902 + (_7904 * (_7899 + (_7902 * _7904)));
        uint3 _7922 = (uint3(int3(int(_7809 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7923 = _7922.y;
        uint _7924 = _7922.z;
        uint _7927 = _7922.x + (_7923 * _7924);
        uint _7929 = _7923 + (_7924 * _7927);
        uint3 _7934 = uint3(0u, 0u, 0u);
        _7934.x = _7927 + (_7929 * (_7924 + (_7927 * _7929)));
        uint3 _7947 = (uint3(int3(int(_7809 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7948 = _7947.y;
        uint _7949 = _7947.z;
        uint _7952 = _7947.x + (_7948 * _7949);
        uint _7954 = _7948 + (_7949 * _7952);
        uint3 _7959 = uint3(0u, 0u, 0u);
        _7959.x = _7952 + (_7954 * (_7949 + (_7952 * _7954)));
        uint3 _7972 = (uint3(int3(int(_7809 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7973 = _7972.y;
        uint _7974 = _7972.z;
        uint _7977 = _7972.x + (_7973 * _7974);
        uint _7979 = _7973 + (_7974 * _7977);
        uint3 _7984 = uint3(0u, 0u, 0u);
        _7984.x = _7977 + (_7979 * (_7974 + (_7977 * _7979)));
        uint3 _7997 = (uint3(int3(int(_7809 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7998 = _7997.y;
        uint _7999 = _7997.z;
        uint _8002 = _7997.x + (_7998 * _7999);
        uint _8004 = _7998 + (_7999 * _8002);
        uint3 _8009 = uint3(0u, 0u, 0u);
        _8009.x = _8002 + (_8004 * (_7999 + (_8002 * _8004)));
        float4 _8020 = float4(_7807, 0.0f);
        float4 _8026 = ((_8020 * _8020) * _8020) * mad(_8020, (_8020 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _8027 = _8026.x;
        float _8030 = _8026.y;
        float _8037 = abs(lerp(lerp(lerp(dot(mad(float3((_7833 >> _7834).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7807), dot(mad(float3((_7859 >> _7834).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7807 - float3(1.0f, 0.0f, 0.0f)), _8027), lerp(dot(mad(float3((_7884 >> _7834).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7807 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_7909 >> _7834).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7807 - float3(1.0f, 1.0f, 0.0f)), _8027), _8030), lerp(lerp(dot(mad(float3((_7934 >> _7834).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7807 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_7959 >> _7834).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7807 - float3(1.0f, 0.0f, 1.0f)), _8027), lerp(dot(mad(float3((_7984 >> _7834).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7807 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_8009 >> _7834).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7807 - 1.0f.xxx), _8027), _8030), _8026.z));
        float _7802 = mad(_8037, _7799, _7801);
        _7796 *= 2.0f;
        _7799 *= 0.5f;
        _7801 = _7802;
        _7803++;
        continue;
    }
    float _8041 = -_7737;
    float _8047 = clamp(mad(mad(_8041, Material_Material_PreshaderBuffer[94].x, lerp(0.0f, 1.0f, _7801)) / mad(_8041, Material_Material_PreshaderBuffer[94].x, mad(_7737, Material_Material_PreshaderBuffer[94].x, 1.0f)), -1.0f, 1.0f), 0.0f, 1.0f);
    float _8056 = clamp(lerp(Material_Material_PreshaderBuffer[94].z, Material_Material_PreshaderBuffer[94].y, (_8047 <= 0.0f) ? 0.0f : pow(_8047, 2.0f)), 0.0f, 1.0f);
    float _8057 = _7737 * _8056;
    float3 _8060 = Material_Material_PreshaderBuffer[94].w.xxx;
    float3 _8061 = View_View_ViewTilePosition * _8060;
    float3 _8062 = _644 * _8060;
    float3 _8073 = 0.0f.xxx;
    float3 _8076 = 0.0f.xxx;
    float _8080 = 0.0f;
    _8073 = _540;
    _8076 = mad(_644, _8060, mad(View_View_ViewTilePosition, _8060, -floor(mad(View_View_ViewTilePosition, _8060, (_8062 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _8080 = 0.0f;
    float3 _8077 = 0.0f.xxx;
    float _8079 = 0.0f;
    float _8081 = 0.0f;
    float3 _8074 = 0.0f.xxx;
    float _8078 = 1.0f;
    uint _8082 = 0u;
    [loop]
    for (; _8082 < 1u; _8073 = _8074, _8076 = _8077, _8078 = _8079, _8080 = _8081, _8082++)
    {
        float3 _8087 = frac(_8076);
        float3 _8088 = floor(_8076);
        float3 _8089 = _8073;
        _8089.x = 0.0f;
        float4 _8091 = 0.0f.xxxx;
        _8091 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _8074 = _8089;
        float3 _8094 = 0.0f.xxx;
        float4 _8092 = 0.0f.xxxx;
        float3 _8101 = 0.0f.xxx;
        for (; _8074.x <= 1.0f; _8094 = _8101, _8094.x = _8101.x + 1.0f, _8091 = _8092, _8074 = _8094)
        {
            float3 _8099 = _8074;
            _8099.y = 0.0f;
            _8101 = _8099;
            _8092 = _8091;
            float3 _8102 = 0.0f.xxx;
            float4 _8104 = 0.0f.xxxx;
            float3 _8113 = 0.0f.xxx;
            for (; _8101.y <= 1.0f; _8102 = _8113, _8102.y = _8113.y + 1.0f, _8101 = _8102, _8092 = _8104)
            {
                float3 _8109 = _8101;
                _8109.z = 0.0f;
                _8104 = _8092;
                _8113 = _8109;
                for (; _8113.z <= 1.0f; )
                {
                    float3 _8118 = _8088 + _8113;
                    uint3 _8123 = (uint3(int3(float3(_8118.x, _8118.y, _8118.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _8124 = _8123.y;
                    uint _8125 = _8123.z;
                    uint _8128 = _8123.x + (_8124 * _8125);
                    uint _8130 = _8124 + (_8125 * _8128);
                    uint _8132 = _8125 + (_8128 * _8130);
                    uint _8134 = _8128 + (_8130 * _8132);
                    uint3 _8135 = _8123;
                    _8135.x = _8134;
                    uint _8137 = _8130 + (_8132 * _8134);
                    _8135.y = _8137;
                    _8135.z = _8132 + (_8134 * _8137);
                    float3 _8149 = _8087 - (_8113 + (normalize(mad(float3(_8135 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _8114 = _8113;
                    _8114.z = _8113.z + 1.0f;
                    _8104 = float4(0.0f, 0.0f, 0.0f, min(_8104.w, dot(_8149, _8149)));
                    _8113 = _8114;
                    continue;
                }
            }
        }
        _8081 = mad(abs(mad(sqrt(_8091.w), 2.0f, -1.0f)), _8078, _8080);
        _8077 = _8076 * 2.0f;
        _8079 = _8078 * 0.5f;
    }
    float3 _8175 = 0.0f.xxx;
    float3 _8178 = 0.0f.xxx;
    float _8182 = 0.0f;
    _8175 = _540;
    _8178 = mad(_8062, 1.2000000476837158203125f.xxx, mad(_8061, 1.2000000476837158203125f.xxx, -floor(mad(_8061, 1.2000000476837158203125f.xxx, ((_8062 * 1.2000000476837158203125f.xxx) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _8182 = 0.0f;
    float3 _8179 = 0.0f.xxx;
    float _8181 = 0.0f;
    float _8183 = 0.0f;
    float3 _8176 = 0.0f.xxx;
    float _8180 = 1.0f;
    uint _8184 = 0u;
    [loop]
    for (; _8184 < 1u; _8175 = _8176, _8178 = _8179, _8180 = _8181, _8182 = _8183, _8184++)
    {
        float3 _8189 = frac(_8178);
        float3 _8190 = floor(_8178);
        float3 _8191 = _8175;
        _8191.x = 0.0f;
        float4 _8193 = 0.0f.xxxx;
        _8193 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _8176 = _8191;
        float3 _8196 = 0.0f.xxx;
        float4 _8194 = 0.0f.xxxx;
        float3 _8203 = 0.0f.xxx;
        for (; _8176.x <= 1.0f; _8196 = _8203, _8196.x = _8203.x + 1.0f, _8193 = _8194, _8176 = _8196)
        {
            float3 _8201 = _8176;
            _8201.y = 0.0f;
            _8203 = _8201;
            _8194 = _8193;
            float3 _8204 = 0.0f.xxx;
            float4 _8206 = 0.0f.xxxx;
            float3 _8215 = 0.0f.xxx;
            for (; _8203.y <= 1.0f; _8204 = _8215, _8204.y = _8215.y + 1.0f, _8203 = _8204, _8194 = _8206)
            {
                float3 _8211 = _8203;
                _8211.z = 0.0f;
                _8206 = _8194;
                _8215 = _8211;
                for (; _8215.z <= 1.0f; )
                {
                    float3 _8220 = _8190 + _8215;
                    uint3 _8225 = (uint3(int3(float3(_8220.x, _8220.y, _8220.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _8226 = _8225.y;
                    uint _8227 = _8225.z;
                    uint _8230 = _8225.x + (_8226 * _8227);
                    uint _8232 = _8226 + (_8227 * _8230);
                    uint _8234 = _8227 + (_8230 * _8232);
                    uint _8236 = _8230 + (_8232 * _8234);
                    uint3 _8237 = _8225;
                    _8237.x = _8236;
                    uint _8239 = _8232 + (_8234 * _8236);
                    _8237.y = _8239;
                    _8237.z = _8234 + (_8236 * _8239);
                    float3 _8251 = _8189 - (_8215 + (normalize(mad(float3(_8237 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _8216 = _8215;
                    _8216.z = _8215.z + 1.0f;
                    _8206 = float4(0.0f, 0.0f, 0.0f, min(_8206.w, dot(_8251, _8251)));
                    _8215 = _8216;
                    continue;
                }
            }
        }
        _8183 = mad(abs(mad(sqrt(_8193.w), 2.0f, -1.0f)), _8180, _8182);
        _8179 = _8178 * 2.0f;
        _8181 = _8180 * 0.5f;
    }
    float _8266 = clamp(lerp(-1.0f, 1.0f, _8080), 0.0f, 1.0f) + clamp(lerp(-1.0f, 1.0f, _8182), 0.0f, 1.0f);
    float _8271 = clamp(_776 * mad(mad(_889, _1445, -_1655), Material_Material_PreshaderBuffer[7].y, mad(_7737, _8056, -_8266)), 0.0f, 1.0f);
    float3 _8279 = mad(_3520.z.xxx, in_var_TEXCOORD11_centroid.xyz, _643);
    float _8296 = max(abs(1.0f - max(0.0f, dot(_7765, _660))), 9.9999997473787516355514526367188e-05f);
    bool _8299 = _8296 <= 0.0f;
    float3 _8326 = mad((_776 * (mad(_1446, _1655, _1446) + mad(_8057, _8266, _8057))).xxx, in_var_TEXCOORD11_centroid.xyz, _643);
    float3 _8327 = ddx(View_View_ViewTilePosition);
    float3 _8329 = ddx(_8326);
    float3 _8331 = ddy(View_View_ViewTilePosition);
    float3 _8333 = ddy(_8326);
    float3 _8340 = lerp(lerp(lerp((normalize(cross((ddx(View_View_ViewTilePosition) * 2097152.0f) + ddx(_8279), (ddy(View_View_ViewTilePosition) * 2097152.0f) + ddy(_8279))) - _7759) + in_var_TEXCOORD11_centroid.xyz, lerp(_7765, float3(0.0f, 0.0f, 1.0f), lerp(Material_Material_PreshaderBuffer[96].z, Material_Material_PreshaderBuffer[96].y, mad(_8299 ? 0.0f : pow(_8296, Material_Material_PreshaderBuffer[95].z), Material_Material_PreshaderBuffer[96].x, Material_Material_PreshaderBuffer[95].w)).xxx), _775.xxx), float3(0.0f, 0.0f, 1.0f), lerp(Material_Material_PreshaderBuffer[96].w, 0.0f, _775).xxx), (normalize(cross((_8327 * 2097152.0f) + _8329, (_8331 * 2097152.0f) + _8333)) - _7759) + in_var_TEXCOORD11_centroid.xyz, _1446.xxx);
    float3 _8372 = Material_Material_PreshaderBuffer[107].xyz + Material_Material_PreshaderBuffer[106].xyz;
    if ((lerp(1.0f, 0.0f, clamp(mad(sqrt(mad(mad(_681, _681 * 4.76837158203125e-07f, mad(_671, _671 * 4.76837158203125e-07f, _675 * (_675 * 4.76837158203125e-07f))), 4.76837158203125e-07f, mad(_680, mad(_681, 9.5367431640625e-07f, _680), mad(_670, mad(_671, 9.5367431640625e-07f, _670), _674 * mad(_675, 9.5367431640625e-07f, _674))))) * (1.0f / max(9.9999997473787516355514526367188e-06f, MaterialCollection0_MaterialCollection0_Vectors[1].x)), -209715200000.0f, 100000.0f), 0.0f, 1.0f)) - 0.33329999446868896484375f) < 0.0f)
    {
        discard;
    }
    float _8390 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    uint _8391 = in_var_PRIMITIVE_ID * 41u;
    uint _8408 = (((1u | (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8391].x) & 512u) != 0u) ? 32u : 0u)) | (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8391].x) & 256u) != 0u) ? 64u : 0u)) & 4294967288u) | 4u;
    float _8417 = mad(clamp(lerp(lerp(Material_Material_PreshaderBuffer[105].x, Material_Material_PreshaderBuffer[103].w, mad(_8299 ? 0.0f : pow(_8296, Material_Material_PreshaderBuffer[104].y), Material_Material_PreshaderBuffer[104].w, Material_Material_PreshaderBuffer[104].z)), 1.0f, _8271), 0.0f, 1.0f), View_View_SpecularOverrideParameter.w, View_View_SpecularOverrideParameter.x);
    float4 _8418 = 0.0f.xxxx;
    _8418.y = _8417;
    float _8425 = clamp(max(View_View_MinRoughness, mad(lerp(Material_Material_PreshaderBuffer[95].y, Material_Material_PreshaderBuffer[95].x, _8271), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x)), 0.0f, 1.0f);
    _8418.z = _8425;
    float _8427 = clamp(lerp(Material_Material_PreshaderBuffer[97].x, 1.0f, _8271), 0.0f, 1.0f);
    _8418.w = _8427;
    float3 _8430 = clamp((Material_Material_PreshaderBuffer[107].xyz / _8372).xyz, 0.0f.xxx, 1.0f.xxx);
    float4 _8431 = float4(_8430.x, _8430.y, _8430.z, 0.0f.xxxx.w);
    _8431.w = 0.0f;
    float3 _8437 = mad(clamp(lerp(0.0f, Material_Material_PreshaderBuffer[105].y, _8271).xxx.xyz, 0.0f.xxx, 1.0f.xxx), View_View_DiffuseOverrideParameter.www, View_View_DiffuseOverrideParameter.xyz).xyz;
    float3 _8438 = normalize(_8340);
    float3 _8447 = 0.0f.xxx;
    float3 _8448 = 0.0f.xxx;
    [branch]
    if (!((asuint(dot(_8438, _8438)) & 2139095040u) != 2139095040u))
    {
        float3 _8446 = normalize(in_var_TEXCOORD11_centroid.xyz);
        _8447 = _8446;
        _8448 = _8446;
    }
    else
    {
        _8447 = _8340;
        _8448 = _8438;
    }
    float _8449 = 1.0f - _8427;
    bool _8457 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _8463 = 0.0f;
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8391].x) & 2u) != 0u) && _8457)
    {
        _8463 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _8463 = 1.0f;
    }
    float _8513 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8391].x) & 4u) != 0u)
    {
        float3 _8481 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _643, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _8492 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_8481.x), int(_8481.y), int(_8481.z), 0).xyz, 0)));
        _8513 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_8492.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_8481 / _8492.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _8513 = _8463;
    }
    float4 _8514 = float4(_8513, 1.0f, 1.0f, 1.0f);
    bool _8516 = all(bool4(_8514.x == 0.0f.xxxx.x, _8514.y == 0.0f.xxxx.y, _8514.z == 0.0f.xxxx.z, _8514.w == 0.0f.xxxx.w));
    bool _8518 = all(bool4(_8514.x == 1.0f.xxxx.x, _8514.y == 1.0f.xxxx.y, _8514.z == 1.0f.xxxx.z, _8514.w == 1.0f.xxxx.w));
    uint _8537 = 0u;
    if ((!_8516) && (!_8518))
    {
        _8537 = _8408 | 8u;
    }
    else
    {
        uint _8535 = 0u;
        if (_8516)
        {
            _8535 = (_8408 | 0u) | 16u;
        }
        else
        {
            uint _8532 = 0u;
            if (_8518)
            {
                _8532 = (_8408 | 0u) | 0u;
            }
            else
            {
                _8532 = _8408;
            }
            _8535 = _8532;
        }
        _8537 = _8535;
    }
    float _8538 = 0.07999999821186065673828125f * _8417;
    float3 _8543 = (_8437 * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _8548 = (_8538.xxx * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _8551 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _8556 = 0.0f.xxx;
    if (_8551)
    {
        _8556 = _8543 + (_8548 * 0.449999988079071044921875f);
    }
    else
    {
        _8556 = _8543;
    }
    bool3 _8557 = _8551.xxx;
    float3 _8558 = float3(_8557.x ? 0.0f.xxx.x : _8548.x, _8557.y ? 0.0f.xxx.y : _8548.y, _8557.z ? 0.0f.xxx.z : _8548.z);
    float3 _8620 = 0.0f.xxx;
    if (_8457)
    {
        float3 _8572 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _643, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _8576 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _8572);
        float4 _8580 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _8572);
        float4 _8583 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _8572);
        float4 _8601 = 0.0f.xxxx;
        _8601.y = (-0.48860299587249755859375f) * _8448.y;
        _8601.z = 0.48860299587249755859375f * _8448.z;
        _8601.w = (-0.48860299587249755859375f) * _8448.x;
        _8601.x = 0.886227548122406005859375f;
        float3 _8610 = _8601.yzw * 2.094395160675048828125f;
        float4 _8611 = float4(_8601.x, _8610.x, _8610.y, _8610.z);
        float3 _8613 = 0.0f.xxx;
        _8613.x = dot(float4(_8576.x, _8580.x, _8583.x, _8576.w), _8611);
        _8613.y = dot(float4(_8576.y, _8580.y, _8583.y, _8580.w), _8611);
        _8613.z = dot(float4(_8576.z, _8580.z, _8583.zw), _8611);
        _8620 = max(0.0f.xxx, _8613) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _8620 = 0.0f.xxx;
    }
    bool _8625 = OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u;
    float3 _8698 = 0.0f.xxx;
    if (_8625)
    {
        float _8650 = 0.0f;
        float _8651 = 0.0f;
        float3 _8652 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _8640 = 0.0f.xxx;
            float _8641 = 0.0f;
            if (_8457)
            {
                _8640 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _8641 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _8640 = _8448;
                _8641 = 1.0f;
            }
            float _8644 = mad(_8641 - 1.0f, 1.0f - _8641, 1.0f);
            _8650 = lerp(clamp(dot(_8640, _8448), 0.0f, 1.0f), 1.0f, _8644);
            _8651 = _8641;
            _8652 = lerp(_8640, _8448, _8644.xxx);
        }
        else
        {
            _8650 = 1.0f;
            _8651 = 1.0f;
            _8652 = _8448;
        }
        float4 _8656 = float4(_8652, 1.0f);
        float3 _8660 = 0.0f.xxx;
        _8660.x = dot(View_SkyIrradianceEnvironmentMap[0u], _8656);
        _8660.y = dot(View_SkyIrradianceEnvironmentMap[1u], _8656);
        _8660.z = dot(View_SkyIrradianceEnvironmentMap[2u], _8656);
        float4 _8671 = _8656.xyzz * _8656.yzzx;
        float3 _8675 = 0.0f.xxx;
        _8675.x = dot(View_SkyIrradianceEnvironmentMap[3u], _8671);
        _8675.y = dot(View_SkyIrradianceEnvironmentMap[4u], _8671);
        _8675.z = dot(View_SkyIrradianceEnvironmentMap[5u], _8671);
        _8698 = (max(0.0f.xxx, (_8660 + _8675) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_8652.x, _8652.x, -(_8652.y * _8652.y)))) * View_View_SkyLightColor.xyz) * (_8651 * _8650);
    }
    else
    {
        _8698 = 0.0f.xxx;
    }
    float3 _8699 = mad(_8620, View_View_PrecomputedIndirectLightingColorScale, _8698);
    float3 _8714 = _8556 * _8427;
    uint2 _8741 = uint2(_626 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    bool _8758 = true && (SingleLayerWater_SingleLayerWater_bSeparateMainDirLightLuminance != 0u);
    float4 _8772 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _8772 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(0.0f.xx)), 0).xy, 0));
    }
    else
    {
        _8772 = 1.0f.xxxx;
    }
    float4 _8773 = _8772 * _8772;
    uint _8776 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8391].x);
    uint _8789 = (uint((_8776 & 2048u) != 0u) | (uint((_8776 & 4096u) != 0u) << 1u)) | (uint((_8776 & 8192u) != 0u) << 2u);
    float4 _9897 = 0.0f.xxxx;
    float3 _9898 = 0.0f.xxx;
    float _9899 = 0.0f;
    float4 _9900 = 0.0f.xxxx;
    float4 _9901 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        float4 _8814 = float4(_548, float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 2u) >> 1u), float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 4u) >> 2u), float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 8u) >> 3u));
        _8814.x = 1.0f;
        float4 _8818 = _8514;
        _8818.x = 1.0f;
        float _8897 = 0.0f;
        if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _8826 = _646.xxxx;
            float4 _8828 = float4(bool4(_8826.x >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.x, _8826.y >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.y, _8826.z >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.z, _8826.w >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _8836 = uint(((_8828.x + _8828.y) + _8828.z) + _8828.w);
            float _8896 = 0.0f;
            if (_8836 < OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _8846 = mul(float4(_642, 1.0f), OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_8836]);
                float2 _8850 = _8846.xy / _8846.w.xx;
                bool2 _8854 = bool2(_8850.x >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8836].xy.x, _8850.y >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8836].xy.y);
                bool2 _8856 = bool2(_8850.x <= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8836].zw.x, _8850.y <= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8836].zw.y);
                float _8895 = 0.0f;
                if (all(bool2(_8854.x && _8856.x, _8854.y && _8856.y)))
                {
                    float2 _8874 = mad(_8850, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy, (-0.5f).xx);
                    float2 _8875 = frac(_8874);
                    float4 _8886 = clamp((OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(OpaqueBasePass_Shared_Forward_ShadowmapSampler, (floor(_8874) + 1.0f.xx) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - mad(1.0f - _8846.z, 4000.0f, -1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _8890 = lerp(_8886.wx, _8886.zy, _8875.xx);
                    _8895 = lerp(_8890.x, _8890.y, _8875.y);
                }
                else
                {
                    _8895 = 1.0f;
                }
                _8896 = _8895;
            }
            else
            {
                _8896 = 1.0f;
            }
            _8897 = _8896;
        }
        else
        {
            _8897 = 1.0f;
        }
        float _9584 = 0.0f;
        [branch]
        if ((!(SingleLayerWater_SingleLayerWater_bMainDirectionalLightVSMFiltering != 0u)) && (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM != (-1)))
        {
            float _9582 = 0.0f;
            do
            {
                float _8907 = max(0.0f, 0.0f);
                uint _8908 = uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM);
                uint _8909 = _8908 * 336u;
                uint _8911 = (_8909 + 96u) >> 2u;
                float4x4 _8925 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                _8925[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8911 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8911 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8911 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8911 + 3u) * 4 + 0)));
                uint _8927 = (_8909 + 128u) >> 2u;
                float4x4 _8941 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                _8941[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8927 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8927 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8927 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8927 + 3u) * 4 + 0)));
                uint _8943 = (_8909 + 144u) >> 2u;
                _8941[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8943 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8943 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8943 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8943 + 3u) * 4 + 0)));
                uint _8959 = (_8909 + 160u) >> 2u;
                _8941[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8959 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8959 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8959 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8959 + 3u) * 4 + 0)));
                uint _8975 = (_8909 + 176u) >> 2u;
                _8941[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8975 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8975 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8975 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8975 + 3u) * 4 + 0)));
                uint _8991 = (_8909 + 256u) >> 2u;
                float3 _9001 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_8991 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8991 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8991 + 2u) * 4 + 0)));
                uint _9003 = (_8909 + 268u) >> 2u;
                uint _9007 = (_8909 + 272u) >> 2u;
                uint _9019 = (_8909 + 288u) >> 2u;
                if (VirtualShadowMap_ProjectionData.Load(_9003 * 4 + 0) == 0u)
                {
                    int _9254 = max(0, (int(floor(log2(length(((View_View_ViewTilePosition - (-_9001)) * 2097152.0f) + (_643 - (-asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9019 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9019 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9019 + 2u) * 4 + 0))))))) + asfloat(VirtualShadowMap_ProjectionData.Load(((_8909 + 300u) >> 2u) * 4 + 0)))) - int(VirtualShadowMap_ProjectionData.Load(((_8909 + 312u) >> 2u) * 4 + 0))));
                    if (_9254 < int(VirtualShadowMap_ProjectionData.Load(((_8909 + 316u) >> 2u) * 4 + 0)))
                    {
                        int _9258 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM + _9254;
                        uint _9259 = uint(_9258);
                        uint _9260 = _9259 * 336u;
                        uint _9262 = (_9260 + 96u) >> 2u;
                        uint _9277 = (_9260 + 112u) >> 2u;
                        uint _9286 = (_9260 + 128u) >> 2u;
                        float4x4 _9300 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9300[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9286 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9286 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9286 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9286 + 3u) * 4 + 0)));
                        uint _9302 = (_9260 + 144u) >> 2u;
                        _9300[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9302 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9302 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9302 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9302 + 3u) * 4 + 0)));
                        uint _9318 = (_9260 + 160u) >> 2u;
                        _9300[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9318 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9318 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9318 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9318 + 3u) * 4 + 0)));
                        uint _9334 = (_9260 + 176u) >> 2u;
                        _9300[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9334 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9334 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9334 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9334 + 3u) * 4 + 0)));
                        uint _9350 = (_9260 + 256u) >> 2u;
                        uint _9362 = (_9260 + 272u) >> 2u;
                        float4 _9381 = mul(float4(((View_View_ViewTilePosition + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9350 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9350 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9350 + 2u) * 4 + 0)))) * 2097152.0f) + (_643 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9362 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9362 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9362 + 2u) * 4 + 0)))), 1.0f), _9300);
                        float2 _9382 = _9381.xy;
                        uint2 _9384 = uint2(_9382 * 128.0f);
                        uint _9400 = 0u;
                        do
                        {
                            if (uint(int(_9259)) < 8192u)
                            {
                                _9400 = _9259;
                                break;
                            }
                            _9400 = (8192u + ((_9259 - 8192u) * 21845u)) + (_9384.x + (_9384.y << 7u));
                            break;
                        } while(false);
                        uint _9408 = (VirtualShadowMap_PageTable[_9400] >> 20u) & 63u;
                        bool _9410 = (VirtualShadowMap_PageTable[_9400] & 134217728u) != 0u;
                        float _9573 = 0.0f;
                        bool _9574 = false;
                        if (_9410)
                        {
                            float _9549 = 0.0f;
                            float _9550 = 0.0f;
                            uint2 _9551 = uint2(0u, 0u);
                            uint2 _9552 = uint2(0u, 0u);
                            bool _9553 = false;
                            if (_9408 > 0u)
                            {
                                uint _9423 = (_9260 + 304u) >> 2u;
                                uint _9426 = _9423 + 1u;
                                uint _9431 = uint(int(_9259 + _9408));
                                uint _9434 = ((_9431 * 336u) + 304u) >> 2u;
                                int _9446 = int(_9408);
                                uint2 _9454 = ((_9384 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_9423 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_9426 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_9434 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9434 + 1u) * 4 + 0)))) << (_9446.xx & int2(31, 31)))) >> (_9408.xx & uint2(31u, 31u));
                                uint2 _9455 = _9454 * uint2(128u, 128u);
                                uint _9469 = uint(_9258 + _9446) * 336u;
                                uint _9471 = (_9469 + 112u) >> 2u;
                                uint _9486 = (_9469 + 304u) >> 2u;
                                float _9507 = (_9446 >= 0) ? (1.0f / float(1u << (uint(_9446) & 31u))) : float(1u << (uint(-_9446) & 31u));
                                uint _9536 = 0u;
                                do
                                {
                                    if (uint(int(_9431)) < 8192u)
                                    {
                                        _9536 = _9431;
                                        break;
                                    }
                                    _9536 = (8192u + ((_9431 - 8192u) * 21845u)) + (_9454.x + (_9454.y << 7u));
                                    break;
                                } while(false);
                                _9549 = _9507;
                                _9550 = mad(-_9507, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9277 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9277 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9277 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9277 + 3u) * 4 + 0))).z, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9471 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9471 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9471 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9471 + 3u) * 4 + 0))).z);
                                _9551 = clamp(uint2(((_9382 * _9507) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_9486 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9486 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_9423 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_9426 * 4 + 0)))) * _9507)) * 0.25f).xy) * 16384.0f), _9455, _9455 + uint2(127u, 127u));
                                _9552 = uint2(VirtualShadowMap_PageTable[_9536] & 1023u, (VirtualShadowMap_PageTable[_9536] >> 10u) & 1023u);
                                _9553 = ((VirtualShadowMap_PageTable[_9536] & 134217728u) != 0u) && (((VirtualShadowMap_PageTable[_9536] >> 20u) & 63u) == 0u);
                            }
                            else
                            {
                                _9549 = 1.0f;
                                _9550 = 0.0f;
                                _9551 = uint2(_9382 * 16384.0f);
                                _9552 = uint2(VirtualShadowMap_PageTable[_9400] & 1023u, (VirtualShadowMap_PageTable[_9400] >> 10u) & 1023u);
                                _9553 = _9410 && (_9408 == 0u);
                            }
                            float _9571 = 0.0f;
                            if (_9553)
                            {
                                int4 _9562 = int4(uint4((_9552 * uint2(128u, 128u)) + (_9551 & uint2(127u, 127u)), 0u, 0u));
                                _9571 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_9562.xyz, _9562.w)).x) - _9550) / _9549;
                            }
                            else
                            {
                                _9571 = 0.0f;
                            }
                            _9573 = _9571;
                            _9574 = _9553 ? true : false;
                        }
                        else
                        {
                            _9573 = 0.0f;
                            _9574 = false;
                        }
                        if (_9574)
                        {
                            _9582 = (mad(_8907, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9262 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9262 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9262 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9262 + 3u) * 4 + 0))).z, _9573) > _9381.z) ? 0.0f : 1.0f;
                            break;
                        }
                    }
                }
                else
                {
                    float3 _9054 = ((View_View_ViewTilePosition + _9001) * 2097152.0f) + (_643 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9007 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9007 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9007 + 2u) * 4 + 0))));
                    float4x4 _9167 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    int _9168 = 0;
                    float4x4 _9169 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    if (VirtualShadowMap_ProjectionData.Load(_9003 * 4 + 0) != 2u)
                    {
                        uint _9082 = 0u;
                        do
                        {
                            float _9060 = _9054.x;
                            float _9061 = abs(_9060);
                            float _9062 = _9054.y;
                            float _9063 = abs(_9062);
                            float _9065 = _9054.z;
                            float _9066 = abs(_9065);
                            if ((_9061 >= _9063) && (_9061 >= _9066))
                            {
                                _9082 = (_9060 > 0.0f) ? 0u : 1u;
                                break;
                            }
                            else
                            {
                                if (_9063 > _9066)
                                {
                                    _9082 = (_9062 > 0.0f) ? 2u : 3u;
                                    break;
                                }
                                else
                                {
                                    _9082 = (_9065 > 0.0f) ? 4u : 5u;
                                    break;
                                }
                                break; // unreachable workaround
                            }
                            break; // unreachable workaround
                        } while(false);
                        int _9084 = int(_8908 + _9082);
                        uint _9086 = uint(_9084) * 336u;
                        uint _9088 = (_9086 + 96u) >> 2u;
                        float4x4 _9102 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9102[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9088 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9088 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9088 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9088 + 3u) * 4 + 0)));
                        uint _9104 = (_9086 + 128u) >> 2u;
                        float4x4 _9118 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9118[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9104 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9104 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9104 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9104 + 3u) * 4 + 0)));
                        uint _9120 = (_9086 + 144u) >> 2u;
                        _9118[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9120 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9120 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9120 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9120 + 3u) * 4 + 0)));
                        uint _9136 = (_9086 + 160u) >> 2u;
                        _9118[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9136 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9136 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9136 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9136 + 3u) * 4 + 0)));
                        uint _9152 = (_9086 + 176u) >> 2u;
                        _9118[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9152 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9152 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9152 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9152 + 3u) * 4 + 0)));
                        _9167 = _9102;
                        _9168 = _9084;
                        _9169 = _9118;
                    }
                    else
                    {
                        _9167 = _8925;
                        _9168 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM;
                        _9169 = _8941;
                    }
                    float4 _9174 = mul(float4(_9054, 1.0f), _9169);
                    float _9175 = _9174.w;
                    float3 _9178 = _9174.xyz / _9175.xxx;
                    float2 _9179 = _9178.xy;
                    float _9232 = 0.0f;
                    bool _9233 = false;
                    do
                    {
                        bool _9189 = false;
                        uint _9182 = uint(_9168);
                        uint2 _9184 = uint2(_9179 * 128.0f);
                        uint _9200 = 0u;
                        do
                        {
                            _9189 = uint(int(_9182)) < 8192u;
                            if (_9189)
                            {
                                _9200 = _9182;
                                break;
                            }
                            _9200 = (8192u + ((_9182 - 8192u) * 21845u)) + (_9184.x + (_9184.y << 7u));
                            break;
                        } while(false);
                        if ((VirtualShadowMap_PageTable[_9200] & 134217728u) != 0u)
                        {
                            int4 _9225 = int4(uint4((uint2(VirtualShadowMap_PageTable[_9200] & 1023u, (VirtualShadowMap_PageTable[_9200] >> 10u) & 1023u) * uint2(128u, 128u)) + (uint2(_9179 * float(16384u >> ((_9189 ? 7u : ((VirtualShadowMap_PageTable[_9200] >> 20u) & 63u)) & 31u))) & uint2(127u, 127u)), 0u, 0u));
                            _9232 = asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_9225.xyz, _9225.w)).x);
                            _9233 = true;
                            break;
                        }
                        _9232 = 0.0f;
                        _9233 = false;
                        break;
                    } while(false);
                    if (_9233)
                    {
                        _9582 = ((_9232 - (((-_8907) * _9167[2].z) / _9175)) > _9178.z) ? 0.0f : 1.0f;
                        break;
                    }
                }
                _9582 = 1.0f;
                break;
            } while(false);
            _9584 = _8897 * _9582;
        }
        else
        {
            _9584 = _8897;
        }
        float _9591 = clamp(mad(_646, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
        float _9593 = lerp(_9584, lerp(1.0f, dot(_8818, _8814), dot(_8814, 1.0f.xxxx)), _9591 * _9591);
        float3 _9868 = 0.0f.xxx;
        float3 _9869 = 0.0f.xxx;
        [branch]
        if ((_9593 + min(_9593, 1.0f)) > 0.0f)
        {
            float _9599 = max(_8425, View_View_MinRoughness);
            float _9600 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _9603 = rsqrt(_9600);
            float3 _9604 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _9603;
            float _9605 = dot(_8448, _9604);
            float _9623 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _9612 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_9600 + 1.0f)), 0.0f, 1.0f));
                float _9622 = 0.0f;
                if (_9605 < _9612)
                {
                    float _9618 = _9612 + max(_9605, -_9612);
                    _9622 = (_9618 * _9618) / (4.0f * _9612);
                }
                else
                {
                    _9622 = _9605;
                }
                _9623 = _9622;
            }
            else
            {
                _9623 = _9605;
            }
            float _9624 = clamp(_9623, 0.0f, 1.0f);
            float _9625 = max(_9599, View_View_MinRoughness);
            float _9630 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _9603) * mad(-_9625, _9625, 1.0f), 0.0f, 1.0f);
            uint _9637 = 0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u);
            float _9638 = dot(_8448, _660);
            float _9639 = dot(_660, _9604);
            float _9641 = rsqrt(mad(2.0f, _9639, 2.0f));
            float _9644 = clamp((_9605 + _9638) * _9641, 0.0f, 1.0f);
            float _9646 = clamp(mad(_9641, _9639, _9641), 0.0f, 1.0f);
            bool _9647 = _9630 > 0.0f;
            float _9726 = 0.0f;
            float _9727 = 0.0f;
            if (_9647)
            {
                float _9652 = sqrt(mad(-_9630, _9630, 1.0f));
                float _9653 = 2.0f * _9605;
                float _9654 = -_9639;
                float _9655 = mad(_9653, _9638, _9654);
                float _9724 = 0.0f;
                float _9725 = 0.0f;
                if (_9655 >= _9652)
                {
                    _9724 = 1.0f;
                    _9725 = abs(_9638);
                }
                else
                {
                    float _9660 = -_9655;
                    float _9663 = _9630 * rsqrt(mad(_9660, _9655, 1.0f));
                    float _9664 = mad(_9660, _9605, _9638);
                    float _9668 = mad(_9660, _9639, mad(2.0f * _9638, _9638, -1.0f));
                    float _9679 = _9663 * sqrt(clamp(mad(_9653 * _9638, _9639, mad(_9654, _9639, mad(-_9638, _9638, mad(-_9605, _9605, 1.0f)))), 0.0f, 1.0f));
                    float _9681 = (_9679 * 2.0f) * _9638;
                    float _9682 = mad(_9605, _9652, _9638);
                    float _9683 = mad(_9663, _9664, _9682);
                    float _9685 = mad(_9663, _9668, mad(_9639, _9652, 1.0f));
                    float _9686 = _9679 * _9685;
                    float _9687 = _9683 * _9685;
                    float _9692 = _9687 * mad(-0.5f, _9686, (0.25f * _9681) * _9683);
                    float _9702 = mad(_9683, mad(_9682, _9685 * _9685, _9687 * mad(-0.5f, mad(_9639, _9652, _9685), -0.5f)), mad(_9686, _9686, (_9681 * _9683) * mad(_9681, _9683, _9686 * (-2.0f))));
                    float _9706 = (2.0f * _9692) / mad(_9702, _9702, _9692 * _9692);
                    float _9707 = _9706 * _9702;
                    float _9709 = mad(-_9706, _9692, 1.0f);
                    float _9715 = mad(_9639, _9652, mad(_9709, _9663 * _9668, _9707 * _9681));
                    float _9717 = rsqrt(mad(2.0f, _9715, 2.0f));
                    _9724 = clamp((mad(_9605, _9652, mad(_9709, _9663 * _9664, _9707 * _9679)) + _9638) * _9717, 0.0f, 1.0f);
                    _9725 = clamp(mad(_9717, _9715, _9717), 0.0f, 1.0f);
                }
                _9726 = _9724;
                _9727 = _9725;
            }
            else
            {
                _9726 = _9644;
                _9727 = _9646;
            }
            float _9730 = clamp(abs(_9638) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float _9731 = _9599 * _9599;
            float _9732 = _9731 * _9731;
            float _9737 = clamp(_9646, 0.0f, 1.0f);
            int _9739 = asint(_9732);
            float _9745 = clamp(0.0555555559694766998291015625f * log2(mad(2.0f, asfloat(2129859010 - _9739), -1.0f)), 0.0f, 1.0f);
            float _9746 = 1.0f - _9737;
            float _9747 = _9746 * _9746;
            float _9750 = 1.0f - clamp(_9638, 0.0f, 1.0f);
            float _9751 = _9750 * _9750;
            float _9755 = 1.0f - clamp(_9624, 0.0f, 1.0f);
            float _9756 = _9755 * _9755;
            float3 _9780 = 1.0f.xxx * _9624;
            float3 _9830 = 0.0f.xxx;
            if ((_9637 & 1u) == 1u)
            {
                _9830 = 0.0f.xxx;
            }
            else
            {
                float _9799 = 0.0f;
                if (_9647)
                {
                    _9799 = _9732 / mad(_9731, _9731, ((0.25f * _9630) * mad(3.0f, asfloat(532487669 + (_9739 >> 1)), _9630)) / (_9727 + 0.001000000047497451305389404296875f));
                }
                else
                {
                    _9799 = 1.0f;
                }
                float _9802 = mad(mad(_9726, _9732, -_9726), _9726, 1.0f);
                float _9807 = sqrt(_9732);
                float _9808 = 1.0f - _9807;
                float _9814 = 1.0f - _9727;
                float _9815 = _9814 * _9814;
                float _9816 = _9815 * _9815;
                _9830 = _9780 * (((clamp(50.0f * _8558.y, 0.0f, 1.0f) * (_9816 * _9814)).xxx + (_8558 * mad(-_9816, _9814, 1.0f))) * (((_9732 / ((3.1415927410125732421875f * _9802) * _9802)) * _9799) * (0.5f / mad(_9624, mad(_9730, _9808, _9807), _9730 * mad(_9624, _9808, _9807)))));
            }
            float4 _9839 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_9730, _9599), 0.0f);
            bool3 _9843 = (View_View_bShadingEnergyConservation != 0u).xxx;
            float _9844 = _9839.x;
            float3 _9848 = 1.0f.xxx + (_8558 * ((1.0f - _9844) / _9844));
            float3 _9849 = float3(_9843.x ? _9848.x : 1.0f.xxx.x, _9843.y ? _9848.y : 1.0f.xxx.y, _9843.z ? _9848.z : 1.0f.xxx.z);
            float3 _9865 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _9593;
            float3 _9867 = mad(((_8714 * (0.3183098733425140380859375f * mad((mad(mad(34.5f, _9745, -59.0f), _9745, 24.5f) * _9737) * exp2((-max(mad(73.1999969482421875f, _9745, -21.200000762939453125f), 8.8999996185302734375f)) * asfloat(532487669 + (asint(clamp(_9644, 0.0f, 1.0f)) >> 1))), asfloat(_9637 >> 1u), lerp(mad(_9747 * _9747, _9746, _9737), mad(-0.75f, (_9751 * _9751) * _9750, 1.0f) * mad(-0.75f, (_9756 * _9756) * _9755, 1.0f), clamp(mad(2.2000000476837158203125f, _9745, -0.5f), 0.0f, 1.0f))))) * _9780) * ((View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(_9849 * ((_8558 * _9844) + ((clamp(50.0f * _8558.y, 0.0f, 1.0f).xxx - _8558) * _9839.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f), _9865, 0.0f.xxx);
            _9868 = _9867;
            _9869 = ((_9830 * _9849) * 1.0f) * _9865;
        }
        else
        {
            _9868 = 0.0f.xxx;
            _9869 = 0.0f.xxx;
        }
        float4 _9873 = float4(_9868, 0.0f);
        float4 _9877 = float4(_9869, 0.0f);
        float3 _9894 = 0.0f.xxx;
        float4 _9895 = 0.0f.xxxx;
        float4 _9896 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _8789) != 0u)
        {
            float4 _9882 = float4(_9873.x, _9873.y, _9873.z, _9873.w);
            float4 _9883 = float4(_9877.x, _9877.y, _9877.z, _9877.w);
            float3 _9890 = 0.0f.xxx;
            if (_8758)
            {
                _9890 = _9873.xyz + _9877.xyz;
            }
            else
            {
                _9890 = 0.0f.xxx;
            }
            bool4 _9891 = _8758.xxxx;
            _9894 = _9890;
            _9895 = float4(_9891.x ? 0.0f.xxxx.x : _9882.x, _9891.y ? 0.0f.xxxx.y : _9882.y, _9891.z ? 0.0f.xxxx.z : _9882.z, _9891.w ? 0.0f.xxxx.w : _9882.w);
            _9896 = float4(_9891.x ? 0.0f.xxxx.x : _9883.x, _9891.y ? 0.0f.xxxx.y : _9883.y, _9891.z ? 0.0f.xxxx.z : _9883.z, _9891.w ? 0.0f.xxxx.w : _9883.w);
        }
        else
        {
            _9894 = 0.0f.xxx;
            _9895 = 0.0f.xxxx;
            _9896 = 0.0f.xxxx;
        }
        _9897 = _8818;
        _9898 = _9894;
        _9899 = _9593;
        _9900 = _9895;
        _9901 = _9896;
    }
    else
    {
        _9897 = _8514;
        _9898 = 0.0f.xxx;
        _9899 = 1.0f;
        _9900 = 0.0f.xxxx;
        _9901 = 0.0f.xxxx;
    }
    uint _9902 = ((((min(uint(max(0.0f, log2(mad(_585, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _8741.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _8741.x) * 2u;
    uint _9908 = _9902 + 1u;
    uint _9911 = min(min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_9902], OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
    float4 _9913 = 0.0f.xxxx;
    float4 _9916 = 0.0f.xxxx;
    _9913 = _9900;
    _9916 = _9901;
    float4 _9914 = 0.0f.xxxx;
    float4 _9917 = 0.0f.xxxx;
    [loop]
    for (uint _9918 = 0u; _9918 < _9911; _9913 = _9914, _9916 = _9917, _9918++)
    {
        uint _9927 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_9908] + _9918).x * 6u;
        uint _9930 = _9927 + 1u;
        uint _9933 = _9927 + 2u;
        uint _9936 = _9927 + 3u;
        uint _9939 = _9927 + 4u;
        uint _9943 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9933].w);
        uint _9949 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9930].y);
        uint _9965 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9936].z);
        float2 _9967 = spvUnpackHalf2x16(_9965 & 65535u);
        float _9968 = _9967.x;
        float2 _9971 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9936].w));
        float _9972 = _9971.x;
        bool _9977 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9930].w == 0.0f;
        float4 _9998 = float4(float(_9943 & 1u), float((_9943 & 2u) >> 1u), float((_9943 & 4u) >> 2u), float((_9943 & 8u) >> 3u));
        uint _9999 = _9943 >> 4u;
        float3 _10015 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9927].xyz - _642;
        float _10016 = dot(_10015, _10015);
        float _10033 = 0.0f;
        if (_9977)
        {
            float _10028 = _10016 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9927].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9927].w);
            float _10031 = clamp(mad(-_10028, _10028, 1.0f), 0.0f, 1.0f);
            _10033 = _10031 * _10031;
        }
        else
        {
            float3 _10022 = _10015 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9927].w;
            _10033 = pow(1.0f - clamp(dot(_10022, _10022), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9930].w);
        }
        float _10044 = 0.0f;
        if (((_9943 >> 16u) & 3u) == 2u)
        {
            float _10041 = clamp((dot(_10015 * rsqrt(_10016), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9933].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9936].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9936].y, 0.0f, 1.0f);
            _10044 = _10033 * (_10041 * _10041);
        }
        else
        {
            _10044 = _10033;
        }
        float3 _10415 = 0.0f.xxx;
        float3 _10416 = 0.0f.xxx;
        [branch]
        if (_10044 > 0.0f)
        {
            float _10056 = 0.0f;
            [branch]
            if (uint((_9943 & 255u) != 0u) != 0u)
            {
                _10056 = dot(float4(float(_9999 & 1u), float((_9999 & 2u) >> 1u), float((_9999 & 4u) >> 2u), float((_9999 & 8u) >> 3u)), _8773) * lerp(1.0f, dot(_9897, _9998), dot(_9998, 1.0f.xxxx));
            }
            else
            {
                _10056 = 1.0f;
            }
            float3 _10413 = 0.0f.xxx;
            float3 _10414 = 0.0f.xxx;
            [branch]
            if ((_10056 + _10056) > 0.0f)
            {
                float3 _10062 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9939].xyz * (0.5f * _9972);
                float3 _10063 = _10015 - _10062;
                float3 _10064 = _10015 + _10062;
                float _10065 = max(_8425, View_View_MinRoughness);
                bool _10066 = _9972 > 0.0f;
                float _10091 = 0.0f;
                float _10092 = 0.0f;
                float _10093 = 0.0f;
                [branch]
                if (_10066)
                {
                    float _10078 = rsqrt(dot(_10063, _10063));
                    float _10079 = rsqrt(dot(_10064, _10064));
                    float _10080 = _10078 * _10079;
                    float _10082 = dot(_10063, _10064) * _10080;
                    _10091 = _10082;
                    _10092 = 0.5f * mad(dot(_8448, _10063), _10078, dot(_8448, _10064) * _10079);
                    _10093 = _10080 / mad(_10078, _10079, mad(_10082, 0.5f, 0.5f));
                }
                else
                {
                    float _10070 = dot(_10063, _10063);
                    _10091 = 1.0f;
                    _10092 = dot(_8448, _10063 * rsqrt(_10070));
                    _10093 = 1.0f / (_10070 + 1.0f);
                }
                float _10111 = 0.0f;
                if (_9968 > 0.0f)
                {
                    float _10100 = sqrt(clamp((_9968 * _9968) * _10093, 0.0f, 1.0f));
                    float _10110 = 0.0f;
                    if (_10092 < _10100)
                    {
                        float _10106 = _10100 + max(_10092, -_10100);
                        _10110 = (_10106 * _10106) / (4.0f * _10100);
                    }
                    else
                    {
                        _10110 = _10092;
                    }
                    _10111 = _10110;
                }
                else
                {
                    _10111 = _10092;
                }
                float _10112 = clamp(_10111, 0.0f, 1.0f);
                float3 _10130 = 0.0f.xxx;
                if (_10066)
                {
                    float3 _10117 = reflect(-_660, _8448);
                    float3 _10118 = _10064 - _10063;
                    float _10119 = dot(_10117, _10118);
                    _10130 = _10063 + (_10118 * clamp(dot(_10063, (_10117 * _10119) - _10118) / mad(_9972, _9972, -(_10119 * _10119)), 0.0f, 1.0f));
                }
                else
                {
                    _10130 = _10063;
                }
                float _10132 = rsqrt(dot(_10130, _10130));
                float3 _10133 = _10130 * _10132;
                float _10134 = max(_10065, View_View_MinRoughness);
                float _10139 = clamp((_9968 * _10132) * mad(-_10134, _10134, 1.0f), 0.0f, 1.0f);
                float _10141 = clamp(spvUnpackHalf2x16(_9965 >> 16u).x * _10132, 0.0f, 1.0f);
                uint _10148 = 0u | (asuint(clamp(mad(-max(_9972, _9968), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u);
                float _10149 = dot(_8448, _10133);
                float _10150 = dot(_8448, _660);
                float _10151 = dot(_660, _10133);
                float _10153 = rsqrt(mad(2.0f, _10151, 2.0f));
                float _10156 = clamp((_10149 + _10150) * _10153, 0.0f, 1.0f);
                float _10158 = clamp(mad(_10153, _10151, _10153), 0.0f, 1.0f);
                bool _10159 = _10139 > 0.0f;
                float _10238 = 0.0f;
                float _10239 = 0.0f;
                if (_10159)
                {
                    float _10164 = sqrt(mad(-_10139, _10139, 1.0f));
                    float _10165 = 2.0f * _10149;
                    float _10166 = -_10151;
                    float _10167 = mad(_10165, _10150, _10166);
                    float _10236 = 0.0f;
                    float _10237 = 0.0f;
                    if (_10167 >= _10164)
                    {
                        _10236 = 1.0f;
                        _10237 = abs(_10150);
                    }
                    else
                    {
                        float _10172 = -_10167;
                        float _10175 = _10139 * rsqrt(mad(_10172, _10167, 1.0f));
                        float _10176 = mad(_10172, _10149, _10150);
                        float _10180 = mad(_10172, _10151, mad(2.0f * _10150, _10150, -1.0f));
                        float _10191 = _10175 * sqrt(clamp(mad(_10165 * _10150, _10151, mad(_10166, _10151, mad(-_10150, _10150, mad(-_10149, _10149, 1.0f)))), 0.0f, 1.0f));
                        float _10193 = (_10191 * 2.0f) * _10150;
                        float _10194 = mad(_10149, _10164, _10150);
                        float _10195 = mad(_10175, _10176, _10194);
                        float _10197 = mad(_10175, _10180, mad(_10151, _10164, 1.0f));
                        float _10198 = _10191 * _10197;
                        float _10199 = _10195 * _10197;
                        float _10204 = _10199 * mad(-0.5f, _10198, (0.25f * _10193) * _10195);
                        float _10214 = mad(_10195, mad(_10194, _10197 * _10197, _10199 * mad(-0.5f, mad(_10151, _10164, _10197), -0.5f)), mad(_10198, _10198, (_10193 * _10195) * mad(_10193, _10195, _10198 * (-2.0f))));
                        float _10218 = (2.0f * _10204) / mad(_10214, _10214, _10204 * _10204);
                        float _10219 = _10218 * _10214;
                        float _10221 = mad(-_10218, _10204, 1.0f);
                        float _10227 = mad(_10151, _10164, mad(_10221, _10175 * _10180, _10219 * _10193));
                        float _10229 = rsqrt(mad(2.0f, _10227, 2.0f));
                        _10236 = clamp((mad(_10149, _10164, mad(_10221, _10175 * _10176, _10219 * _10191)) + _10150) * _10229, 0.0f, 1.0f);
                        _10237 = clamp(mad(_10229, _10227, _10229), 0.0f, 1.0f);
                    }
                    _10238 = _10236;
                    _10239 = _10237;
                }
                else
                {
                    _10238 = _10156;
                    _10239 = _10158;
                }
                float _10242 = clamp(abs(_10150) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float _10243 = _10065 * _10065;
                float _10244 = _10243 * _10243;
                float _10249 = clamp(_10158, 0.0f, 1.0f);
                float _10257 = clamp(0.0555555559694766998291015625f * log2(mad(2.0f, asfloat(2129859010 - asint(_10244)), -1.0f)), 0.0f, 1.0f);
                float _10258 = 1.0f - _10249;
                float _10259 = _10258 * _10258;
                float _10262 = 1.0f - clamp(_10150, 0.0f, 1.0f);
                float _10263 = _10262 * _10262;
                float _10267 = 1.0f - clamp(_10112, 0.0f, 1.0f);
                float _10268 = _10267 * _10267;
                float3 _10293 = 1.0f.xxx * ((_9977 ? _10093 : 1.0f) * _10112);
                float3 _10375 = 0.0f.xxx;
                if ((_10148 & 1u) == 1u)
                {
                    _10375 = 0.0f.xxx;
                }
                else
                {
                    float _10308 = 0.0f;
                    if (_10141 > 0.0f)
                    {
                        _10308 = clamp(mad(_10243, _10243, (_10141 * _10141) / mad(_10239, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _10308 = _10244;
                    }
                    float _10322 = 0.0f;
                    float _10323 = 0.0f;
                    if (_10159)
                    {
                        float _10320 = _10308 + (((0.25f * _10139) * mad(3.0f, asfloat(532487669 + (asint(_10308) >> 1)), _10139)) / (_10239 + 0.001000000047497451305389404296875f));
                        _10322 = _10308 / _10320;
                        _10323 = _10320;
                    }
                    else
                    {
                        _10322 = 1.0f;
                        _10323 = _10308;
                    }
                    float _10344 = 0.0f;
                    if (_10091 < 1.0f)
                    {
                        float _10330 = sqrt((1.00010001659393310546875f - _10091) / (1.0f + _10091));
                        _10344 = _10322 * sqrt(_10323 / (_10323 + (((0.25f * _10330) * mad(3.0f, asfloat(532487669 + (asint(_10323) >> 1)), _10330)) / (_10239 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _10344 = _10322;
                    }
                    float _10347 = mad(mad(_10238, _10308, -_10238), _10238, 1.0f);
                    float _10352 = sqrt(_10308);
                    float _10353 = 1.0f - _10352;
                    float _10359 = 1.0f - _10239;
                    float _10360 = _10359 * _10359;
                    float _10361 = _10360 * _10360;
                    _10375 = _10293 * (((clamp(50.0f * _8558.y, 0.0f, 1.0f) * (_10361 * _10359)).xxx + (_8558 * mad(-_10361, _10359, 1.0f))) * (((_10308 / ((3.1415927410125732421875f * _10347) * _10347)) * _10344) * (0.5f / mad(_10112, mad(_10242, _10353, _10352), _10242 * mad(_10112, _10353, _10352)))));
                }
                float4 _10384 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_10242, _10065), 0.0f);
                bool3 _10388 = (View_View_bShadingEnergyConservation != 0u).xxx;
                float _10389 = _10384.x;
                float3 _10393 = 1.0f.xxx + (_8558 * ((1.0f - _10389) / _10389));
                float3 _10394 = float3(_10388.x ? _10393.x : 1.0f.xxx.x, _10388.y ? _10393.y : 1.0f.xxx.y, _10388.z ? _10393.z : 1.0f.xxx.z);
                float3 _10410 = ((float3(float((_9949 >> 0u) & 1023u), float((_9949 >> 10u) & 1023u), float((_9949 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9930].x) * _10044) * _10056;
                float3 _10412 = mad(((_8714 * (0.3183098733425140380859375f * mad((mad(mad(34.5f, _10257, -59.0f), _10257, 24.5f) * _10249) * exp2((-max(mad(73.1999969482421875f, _10257, -21.200000762939453125f), 8.8999996185302734375f)) * asfloat(532487669 + (asint(clamp(_10156, 0.0f, 1.0f)) >> 1))), asfloat(_10148 >> 1u), lerp(mad(_10259 * _10259, _10258, _10249), mad(-0.75f, (_10263 * _10263) * _10262, 1.0f) * mad(-0.75f, (_10268 * _10268) * _10267, 1.0f), clamp(mad(2.2000000476837158203125f, _10257, -0.5f), 0.0f, 1.0f))))) * _10293) * ((View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(_10394 * ((_8558 * _10389) + ((clamp(50.0f * _8558.y, 0.0f, 1.0f).xxx - _8558) * _10384.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f), _10410, 0.0f.xxx);
                _10413 = _10412;
                _10414 = ((_10375 * _10394) * spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9939].w) & 65535u).x) * _10410;
            }
            else
            {
                _10413 = 0.0f.xxx;
                _10414 = 0.0f.xxx;
            }
            _10415 = _10413;
            _10416 = _10414;
        }
        else
        {
            _10415 = 0.0f.xxx;
            _10416 = 0.0f.xxx;
        }
        [flatten]
        if ((((_9943 >> 8u) & 7u) & _8789) != 0u)
        {
            _9914 = _9913 + float4(_10415, 0.0f);
            _9917 = _9916 + float4(_10416, 0.0f);
        }
        else
        {
            _9914 = _9913;
            _9917 = _9916;
        }
    }
    bool4 _10434 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    float3 _10520 = 0.0f.xxx;
    float3 _10521 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _10465 = _8391 + 31u;
        float3 _10474 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_8391 + 1u].xyz) * 2097152.0f) + (_643 - Scene_GPUScene_GPUScenePrimitiveSceneData[_8391 + 18u].xyz));
        float3 _10475 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_8391 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_8391 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_8391 + 25u].w) + 1.0f.xxx;
        float3 _10518 = 0.0f.xxx;
        float3 _10519 = 0.0f.xxx;
        if (any(bool3(_10474.x > _10475.x, _10474.y > _10475.y, _10474.z > _10475.z)))
        {
            float3 _10498 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _10499 = _643 * 0.57700002193450927734375f.xxx;
            float3 _10514 = frac(mad((_10499.x + _10499.y) + _10499.z, 0.00200000009499490261077880859375f, frac(((_10498.x + _10498.y) + _10498.z) * 4194.30419921875f))).xxx;
            float3 _10517 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_10514.x > 0.5f.xxx.x, _10514.y > 0.5f.xxx.y, _10514.z > 0.5f.xxx.z)));
            _10518 = _10517;
            _10519 = _10517;
        }
        else
        {
            float3 _10497 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_10465].x > 0.0f)
            {
                float3 _10485 = abs(_642 - in_var_TEXCOORD9);
                _10497 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_10485.x, max(_10485.y, _10485.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_10465].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _10497 = 0.0f.xxx;
            }
            _10518 = 0.0f.xxx;
            _10519 = _10497;
        }
        _10520 = _10518;
        _10521 = _10519;
    }
    else
    {
        _10520 = 0.0f.xxx;
        _10521 = 0.0f.xxx;
    }
    float4 _10533 = OpaqueBasePass_PreIntegratedGFTexture.SampleLevel(View_SharedBilinearClampedSampler, float2(max(0.0f, dot(_8448, _660)), _8425), 0.0f);
    float3 _10771 = 0.0f.xxx;
    float3 _10772 = 0.0f.xxx;
    if (_8449 > 0.0f)
    {
        float2 _10561 = clamp(mad(_633.xy / _646.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz), SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.xy, SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.zw);
        float4 _10563 = SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture.SampleLevel(View_SharedBilinearClampedSampler, _10561, 0.0f);
        float _10564 = _10563.x;
        float _10574 = -View_View_InvDeviceZToWorldZTransform.w;
        float _10577 = mad(_10564, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10564, View_View_InvDeviceZToWorldZTransform.z, _10574));
        float _10608 = _10577 - _646;
        float2 _10617 = clamp(_10561 + (((((((normalize(mul(_8448, float3x3(View_View_TranslatedWorldToView[0].xyz, View_View_TranslatedWorldToView[1].xyz, View_View_TranslatedWorldToView[2].xyz))).xy * (Material_Material_PreshaderBuffer[107].w - 1.0f)) * View_View_ViewSizeAndInvSize.xy) * View_View_BufferSizeAndInvSize.zw) * ((SingleLayerWater_SingleLayerWater_DistortionParams.zw * float2(0.000230000005103647708892822265625f, -0.000230000005103647708892822265625f)) * float2(SingleLayerWater_SingleLayerWater_DistortionParams.x, SingleLayerWater_SingleLayerWater_DistortionParams.y * SingleLayerWater_SingleLayerWater_DistortionParams.x))) * clamp(mad(_10608, 1.0f / max(1.0f, clamp(abs(Material_Material_PreshaderBuffer[108].x * (-0.5f)), 0.0f, 50.0f)), -Material_Material_PreshaderBuffer[108].x), 0.0f, 1.0f)) * 4.0f) * clamp(_10608 * 0.0333333350718021392822265625f, 0.0f, 1.0f)), SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.xy, SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.zw);
        float4 _10619 = SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture.GatherRed(View_SharedBilinearClampedSampler, _10617);
        float _10620 = _10619.x;
        float _10625 = _10619.y;
        float _10630 = _10619.z;
        float _10635 = _10619.w;
        float4 _10640 = float4(mad(_10620, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10620, View_View_InvDeviceZToWorldZTransform.z, _10574)), mad(_10625, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10625, View_View_InvDeviceZToWorldZTransform.z, _10574)), mad(_10630, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10630, View_View_InvDeviceZToWorldZTransform.z, _10574)), mad(_10635, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10635, View_View_InvDeviceZToWorldZTransform.z, _10574)));
        float4 _10641 = _646.xxxx;
        bool _10643 = any(bool4(_10640.x < _10641.x, _10640.y < _10641.y, _10640.z < _10641.z, _10640.w < _10641.w));
        float _10669 = 0.0f;
        float _10670 = 0.0f;
        if (_10643)
        {
            _10669 = _10577;
            _10670 = _10564;
        }
        else
        {
            float2 _10650 = frac(((_10617 * SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterTextureSize) * 1.0f) - 0.5f.xx);
            float _10652 = _10650.x;
            float _10653 = 1.0f - _10652;
            float _10654 = _10650.y;
            float _10655 = 1.0f - _10654;
            float4 _10657 = 0.0f.xxxx;
            _10657.x = _10653 * _10655;
            _10657.y = _10652 * _10655;
            _10657.z = _10653 * _10654;
            _10657.w = _10652 * _10654;
            float _10664 = dot(_10619.wzxy, _10657);
            _10669 = mad(_10664, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10664, View_View_InvDeviceZToWorldZTransform.z, _10574));
            _10670 = _10664;
        }
        bool2 _10671 = _10643.xx;
        float _10675 = max(0.0f, _10669 - _646);
        float3 _10677 = clamp(_8372.xyz, 0.0f.xxx, 64512.0f.xxx).xyz;
        float _10685 = 1.0f / ((2.0f / (1.0f - sqrt(min(_8538, 0.9900000095367431640625f)))) - 1.0f);
        float3 _10708 = 0.0f.xxx;
        bool _10709 = false;
        do
        {
            float _10688 = dot(_660, _8448);
            float _10693 = mad(-(_10685 * _10685), mad(-_10688, _10688, 1.0f), 1.0f);
            if (_10693 < 0.0f)
            {
                _10708 = reflect(-_660, _8448);
                _10709 = false;
                break;
            }
            _10708 = (_8448 * mad(_10685, _10688, (-((_10688 >= 0.0f) ? 1.0f : (-1.0f))) * sqrt(_10693))) - (_660 * _10685);
            _10709 = true;
            break;
        } while(false);
        float _10721 = 0.0f;
        if (_10709)
        {
            float _10714 = mad(1.5499999523162841796875f, 0.0f, -0.0f);
            float _10715 = mad(_10714, dot(-View_View_DirectionalLightDirection, _10708), 1.0f);
            _10721 = mad(-_10714, _10714, 1.0f) / ((12.56637096405029296875f * _10715) * _10715);
        }
        else
        {
            _10721 = 0.0f;
        }
        float4 _10723 = mul(float4(gl_FragCoord.xy, max(9.9999999600419720025001879548654e-13f, _10670), 1.0f), View_View_SVPositionToTranslatedWorld);
        float3 _10749 = exp(-(_10677 * _10675));
        float3 _10750 = ((View_View_DirectionalLightColor.xyz * 3.1415927410125732421875f) * _10721) * _9899;
        float3 _10756 = clamp(((_8431.xyz * _10677) * (1.0f.xxx - _10749)) / max(_10677, 9.9999997473787516355514526367188e-06f.xxx), 0.0f.xxx, 1.0f.xxx);
        float3 _10760 = 1.0f.xxx - ((_8558 * _10533.x) + (clamp(50.0f * _8558.y, 0.0f, 1.0f) * _10533.y).xxx);
        float3 _10761 = float3(_10760.x, _10760.y, _10760.z);
        _10771 = _9898 + ((((_10750 * float(_8758)) * _10756) * _10761) * _8449);
        _10772 = mad((((_8699 * 3.1415927410125732421875f) * 0.079577468335628509521484375f) + (_10750 * (_8758 ? 0.0f : 1.0f))) * _10756, _10761, (_10749 * float3(1.0f.xxx.x, 1.0f.xxx.y, 1.0f.xxx.z)) * (((exp(_10677 * (-max(0.0f, (((View_View_ViewTilePosition - View_View_ViewTilePosition) * 2097152.0f) + (_643 - ((_10723.xyz / _10723.w.xxx) - View_View_RelativePreViewTranslation))).z))) * View_View_OneOverPreExposure) * SingleLayerWater_SceneColorWithoutSingleLayerWaterTexture.SampleLevel(View_SharedBilinearClampedSampler, float2(_10671.x ? _10561.x : _10617.x, _10671.y ? _10561.y : _10617.y), 0.0f).xyz) * lerp(1.0f.xxx, clamp(Material_Material_PreshaderBuffer[105].z.xxx.xyz, 0.0f.xxx, 64512.0f.xxx).xyz, clamp(_10675 * 0.0199999995529651641845703125f, 0.0f, 1.0f).xxx))) * _8449;
    }
    else
    {
        _10771 = _9898;
        _10772 = 0.0f.xxx;
    }
    float3 _10774 = normalize(_8447);
    uint2 _10775 = uint2(gl_FragCoord.xy);
    float3 _10778 = mad(clamp(_8437, 0.0f.xxx, 1.0f.xxx), View_View_DiffuseOverrideParameter.www, View_View_DiffuseOverrideParameter.xyz);
    _8418.x = 0.0f;
    float _10781 = mad(clamp(_8417, 0.0f, 1.0f), View_View_SpecularOverrideParameter.w, View_View_SpecularOverrideParameter.x);
    _8418.y = _10781;
    float _10785 = clamp(max(View_View_MinRoughness, mad(_8425, View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x)), 0.0f, 1.0f);
    _8418.z = _10785;
    float _10787 = clamp(_8427, 0.0f, 1.0f);
    _8418.w = _10787;
    bool3 _10794 = (View_View_bShadingEnergyConservation != 0u).xxx;
    bool _10795 = any(bool3(true, true, true));
    uint _10918 = 0u;
    float3 _10919 = 0.0f.xxx;
    uint _10920 = 0u;
    uint _10921 = 0u;
    bool _10922 = false;
    bool _10923 = false;
    float3 _10924 = 0.0f.xxx;
    float _10925 = 0.0f;
    float3 _10926 = 0.0f.xxx;
    float _10927 = 0.0f;
    if (_10795)
    {
        float3 _10906 = 0.0f.xxx;
        uint _10907 = 0u;
        bool _10908 = false;
        bool _10909 = false;
        float3 _10910 = 0.0f.xxx;
        float _10911 = 0.0f;
        float _10912 = 0.0f;
        uint _10913 = 0u;
        switch (4u)
        {
            case 0u:
            {
                float3 _10887 = 0.0f.xxx;
                do
                {
                    float3 _10884 = 0.0f.xxx;
                    bool _10885 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10884 = lerp(_10778.xyz, _8418.xyz, clamp((max(0.0f, max(_10781, _10785)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10885 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10884 = _10778.xyz;
                            _10885 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10884 = _10778.xyz;
                            _10885 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10884 = _10778.xyz;
                            _10885 = true;
                            break;
                        }
                        default:
                        {
                            _10884 = _457;
                            _10885 = false;
                            break;
                        }
                    }
                    if (_10885)
                    {
                        _10887 = _10884;
                        break;
                    }
                    _10887 = 0.0f.xxx;
                    break;
                } while(false);
                float3 _10888 = _10887 * 1.0f;
                float3 _10902 = 0.0f.xxx;
                float _10903 = 0.0f;
                if (false)
                {
                    float3 _10900 = 0.0f.xxx;
                    float _10901 = 0.0f;
                    if (false)
                    {
                        _10900 = lerp(0.0f, 0.039999999105930328369140625f, clamp((max(0.039999999105930328369140625f, max(0.039999999105930328369140625f, 0.039999999105930328369140625f)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f)).xxx;
                        _10901 = 0.0f;
                    }
                    else
                    {
                        _10900 = _10888;
                        _10901 = 0.0f;
                    }
                    _10902 = _10900;
                    _10903 = _10901;
                }
                else
                {
                    _10902 = _10888;
                    _10903 = 0.0f;
                }
                _10906 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10907 = 1u;
                _10908 = (true && all(bool3(true, true, true))) && true;
                _10909 = true;
                _10910 = _10902;
                _10911 = _10903;
                _10912 = 1.0f;
                _10913 = (_8537 | 0u) | 0u;
                break;
            }
            case 3u:
            {
                float3 _10857 = 0.0f.xxx;
                do
                {
                    float3 _10854 = 0.0f.xxx;
                    bool _10855 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10854 = lerp(_10778.xyz, _8418.xyz, clamp((max(0.0f, max(_10781, _10785)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10855 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10854 = _10778.xyz;
                            _10855 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10854 = _10778.xyz;
                            _10855 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10854 = _10778.xyz;
                            _10855 = true;
                            break;
                        }
                        default:
                        {
                            _10854 = _457;
                            _10855 = false;
                            break;
                        }
                    }
                    if (_10855)
                    {
                        _10857 = _10854;
                        break;
                    }
                    _10857 = 0.0f.xxx;
                    break;
                } while(false);
                _10906 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10907 = 1u;
                _10908 = false;
                _10909 = false;
                _10910 = _10857 * 1.0f;
                _10911 = 1.0f;
                _10912 = 1.0f;
                _10913 = (_8537 & 4294967288u) | 5u;
                break;
            }
            case 5u:
            {
                _10906 = 0.0f.xxx;
                _10907 = 1u;
                _10908 = false;
                _10909 = false;
                _10910 = 0.0f.xxx;
                _10911 = 1.0f;
                _10912 = 1.0f;
                _10913 = ((_8537 | 0u) & 4294967288u) | 6u;
                break;
            }
            case 4u:
            {
                float3 _10827 = 0.0f.xxx;
                do
                {
                    float3 _10824 = 0.0f.xxx;
                    bool _10825 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10824 = lerp(_10778.xyz, _8418.xyz, clamp((max(0.0f, max(_10781, _10785)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10825 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10824 = _10778.xyz;
                            _10825 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10824 = _10778.xyz;
                            _10825 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10824 = _10778.xyz;
                            _10825 = true;
                            break;
                        }
                        default:
                        {
                            _10824 = _457;
                            _10825 = false;
                            break;
                        }
                    }
                    if (_10825)
                    {
                        _10827 = _10824;
                        break;
                    }
                    _10827 = 0.0f.xxx;
                    break;
                } while(false);
                _10906 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10907 = 2u;
                _10908 = false;
                _10909 = false;
                _10910 = _10827 * 1.0f;
                _10911 = mad(1.0f, _10785, 0.0f);
                _10912 = 1.0f;
                _10913 = (_8537 & 4294967288u) | 4u;
                break;
            }
            default:
            {
                _10906 = 0.0f.xxx;
                _10907 = 0u;
                _10908 = true;
                _10909 = true;
                _10910 = 0.0f.xxx;
                _10911 = 0.0f;
                _10912 = 0.0f;
                _10913 = _8537;
                break;
            }
        }
        float3 _10914[4] = { _10774, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx };
        float3 _578[4] = _10914;
        _10918 = 8194u;
        _10919 = _10906;
        _10920 = _10907;
        _10921 = _10913;
        _10922 = _10908;
        _10923 = _10909;
        _10924 = _10910;
        _10925 = _10911;
        _10926 = _578[0u] * 1.0f;
        _10927 = _10912;
    }
    else
    {
        _10918 = 8192u;
        _10919 = 0.0f.xxx;
        _10920 = 0u;
        _10921 = _8537;
        _10922 = true;
        _10923 = true;
        _10924 = 0.0f.xxx;
        _10925 = 0.0f;
        _10926 = 0.0f.xxx;
        _10927 = 0.0f;
    }
    uint _10928 = uint(_10795);
    bool _10929 = _10927 > 0.0f;
    bool3 _10930 = _10929.xxx;
    float3 _10931 = normalize(_10926);
    float3 _10932 = float3(_10930.x ? _10931.x : 0.0f.xxx.x, _10930.y ? _10931.y : 0.0f.xxx.y, _10930.z ? _10931.z : 0.0f.xxx.z);
    float3 _10936 = _10924 / _10927.xxx;
    uint _11023 = 0u;
    uint _11024 = 0u;
    uint _11025 = 0u;
    if (_10923)
    {
        bool _10941 = _10922 && (_10928 == 1u);
        uint _11021 = 0u;
        uint _11022 = 0u;
        if (_10941)
        {
            uint _10954 = 0u;
            if (((_10918 >> 6u) & 1u) != 0u)
            {
                _10954 = 1u;
            }
            else
            {
                _10954 = 0u;
            }
            uint _10962 = 0u;
            if ((((_10918 >> 9u) & 1u) != 0u) && true)
            {
                _10962 = _10954 | 4u;
            }
            else
            {
                _10962 = _10954;
            }
            uint _10969 = 0u;
            if (((_10918 >> 10u) & 1u) != 0u)
            {
                _10969 = _10962 | 8u;
            }
            else
            {
                _10969 = _10962;
            }
            uint _10971 = (_10918 >> 2u) & 7u;
            uint _10976 = 0u;
            if (_10971 == 4u)
            {
                _10976 = _10969 | 16u;
            }
            else
            {
                _10976 = _10969;
            }
            uint _10981 = 0u;
            if (_10971 == 1u)
            {
                _10981 = _10976 | 32u;
            }
            else
            {
                _10981 = _10976;
            }
            uint _10986 = 0u;
            if (_10971 == 3u)
            {
                _10986 = _10981 | 64u;
            }
            else
            {
                _10986 = _10981;
            }
            uint _10987 = _10986 & 2u;
            uint _11019 = 0u;
            uint _11020 = 0u;
            if ((_10987 == 2u) || (_10987 == 3u))
            {
                _11019 = 1u;
                _11020 = 0u;
            }
            else
            {
                uint _11017 = 0u;
                uint _11018 = 0u;
                if ((_10986 & 4u) == 4u)
                {
                    _11017 = 2u;
                    _11018 = 0u;
                }
                else
                {
                    uint _11015 = 0u;
                    uint _11016 = 0u;
                    if ((_10986 & 40u) == 40u)
                    {
                        _11015 = 5u;
                        _11016 = 0u;
                    }
                    else
                    {
                        uint _11013 = 0u;
                        uint _11014 = 0u;
                        if ((_10986 & 32u) == 32u)
                        {
                            _11013 = 3u;
                            _11014 = 0u;
                        }
                        else
                        {
                            bool _11010 = (_10986 & 72u) == 64u;
                            _11013 = _11010 ? 4u : 0u;
                            _11014 = _11010 ? 0u : 0u;
                        }
                        _11015 = _11013;
                        _11016 = _11014;
                    }
                    _11017 = _11015;
                    _11018 = _11016;
                }
                _11019 = _11017;
                _11020 = _11018;
            }
            _11021 = _11019;
            _11022 = _11020;
        }
        else
        {
            _11021 = 0u;
            _11022 = 0u;
        }
        _11023 = _11021;
        _11024 = _11022;
        _11025 = (_10921 & 4294967288u) | ((_10941 ? 1u : (_10941 ? 2u : 3u)) & 7u);
    }
    else
    {
        _11023 = 0u;
        _11024 = 0u;
        _11025 = _10921;
    }
    float3 _11540 = 0.0f.xxx;
    float _11541 = 0.0f;
    float2 _11542 = 0.0f.xx;
    [branch]
    if (_10795)
    {
        float3 _11028[4] = { _10774, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx };
        float3 _579[4] = _11028;
        uint _11030 = (_10918 >> 14u) & 3u;
        float _11033 = dot(_579[_11030], _660);
        float3 _11311 = 0.0f.xxx;
        float3 _11312 = 0.0f.xxx;
        float3 _11313 = 0.0f.xxx;
        float3 _11314 = 0.0f.xxx;
        switch ((_10918 >> 11u) & 7u)
        {
            case 0u:
            {
                float3 _11202 = _10778.xyz;
                float4 _11206 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_11033, 0.001000000047497451305389404296875f), 0.0f);
                float _11207 = _11206.x;
                float3 _11211 = 1.0f.xxx + (_8418.xyz * ((1.0f - _11207) / _11207));
                float _11224 = (View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(float3(_10794.x ? _11211.x : 1.0f.xxx.x, _10794.y ? _11211.y : 1.0f.xxx.y, _10794.z ? _11211.z : 1.0f.xxx.z) * ((_8418.xyz * _11207) + ((-_8418.xyz) * _11206.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f;
                float3 _11225 = _11202 * _11224;
                uint _11227 = (_10918 >> 2u) & 7u;
                float3 _11288 = 0.0f.xxx;
                [branch]
                if (_11227 == 4u)
                {
                    float _11236 = clamp(max(0.0f, max(0.0f, max(0.0f, 0.0f)) - 0.039999999105930328369140625f) * 3.0f, 0.0f, 1.0f);
                    float _11240 = abs(clamp(_11033, 0.0f, 1.0f));
                    float _11246 = clamp((mad(-0.15658299624919891357421875f, _11240, 1.57079637050628662109375f) * sqrt(1.0f - _11240)) * 0.636619746685028076171875f, 0.0f, 1.0f);
                    float _11255 = clamp(mad(10.0f, 0.001587301609106361865997314453125f, 1.0f), 0.0f, 1.0f);
                    float _11256 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10778.x, _11246), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11255;
                    float _11263 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10778.y, _11246), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11255;
                    float _11270 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10778.z, _11246), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11255;
                    float3 _11271 = float3(_11256, _11263, _11270);
                    float _11276 = max(_11225.x, max(_11225.y, _11225.z));
                    float _11278 = max(_11256, max(_11263, _11270));
                    float3 _11284 = 0.0f.xxx;
                    if (_11276 < _11278)
                    {
                        _11284 = _11271 * (_11276 / _11278);
                    }
                    else
                    {
                        _11284 = _11271;
                    }
                    _11288 = lerp(_11225, _11284 * _11224, (_11236 * _11236).xxx);
                }
                else
                {
                    _11288 = _11225;
                }
                float3 _11303 = 0.0f.xxx;
                [branch]
                if (_11227 == 1u)
                {
                    _11303 = (0.3183098733425140380859375f.xxx * exp((-max(9.9999999747524270787835121154785e-07f.xxx, 1.0f.xxx / max(9.9999999600419720025001879548654e-13f.xxx, 0.0f.xxx))) * (1.0f / max(9.9999997473787516355514526367188e-05f, abs(1.0f))))) * _11224;
                }
                else
                {
                    _11303 = 0.0f.xxx;
                }
                [branch]
                if (((_10918 >> 9u) & 1u) != 0u)
                {
                    _11311 = _11288 * 1.0f;
                    _11312 = _579[_11030];
                    _11313 = _11303;
                    _11314 = _11202 * 1.0f;
                    break;
                }
                _11311 = _11288;
                _11312 = _579[_11030];
                _11313 = _11303;
                _11314 = _11202;
                break;
            }
            case 3u:
            {
                float3 _11046 = normalize(_660 - (_579[_11030] * dot(_660, _579[_11030])));
                float _11047 = min(0.0f, 1.0f);
                float _11048 = dot(_660, _11046);
                float _11050 = clamp(dot(_579[_11030], _11046), -1.0f, 1.0f);
                float _11051 = clamp(_11033, -1.0f, 1.0f);
                float _11052 = abs(_11051);
                float _11053 = mad(-0.15658299624919891357421875f, _11052, 1.57079637050628662109375f);
                float _11055 = sqrt(1.0f - _11052);
                float _11062 = abs(_11050);
                float _11063 = mad(-0.15658299624919891357421875f, _11062, 1.57079637050628662109375f);
                float _11065 = sqrt(1.0f - _11062);
                float _11075 = cos(0.5f * abs((1.57079637050628662109375f - ((_11051 >= 0.0f) ? (_11053 * _11055) : mad(-_11053, _11055, 3.1415927410125732421875f))) - (1.57079637050628662109375f - ((_11050 >= 0.0f) ? (_11063 * _11065) : mad(-_11063, _11065, 3.1415927410125732421875f)))));
                float3 _11077 = _11046 - (_579[_11030] * _11050);
                float3 _11079 = _660 - (_579[_11030] * _11051);
                float _11085 = dot(_11077, _11079) * rsqrt(mad(dot(_11077, _11077), dot(_11079, _11079), 9.9999997473787516355514526367188e-05f));
                float _11088 = sqrt(clamp(mad(0.5f, _11085, 0.5f), 0.0f, 1.0f));
                float _11092 = mad(1.5378702300949953496456146240234e-05f, 0.5f, 0.20000000298023223876953125f);
                float _11093 = mad(1.5378702300949953496456146240234e-05f, 2.0f, 0.20000000298023223876953125f);
                float _11101 = mad(0.0039215688593685626983642578125f, 0.0039215688593685626983642578125f, 0.20000000298023223876953125f) * (1.41421353816986083984375f * _11088);
                float _11102 = _11050 + _11051;
                float _11103 = mad(0.1398856937885284423828125f, mad(0.997551023960113525390625f * _11088, sqrt(mad(-_11051, _11051, 1.0f)), (-0.06994284689426422119140625f) * _11051), _11102);
                float _11115 = 1.0f - sqrt(clamp(mad(0.5f, _11048, 0.5f), 0.0f, 1.0f));
                float _11116 = _11115 * _11115;
                float _11129 = _11102 - 0.0350000001490116119384765625f;
                float _11137 = 1.0f / mad(0.36000001430511474609375f, _11075, 1.190000057220458984375f / _11075);
                float _11140 = _11088 * mad(_11137, mad(-0.800000011920928955078125f, _11085, 0.60000002384185791015625f), 1.0f);
                float _11145 = -_11075;
                float _11146 = mad(_11145, sqrt(clamp(mad(-_11140, _11140, 1.0f), 0.0f, 1.0f)), 1.0f);
                float _11147 = _11146 * _11146;
                float _11151 = 1.0f - mad(0.95347940921783447265625f, (_11147 * _11147) * _11146, 0.0465205647051334381103515625f);
                float3 _11153 = abs(_10778.xyz);
                float _11154 = _11140 * _11137;
                float _11169 = _11102 - 0.14000000059604644775390625f;
                float _11177 = mad(_11145, 0.5f, 1.0f);
                float _11178 = _11177 * _11177;
                float _11181 = mad(0.95347940921783447265625f, (_11178 * _11178) * _11177, 0.0465205647051334381103515625f);
                float _11182 = 1.0f - _11181;
                float3 _11194 = (((((((exp(((-0.5f) * (_11103 * _11103)) / (_11101 * _11101)) / (2.5066282749176025390625f * _11101)) * (0.25f * _11088)) * mad(0.95347940921783447265625f, (_11116 * _11116) * _11115, 0.0465205647051334381103515625f)) * (_10781 * 2.0f)) * lerp(1.0f, _11047, clamp(-_11048, 0.0f, 1.0f))).xxx + ((pow(_11153, ((0.5f * sqrt(mad(-_11154, _11154, 1.0f))) / _11075).xxx) * (((exp(((-0.5f) * (_11129 * _11129)) / (_11092 * _11092)) / (2.5066282749176025390625f * _11092)) * exp(mad(-3.650000095367431640625f, _11085, -3.980000019073486328125f))) * (_11151 * _11151))) * _11047)) + (pow(_11153, (0.800000011920928955078125f / _11075).xxx) * (((exp(((-0.5f) * (_11169 * _11169)) / (_11093 * _11093)) / (2.5066282749176025390625f * _11093)) * exp(mad(17.0f, _11085, -16.7800006866455078125f))) * ((_11182 * _11182) * _11181)))) * 1.0f;
                _11311 = min(1.0f.xxx, (-min(-mad(0.0f.xxx, float3(1.0f.xxx.x, 1.0f.xxx.y, 1.0f.xxx.z), _11194), 0.0f.xxx)) * 6.283185482025146484375f);
                _11312 = _11046;
                _11313 = 0.0f.xxx;
                _11314 = 0.0f.xxx;
                break;
            }
            case 5u:
            {
                float3 _11040 = _10778.xyz;
                _11311 = _11040 * 1.0f;
                _11312 = _579[_11030];
                _11313 = 0.0f.xxx;
                _11314 = _11040;
                break;
            }
            default:
            {
                _11311 = 0.0f.xxx;
                _11312 = 0.0f.xxx;
                _11313 = 0.0f.xxx;
                _11314 = 0.0f.xxx;
                break;
            }
        }
        bool _11316 = any(bool3(_11313.x > 0.0f.xxx.x, _11313.y > 0.0f.xxx.y, _11313.z > 0.0f.xxx.z));
        float3 _11402 = 0.0f.xxx;
        float3 _11403 = 0.0f.xxx;
        if (_8457)
        {
            float3 _11330 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _643, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
            float4 _11334 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _11330);
            float4 _11337 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _11330);
            float4 _11340 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _11330);
            float4 _11345 = float4(_11334.x, _11337.x, _11340.x, _11334.w);
            float4 _11350 = float4(_11334.y, _11337.y, _11340.y, _11337.w);
            float4 _11355 = float4(_11334.z, _11337.z, _11340.zw);
            float4 _11358 = 0.0f.xxxx;
            _11358.y = (-0.48860299587249755859375f) * _11312.y;
            _11358.z = 0.48860299587249755859375f * _11312.z;
            _11358.w = (-0.48860299587249755859375f) * _11312.x;
            _11358.x = 0.886227548122406005859375f;
            float3 _11367 = _11358.yzw * 2.094395160675048828125f;
            float4 _11368 = float4(_11358.x, _11367.x, _11367.y, _11367.z);
            float3 _11370 = 0.0f.xxx;
            _11370.x = dot(_11345, _11368);
            _11370.y = dot(_11350, _11368);
            _11370.z = dot(_11355, _11368);
            float3 _11401 = 0.0f.xxx;
            if (_11316)
            {
                float3 _11379 = -_11312;
                float4 _11382 = 0.0f.xxxx;
                _11382.y = (-0.48860299587249755859375f) * _11379.y;
                _11382.z = 0.48860299587249755859375f * _11379.z;
                _11382.w = (-0.48860299587249755859375f) * _11379.x;
                _11382.x = 0.886227548122406005859375f;
                float3 _11391 = _11382.yzw * 2.094395160675048828125f;
                float4 _11392 = float4(_11382.x, _11391.x, _11391.y, _11391.z);
                float3 _11394 = 0.0f.xxx;
                _11394.x = dot(_11345, _11392);
                _11394.y = dot(_11350, _11392);
                _11394.z = dot(_11355, _11392);
                _11401 = max(0.0f.xxx, _11394) * 0.3183098733425140380859375f.xxx;
            }
            else
            {
                _11401 = 0.0f.xxx;
            }
            _11402 = _11401;
            _11403 = max(0.0f.xxx, _11370) * 0.3183098733425140380859375f.xxx;
        }
        else
        {
            _11402 = 0.0f.xxx;
            _11403 = 0.0f.xxx;
        }
        float3 _11516 = 0.0f.xxx;
        float3 _11517 = 0.0f.xxx;
        if (_8625)
        {
            float _11428 = 0.0f;
            float _11429 = 0.0f;
            float3 _11430 = 0.0f.xxx;
            [branch]
            if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
            {
                float3 _11418 = 0.0f.xxx;
                float _11419 = 0.0f;
                if (_8457)
                {
                    _11418 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                    _11419 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
                }
                else
                {
                    _11418 = _11312;
                    _11419 = 1.0f;
                }
                float _11422 = mad(_11419 - 1.0f, 1.0f - _11419, 1.0f);
                _11428 = lerp(clamp(dot(_11418, _11312), 0.0f, 1.0f), 1.0f, _11422);
                _11429 = _11419;
                _11430 = lerp(_11418, _11312, _11422.xxx);
            }
            else
            {
                _11428 = 1.0f;
                _11429 = 1.0f;
                _11430 = _11312;
            }
            float4 _11434 = float4(_11430, 1.0f);
            float3 _11438 = 0.0f.xxx;
            _11438.x = dot(View_SkyIrradianceEnvironmentMap[0u], _11434);
            _11438.y = dot(View_SkyIrradianceEnvironmentMap[1u], _11434);
            _11438.z = dot(View_SkyIrradianceEnvironmentMap[2u], _11434);
            float4 _11449 = _11434.xyzz * _11434.yzzx;
            float3 _11453 = 0.0f.xxx;
            _11453.x = dot(View_SkyIrradianceEnvironmentMap[3u], _11449);
            _11453.y = dot(View_SkyIrradianceEnvironmentMap[4u], _11449);
            _11453.z = dot(View_SkyIrradianceEnvironmentMap[5u], _11449);
            float3 _11515 = 0.0f.xxx;
            if (_11316)
            {
                float3 _11478 = -_11312;
                float _11479 = _11478.x;
                float _11480 = _11478.y;
                float4 _11482 = float4(_11479, _11480, _11478.z, 1.0f);
                float3 _11485 = 0.0f.xxx;
                _11485.x = dot(View_SkyIrradianceEnvironmentMap[0u], _11482);
                _11485.y = dot(View_SkyIrradianceEnvironmentMap[1u], _11482);
                _11485.z = dot(View_SkyIrradianceEnvironmentMap[2u], _11482);
                float4 _11494 = _11482.xyzz * _11482.yzzx;
                float3 _11497 = 0.0f.xxx;
                _11497.x = dot(View_SkyIrradianceEnvironmentMap[3u], _11494);
                _11497.y = dot(View_SkyIrradianceEnvironmentMap[4u], _11494);
                _11497.z = dot(View_SkyIrradianceEnvironmentMap[5u], _11494);
                _11515 = (max(0.0f.xxx, (_11485 + _11497) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_11479, _11479, -(_11480 * _11480)))) * View_View_SkyLightColor.xyz) * _11429;
            }
            else
            {
                _11515 = 0.0f.xxx;
            }
            _11516 = (max(0.0f.xxx, (_11438 + _11453) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_11430.x, _11430.x, -(_11430.y * _11430.y)))) * View_View_SkyLightColor.xyz) * (_11429 * _11428);
            _11517 = _11515;
        }
        else
        {
            _11516 = 0.0f.xxx;
            _11517 = 0.0f.xxx;
        }
        float3 _11519 = mad(_11403, View_View_PrecomputedIndirectLightingColorScale, _11516);
        float2 _11535 = 0.0f.xx;
        _11535.x = max(1.0f.xxx, 0.99960005283355712890625f.xxx).y;
        _11535.y = dot(_11519, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f));
        _11540 = mad(mad(_11519, _11311, mad(_11402, View_View_PrecomputedIndirectLightingColorScale, _11517) * _11313), max(1.0f.xxx, ((((((_11314 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_11314 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_11314 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), _10919);
        _11541 = 1.0f;
        _11542 = _11535;
    }
    else
    {
        _11540 = _10919;
        _11541 = 0.0f;
        _11542 = 0.0f.xx;
    }
    float2 _11545 = _11542 * (1.0f / max(1.0f, _11541));
    uint _11560 = (_11025 & 4294902015u) | ((uint(min(255.0f, mad(log2(mad(_11545.y * _11545.x, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f) * 255.0f)) & 255u) << 8u);
    uint _11561 = _11560 & 7u;
    bool _11563 = (_11561 == 1u) || false;
    bool _11564 = _11561 == 4u;
    bool _11566 = (_11561 == 2u) || false;
    bool _11567 = _11561 == 5u;
    bool _11568 = _11561 == 6u;
    bool _11575 = !_11564;
    bool _11576 = (((!_11563) && (!_11566)) && (!(_11567 || _11568))) && _11575;
    uint _11623 = 0u;
    uint _11624 = 0u;
    if (_11576)
    {
        float2 _11596 = _10774.xy / dot(1.0f.xxx, abs(_10774)).xx;
        float3 _11614 = 0.0f.xxx;
        if (_10774.z <= 0.0f)
        {
            float2 _11605 = _11596.xy;
            bool2 _11606 = bool2(_11605.x >= 0.0f.xx.x, _11605.y >= 0.0f.xx.y);
            float2 _11612 = (1.0f.xx - abs(_11596.yx)) * float2(_11606.x ? 1.0f : (-1.0f), _11606.y ? 1.0f : (-1.0f));
            _11614 = float3(_11612.x, _11612.y, _10774.z);
        }
        else
        {
            _11614 = float3(_11596.x, _11596.y, _10774.z);
        }
        _11623 = spvPackHalf2x16(float2(_11614.x, 0.0f)) | (spvPackHalf2x16(float2(_11614.y, 0.0f)) << 16u);
        _11624 = (((((((0u | ((_10928 & 15u) << 16u)) & 4287627263u) | 1048576u) & 4169138175u) | 0u) | (_11560 & 134217728u)) & 4294901760u) | ((_11560 & 65535u) << 0u);
    }
    else
    {
        _11623 = 0u;
        _11624 = 0u;
    }
    uint _11625 = _11576 ? 2u : 0u;
    uint _13633 = 0u;
    uint _13634 = 0u;
    uint _13635 = 0u;
    uint _13636 = 0u;
    uint _13637 = 0u;
    [branch]
    if (_10795)
    {
        uint _11635 = (((_10918 & 4294967263u) | 32u) & 4294901759u) | ((uint(any(bool3(false, false, false))) & 1u) << 16u);
        bool _11636 = _11563 && true;
        uint _12810 = 0u;
        uint _12811 = 0u;
        uint _12812 = 0u;
        uint _12813 = 0u;
        uint _12814 = 0u;
        if (_11636)
        {
            float _12652 = _8390 - 0.5f;
            float _12653 = _12652 * 0.0078740157186985015869140625f;
            float3 _12655 = float3(_12653, _12653, _12652 * 0.01587301678955554962158203125f);
            float3 _12656 = clamp(_10778.xyz, 0.0f.xxx, 1.0f.xxx);
            float _12657 = _12656.x;
            float _12666 = 0.0f;
            do
            {
                if (_12657 < 0.00313066993840038776397705078125f)
                {
                    _12666 = _12657 * 12.9200000762939453125f;
                    break;
                }
                _12666 = mad(pow(_12657, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12667 = _12656.y;
            float _12676 = 0.0f;
            do
            {
                if (_12667 < 0.00313066993840038776397705078125f)
                {
                    _12676 = _12667 * 12.9200000762939453125f;
                    break;
                }
                _12676 = mad(pow(_12667, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12677 = _12656.z;
            float _12686 = 0.0f;
            do
            {
                if (_12677 < 0.00313066993840038776397705078125f)
                {
                    _12686 = _12677 * 12.9200000762939453125f;
                    break;
                }
                _12686 = mad(pow(_12677, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float3 _12687 = float3(_12666, _12676, _12686);
            float3 _12693 = clamp(mad(_12655, float3(min((asuint(_12687) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12687), 0.0f.xxx, 1.0f.xxx);
            uint _12707 = ((uint(_12693.x * 127.0f) << 0u) | (uint(_12693.y * 127.0f) << 7u)) | (uint(_12693.z * 63.0f) << 14u);
            float3 _12712 = clamp(_8418.xyz, 0.0f.xxx, 1.0f.xxx);
            float _12713 = _12712.x;
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
            float _12723 = _12712.y;
            float _12732 = 0.0f;
            do
            {
                if (_12723 < 0.00313066993840038776397705078125f)
                {
                    _12732 = _12723 * 12.9200000762939453125f;
                    break;
                }
                _12732 = mad(pow(_12723, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12733 = _12712.z;
            float _12742 = 0.0f;
            do
            {
                if (_12733 < 0.00313066993840038776397705078125f)
                {
                    _12742 = _12733 * 12.9200000762939453125f;
                    break;
                }
                _12742 = mad(pow(_12733, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float3 _12743 = float3(_12722, _12732, _12742);
            float3 _12749 = clamp(mad(_12655, float3(min((asuint(_12743) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12743), 0.0f.xxx, 1.0f.xxx);
            uint _12771 = ((0u | ((_11560 & 65535u) << 0u)) & 65535u) | (((((_12707 >> 12u) & 255u) << 8u) | 0u) << 16u);
            uint _12786 = 0u;
            uint _12787 = 0u;
            uint _12788 = 0u;
            if (_11625 < 3u)
            {
                _12786 = (_11625 == 2u) ? _12771 : 0u;
                _12787 = (_11625 == 1u) ? _12771 : _11623;
                _12788 = (_11625 == 0u) ? _12771 : _11624;
            }
            else
            {
                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 - 3u)] = _12771;
                _12786 = 0u;
                _12787 = _11623;
                _12788 = _11624;
            }
            uint _12789 = _11625 + 1u;
            uint _12791 = (((uint(_12749.x * 127.0f) << 0u) | (uint(_12749.y * 127.0f) << 7u)) | (uint(_12749.z * 63.0f) << 14u)) | ((_12707 & 4095u) << 20u);
            uint _12806 = 0u;
            uint _12807 = 0u;
            uint _12808 = 0u;
            if (_12789 < 3u)
            {
                _12806 = (_12789 == 2u) ? _12791 : _12786;
                _12807 = (_12789 == 1u) ? _12791 : _12787;
                _12808 = (_12789 == 0u) ? _12791 : _12788;
            }
            else
            {
                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 + 4294967294u)] = _12791;
                _12806 = _12786;
                _12807 = _12787;
                _12808 = _12788;
            }
            _12810 = 0u;
            _12811 = _12806;
            _12812 = _12807;
            _12813 = _12808;
            _12814 = _11625 + 2u;
        }
        else
        {
            uint _12646 = 0u;
            uint _12647 = 0u;
            uint _12648 = 0u;
            uint _12649 = 0u;
            uint _12650 = 0u;
            if (_11566 && true)
            {
                uint _11876 = (_11635 & 4294967293u) | 2u;
                uint _11883 = ((0u | ((_11560 & 65535u) << 0u)) & 65535u) | ((_11023 & 7u) << 16u);
                uint _12641 = 0u;
                uint _12642 = 0u;
                uint _12643 = 0u;
                uint _12644 = 0u;
                uint _12645 = 0u;
                [branch]
                if (_11023 == 0u)
                {
                    uint _12622 = _11883 | ((_11876 & 2047u) << 19u);
                    uint _12637 = 0u;
                    uint _12638 = 0u;
                    uint _12639 = 0u;
                    if (_11625 < 3u)
                    {
                        _12637 = (_11625 == 2u) ? _12622 : 0u;
                        _12638 = (_11625 == 1u) ? _12622 : _11623;
                        _12639 = (_11625 == 0u) ? _12622 : _11624;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 - 3u)] = _12622;
                        _12637 = 0u;
                        _12638 = _11623;
                        _12639 = _11624;
                    }
                    _12641 = _11876;
                    _12642 = _12637;
                    _12643 = _12638;
                    _12644 = _12639;
                    _12645 = _11625 + 1u;
                }
                else
                {
                    uint _12615 = 0u;
                    uint _12616 = 0u;
                    uint _12617 = 0u;
                    uint _12618 = 0u;
                    uint _12619 = 0u;
                    if (_11023 == 1u)
                    {
                        float _12491 = _8390 - 0.5f;
                        float _12492 = _12491 * 0.0078740157186985015869140625f;
                        float3 _12495 = clamp(_10778.xyz, 0.0f.xxx, 1.0f.xxx);
                        float _12496 = _12495.x;
                        float _12505 = 0.0f;
                        do
                        {
                            if (_12496 < 0.00313066993840038776397705078125f)
                            {
                                _12505 = _12496 * 12.9200000762939453125f;
                                break;
                            }
                            _12505 = mad(pow(_12496, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12506 = _12495.y;
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
                        float _12516 = _12495.z;
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
                        float3 _12526 = float3(_12505, _12515, _12525);
                        float3 _12532 = clamp(mad(float3(_12492, _12492, _12491 * 0.01587301678955554962158203125f), float3(min((asuint(_12526) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12526), 0.0f.xxx, 1.0f.xxx);
                        uint _12558 = _11883 | 0u;
                        uint _12573 = 0u;
                        uint _12574 = 0u;
                        uint _12575 = 0u;
                        if (_11625 < 3u)
                        {
                            _12573 = (_11625 == 2u) ? _12558 : 0u;
                            _12574 = (_11625 == 1u) ? _12558 : _11623;
                            _12575 = (_11625 == 0u) ? _12558 : _11624;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 - 3u)] = _12558;
                            _12573 = 0u;
                            _12574 = _11623;
                            _12575 = _11624;
                        }
                        uint _12576 = _11625 + 1u;
                        uint _12577 = (((uint(_12532.x * 127.0f) << 0u) | (uint(_12532.y * 127.0f) << 7u)) | (uint(_12532.z * 63.0f) << 14u)) | 0u;
                        uint _12592 = 0u;
                        uint _12593 = 0u;
                        uint _12594 = 0u;
                        if (_12576 < 3u)
                        {
                            _12592 = (_12576 == 2u) ? _12577 : _12573;
                            _12593 = (_12576 == 1u) ? _12577 : _12574;
                            _12594 = (_12576 == 0u) ? _12577 : _12575;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 + 4294967294u)] = _12577;
                            _12592 = _12573;
                            _12593 = _12574;
                            _12594 = _12575;
                        }
                        uint _12595 = _11625 + 2u;
                        uint _12596 = (((0u | (uint(clamp(_10781, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_10785, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u) | 0u;
                        uint _12611 = 0u;
                        uint _12612 = 0u;
                        uint _12613 = 0u;
                        if (_12595 < 3u)
                        {
                            _12611 = (_12595 == 2u) ? _12596 : _12592;
                            _12612 = (_12595 == 1u) ? _12596 : _12593;
                            _12613 = (_12595 == 0u) ? _12596 : _12594;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 + 4294967295u)] = _12596;
                            _12611 = _12592;
                            _12612 = _12593;
                            _12613 = _12594;
                        }
                        _12615 = 0u;
                        _12616 = _12611;
                        _12617 = _12612;
                        _12618 = _12613;
                        _12619 = _11625 + 3u;
                    }
                    else
                    {
                        uint _12485 = 0u;
                        uint _12486 = 0u;
                        uint _12487 = 0u;
                        uint _12488 = 0u;
                        uint _12489 = 0u;
                        if (_11023 == 2u)
                        {
                            float _12276 = _8390 - 0.5f;
                            float _12277 = _12276 * 0.0078740157186985015869140625f;
                            float3 _12279 = float3(_12277, _12277, _12276 * 0.01587301678955554962158203125f);
                            float3 _12280 = clamp(_10778.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _12281 = _12280.x;
                            float _12290 = 0.0f;
                            do
                            {
                                if (_12281 < 0.00313066993840038776397705078125f)
                                {
                                    _12290 = _12281 * 12.9200000762939453125f;
                                    break;
                                }
                                _12290 = mad(pow(_12281, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12291 = _12280.y;
                            float _12300 = 0.0f;
                            do
                            {
                                if (_12291 < 0.00313066993840038776397705078125f)
                                {
                                    _12300 = _12291 * 12.9200000762939453125f;
                                    break;
                                }
                                _12300 = mad(pow(_12291, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12301 = _12280.z;
                            float _12310 = 0.0f;
                            do
                            {
                                if (_12301 < 0.00313066993840038776397705078125f)
                                {
                                    _12310 = _12301 * 12.9200000762939453125f;
                                    break;
                                }
                                _12310 = mad(pow(_12301, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12311 = float3(_12290, _12300, _12310);
                            float3 _12317 = clamp(mad(_12279, float3(min((asuint(_12311) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12311), 0.0f.xxx, 1.0f.xxx);
                            float3 _12333 = clamp(_8418.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _12334 = _12333.x;
                            float _12343 = 0.0f;
                            do
                            {
                                if (_12334 < 0.00313066993840038776397705078125f)
                                {
                                    _12343 = _12334 * 12.9200000762939453125f;
                                    break;
                                }
                                _12343 = mad(pow(_12334, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12344 = _12333.y;
                            float _12353 = 0.0f;
                            do
                            {
                                if (_12344 < 0.00313066993840038776397705078125f)
                                {
                                    _12353 = _12344 * 12.9200000762939453125f;
                                    break;
                                }
                                _12353 = mad(pow(_12344, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12354 = _12333.z;
                            float _12363 = 0.0f;
                            do
                            {
                                if (_12354 < 0.00313066993840038776397705078125f)
                                {
                                    _12363 = _12354 * 12.9200000762939453125f;
                                    break;
                                }
                                _12363 = mad(pow(_12354, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12364 = float3(_12343, _12353, _12363);
                            float3 _12370 = clamp(mad(_12279, float3(min((asuint(_12364) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12364), 0.0f.xxx, 1.0f.xxx);
                            float _12390 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12390 = 0.0f;
                                    break;
                                }
                                _12390 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12396 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12396 = 0.0f;
                                    break;
                                }
                                _12396 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12402 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12402 = 0.0f;
                                    break;
                                }
                                _12402 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12403 = float3(_12390, _12396, _12402);
                            float3 _12409 = clamp(mad(_12279, float3(min((asuint(_12403) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12403), 0.0f.xxx, 1.0f.xxx);
                            uint _12423 = ((uint(_12409.x * 127.0f) << 0u) | (uint(_12409.y * 127.0f) << 7u)) | (uint(_12409.z * 63.0f) << 14u);
                            uint _12424 = _11883 | 0u;
                            uint _12439 = 0u;
                            uint _12440 = 0u;
                            uint _12441 = 0u;
                            if (_11625 < 3u)
                            {
                                _12439 = (_11625 == 2u) ? _12424 : 0u;
                                _12440 = (_11625 == 1u) ? _12424 : _11623;
                                _12441 = (_11625 == 0u) ? _12424 : _11624;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 - 3u)] = _12424;
                                _12439 = 0u;
                                _12440 = _11623;
                                _12441 = _11624;
                            }
                            uint _12442 = _11625 + 1u;
                            uint _12445 = (((uint(_12317.x * 127.0f) << 0u) | (uint(_12317.y * 127.0f) << 7u)) | (uint(_12317.z * 63.0f) << 14u)) | ((_12423 & 1047552u) << 10u);
                            uint _12460 = 0u;
                            uint _12461 = 0u;
                            uint _12462 = 0u;
                            if (_12442 < 3u)
                            {
                                _12460 = (_12442 == 2u) ? _12445 : _12439;
                                _12461 = (_12442 == 1u) ? _12445 : _12440;
                                _12462 = (_12442 == 0u) ? _12445 : _12441;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 + 4294967294u)] = _12445;
                                _12460 = _12439;
                                _12461 = _12440;
                                _12462 = _12441;
                            }
                            uint _12463 = _11625 + 2u;
                            uint _12466 = (((uint(_12370.x * 127.0f) << 0u) | (uint(_12370.y * 127.0f) << 7u)) | (uint(_12370.z * 63.0f) << 14u)) | ((_12423 & 1023u) << 20u);
                            uint _12481 = 0u;
                            uint _12482 = 0u;
                            uint _12483 = 0u;
                            if (_12463 < 3u)
                            {
                                _12481 = (_12463 == 2u) ? _12466 : _12460;
                                _12482 = (_12463 == 1u) ? _12466 : _12461;
                                _12483 = (_12463 == 0u) ? _12466 : _12462;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 + 4294967295u)] = _12466;
                                _12481 = _12460;
                                _12482 = _12461;
                                _12483 = _12462;
                            }
                            _12485 = 0u;
                            _12486 = _12481;
                            _12487 = _12482;
                            _12488 = _12483;
                            _12489 = _11625 + 3u;
                        }
                        else
                        {
                            uint _12270 = 0u;
                            uint _12271 = 0u;
                            uint _12272 = 0u;
                            uint _12273 = 0u;
                            uint _12274 = 0u;
                            if ((_11023 == 3u) || (_11023 == 5u))
                            {
                                float _12080 = _8390 - 0.5f;
                                float _12081 = _12080 * 0.0078740157186985015869140625f;
                                float3 _12083 = float3(_12081, _12081, _12080 * 0.01587301678955554962158203125f);
                                float3 _12084 = clamp(_10778.xyz, 0.0f.xxx, 1.0f.xxx);
                                float _12085 = _12084.x;
                                float _12094 = 0.0f;
                                do
                                {
                                    if (_12085 < 0.00313066993840038776397705078125f)
                                    {
                                        _12094 = _12085 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12094 = mad(pow(_12085, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _12095 = _12084.y;
                                float _12104 = 0.0f;
                                do
                                {
                                    if (_12095 < 0.00313066993840038776397705078125f)
                                    {
                                        _12104 = _12095 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12104 = mad(pow(_12095, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _12105 = _12084.z;
                                float _12114 = 0.0f;
                                do
                                {
                                    if (_12105 < 0.00313066993840038776397705078125f)
                                    {
                                        _12114 = _12105 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12114 = mad(pow(_12105, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float3 _12115 = float3(_12094, _12104, _12114);
                                float3 _12121 = clamp(mad(_12083, float3(min((asuint(_12115) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12115), 0.0f.xxx, 1.0f.xxx);
                                float3 _12137 = clamp(_8418.xyz, 0.0f.xxx, 1.0f.xxx);
                                float _12138 = _12137.x;
                                float _12147 = 0.0f;
                                do
                                {
                                    if (_12138 < 0.00313066993840038776397705078125f)
                                    {
                                        _12147 = _12138 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12147 = mad(pow(_12138, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _12148 = _12137.y;
                                float _12157 = 0.0f;
                                do
                                {
                                    if (_12148 < 0.00313066993840038776397705078125f)
                                    {
                                        _12157 = _12148 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12157 = mad(pow(_12148, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _12158 = _12137.z;
                                float _12167 = 0.0f;
                                do
                                {
                                    if (_12158 < 0.00313066993840038776397705078125f)
                                    {
                                        _12167 = _12158 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12167 = mad(pow(_12158, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float3 _12168 = float3(_12147, _12157, _12167);
                                float3 _12174 = clamp(mad(_12083, float3(min((asuint(_12168) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12168), 0.0f.xxx, 1.0f.xxx);
                                uint _12193 = spvPackHalf2x16(0.0f.xx);
                                uint _12201 = (((_12193 << 15u) & 1072693248u) | ((_12193 << 5u) & 1047552u)) | ((_12193 >> 5u) & 1023u);
                                uint _12211 = (_11883 | ((uint(clamp(clamp(1.0f - abs(0.0f), 0.0f, 1.0f), 0.0f, 1.0f) * 127.0f) & 127u) << 19u)) | (((_12201 >> 24u) & 63u) << 26u);
                                uint _12226 = 0u;
                                uint _12227 = 0u;
                                uint _12228 = 0u;
                                if (_11625 < 3u)
                                {
                                    _12226 = (_11625 == 2u) ? _12211 : 0u;
                                    _12227 = (_11625 == 1u) ? _12211 : _11623;
                                    _12228 = (_11625 == 0u) ? _12211 : _11624;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 - 3u)] = _12211;
                                    _12226 = 0u;
                                    _12227 = _11623;
                                    _12228 = _11624;
                                }
                                uint _12229 = _11625 + 1u;
                                uint _12231 = (((uint(_12121.x * 127.0f) << 0u) | (uint(_12121.y * 127.0f) << 7u)) | (uint(_12121.z * 63.0f) << 14u)) | ((_12201 & 4095u) << 20u);
                                uint _12246 = 0u;
                                uint _12247 = 0u;
                                uint _12248 = 0u;
                                if (_12229 < 3u)
                                {
                                    _12246 = (_12229 == 2u) ? _12231 : _12226;
                                    _12247 = (_12229 == 1u) ? _12231 : _12227;
                                    _12248 = (_12229 == 0u) ? _12231 : _12228;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 + 4294967294u)] = _12231;
                                    _12246 = _12226;
                                    _12247 = _12227;
                                    _12248 = _12228;
                                }
                                uint _12249 = _11625 + 2u;
                                uint _12251 = (((uint(_12174.x * 127.0f) << 0u) | (uint(_12174.y * 127.0f) << 7u)) | (uint(_12174.z * 63.0f) << 14u)) | (((_12201 >> 12u) & 4095u) << 20u);
                                uint _12266 = 0u;
                                uint _12267 = 0u;
                                uint _12268 = 0u;
                                if (_12249 < 3u)
                                {
                                    _12266 = (_12249 == 2u) ? _12251 : _12246;
                                    _12267 = (_12249 == 1u) ? _12251 : _12247;
                                    _12268 = (_12249 == 0u) ? _12251 : _12248;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 + 4294967295u)] = _12251;
                                    _12266 = _12246;
                                    _12267 = _12247;
                                    _12268 = _12248;
                                }
                                _12270 = 0u;
                                _12271 = _12266;
                                _12272 = _12267;
                                _12273 = _12268;
                                _12274 = _11625 + 3u;
                            }
                            else
                            {
                                bool _11902 = _11023 == 4u;
                                uint _12072 = 0u;
                                uint _12073 = 0u;
                                uint _12074 = 0u;
                                uint _12075 = 0u;
                                if (_11902)
                                {
                                    float _11906 = _8390 - 0.5f;
                                    float _11907 = _11906 * 0.0078740157186985015869140625f;
                                    float3 _11909 = float3(_11907, _11907, _11906 * 0.01587301678955554962158203125f);
                                    float3 _11910 = clamp(_10778.xyz, 0.0f.xxx, 1.0f.xxx);
                                    float _11911 = _11910.x;
                                    float _11920 = 0.0f;
                                    do
                                    {
                                        if (_11911 < 0.00313066993840038776397705078125f)
                                        {
                                            _11920 = _11911 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11920 = mad(pow(_11911, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11921 = _11910.y;
                                    float _11930 = 0.0f;
                                    do
                                    {
                                        if (_11921 < 0.00313066993840038776397705078125f)
                                        {
                                            _11930 = _11921 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11930 = mad(pow(_11921, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11931 = _11910.z;
                                    float _11940 = 0.0f;
                                    do
                                    {
                                        if (_11931 < 0.00313066993840038776397705078125f)
                                        {
                                            _11940 = _11931 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11940 = mad(pow(_11931, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float3 _11941 = float3(_11920, _11930, _11940);
                                    float3 _11947 = clamp(mad(_11909, float3(min((asuint(_11941) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11941), 0.0f.xxx, 1.0f.xxx);
                                    float3 _11963 = clamp(_8418.xyz, 0.0f.xxx, 1.0f.xxx);
                                    float _11964 = _11963.x;
                                    float _11973 = 0.0f;
                                    do
                                    {
                                        if (_11964 < 0.00313066993840038776397705078125f)
                                        {
                                            _11973 = _11964 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11973 = mad(pow(_11964, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11974 = _11963.y;
                                    float _11983 = 0.0f;
                                    do
                                    {
                                        if (_11974 < 0.00313066993840038776397705078125f)
                                        {
                                            _11983 = _11974 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11983 = mad(pow(_11974, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11984 = _11963.z;
                                    float _11993 = 0.0f;
                                    do
                                    {
                                        if (_11984 < 0.00313066993840038776397705078125f)
                                        {
                                            _11993 = _11984 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11993 = mad(pow(_11984, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float3 _11994 = float3(_11973, _11983, _11993);
                                    float3 _12000 = clamp(mad(_11909, float3(min((asuint(_11994) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11994), 0.0f.xxx, 1.0f.xxx);
                                    uint _12015 = _11883 | 0u;
                                    uint _12030 = 0u;
                                    uint _12031 = 0u;
                                    uint _12032 = 0u;
                                    if (_11625 < 3u)
                                    {
                                        _12030 = (_11625 == 2u) ? _12015 : 0u;
                                        _12031 = (_11625 == 1u) ? _12015 : _11623;
                                        _12032 = (_11625 == 0u) ? _12015 : _11624;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 - 3u)] = _12015;
                                        _12030 = 0u;
                                        _12031 = _11623;
                                        _12032 = _11624;
                                    }
                                    uint _12033 = _11625 + 1u;
                                    uint _12034 = (((uint(_11947.x * 127.0f) << 0u) | (uint(_11947.y * 127.0f) << 7u)) | (uint(_11947.z * 63.0f) << 14u)) | 0u;
                                    uint _12049 = 0u;
                                    uint _12050 = 0u;
                                    uint _12051 = 0u;
                                    if (_12033 < 3u)
                                    {
                                        _12049 = (_12033 == 2u) ? _12034 : _12030;
                                        _12050 = (_12033 == 1u) ? _12034 : _12031;
                                        _12051 = (_12033 == 0u) ? _12034 : _12032;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 + 4294967294u)] = _12034;
                                        _12049 = _12030;
                                        _12050 = _12031;
                                        _12051 = _12032;
                                    }
                                    uint _12052 = _11625 + 2u;
                                    uint _12053 = (((uint(_12000.x * 127.0f) << 0u) | (uint(_12000.y * 127.0f) << 7u)) | (uint(_12000.z * 63.0f) << 14u)) | 0u;
                                    uint _12068 = 0u;
                                    uint _12069 = 0u;
                                    uint _12070 = 0u;
                                    if (_12052 < 3u)
                                    {
                                        _12068 = (_12052 == 2u) ? _12053 : _12049;
                                        _12069 = (_12052 == 1u) ? _12053 : _12050;
                                        _12070 = (_12052 == 0u) ? _12053 : _12051;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 + 4294967295u)] = _12053;
                                        _12068 = _12049;
                                        _12069 = _12050;
                                        _12070 = _12051;
                                    }
                                    _12072 = _12068;
                                    _12073 = _12069;
                                    _12074 = _12070;
                                    _12075 = _11625 + 3u;
                                }
                                else
                                {
                                    _12072 = 0u;
                                    _12073 = _11623;
                                    _12074 = _11624;
                                    _12075 = _11625;
                                }
                                _12270 = _11902 ? 0u : _11876;
                                _12271 = _12072;
                                _12272 = _12073;
                                _12273 = _12074;
                                _12274 = _12075;
                            }
                            _12485 = _12270;
                            _12486 = _12271;
                            _12487 = _12272;
                            _12488 = _12273;
                            _12489 = _12274;
                        }
                        _12615 = _12485;
                        _12616 = _12486;
                        _12617 = _12487;
                        _12618 = _12488;
                        _12619 = _12489;
                    }
                    _12641 = _12615;
                    _12642 = _12616;
                    _12643 = _12617;
                    _12644 = _12618;
                    _12645 = _12619;
                }
                _12646 = _12641;
                _12647 = _12642;
                _12648 = _12643;
                _12649 = _12644;
                _12650 = _12645;
            }
            else
            {
                uint _11870 = 0u;
                uint _11871 = 0u;
                uint _11872 = 0u;
                uint _11873 = 0u;
                uint _11874 = 0u;
                if (_11568)
                {
                    uint _11851 = ((0u | ((_11560 & 65535u) << 0u)) & 65535u) | ((0u | (uint(clamp(_10781, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u);
                    uint _11866 = 0u;
                    uint _11867 = 0u;
                    uint _11868 = 0u;
                    if (_11625 < 3u)
                    {
                        _11866 = (_11625 == 2u) ? _11851 : 0u;
                        _11867 = (_11625 == 1u) ? _11851 : _11623;
                        _11868 = (_11625 == 0u) ? _11851 : _11624;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 - 3u)] = _11851;
                        _11866 = 0u;
                        _11867 = _11623;
                        _11868 = _11624;
                    }
                    _11870 = _11635;
                    _11871 = _11866;
                    _11872 = _11867;
                    _11873 = _11868;
                    _11874 = _11625 + 1u;
                }
                else
                {
                    uint _11836 = 0u;
                    uint _11837 = 0u;
                    uint _11838 = 0u;
                    uint _11839 = 0u;
                    uint _11840 = 0u;
                    if (_11567)
                    {
                        uint _11817 = (0u | ((_11560 & 65535u) << 0u)) & 65535u;
                        uint _11832 = 0u;
                        uint _11833 = 0u;
                        uint _11834 = 0u;
                        if (_11625 < 3u)
                        {
                            _11832 = (_11625 == 2u) ? _11817 : 0u;
                            _11833 = (_11625 == 1u) ? _11817 : _11623;
                            _11834 = (_11625 == 0u) ? _11817 : _11624;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 - 3u)] = _11817;
                            _11832 = 0u;
                            _11833 = _11623;
                            _11834 = _11624;
                        }
                        _11836 = _11635;
                        _11837 = _11832;
                        _11838 = _11833;
                        _11839 = _11834;
                        _11840 = _11625 + 1u;
                    }
                    else
                    {
                        uint _11809 = 0u;
                        uint _11810 = 0u;
                        uint _11811 = 0u;
                        uint _11812 = 0u;
                        uint _11813 = 0u;
                        if (_11564)
                        {
                            float _11679 = _8390 - 0.5f;
                            float _11680 = _11679 * 0.0078740157186985015869140625f;
                            float3 _11682 = float3(_11680, _11680, _11679 * 0.01587301678955554962158203125f);
                            float3 _11683 = clamp(_10778.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _11684 = _11683.x;
                            float _11693 = 0.0f;
                            do
                            {
                                if (_11684 < 0.00313066993840038776397705078125f)
                                {
                                    _11693 = _11684 * 12.9200000762939453125f;
                                    break;
                                }
                                _11693 = mad(pow(_11684, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _11694 = _11683.y;
                            float _11703 = 0.0f;
                            do
                            {
                                if (_11694 < 0.00313066993840038776397705078125f)
                                {
                                    _11703 = _11694 * 12.9200000762939453125f;
                                    break;
                                }
                                _11703 = mad(pow(_11694, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _11704 = _11683.z;
                            float _11713 = 0.0f;
                            do
                            {
                                if (_11704 < 0.00313066993840038776397705078125f)
                                {
                                    _11713 = _11704 * 12.9200000762939453125f;
                                    break;
                                }
                                _11713 = mad(pow(_11704, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _11714 = float3(_11693, _11703, _11713);
                            float3 _11720 = clamp(mad(_11682, float3(min((asuint(_11714) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11714), 0.0f.xxx, 1.0f.xxx);
                            uint _11734 = ((uint(_11720.x * 127.0f) << 0u) | (uint(_11720.y * 127.0f) << 7u)) | (uint(_11720.z * 63.0f) << 14u);
                            float3 _11742 = clamp(float3(_10787, 0.0f, _10781), 0.0f.xxx, 1.0f.xxx);
                            float3 _11748 = clamp(mad(_11682, float3(min((asuint(_11742) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11742), 0.0f.xxx, 1.0f.xxx);
                            uint _11770 = ((0u | ((_11560 & 65535u) << 0u)) & 65535u) | (((((_11734 >> 12u) & 255u) << 8u) | uint(clamp(_10785, 0.0f, 1.0f) * 255.0f)) << 16u);
                            uint _11785 = 0u;
                            uint _11786 = 0u;
                            uint _11787 = 0u;
                            if (_11625 < 3u)
                            {
                                _11785 = (_11625 == 2u) ? _11770 : 0u;
                                _11786 = (_11625 == 1u) ? _11770 : _11623;
                                _11787 = (_11625 == 0u) ? _11770 : _11624;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 - 3u)] = _11770;
                                _11785 = 0u;
                                _11786 = _11623;
                                _11787 = _11624;
                            }
                            uint _11788 = _11625 + 1u;
                            uint _11790 = ((_11734 & 4095u) << 20u) | (((uint(_11748.x * 127.0f) << 0u) | (uint(_11748.y * 127.0f) << 7u)) | (uint(_11748.z * 63.0f) << 14u));
                            uint _11805 = 0u;
                            uint _11806 = 0u;
                            uint _11807 = 0u;
                            if (_11788 < 3u)
                            {
                                _11805 = (_11788 == 2u) ? _11790 : _11785;
                                _11806 = (_11788 == 1u) ? _11790 : _11786;
                                _11807 = (_11788 == 0u) ? _11790 : _11787;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 + 4294967294u)] = _11790;
                                _11805 = _11785;
                                _11806 = _11786;
                                _11807 = _11787;
                            }
                            _11809 = 0u;
                            _11810 = _11805;
                            _11811 = _11806;
                            _11812 = _11807;
                            _11813 = _11625 + 2u;
                        }
                        else
                        {
                            uint _11659 = (_11635 & 4194303u) | ((((spvPackHalf2x16(float2(1.0f, 0.0f)) >> 5u) & 1023u) & 1023u) << 22u);
                            uint _11674 = 0u;
                            uint _11675 = 0u;
                            uint _11676 = 0u;
                            if (_11625 < 3u)
                            {
                                _11674 = (_11625 == 2u) ? _11659 : 0u;
                                _11675 = (_11625 == 1u) ? _11659 : _11623;
                                _11676 = (_11625 == 0u) ? _11659 : _11624;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _11625 - 3u)] = _11659;
                                _11674 = 0u;
                                _11675 = _11623;
                                _11676 = _11624;
                            }
                            _11809 = _11659;
                            _11810 = _11674;
                            _11811 = _11675;
                            _11812 = _11676;
                            _11813 = _11625 + 1u;
                        }
                        _11836 = _11809;
                        _11837 = _11810;
                        _11838 = _11811;
                        _11839 = _11812;
                        _11840 = _11813;
                    }
                    _11870 = _11836;
                    _11871 = _11837;
                    _11872 = _11838;
                    _11873 = _11839;
                    _11874 = _11840;
                }
                _12646 = _11870;
                _12647 = _11871;
                _12648 = _11872;
                _12649 = _11873;
                _12650 = _11874;
            }
            _12810 = _12646;
            _12811 = _12647;
            _12812 = _12648;
            _12813 = _12649;
            _12814 = _12650;
        }
        uint _13628 = 0u;
        uint _13629 = 0u;
        uint _13630 = 0u;
        uint _13631 = 0u;
        uint _13632 = 0u;
        if (((!_11636) && _11575) && (_11023 == 0u))
        {
            uint _13623 = 0u;
            uint _13624 = 0u;
            uint _13625 = 0u;
            uint _13626 = 0u;
            uint _13627 = 0u;
            switch ((_12810 >> 11u) & 7u)
            {
                case 0u:
                {
                    float _13118 = _8390 - 0.5f;
                    float _13119 = _13118 * 0.0078740157186985015869140625f;
                    float _13120 = _13118 * 0.01587301678955554962158203125f;
                    float3 _13121 = float3(_13119, _13119, _13120);
                    float3 _13122 = clamp(_10778.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _13123 = _13122.x;
                    float _13132 = 0.0f;
                    do
                    {
                        if (_13123 < 0.00313066993840038776397705078125f)
                        {
                            _13132 = _13123 * 12.9200000762939453125f;
                            break;
                        }
                        _13132 = mad(pow(_13123, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13133 = _13122.y;
                    float _13142 = 0.0f;
                    do
                    {
                        if (_13133 < 0.00313066993840038776397705078125f)
                        {
                            _13142 = _13133 * 12.9200000762939453125f;
                            break;
                        }
                        _13142 = mad(pow(_13133, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13143 = _13122.z;
                    float _13152 = 0.0f;
                    do
                    {
                        if (_13143 < 0.00313066993840038776397705078125f)
                        {
                            _13152 = _13143 * 12.9200000762939453125f;
                            break;
                        }
                        _13152 = mad(pow(_13143, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float3 _13153 = float3(_13132, _13142, _13152);
                    float3 _13159 = clamp(mad(_13121, float3(min((asuint(_13153) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13153), 0.0f.xxx, 1.0f.xxx);
                    float3 _13175 = clamp(_8418.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _13176 = _13175.x;
                    float _13185 = 0.0f;
                    do
                    {
                        if (_13176 < 0.00313066993840038776397705078125f)
                        {
                            _13185 = _13176 * 12.9200000762939453125f;
                            break;
                        }
                        _13185 = mad(pow(_13176, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13186 = _13175.y;
                    float _13195 = 0.0f;
                    do
                    {
                        if (_13186 < 0.00313066993840038776397705078125f)
                        {
                            _13195 = _13186 * 12.9200000762939453125f;
                            break;
                        }
                        _13195 = mad(pow(_13186, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13196 = _13175.z;
                    float _13205 = 0.0f;
                    do
                    {
                        if (_13196 < 0.00313066993840038776397705078125f)
                        {
                            _13205 = _13196 * 12.9200000762939453125f;
                            break;
                        }
                        _13205 = mad(pow(_13196, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float3 _13206 = float3(_13185, _13195, _13205);
                    float3 _13212 = clamp(mad(_13121, float3(min((asuint(_13206) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13206), 0.0f.xxx, 1.0f.xxx);
                    uint _13226 = ((uint(_13212.x * 127.0f) << 0u) | (uint(_13212.y * 127.0f) << 7u)) | (uint(_13212.z * 63.0f) << 14u);
                    uint _13230 = (((((uint(_13159.x * 127.0f) << 0u) | (uint(_13159.y * 127.0f) << 7u)) | (uint(_13159.z * 63.0f) << 14u)) << 12u) & 4294963200u) | (_13226 & 4095u);
                    uint _13247 = 0u;
                    uint _13248 = 0u;
                    uint _13249 = 0u;
                    if (_12814 < 3u)
                    {
                        _13247 = (_12814 == 2u) ? _13230 : _12811;
                        _13248 = (_12814 == 1u) ? _13230 : _12812;
                        _13249 = (_12814 == 0u) ? _13230 : _12813;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _12814 - 3u)] = _13230;
                        _13247 = _12811;
                        _13248 = _12812;
                        _13249 = _12813;
                    }
                    uint _13250 = _12814 + 1u;
                    uint _13259 = ((_13226 >> 12u) & 255u) | ((0u | (uint(clamp((_10787 + 1.0f) * 0.5f, 0.0f, 1.0f) * 255.0f) << 16u)) | 2130706432u);
                    uint _13274 = 0u;
                    uint _13275 = 0u;
                    uint _13276 = 0u;
                    if (_13250 < 3u)
                    {
                        _13274 = (_13250 == 2u) ? _13259 : _13247;
                        _13275 = (_13250 == 1u) ? _13259 : _13248;
                        _13276 = (_13250 == 0u) ? _13259 : _13249;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _12814 + 4294967294u)] = _13259;
                        _13274 = _13247;
                        _13275 = _13248;
                        _13276 = _13249;
                    }
                    uint _13277 = _12814 + 2u;
                    uint _13328 = 0u;
                    uint _13329 = 0u;
                    uint _13330 = 0u;
                    uint _13331 = 0u;
                    if ((((_12810 >> 7u) & 1u) != 0u) || (((_12810 >> 6u) & 1u) != 0u))
                    {
                        bool3 _13290 = (max(0.0f, max(0.0f, 0.0f)) > 0.0f).xxx;
                        float3 _13291 = float3(_13290.x ? 0.0f.xxx.x : 1.0f.xxx.x, _13290.y ? 0.0f.xxx.y : 1.0f.xxx.y, _13290.z ? 0.0f.xxx.z : 1.0f.xxx.z);
                        float3 _13295 = mad(float3(_548, dot(_13291, float3(2.0f, 0.0f, -2.0f)), dot(_13291, float3(-1.0f, 2.0f, -1.0f))), 0.25f.xxx, float3(0.0f, 0.5f, 0.5f));
                        uint _13309 = 0u | ((((uint(clamp(_13295.y, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13295.z, 0.0f, 1.0f) * 255.0f) << 8u)) | 0u) | 0u);
                        uint _13324 = 0u;
                        uint _13325 = 0u;
                        uint _13326 = 0u;
                        if (_13277 < 3u)
                        {
                            _13324 = (_13277 == 2u) ? _13309 : _13274;
                            _13325 = (_13277 == 1u) ? _13309 : _13275;
                            _13326 = (_13277 == 0u) ? _13309 : _13276;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _12814 + 4294967295u)] = _13309;
                            _13324 = _13274;
                            _13325 = _13275;
                            _13326 = _13276;
                        }
                        _13328 = _13324;
                        _13329 = _13325;
                        _13330 = _13326;
                        _13331 = _12814 + 3u;
                    }
                    else
                    {
                        _13328 = _13274;
                        _13329 = _13275;
                        _13330 = _13276;
                        _13331 = _13277;
                    }
                    uint _13333 = (_12810 >> 2u) & 7u;
                    uint _13504 = 0u;
                    uint _13505 = 0u;
                    uint _13506 = 0u;
                    uint _13507 = 0u;
                    uint _13508 = 0u;
                    uint _13509 = 0u;
                    if (_13333 != 0u)
                    {
                        uint _13428 = 0u;
                        uint _13429 = 0u;
                        if (_13333 != 4u)
                        {
                            uint _13342 = (_11024 & 4294967292u) | (_13333 & 3u);
                            uint _13376 = 0u;
                            if (_13333 == 1u)
                            {
                                _13376 = (_13342 & 3u) | (uint(clamp(1.0f - abs(0.0f), 0.0f, 1.0f) * 255.0f) << 2u);
                            }
                            else
                            {
                                uint _13367 = 0u;
                                if (_13333 == 3u)
                                {
                                    _13367 = ((_13342 & 3u) | (uint(mad(0.0f, 255.0f, 0.5f)) << 24u)) | 0u;
                                }
                                else
                                {
                                    uint _13354 = (spvPackHalf2x16(0.0f.xx) >> 5u) & 1023u;
                                    _13367 = (_13342 & 3u) | (((_13354 << 22u) | (_13354 << 12u)) | (_13354 << 2u));
                                }
                                _13376 = _13367;
                            }
                            float3 _13382 = clamp(float4(_10778, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                            float _13383 = _13382.x;
                            float _13392 = 0.0f;
                            do
                            {
                                if (_13383 < 0.00313066993840038776397705078125f)
                                {
                                    _13392 = _13383 * 12.9200000762939453125f;
                                    break;
                                }
                                _13392 = mad(pow(_13383, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _13393 = _13382.y;
                            float _13402 = 0.0f;
                            do
                            {
                                if (_13393 < 0.00313066993840038776397705078125f)
                                {
                                    _13402 = _13393 * 12.9200000762939453125f;
                                    break;
                                }
                                _13402 = mad(pow(_13393, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _13403 = _13382.z;
                            float _13412 = 0.0f;
                            do
                            {
                                if (_13403 < 0.00313066993840038776397705078125f)
                                {
                                    _13412 = _13403 * 12.9200000762939453125f;
                                    break;
                                }
                                _13412 = mad(pow(_13403, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            _13428 = (((uint(clamp(_13392, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13402, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_13412, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                            _13429 = _13376;
                        }
                        else
                        {
                            _13428 = 0u;
                            _13429 = _11024;
                        }
                        uint _13501 = 0u;
                        uint _13502 = 0u;
                        uint _13503 = 0u;
                        if (_13333 == 3u)
                        {
                            uint _13483 = 0u | (((spvPackHalf2x16(0.0f.xx) >> 5u) & 1023u) << 16u);
                            uint _13498 = 0u;
                            uint _13499 = 0u;
                            uint _13500 = 0u;
                            if (_13331 < 3u)
                            {
                                _13498 = (_13331 == 2u) ? _13483 : _13328;
                                _13499 = (_13331 == 1u) ? _13483 : _13329;
                                _13500 = (_13331 == 0u) ? _13483 : _13330;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _13331 - 3u)] = _13483;
                                _13498 = _13328;
                                _13499 = _13329;
                                _13500 = _13330;
                            }
                            _13501 = _13498;
                            _13502 = _13499;
                            _13503 = _13500;
                        }
                        else
                        {
                            float4 _13444 = 0.0f.xxxx;
                            if ((((_12810 >> 10u) & 1u) != 0u) && (_13333 == 2u))
                            {
                                float3 _13442 = max(0.0f.xxx, 0.0f.xxx);
                                _13444 = float4(_13442.x, _13442.y, _13442.z, 0.0f.xxxx.w);
                            }
                            else
                            {
                                _13444 = 0.0f.xxxx;
                            }
                            uint _13461 = (((spvPackHalf2x16(float2(_13444.x, 0.0f)) << 17u) & 4292870144u) | ((spvPackHalf2x16(float2(_13444.y, 0.0f)) << 6u) & 2096128u)) | ((spvPackHalf2x16(float2(_13444.z, 0.0f)) >> 5u) & 1023u);
                            uint _13476 = 0u;
                            uint _13477 = 0u;
                            uint _13478 = 0u;
                            if (_13331 < 3u)
                            {
                                _13476 = (_13331 == 2u) ? _13461 : _13328;
                                _13477 = (_13331 == 1u) ? _13461 : _13329;
                                _13478 = (_13331 == 0u) ? _13461 : _13330;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _13331 - 3u)] = _13461;
                                _13476 = _13328;
                                _13477 = _13329;
                                _13478 = _13330;
                            }
                            _13501 = _13476;
                            _13502 = _13477;
                            _13503 = _13478;
                        }
                        _13504 = _13428;
                        _13505 = _13429;
                        _13506 = _13501;
                        _13507 = _13502;
                        _13508 = _13503;
                        _13509 = _13331 + 1u;
                    }
                    else
                    {
                        _13504 = 0u;
                        _13505 = _11024;
                        _13506 = _13328;
                        _13507 = _13329;
                        _13508 = _13330;
                        _13509 = _13331;
                    }
                    uint _13580 = 0u;
                    uint _13581 = 0u;
                    uint _13582 = 0u;
                    uint _13583 = 0u;
                    if (((_12810 >> 9u) & 1u) != 0u)
                    {
                        float _13520 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13520 = 0.0f;
                                break;
                            }
                            _13520 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13526 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13526 = 0.0f;
                                break;
                            }
                            _13526 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13532 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13532 = 0.0f;
                                break;
                            }
                            _13532 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float3 _13533 = float3(_13520, _13526, _13532);
                        float3 _13539 = clamp(mad(_13121, float3(min((asuint(_13533) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13533), 0.0f.xxx, 1.0f.xxx);
                        uint _13557 = uint(clamp(mad(_13120, 0.0f, 0.0f), 0.0f, 1.0f) * 63.0f);
                        uint _13561 = ((((uint(_13539.x * 127.0f) << 0u) | (uint(_13539.y * 127.0f) << 7u)) | (uint(_13539.z * 63.0f) << 14u)) | (_13557 << 20u)) | (_13557 << 26u);
                        uint _13576 = 0u;
                        uint _13577 = 0u;
                        uint _13578 = 0u;
                        if (_13509 < 3u)
                        {
                            _13576 = (_13509 == 2u) ? _13561 : _13506;
                            _13577 = (_13509 == 1u) ? _13561 : _13507;
                            _13578 = (_13509 == 0u) ? _13561 : _13508;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _13509 - 3u)] = _13561;
                            _13576 = _13506;
                            _13577 = _13507;
                            _13578 = _13508;
                        }
                        _13580 = _13576;
                        _13581 = _13577;
                        _13582 = _13578;
                        _13583 = _13509 + 1u;
                    }
                    else
                    {
                        _13580 = _13506;
                        _13581 = _13507;
                        _13582 = _13508;
                        _13583 = _13509;
                    }
                    uint _13620 = 0u;
                    uint _13621 = 0u;
                    uint _13622 = 0u;
                    if (((_12810 >> 16u) & 1u) != 0u)
                    {
                        float _13591 = 0.0f;
                        do
                        {
                            _13591 = mad(1.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        uint _13596 = uint(clamp(_13591, 0.0f, 1.0f) * 255.0f);
                        uint _13602 = (((_13596 << 0u) | (_13596 << 8u)) | (_13596 << 16u)) | 0u;
                        uint _13617 = 0u;
                        uint _13618 = 0u;
                        uint _13619 = 0u;
                        if (_13583 < 3u)
                        {
                            _13617 = (_13583 == 2u) ? _13602 : _13580;
                            _13618 = (_13583 == 1u) ? _13602 : _13581;
                            _13619 = (_13583 == 0u) ? _13602 : _13582;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _13583 - 3u)] = _13602;
                            _13617 = _13580;
                            _13618 = _13581;
                            _13619 = _13582;
                        }
                        _13620 = _13617;
                        _13621 = _13618;
                        _13622 = _13619;
                    }
                    else
                    {
                        _13620 = _13580;
                        _13621 = _13581;
                        _13622 = _13582;
                    }
                    _13623 = _13504;
                    _13624 = _13505;
                    _13625 = _13620;
                    _13626 = _13621;
                    _13627 = _13622;
                    break;
                }
                case 3u:
                {
                    float3 _13021 = clamp(float4(_10778, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                    float _13022 = _13021.x;
                    float _13031 = 0.0f;
                    do
                    {
                        if (_13022 < 0.00313066993840038776397705078125f)
                        {
                            _13031 = _13022 * 12.9200000762939453125f;
                            break;
                        }
                        _13031 = mad(pow(_13022, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13032 = _13021.y;
                    float _13041 = 0.0f;
                    do
                    {
                        if (_13032 < 0.00313066993840038776397705078125f)
                        {
                            _13041 = _13032 * 12.9200000762939453125f;
                            break;
                        }
                        _13041 = mad(pow(_13032, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13042 = _13021.z;
                    float _13051 = 0.0f;
                    do
                    {
                        if (_13042 < 0.00313066993840038776397705078125f)
                        {
                            _13051 = _13042 * 12.9200000762939453125f;
                            break;
                        }
                        _13051 = mad(pow(_13042, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    uint _13066 = (((uint(clamp(_13031, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13041, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_13051, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                    uint _13081 = 0u;
                    uint _13082 = 0u;
                    uint _13083 = 0u;
                    if (_12814 < 3u)
                    {
                        _13081 = (_12814 == 2u) ? _13066 : _12811;
                        _13082 = (_12814 == 1u) ? _13066 : _12812;
                        _13083 = (_12814 == 0u) ? _13066 : _12813;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _12814 - 3u)] = _13066;
                        _13081 = _12811;
                        _13082 = _12812;
                        _13083 = _12813;
                    }
                    uint _13084 = _12814 + 1u;
                    uint _13099 = ((0u | (uint(clamp(_10781, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_10785, 0.0f, 1.0f) * 255.0f) << 16u)) | (uint(clamp(_10787, 0.0f, 1.0f) * 255.0f) << 24u);
                    uint _13114 = 0u;
                    uint _13115 = 0u;
                    uint _13116 = 0u;
                    if (_13084 < 3u)
                    {
                        _13114 = (_13084 == 2u) ? _13099 : _13081;
                        _13115 = (_13084 == 1u) ? _13099 : _13082;
                        _13116 = (_13084 == 0u) ? _13099 : _13083;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _12814 + 4294967294u)] = _13099;
                        _13114 = _13081;
                        _13115 = _13082;
                        _13116 = _13083;
                    }
                    _13623 = 0u;
                    _13624 = _11024;
                    _13625 = _13114;
                    _13626 = _13115;
                    _13627 = _13116;
                    break;
                }
                case 5u:
                {
                    float3 _12832 = 0.0f.xxx;
                    if (true)
                    {
                        float2 _12830 = 1.0f.xx - abs(0.0f.xx);
                        _12832 = float3(_12830.x, _12830.y, 0.0f.xxxx.z);
                    }
                    else
                    {
                        _12832 = 0.0f.xxx;
                    }
                    float3 _12839 = 0.0f.xxx;
                    if (true)
                    {
                        float2 _12837 = 1.0f.xx - abs(0.0f.xx);
                        _12839 = float3(_12837.x, _12837.y, 0.0f.xxxx.z);
                    }
                    else
                    {
                        _12839 = 0.0f.xxx;
                    }
                    float3 _12842 = clamp(_10778.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12843 = _12842.x;
                    float _12852 = 0.0f;
                    do
                    {
                        if (_12843 < 0.00313066993840038776397705078125f)
                        {
                            _12852 = _12843 * 12.9200000762939453125f;
                            break;
                        }
                        _12852 = mad(pow(_12843, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12853 = _12842.y;
                    float _12862 = 0.0f;
                    do
                    {
                        if (_12853 < 0.00313066993840038776397705078125f)
                        {
                            _12862 = _12853 * 12.9200000762939453125f;
                            break;
                        }
                        _12862 = mad(pow(_12853, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12863 = _12842.z;
                    float _12872 = 0.0f;
                    do
                    {
                        if (_12863 < 0.00313066993840038776397705078125f)
                        {
                            _12872 = _12863 * 12.9200000762939453125f;
                            break;
                        }
                        _12872 = mad(pow(_12863, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    uint _12887 = (((uint(clamp(_12852, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12862, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12872, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                    uint _12902 = 0u;
                    uint _12903 = 0u;
                    uint _12904 = 0u;
                    if (_12814 < 3u)
                    {
                        _12902 = (_12814 == 2u) ? _12887 : _12811;
                        _12903 = (_12814 == 1u) ? _12887 : _12812;
                        _12904 = (_12814 == 0u) ? _12887 : _12813;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _12814 - 3u)] = _12887;
                        _12902 = _12811;
                        _12903 = _12812;
                        _12904 = _12813;
                    }
                    uint _12905 = _12814 + 1u;
                    float2 _12907 = (_12832.xy * 0.5f) + 0.5f.xx;
                    float2 _12909 = (_12839.xy * 0.5f) + 0.5f.xx;
                    uint _12932 = (((uint(clamp(_12907.x, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12907.y, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12909.x, 0.0f, 1.0f) * 255.0f) << 16u)) | (uint(clamp(_12909.y, 0.0f, 1.0f) * 255.0f) << 24u);
                    uint _12947 = 0u;
                    uint _12948 = 0u;
                    uint _12949 = 0u;
                    if (_12905 < 3u)
                    {
                        _12947 = (_12905 == 2u) ? _12932 : _12902;
                        _12948 = (_12905 == 1u) ? _12932 : _12903;
                        _12949 = (_12905 == 0u) ? _12932 : _12904;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10775, _12814 + 4294967294u)] = _12932;
                        _12947 = _12902;
                        _12948 = _12903;
                        _12949 = _12904;
                    }
                    uint _13014 = 0u;
                    uint _13015 = 0u;
                    if (((_12810 >> 2u) & 7u) == 3u)
                    {
                        float3 _12968 = clamp(float4(_10778, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                        float _12969 = _12968.x;
                        float _12978 = 0.0f;
                        do
                        {
                            if (_12969 < 0.00313066993840038776397705078125f)
                            {
                                _12978 = _12969 * 12.9200000762939453125f;
                                break;
                            }
                            _12978 = mad(pow(_12969, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12979 = _12968.y;
                        float _12988 = 0.0f;
                        do
                        {
                            if (_12979 < 0.00313066993840038776397705078125f)
                            {
                                _12988 = _12979 * 12.9200000762939453125f;
                                break;
                            }
                            _12988 = mad(pow(_12979, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12989 = _12968.z;
                        float _12998 = 0.0f;
                        do
                        {
                            if (_12989 < 0.00313066993840038776397705078125f)
                            {
                                _12998 = _12989 * 12.9200000762939453125f;
                                break;
                            }
                            _12998 = mad(pow(_12989, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        _13014 = (((uint(clamp(_12978, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12988, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12998, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                        _13015 = ((((_11024 & 4294967292u) | 3u) & 3u) | (uint(mad(_10785, 255.0f, 0.5f)) << 24u)) | 16711680u;
                    }
                    else
                    {
                        _13014 = 0u;
                        _13015 = _11024;
                    }
                    _13623 = _13014;
                    _13624 = _13015;
                    _13625 = _12947;
                    _13626 = _12948;
                    _13627 = _12949;
                    break;
                }
                default:
                {
                    _13623 = 0u;
                    _13624 = _11024;
                    _13625 = _12811;
                    _13626 = _12812;
                    _13627 = _12813;
                    break;
                }
            }
            _13628 = _13623;
            _13629 = _13624;
            _13630 = _13625;
            _13631 = _13626;
            _13632 = _13627;
        }
        else
        {
            _13628 = 0u;
            _13629 = _11024;
            _13630 = _12811;
            _13631 = _12812;
            _13632 = _12813;
        }
        _13633 = _13628;
        _13634 = _13629;
        _13635 = _13630;
        _13636 = _13631;
        _13637 = _13632;
    }
    else
    {
        _13633 = 0u;
        _13634 = _11024;
        _13635 = 0u;
        _13636 = _11623;
        _13637 = _11624;
    }
    float2 _13642 = _10932.xy / dot(1.0f.xxx, abs(_10932)).xx;
    float3 _13660 = 0.0f.xxx;
    if (_10932.z <= 0.0f)
    {
        float2 _13651 = _13642.xy;
        bool2 _13652 = bool2(_13651.x >= 0.0f.xx.x, _13651.y >= 0.0f.xx.y);
        float2 _13658 = (1.0f.xx - abs(_13642.yx)) * float2(_13652.x ? 1.0f : (-1.0f), _13652.y ? 1.0f : (-1.0f));
        _13660 = float3(_13658.x, _13658.y, _10932.z);
    }
    else
    {
        _13660 = float3(_13642.x, _13642.y, _10932.z);
    }
    uint2 _13665 = uint2(clamp((_13660.xy * 1023.0f) + 1024.0f.xx, 0.0f.xx, 2047.0f.xx));
    uint _13677 = _13634 & 3u;
    [branch]
    if (_13677 != 0u)
    {
        uint _13684 = uint(OpaqueBasePass_OpaqueBasePass_Strata_FirstSliceStoringStrataSSSDataWithoutMRT);
        uint _13685 = _10775.x;
        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_13685, _10775.y, _13684)] = _13634;
        if ((_13677 == 2u) || (_13677 == 3u))
        {
            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_13685, _10775.y, _13684 + 1u)] = _13633;
        }
    }
    float4 _13706 = float4((lerp((((float4(_10434.x ? 0.0f.xxxx.x : _9913.x, _10434.y ? 0.0f.xxxx.y : _9913.y, _10434.z ? 0.0f.xxxx.z : _9913.z, _10434.w ? 0.0f.xxxx.w : _9913.w).xyz + float4(_10434.x ? 0.0f.xxxx.x : _9916.x, _10434.y ? 0.0f.xxxx.y : _9916.y, _10434.z ? 0.0f.xxxx.z : _9916.z, _10434.w ? 0.0f.xxxx.w : _9916.w).xyz) + (((_8699 * _8556) * max(1.0f.xxx, ((((((_8437 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_8437 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_8437 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)) * _8427)) + _10521) + _10772, float3(_10930.x ? _10936.x : 0.0f.xxx.x, _10930.y ? _10936.y : 0.0f.xxx.y, _10930.z ? _10936.z : 0.0f.xxx.z), View_View_UnlitViewmodeMask.xxx) + (_11540 + _10520)) * 1.0f, 0.0f);
    float4 _13713 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _13712 = _13706;
        _13712.w = 0.0f;
        _13713 = _13712;
    }
    else
    {
        _13713 = _13706;
    }
    float4 _13714 = 0.0f.xxxx;
    _13714.x = _8513;
    _13714.y = 1.0f;
    _13714.z = 1.0f;
    _13714.w = 1.0f;
    float4 _13723 = _13713 * View_View_PreExposure;
    float3 _13725 = min(_13723.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_13725.x, _13725.y, _13725.z, _13723.w);
    out_var_SV_Target1 = _13714;
    out_var_SV_Target2 = float4(_10771 * View_View_PreExposure, 1.0f);
    out_var_SV_Target3 = _13637;
    out_var_SV_Target4 = _13636;
    out_var_SV_Target5 = _13635;
    out_var_SV_Target6 = (((_13665.x | (_13665.y << 11u)) << 10u) | (uint(clamp(_10929 ? (_10925 / _10927) : 0.0f, 0.0f, 1.0f) * 255.0f) << 2u)) | _10920;
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
