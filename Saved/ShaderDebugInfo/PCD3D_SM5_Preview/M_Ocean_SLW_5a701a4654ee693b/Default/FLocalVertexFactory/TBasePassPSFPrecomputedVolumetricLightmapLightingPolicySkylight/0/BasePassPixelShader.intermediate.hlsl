#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _466 = 0.0f.xxx;
static float3 _549 = 0.0f.xxx;
static uint3 _550 = uint3(0u, 0u, 0u);
static float4 _551 = 0.0f.xxxx;
static float3 _552 = 0.0f.xxx;
static float4x4 _553 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
static float _560 = 0.0f;
static uint3 _561 = uint3(0u, 0u, 0u);
static float4 _562 = 0.0f.xxxx;
static float3 _563 = 0.0f.xxx;
static float2 _564 = 0.0f.xx;

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
Texture3D<float4> View_VolumetricLightmapBrickAmbientVector;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients0;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients1;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients2;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients3;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients4;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients5;
Texture3D<float4> View_SkyBentNormalBrickTexture;
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
    float _596 = 1.0f / gl_FragCoord.w;
    float2 _637 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _644 = float4(mad(_637, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _560, 1.0f) * _596;
    float4 _649 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _653 = _649.xyz / _649.w.xxx;
    float3 _654 = _653 - View_View_RelativePreViewTranslation;
    float3 _655 = in_var_TEXCOORD9 - View_View_RelativePreViewTranslation;
    float _657 = _644.w;
    float3 _671 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _671 = -View_View_ViewForward;
    }
    else
    {
        _671 = normalize(-_653);
    }
    float3 _678 = View_View_ViewTilePosition * float3(-1.0f, -1.0f, -0.0f);
    float3 _680 = mad(-_654, float3(1.0f, 1.0f, 0.0f), float3(MaterialCollection0_MaterialCollection0_Vectors[4].xyz));
    float _681 = _678.x;
    float _682 = _680.x;
    float _685 = _678.y;
    float _686 = _680.y;
    float _691 = _678.z;
    float _692 = _680.z;
    float3 _712 = Material_Material_PreshaderBuffer[86].z.xxx;
    float3 _724 = 0.0f.xxx;
    float _729 = 0.0f;
    _724 = mad(_654, _712, mad(View_View_ViewTilePosition, _712, -floor(mad(View_View_ViewTilePosition, _712, ((_654 * _712) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _729 = 0.0f;
    float _727 = 1.0f;
    uint _731 = 0u;
    [loop]
    for (; _731 < 6u; )
    {
        float3 _735 = _724 * 0.066666670143604278564453125f.xxx;
        float3 _737 = frac(_735) * 15.0f;
        float3 _738 = frac(_737);
        float4 _743 = float4(_738, 0.0f);
        float4 _756 = View_PerlinNoise3DTexture.SampleLevel(View_PerlinNoise3DTextureSampler, mad((_737 - _738) + (((_743 * _743) * _743) * mad(_743, (_743 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx)).xyz, 0.0625f.xxx, 0.03125f.xxx), 0.0f);
        float _730 = mad(abs(dot(_737, mad(_756.xyz * 255.0f, 0.0078740157186985015869140625f.xxx, (-1.0f).xxx)) - mad(_756.w, 255.0f, -127.0f)), _727, _729);
        _724 *= 2.0f;
        _727 *= 0.5f;
        _729 = _730;
        _731++;
        continue;
    }
    float _786 = clamp(mad(-length((mad(View_View_ViewTilePosition, float3(1.0f, 1.0f, 0.0f), _678) * 2097152.0f) + mad(View_View_RelativeWorldCameraOrigin, float3(1.0f, 1.0f, 0.0f), _654 * float3(-1.0f, -1.0f, -0.0f))), 1.0f / max(9.9999997473787516355514526367188e-06f, MaterialCollection0_MaterialCollection0_Vectors[0].x * Material_Material_PreshaderBuffer[85].y), 1.0f) * Material_Material_PreshaderBuffer[86].y, 0.0f, 1.0f);
    float _787 = lerp(clamp(lerp(-1.0f, 1.0f, _729), 0.0f, 1.0f), 1.0f, _786);
    float3 _790 = ((View_View_ViewTilePosition + (-View_View_ViewTilePosition)) * 2097152.0f) + _653;
    uint3 _792 = uint3(0u, 0u, 0u);
    _792 = _550;
    float _798 = 0.0f;
    uint3 _793 = uint3(0u, 0u, 0u);
    float _889 = 0.0f;
    uint _795 = 0u;
    float _797 = 0.0f;
    uint _800 = 0u;
    for (;;)
    {
        _800 = View_View_NumGlobalSDFClipmaps;
        if (_795 < _800)
        {
            float3 _814 = min(max((_790 - View_View_GlobalVolumeTranslatedCenterAndExtent[_795].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_795].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_795].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_795].www) - _790, 0.0f.xxx));
            float _824 = View_View_GlobalVolumeTranslatedCenterAndExtent[_795].w * View_View_GlobalVolumeTexelSize;
            _798 = 8.0f * _824;
            if (min(_814.x, min(_814.y, _814.z)) > _824)
            {
                float3 _834 = frac(frac(mad(_790, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_795].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_795].xyz)));
                float _838 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _845 = (clamp(_834, 0.0f.xxx, 1.0f.xxx) * _838) + float3(int3(0, 0, int(_795 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                uint4 _855 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_845.x), int(_845.y), int(_845.z), 0).xyz, 0));
                uint _856 = _855.x;
                uint _857 = _856 & 16777215u;
                uint3 _888 = uint3(0u, 0u, 0u);
                if (_856 < 4294967295u)
                {
                    uint3 _862 = _792;
                    _862.x = _857 & 127u;
                    _862.y = (_857 >> 7u) & 127u;
                    _862.z = _857 >> 14u;
                    float4 _881 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_862 * uint3(8u, 8u, 8u)) + (frac(_834 * _838) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f);
                    float _882 = _881.x;
                    if (_882 < 1.0f)
                    {
                        _889 = mad(_882, 2.0f, -1.0f) * _798;
                        break;
                    }
                    _888 = _862;
                }
                else
                {
                    _888 = _792;
                }
                _793 = _888;
            }
            else
            {
                _793 = _792;
            }
            _792 = _793;
            _795++;
            _797 = _798;
            continue;
        }
        else
        {
            _889 = _797;
            break;
        }
    }
    float _900 = clamp(mad(mad(_889, Material_Material_PreshaderBuffer[87].x, -Material_Material_PreshaderBuffer[87].y) * Material_Material_PreshaderBuffer[88].x, -1.0f, 1.0f), 0.0f, 1.0f);
    uint3 _902 = uint3(0u, 0u, 0u);
    _902 = _550;
    uint3 _903 = uint3(0u, 0u, 0u);
    float3 _1160 = 0.0f.xxx;
    uint _905 = 0u;
    for (;;)
    {
        if (_905 < _800)
        {
            float _915 = View_View_GlobalVolumeTranslatedCenterAndExtent[_905].w * View_View_GlobalVolumeTexelSize;
            float3 _925 = min(max((_790 - View_View_GlobalVolumeTranslatedCenterAndExtent[_905].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_905].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_905].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_905].www) - _790, 0.0f.xxx));
            if (min(_925.x, min(_925.y, _925.z)) >= _915)
            {
                float3 _940 = frac(frac(mad(_790, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_905].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_905].xyz)));
                float _944 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _950 = float3(int3(0, 0, int(_905 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                float3 _951 = (clamp(_940, 0.0f.xxx, 1.0f.xxx) * _944) + _950;
                uint4 _961 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_951.x), int(_951.y), int(_951.z), 0).xyz, 0));
                uint _962 = _961.x;
                uint _963 = _962 & 16777215u;
                uint3 _1159 = uint3(0u, 0u, 0u);
                if (_962 < 4294967295u)
                {
                    uint3 _968 = _902;
                    _968.x = _963 & 127u;
                    _968.y = (_963 >> 7u) & 127u;
                    _968.z = _963 >> 14u;
                    if (View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_968 * uint3(8u, 8u, 8u)) + (frac(_940 * _944) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x < 0.89999997615814208984375f)
                    {
                        float _992 = 0.5f * View_View_GlobalVolumeTexelSize;
                        float3 _995 = frac(_940 + float3(_992, 0.0f, 0.0f));
                        float3 _998 = (clamp(_995, 0.0f.xxx, 1.0f.xxx) * _944) + _950;
                        uint4 _1007 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_998.x), int(_998.y), int(_998.z), 0).xyz, 0));
                        uint _1008 = _1007.x;
                        uint _1009 = _1008 & 16777215u;
                        float _1031 = 0.0f;
                        if (_1008 < 4294967295u)
                        {
                            uint3 _1014 = uint3(0u, 0u, 0u);
                            _1014.x = _1009 & 127u;
                            _1014.y = (_1009 >> 7u) & 127u;
                            _1014.z = _1009 >> 14u;
                            _1031 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1014 * uint3(8u, 8u, 8u)) + (frac(_995 * _944) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1031 = 1.0f;
                        }
                        float _1032 = View_View_GlobalVolumeTexelSize * (-0.5f);
                        float3 _1035 = frac(_940 + float3(_1032, 0.0f, 0.0f));
                        float3 _1038 = (clamp(_1035, 0.0f.xxx, 1.0f.xxx) * _944) + _950;
                        uint4 _1047 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1038.x), int(_1038.y), int(_1038.z), 0).xyz, 0));
                        uint _1048 = _1047.x;
                        uint _1049 = _1048 & 16777215u;
                        float _1071 = 0.0f;
                        if (_1048 < 4294967295u)
                        {
                            uint3 _1054 = uint3(0u, 0u, 0u);
                            _1054.x = _1049 & 127u;
                            _1054.y = (_1049 >> 7u) & 127u;
                            _1054.z = _1049 >> 14u;
                            _1071 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1054 * uint3(8u, 8u, 8u)) + (frac(_1035 * _944) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1071 = 1.0f;
                        }
                        float3 _1074 = frac(_940 + float3(0.0f, _992, 0.0f));
                        float3 _1077 = (clamp(_1074, 0.0f.xxx, 1.0f.xxx) * _944) + _950;
                        uint4 _1086 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1077.x), int(_1077.y), int(_1077.z), 0).xyz, 0));
                        uint _1087 = _1086.x;
                        uint _1088 = _1087 & 16777215u;
                        float _1110 = 0.0f;
                        if (_1087 < 4294967295u)
                        {
                            uint3 _1093 = uint3(0u, 0u, 0u);
                            _1093.x = _1088 & 127u;
                            _1093.y = (_1088 >> 7u) & 127u;
                            _1093.z = _1088 >> 14u;
                            _1110 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1093 * uint3(8u, 8u, 8u)) + (frac(_1074 * _944) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1110 = 1.0f;
                        }
                        float3 _1113 = frac(_940 + float3(0.0f, _1032, 0.0f));
                        float3 _1116 = (clamp(_1113, 0.0f.xxx, 1.0f.xxx) * _944) + _950;
                        uint4 _1125 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1116.x), int(_1116.y), int(_1116.z), 0).xyz, 0));
                        uint _1126 = _1125.x;
                        uint _1127 = _1126 & 16777215u;
                        float _1149 = 0.0f;
                        if (_1126 < 4294967295u)
                        {
                            uint3 _1132 = uint3(0u, 0u, 0u);
                            _1132.x = _1127 & 127u;
                            _1132.y = (_1127 >> 7u) & 127u;
                            _1132.z = _1127 >> 14u;
                            _1149 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1132 * uint3(8u, 8u, 8u)) + (frac(_1113 * _944) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1149 = 1.0f;
                        }
                        _1160 = (float3(_1031 - _1071, _1110 - _1149, _560) * (_915 * 16.0f)) / (View_View_GlobalVolumeTranslatedCenterAndExtent[_905].w * (128.0f * View_View_GlobalVolumeTexelSize)).xxx;
                        break;
                    }
                    _1159 = _968;
                }
                else
                {
                    _1159 = _902;
                }
                _903 = _1159;
            }
            else
            {
                _903 = _902;
            }
            _902 = _903;
            _905++;
            continue;
        }
        else
        {
            _1160 = float3(0.0f, 0.0f, 0.001000000047497451305389404296875f);
            break;
        }
    }
    float3 _1167 = Material_Material_PreshaderBuffer[88].w.xxx;
    float _1174 = lerp(View_View_GameTime, MaterialCollection0_MaterialCollection0_Vectors[0].z, MaterialCollection0_MaterialCollection0_Vectors[0].w);
    float3 _1185 = float3((View_View_ViewTilePosition * _1167).xy, 0.0f);
    float3 _1186 = float3((mad(_1160, Material_Material_PreshaderBuffer[88].z.xxx, _655) * _1167).xy, ((_1174 * Material_Material_PreshaderBuffer[89].y).xx + float2(1.0f, 0.0f)).x);
    float3 _1196 = 0.0f.xxx;
    float _1201 = 0.0f;
    _1196 = (((_1185 - floor(_1185 + ((_1186 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _1186) * 1.0f;
    _1201 = 0.0f;
    float _1199 = 1.0f;
    uint _1203 = 0u;
    [loop]
    for (; _1203 < 10u; )
    {
        float3 _1207 = frac(_1196);
        float _1209 = dot(floor(_1196), float3(19.0f, 47.0f, 101.0f));
        uint3 _1221 = (uint3(int3(int(_1209), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1222 = _1221.y;
        uint _1223 = _1221.z;
        uint _1226 = _1221.x + (_1222 * _1223);
        uint _1228 = _1222 + (_1223 * _1226);
        uint3 _1233 = uint3(0u, 0u, 0u);
        _1233.x = _1226 + (_1228 * (_1223 + (_1226 * _1228)));
        uint3 _1234 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _1247 = (uint3(int3(int(_1209 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1248 = _1247.y;
        uint _1249 = _1247.z;
        uint _1252 = _1247.x + (_1248 * _1249);
        uint _1254 = _1248 + (_1249 * _1252);
        uint3 _1259 = uint3(0u, 0u, 0u);
        _1259.x = _1252 + (_1254 * (_1249 + (_1252 * _1254)));
        uint3 _1272 = (uint3(int3(int(_1209 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1273 = _1272.y;
        uint _1274 = _1272.z;
        uint _1277 = _1272.x + (_1273 * _1274);
        uint _1279 = _1273 + (_1274 * _1277);
        uint3 _1284 = uint3(0u, 0u, 0u);
        _1284.x = _1277 + (_1279 * (_1274 + (_1277 * _1279)));
        uint3 _1297 = (uint3(int3(int(_1209 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1298 = _1297.y;
        uint _1299 = _1297.z;
        uint _1302 = _1297.x + (_1298 * _1299);
        uint _1304 = _1298 + (_1299 * _1302);
        uint3 _1309 = uint3(0u, 0u, 0u);
        _1309.x = _1302 + (_1304 * (_1299 + (_1302 * _1304)));
        uint3 _1322 = (uint3(int3(int(_1209 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1323 = _1322.y;
        uint _1324 = _1322.z;
        uint _1327 = _1322.x + (_1323 * _1324);
        uint _1329 = _1323 + (_1324 * _1327);
        uint3 _1334 = uint3(0u, 0u, 0u);
        _1334.x = _1327 + (_1329 * (_1324 + (_1327 * _1329)));
        uint3 _1347 = (uint3(int3(int(_1209 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1348 = _1347.y;
        uint _1349 = _1347.z;
        uint _1352 = _1347.x + (_1348 * _1349);
        uint _1354 = _1348 + (_1349 * _1352);
        uint3 _1359 = uint3(0u, 0u, 0u);
        _1359.x = _1352 + (_1354 * (_1349 + (_1352 * _1354)));
        uint3 _1372 = (uint3(int3(int(_1209 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1373 = _1372.y;
        uint _1374 = _1372.z;
        uint _1377 = _1372.x + (_1373 * _1374);
        uint _1379 = _1373 + (_1374 * _1377);
        uint3 _1384 = uint3(0u, 0u, 0u);
        _1384.x = _1377 + (_1379 * (_1374 + (_1377 * _1379)));
        uint3 _1397 = (uint3(int3(int(_1209 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1398 = _1397.y;
        uint _1399 = _1397.z;
        uint _1402 = _1397.x + (_1398 * _1399);
        uint _1404 = _1398 + (_1399 * _1402);
        uint3 _1409 = uint3(0u, 0u, 0u);
        _1409.x = _1402 + (_1404 * (_1399 + (_1402 * _1404)));
        float4 _1420 = float4(_1207, 0.0f);
        float4 _1426 = ((_1420 * _1420) * _1420) * mad(_1420, (_1420 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _1427 = _1426.x;
        float _1430 = _1426.y;
        float _1437 = abs(lerp(lerp(lerp(dot(mad(float3((_1233 >> _1234).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1207), dot(mad(float3((_1259 >> _1234).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1207 - float3(1.0f, 0.0f, 0.0f)), _1427), lerp(dot(mad(float3((_1284 >> _1234).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1207 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_1309 >> _1234).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1207 - float3(1.0f, 1.0f, 0.0f)), _1427), _1430), lerp(lerp(dot(mad(float3((_1334 >> _1234).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1207 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_1359 >> _1234).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1207 - float3(1.0f, 0.0f, 1.0f)), _1427), lerp(dot(mad(float3((_1384 >> _1234).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1207 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_1409 >> _1234).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1207 - 1.0f.xxx), _1427), _1430), _1426.z));
        float _1202 = mad(_1437, _1199, _1201);
        _1196 *= 2.0f;
        _1199 *= 0.5f;
        _1201 = _1202;
        _1203++;
        continue;
    }
    float _1441 = -_900;
    float _1447 = clamp(mad(mad(_1441, Material_Material_PreshaderBuffer[89].z, lerp(0.0f, 1.0f, _1201)) / mad(_1441, Material_Material_PreshaderBuffer[89].z, mad(_900, Material_Material_PreshaderBuffer[89].z, 1.0f)), -1.0f, 1.0f), 0.0f, 1.0f);
    float _1456 = clamp(lerp(Material_Material_PreshaderBuffer[90].x, Material_Material_PreshaderBuffer[89].w, (_1447 <= 0.0f) ? 0.0f : pow(_1447, 2.0f)), 0.0f, 1.0f);
    float _1457 = _900 * _1456;
    float3 _1460 = Material_Material_PreshaderBuffer[90].y.xxx;
    float3 _1461 = View_View_ViewTilePosition * _1460;
    float3 _1462 = _655 * _1460;
    float3 _1473 = 0.0f.xxx;
    float3 _1476 = 0.0f.xxx;
    float _1480 = 0.0f;
    _1473 = _552;
    _1476 = mad(_655, _1460, mad(View_View_ViewTilePosition, _1460, -floor(mad(View_View_ViewTilePosition, _1460, (_1462 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _1480 = 0.0f;
    float3 _1477 = 0.0f.xxx;
    float _1479 = 0.0f;
    float _1481 = 0.0f;
    float3 _1474 = 0.0f.xxx;
    float _1478 = 1.0f;
    uint _1482 = 0u;
    [loop]
    for (; _1482 < 1u; _1473 = _1474, _1476 = _1477, _1478 = _1479, _1480 = _1481, _1482++)
    {
        float3 _1487 = frac(_1476);
        float3 _1488 = floor(_1476);
        float3 _1489 = _1473;
        _1489.x = 0.0f;
        float4 _1491 = 0.0f.xxxx;
        _1491 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _1474 = _1489;
        float3 _1494 = 0.0f.xxx;
        float4 _1492 = 0.0f.xxxx;
        float3 _1501 = 0.0f.xxx;
        for (; _1474.x <= 1.0f; _1494 = _1501, _1494.x = _1501.x + 1.0f, _1491 = _1492, _1474 = _1494)
        {
            float3 _1499 = _1474;
            _1499.y = 0.0f;
            _1501 = _1499;
            _1492 = _1491;
            float3 _1502 = 0.0f.xxx;
            float4 _1504 = 0.0f.xxxx;
            float3 _1513 = 0.0f.xxx;
            for (; _1501.y <= 1.0f; _1502 = _1513, _1502.y = _1513.y + 1.0f, _1501 = _1502, _1492 = _1504)
            {
                float3 _1509 = _1501;
                _1509.z = 0.0f;
                _1504 = _1492;
                _1513 = _1509;
                for (; _1513.z <= 1.0f; )
                {
                    float3 _1518 = _1488 + _1513;
                    uint3 _1523 = (uint3(int3(float3(_1518.x, _1518.y, _1518.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _1524 = _1523.y;
                    uint _1525 = _1523.z;
                    uint _1528 = _1523.x + (_1524 * _1525);
                    uint _1530 = _1524 + (_1525 * _1528);
                    uint _1532 = _1525 + (_1528 * _1530);
                    uint _1534 = _1528 + (_1530 * _1532);
                    uint3 _1535 = _1523;
                    _1535.x = _1534;
                    uint _1537 = _1530 + (_1532 * _1534);
                    _1535.y = _1537;
                    _1535.z = _1532 + (_1534 * _1537);
                    float3 _1549 = _1487 - (_1513 + (normalize(mad(float3(_1535 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _1514 = _1513;
                    _1514.z = _1513.z + 1.0f;
                    _1504 = float4(0.0f, 0.0f, 0.0f, min(_1504.w, dot(_1549, _1549)));
                    _1513 = _1514;
                    continue;
                }
            }
        }
        _1481 = mad(abs(mad(sqrt(_1491.w), 2.0f, -1.0f)), _1478, _1480);
        _1477 = _1476 * 2.0f;
        _1479 = _1478 * 0.5f;
    }
    float3 _1575 = 0.0f.xxx;
    float3 _1578 = 0.0f.xxx;
    float _1582 = 0.0f;
    _1575 = _552;
    _1578 = mad(_1462, 1.2000000476837158203125f.xxx, mad(_1461, 1.2000000476837158203125f.xxx, -floor(mad(_1461, 1.2000000476837158203125f.xxx, ((_1462 * 1.2000000476837158203125f.xxx) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _1582 = 0.0f;
    float3 _1579 = 0.0f.xxx;
    float _1581 = 0.0f;
    float _1583 = 0.0f;
    float3 _1576 = 0.0f.xxx;
    float _1580 = 1.0f;
    uint _1584 = 0u;
    [loop]
    for (; _1584 < 1u; _1575 = _1576, _1578 = _1579, _1580 = _1581, _1582 = _1583, _1584++)
    {
        float3 _1589 = frac(_1578);
        float3 _1590 = floor(_1578);
        float3 _1591 = _1575;
        _1591.x = 0.0f;
        float4 _1593 = 0.0f.xxxx;
        _1593 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _1576 = _1591;
        float3 _1596 = 0.0f.xxx;
        float4 _1594 = 0.0f.xxxx;
        float3 _1603 = 0.0f.xxx;
        for (; _1576.x <= 1.0f; _1596 = _1603, _1596.x = _1603.x + 1.0f, _1593 = _1594, _1576 = _1596)
        {
            float3 _1601 = _1576;
            _1601.y = 0.0f;
            _1603 = _1601;
            _1594 = _1593;
            float3 _1604 = 0.0f.xxx;
            float4 _1606 = 0.0f.xxxx;
            float3 _1615 = 0.0f.xxx;
            for (; _1603.y <= 1.0f; _1604 = _1615, _1604.y = _1615.y + 1.0f, _1603 = _1604, _1594 = _1606)
            {
                float3 _1611 = _1603;
                _1611.z = 0.0f;
                _1606 = _1594;
                _1615 = _1611;
                for (; _1615.z <= 1.0f; )
                {
                    float3 _1620 = _1590 + _1615;
                    uint3 _1625 = (uint3(int3(float3(_1620.x, _1620.y, _1620.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _1626 = _1625.y;
                    uint _1627 = _1625.z;
                    uint _1630 = _1625.x + (_1626 * _1627);
                    uint _1632 = _1626 + (_1627 * _1630);
                    uint _1634 = _1627 + (_1630 * _1632);
                    uint _1636 = _1630 + (_1632 * _1634);
                    uint3 _1637 = _1625;
                    _1637.x = _1636;
                    uint _1639 = _1632 + (_1634 * _1636);
                    _1637.y = _1639;
                    _1637.z = _1634 + (_1636 * _1639);
                    float3 _1651 = _1589 - (_1615 + (normalize(mad(float3(_1637 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _1616 = _1615;
                    _1616.z = _1615.z + 1.0f;
                    _1606 = float4(0.0f, 0.0f, 0.0f, min(_1606.w, dot(_1651, _1651)));
                    _1615 = _1616;
                    continue;
                }
            }
        }
        _1583 = mad(abs(mad(sqrt(_1593.w), 2.0f, -1.0f)), _1580, _1582);
        _1579 = _1578 * 2.0f;
        _1581 = _1580 * 0.5f;
    }
    float _1666 = clamp(lerp(-1.0f, 1.0f, _1480), 0.0f, 1.0f) + clamp(lerp(-1.0f, 1.0f, _1582), 0.0f, 1.0f);
    float _1680 = (abs(Material_Material_PreshaderBuffer[2].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[2].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[2].x : Material_Material_PreshaderBuffer[2].y) : Material_Material_PreshaderBuffer[2].x;
    float _1688 = (abs(_1680 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_1680 >= 1.0f) ? Material_Material_PreshaderBuffer[2].z : Material_Material_PreshaderBuffer[2].x) : Material_Material_PreshaderBuffer[2].x;
    float3 _1698 = float3(min(max((abs(_1688) > 9.9999997473787516355514526367188e-06f) ? ((_1688 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[4].w, 0.0f);
    float2 _1709 = float2(View_View_ViewTilePosition.xy);
    float2 _1710 = float2(_655.xy);
    float2 _1713 = float2(min(max(_1698 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _1714 = _1709 * _1713;
    float2 _1715 = _1713 * _1710;
    float _1720 = _1714.x + _1714.y;
    float _1724 = _1720 * Material_Material_PreshaderBuffer[9].x;
    float _1727 = _1174 - Material_Material_PreshaderBuffer[9].z;
    float3 _1730 = Material_Material_PreshaderBuffer[9].w.xxx;
    float3 _1735 = Material_Material_PreshaderBuffer[10].x.xxx;
    float3 _1739 = MaterialCollection0_MaterialCollection0_Vectors[0].y.xxx;
    float3 _1740 = ((View_View_ViewTilePosition * _1730) * _1735) * _1739;
    float3 _1742 = (((_1730 * _655) * _1735) * _1739) * 0.100000001490116119384765625f.xxx;
    float3 _1753 = float3(_1742.xy, ((_1174 * Material_Material_PreshaderBuffer[10].z).xx + _1742.z.xx).x);
    float3 _1764 = 0.0f.xxx;
    float _1769 = 0.0f;
    _1764 = ((mad(_1740, 0.100000001490116119384765625f.xxx, -floor(mad(_1740, 0.100000001490116119384765625f.xxx, (_1753 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _1753) * 1.0f;
    _1769 = 0.0f;
    float _1767 = 1.0f;
    uint _1771 = 0u;
    [loop]
    for (; _1771 < 6u; )
    {
        float3 _1775 = frac(_1764);
        float _1777 = dot(floor(_1764), float3(19.0f, 47.0f, 101.0f));
        uint3 _1789 = (uint3(int3(int(_1777), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1790 = _1789.y;
        uint _1791 = _1789.z;
        uint _1794 = _1789.x + (_1790 * _1791);
        uint _1796 = _1790 + (_1791 * _1794);
        uint3 _1801 = uint3(0u, 0u, 0u);
        _1801.x = _1794 + (_1796 * (_1791 + (_1794 * _1796)));
        uint3 _1802 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _1815 = (uint3(int3(int(_1777 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1816 = _1815.y;
        uint _1817 = _1815.z;
        uint _1820 = _1815.x + (_1816 * _1817);
        uint _1822 = _1816 + (_1817 * _1820);
        uint3 _1827 = uint3(0u, 0u, 0u);
        _1827.x = _1820 + (_1822 * (_1817 + (_1820 * _1822)));
        uint3 _1840 = (uint3(int3(int(_1777 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1841 = _1840.y;
        uint _1842 = _1840.z;
        uint _1845 = _1840.x + (_1841 * _1842);
        uint _1847 = _1841 + (_1842 * _1845);
        uint3 _1852 = uint3(0u, 0u, 0u);
        _1852.x = _1845 + (_1847 * (_1842 + (_1845 * _1847)));
        uint3 _1865 = (uint3(int3(int(_1777 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1866 = _1865.y;
        uint _1867 = _1865.z;
        uint _1870 = _1865.x + (_1866 * _1867);
        uint _1872 = _1866 + (_1867 * _1870);
        uint3 _1877 = uint3(0u, 0u, 0u);
        _1877.x = _1870 + (_1872 * (_1867 + (_1870 * _1872)));
        uint3 _1890 = (uint3(int3(int(_1777 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1891 = _1890.y;
        uint _1892 = _1890.z;
        uint _1895 = _1890.x + (_1891 * _1892);
        uint _1897 = _1891 + (_1892 * _1895);
        uint3 _1902 = uint3(0u, 0u, 0u);
        _1902.x = _1895 + (_1897 * (_1892 + (_1895 * _1897)));
        uint3 _1915 = (uint3(int3(int(_1777 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1916 = _1915.y;
        uint _1917 = _1915.z;
        uint _1920 = _1915.x + (_1916 * _1917);
        uint _1922 = _1916 + (_1917 * _1920);
        uint3 _1927 = uint3(0u, 0u, 0u);
        _1927.x = _1920 + (_1922 * (_1917 + (_1920 * _1922)));
        uint3 _1940 = (uint3(int3(int(_1777 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1941 = _1940.y;
        uint _1942 = _1940.z;
        uint _1945 = _1940.x + (_1941 * _1942);
        uint _1947 = _1941 + (_1942 * _1945);
        uint3 _1952 = uint3(0u, 0u, 0u);
        _1952.x = _1945 + (_1947 * (_1942 + (_1945 * _1947)));
        uint3 _1965 = (uint3(int3(int(_1777 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1966 = _1965.y;
        uint _1967 = _1965.z;
        uint _1970 = _1965.x + (_1966 * _1967);
        uint _1972 = _1966 + (_1967 * _1970);
        uint3 _1977 = uint3(0u, 0u, 0u);
        _1977.x = _1970 + (_1972 * (_1967 + (_1970 * _1972)));
        float4 _1988 = float4(_1775, 0.0f);
        float4 _1994 = ((_1988 * _1988) * _1988) * mad(_1988, (_1988 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _1995 = _1994.x;
        float _1998 = _1994.y;
        float _1770 = mad(lerp(lerp(lerp(dot(mad(float3((_1801 >> _1802).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1775), dot(mad(float3((_1827 >> _1802).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1775 - float3(1.0f, 0.0f, 0.0f)), _1995), lerp(dot(mad(float3((_1852 >> _1802).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1775 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_1877 >> _1802).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1775 - float3(1.0f, 1.0f, 0.0f)), _1995), _1998), lerp(lerp(dot(mad(float3((_1902 >> _1802).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1775 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_1927 >> _1802).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1775 - float3(1.0f, 0.0f, 1.0f)), _1995), lerp(dot(mad(float3((_1952 >> _1802).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1775 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_1977 >> _1802).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1775 - 1.0f.xxx), _1995), _1998), _1994.z), _1767, _1769);
        _1764 *= 2.0f;
        _1767 *= 0.5f;
        _1769 = _1770;
        _1771++;
        continue;
    }
    float _2008 = lerp(_1174, _1727, clamp(lerp(0.0f, 1.0f, mad(_1769, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _2012 = mad(_1715.x + _1715.y, Material_Material_PreshaderBuffer[9].x, Material_Material_PreshaderBuffer[10].w * _2008);
    float _2013 = floor(_1724);
    float3 _2025 = Material_Material_PreshaderBuffer[12].x.xxx;
    float3 _2030 = Material_Material_PreshaderBuffer[12].y.xxx;
    float3 _2031 = (View_View_ViewTilePosition * _2025) * _2030;
    float3 _2032 = (_2025 * _655) * _2030;
    float3 _2033 = _2032 * 0.0001000000047497451305389404296875f.xxx;
    float2 _2040 = (_1174 * Material_Material_PreshaderBuffer[12].w).xx;
    float3 _2044 = float3(_2033.xy, (_2040 + _2033.z.xx).x);
    float3 _2055 = 0.0f.xxx;
    float _2060 = 0.0f;
    _2055 = ((mad(_2031, 0.0001000000047497451305389404296875f.xxx, -floor(mad(_2031, 0.0001000000047497451305389404296875f.xxx, (_2044 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _2044) * 1.0f;
    _2060 = 0.0f;
    float _2058 = 1.0f;
    uint _2062 = 0u;
    [loop]
    for (; _2062 < 10u; )
    {
        float3 _2066 = frac(_2055);
        float _2068 = dot(floor(_2055), float3(19.0f, 47.0f, 101.0f));
        uint3 _2080 = (uint3(int3(int(_2068), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2081 = _2080.y;
        uint _2082 = _2080.z;
        uint _2085 = _2080.x + (_2081 * _2082);
        uint _2087 = _2081 + (_2082 * _2085);
        uint3 _2092 = uint3(0u, 0u, 0u);
        _2092.x = _2085 + (_2087 * (_2082 + (_2085 * _2087)));
        uint3 _2093 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _2106 = (uint3(int3(int(_2068 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2107 = _2106.y;
        uint _2108 = _2106.z;
        uint _2111 = _2106.x + (_2107 * _2108);
        uint _2113 = _2107 + (_2108 * _2111);
        uint3 _2118 = uint3(0u, 0u, 0u);
        _2118.x = _2111 + (_2113 * (_2108 + (_2111 * _2113)));
        uint3 _2131 = (uint3(int3(int(_2068 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2132 = _2131.y;
        uint _2133 = _2131.z;
        uint _2136 = _2131.x + (_2132 * _2133);
        uint _2138 = _2132 + (_2133 * _2136);
        uint3 _2143 = uint3(0u, 0u, 0u);
        _2143.x = _2136 + (_2138 * (_2133 + (_2136 * _2138)));
        uint3 _2156 = (uint3(int3(int(_2068 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2157 = _2156.y;
        uint _2158 = _2156.z;
        uint _2161 = _2156.x + (_2157 * _2158);
        uint _2163 = _2157 + (_2158 * _2161);
        uint3 _2168 = uint3(0u, 0u, 0u);
        _2168.x = _2161 + (_2163 * (_2158 + (_2161 * _2163)));
        uint3 _2181 = (uint3(int3(int(_2068 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2182 = _2181.y;
        uint _2183 = _2181.z;
        uint _2186 = _2181.x + (_2182 * _2183);
        uint _2188 = _2182 + (_2183 * _2186);
        uint3 _2193 = uint3(0u, 0u, 0u);
        _2193.x = _2186 + (_2188 * (_2183 + (_2186 * _2188)));
        uint3 _2206 = (uint3(int3(int(_2068 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2207 = _2206.y;
        uint _2208 = _2206.z;
        uint _2211 = _2206.x + (_2207 * _2208);
        uint _2213 = _2207 + (_2208 * _2211);
        uint3 _2218 = uint3(0u, 0u, 0u);
        _2218.x = _2211 + (_2213 * (_2208 + (_2211 * _2213)));
        uint3 _2231 = (uint3(int3(int(_2068 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2232 = _2231.y;
        uint _2233 = _2231.z;
        uint _2236 = _2231.x + (_2232 * _2233);
        uint _2238 = _2232 + (_2233 * _2236);
        uint3 _2243 = uint3(0u, 0u, 0u);
        _2243.x = _2236 + (_2238 * (_2233 + (_2236 * _2238)));
        uint3 _2256 = (uint3(int3(int(_2068 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2257 = _2256.y;
        uint _2258 = _2256.z;
        uint _2261 = _2256.x + (_2257 * _2258);
        uint _2263 = _2257 + (_2258 * _2261);
        uint3 _2268 = uint3(0u, 0u, 0u);
        _2268.x = _2261 + (_2263 * (_2258 + (_2261 * _2263)));
        float4 _2279 = float4(_2066, 0.0f);
        float4 _2285 = ((_2279 * _2279) * _2279) * mad(_2279, (_2279 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _2286 = _2285.x;
        float _2289 = _2285.y;
        float _2296 = abs(lerp(lerp(lerp(dot(mad(float3((_2092 >> _2093).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2066), dot(mad(float3((_2118 >> _2093).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2066 - float3(1.0f, 0.0f, 0.0f)), _2286), lerp(dot(mad(float3((_2143 >> _2093).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2066 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_2168 >> _2093).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2066 - float3(1.0f, 1.0f, 0.0f)), _2286), _2289), lerp(lerp(dot(mad(float3((_2193 >> _2093).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2066 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_2218 >> _2093).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2066 - float3(1.0f, 0.0f, 1.0f)), _2286), lerp(dot(mad(float3((_2243 >> _2093).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2066 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_2268 >> _2093).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2066 - 1.0f.xxx), _2286), _2289), _2285.z));
        float _2061 = mad(_2296, _2058, _2060);
        _2055 *= 2.0f;
        _2058 *= 0.5f;
        _2060 = _2061;
        _2062++;
        continue;
    }
    float3 _2298 = _2032 * 0.000200000009499490261077880859375f.xxx;
    float3 _2305 = float3(_2298.xy, (_2040 + _2298.z.xx).x);
    float3 _2316 = 0.0f.xxx;
    float _2321 = 0.0f;
    _2316 = ((mad(_2031, 0.000200000009499490261077880859375f.xxx, -floor(mad(_2031, 0.000200000009499490261077880859375f.xxx, (_2305 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _2305) * 1.0f;
    _2321 = 0.0f;
    float _2319 = 1.0f;
    uint _2323 = 0u;
    [loop]
    for (; _2323 < 10u; )
    {
        float3 _2327 = frac(_2316);
        float _2329 = dot(floor(_2316), float3(19.0f, 47.0f, 101.0f));
        uint3 _2341 = (uint3(int3(int(_2329), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2342 = _2341.y;
        uint _2343 = _2341.z;
        uint _2346 = _2341.x + (_2342 * _2343);
        uint _2348 = _2342 + (_2343 * _2346);
        uint3 _2353 = uint3(0u, 0u, 0u);
        _2353.x = _2346 + (_2348 * (_2343 + (_2346 * _2348)));
        uint3 _2354 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _2367 = (uint3(int3(int(_2329 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2368 = _2367.y;
        uint _2369 = _2367.z;
        uint _2372 = _2367.x + (_2368 * _2369);
        uint _2374 = _2368 + (_2369 * _2372);
        uint3 _2379 = uint3(0u, 0u, 0u);
        _2379.x = _2372 + (_2374 * (_2369 + (_2372 * _2374)));
        uint3 _2392 = (uint3(int3(int(_2329 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2393 = _2392.y;
        uint _2394 = _2392.z;
        uint _2397 = _2392.x + (_2393 * _2394);
        uint _2399 = _2393 + (_2394 * _2397);
        uint3 _2404 = uint3(0u, 0u, 0u);
        _2404.x = _2397 + (_2399 * (_2394 + (_2397 * _2399)));
        uint3 _2417 = (uint3(int3(int(_2329 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2418 = _2417.y;
        uint _2419 = _2417.z;
        uint _2422 = _2417.x + (_2418 * _2419);
        uint _2424 = _2418 + (_2419 * _2422);
        uint3 _2429 = uint3(0u, 0u, 0u);
        _2429.x = _2422 + (_2424 * (_2419 + (_2422 * _2424)));
        uint3 _2442 = (uint3(int3(int(_2329 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2443 = _2442.y;
        uint _2444 = _2442.z;
        uint _2447 = _2442.x + (_2443 * _2444);
        uint _2449 = _2443 + (_2444 * _2447);
        uint3 _2454 = uint3(0u, 0u, 0u);
        _2454.x = _2447 + (_2449 * (_2444 + (_2447 * _2449)));
        uint3 _2467 = (uint3(int3(int(_2329 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2468 = _2467.y;
        uint _2469 = _2467.z;
        uint _2472 = _2467.x + (_2468 * _2469);
        uint _2474 = _2468 + (_2469 * _2472);
        uint3 _2479 = uint3(0u, 0u, 0u);
        _2479.x = _2472 + (_2474 * (_2469 + (_2472 * _2474)));
        uint3 _2492 = (uint3(int3(int(_2329 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2493 = _2492.y;
        uint _2494 = _2492.z;
        uint _2497 = _2492.x + (_2493 * _2494);
        uint _2499 = _2493 + (_2494 * _2497);
        uint3 _2504 = uint3(0u, 0u, 0u);
        _2504.x = _2497 + (_2499 * (_2494 + (_2497 * _2499)));
        uint3 _2517 = (uint3(int3(int(_2329 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2518 = _2517.y;
        uint _2519 = _2517.z;
        uint _2522 = _2517.x + (_2518 * _2519);
        uint _2524 = _2518 + (_2519 * _2522);
        uint3 _2529 = uint3(0u, 0u, 0u);
        _2529.x = _2522 + (_2524 * (_2519 + (_2522 * _2524)));
        float4 _2540 = float4(_2327, 0.0f);
        float4 _2546 = ((_2540 * _2540) * _2540) * mad(_2540, (_2540 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _2547 = _2546.x;
        float _2550 = _2546.y;
        float _2557 = abs(lerp(lerp(lerp(dot(mad(float3((_2353 >> _2354).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2327), dot(mad(float3((_2379 >> _2354).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2327 - float3(1.0f, 0.0f, 0.0f)), _2547), lerp(dot(mad(float3((_2404 >> _2354).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2327 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_2429 >> _2354).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2327 - float3(1.0f, 1.0f, 0.0f)), _2547), _2550), lerp(lerp(dot(mad(float3((_2454 >> _2354).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2327 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_2479 >> _2354).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2327 - float3(1.0f, 0.0f, 1.0f)), _2547), lerp(dot(mad(float3((_2504 >> _2354).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2327 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_2529 >> _2354).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2327 - 1.0f.xxx), _2547), _2550), _2546.z));
        float _2322 = mad(_2557, _2319, _2321);
        _2316 *= 2.0f;
        _2319 *= 0.5f;
        _2321 = _2322;
        _2323++;
        continue;
    }
    float _2569 = lerp(Material_Material_PreshaderBuffer[11].w, Material_Material_PreshaderBuffer[13].z, lerp(0.0f, 1.0f, _2060) * mad(lerp(0.0f, 1.0f, _2321), Material_Material_PreshaderBuffer[13].y, Material_Material_PreshaderBuffer[13].x));
    float2 _2580 = float2(min(max(_1698 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2581 = _1709 * _2580;
    float2 _2582 = _2580 * _1710;
    float _2587 = _2581.x + _2581.y;
    float _2591 = _2587 * Material_Material_PreshaderBuffer[16].y;
    float _2595 = mad(_2582.x + _2582.y, Material_Material_PreshaderBuffer[16].y, Material_Material_PreshaderBuffer[17].x * _2008);
    float _2596 = floor(_2591);
    float _2608 = _2569 * Material_Material_PreshaderBuffer[17].z;
    float2 _2619 = float2(min(max(_1698 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2620 = _1709 * _2619;
    float2 _2621 = _2619 * _1710;
    float _2626 = _2620.x + _2620.y;
    float _2630 = _2626 * Material_Material_PreshaderBuffer[18].y;
    float _2634 = mad(_2621.x + _2621.y, Material_Material_PreshaderBuffer[18].y, Material_Material_PreshaderBuffer[18].w * _2008);
    float _2635 = floor(_2630);
    float _2645 = _2608 * Material_Material_PreshaderBuffer[17].z;
    float2 _2655 = float2(min(max(_1698 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2656 = _1709 * _2655;
    float2 _2657 = _2655 * _1710;
    float _2662 = _2656.x + _2656.y;
    float _2666 = _2662 * Material_Material_PreshaderBuffer[19].z;
    float _2670 = mad(_2657.x + _2657.y, Material_Material_PreshaderBuffer[19].z, Material_Material_PreshaderBuffer[20].x * _2008);
    float _2671 = floor(_2666);
    float _2681 = _2645 * Material_Material_PreshaderBuffer[17].z;
    float _2695 = (abs(Material_Material_PreshaderBuffer[20].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[20].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[20].w : Material_Material_PreshaderBuffer[21].x) : Material_Material_PreshaderBuffer[20].w;
    float _2703 = (abs(_2695 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_2695 >= 1.0f) ? Material_Material_PreshaderBuffer[21].y : Material_Material_PreshaderBuffer[20].w) : Material_Material_PreshaderBuffer[20].w;
    float3 _2713 = float3(min(max((abs(_2703) > 9.9999997473787516355514526367188e-06f) ? ((_2703 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[22].z, 0.0f);
    float2 _2719 = float2(min(max(_2713 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2720 = _1709 * _2719;
    float2 _2721 = _2719 * _1710;
    float _2726 = _2720.x + _2720.y;
    float _2730 = _2726 * Material_Material_PreshaderBuffer[24].w;
    float _2734 = mad(_2721.x + _2721.y, Material_Material_PreshaderBuffer[24].w, Material_Material_PreshaderBuffer[25].z * _2008);
    float _2735 = floor(_2730);
    float _2747 = _2569 * Material_Material_PreshaderBuffer[25].w;
    float2 _2755 = float2(min(max(_2713 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2756 = _1709 * _2755;
    float2 _2757 = _2755 * _1710;
    float _2762 = _2756.x + _2756.y;
    float _2766 = _2762 * Material_Material_PreshaderBuffer[26].y;
    float _2770 = mad(_2757.x + _2757.y, Material_Material_PreshaderBuffer[26].y, Material_Material_PreshaderBuffer[26].w * _2008);
    float _2771 = floor(_2766);
    float _2781 = _2747 * Material_Material_PreshaderBuffer[17].z;
    float2 _2792 = float2(min(max(_2713 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2793 = _1709 * _2792;
    float2 _2794 = _2792 * _1710;
    float _2799 = _2793.x + _2793.y;
    float _2803 = _2799 * Material_Material_PreshaderBuffer[27].y;
    float _2807 = mad(_2794.x + _2794.y, Material_Material_PreshaderBuffer[27].y, Material_Material_PreshaderBuffer[27].w * _2008);
    float _2808 = floor(_2803);
    float _2818 = _2781 * Material_Material_PreshaderBuffer[17].z;
    float2 _2828 = float2(min(max(_2713 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2829 = _1709 * _2828;
    float2 _2830 = _2828 * _1710;
    float _2835 = _2829.x + _2829.y;
    float _2839 = _2835 * Material_Material_PreshaderBuffer[28].y;
    float _2843 = mad(_2830.x + _2830.y, Material_Material_PreshaderBuffer[28].y, Material_Material_PreshaderBuffer[28].w * _2008);
    float _2844 = floor(_2839);
    float _2854 = _2818 * Material_Material_PreshaderBuffer[17].z;
    float3 _2859 = (((float3(_560, _560, sin(mad(mad(_1724, 6.283185482025146484375f, _2013 * (-6.283185482025146484375f)), 2097152.0f, mad(_2012, 6.283185482025146484375f, floor(mad(mad(_1720, Material_Material_PreshaderBuffer[9].x, -_2013), 2097152.0f, _2012)) * (-6.283185482025146484375f)))) * _2569) + float3(_560, _560, sin(mad(mad(_2591, 6.283185482025146484375f, _2596 * (-6.283185482025146484375f)), 2097152.0f, mad(_2595, 6.283185482025146484375f, floor(mad(mad(_2587, Material_Material_PreshaderBuffer[16].y, -_2596), 2097152.0f, _2595)) * (-6.283185482025146484375f)))) * _2608)) + float3(_560, _560, sin(mad(mad(_2630, 6.283185482025146484375f, _2635 * (-6.283185482025146484375f)), 2097152.0f, mad(_2634, 6.283185482025146484375f, floor(mad(mad(_2626, Material_Material_PreshaderBuffer[18].y, -_2635), 2097152.0f, _2634)) * (-6.283185482025146484375f)))) * _2645)) + float3(_560, _560, sin(mad(mad(_2666, 6.283185482025146484375f, _2671 * (-6.283185482025146484375f)), 2097152.0f, mad(_2670, 6.283185482025146484375f, floor(mad(mad(_2662, Material_Material_PreshaderBuffer[19].z, -_2671), 2097152.0f, _2670)) * (-6.283185482025146484375f)))) * _2681)) + (((float3(_560, _560, sin(mad(mad(_2730, 6.283185482025146484375f, _2735 * (-6.283185482025146484375f)), 2097152.0f, mad(_2734, 6.283185482025146484375f, floor(mad(mad(_2726, Material_Material_PreshaderBuffer[24].w, -_2735), 2097152.0f, _2734)) * (-6.283185482025146484375f)))) * _2747) + float3(_560, _560, sin(mad(mad(_2766, 6.283185482025146484375f, _2771 * (-6.283185482025146484375f)), 2097152.0f, mad(_2770, 6.283185482025146484375f, floor(mad(mad(_2762, Material_Material_PreshaderBuffer[26].y, -_2771), 2097152.0f, _2770)) * (-6.283185482025146484375f)))) * _2781)) + float3(_560, _560, sin(mad(mad(_2803, 6.283185482025146484375f, _2808 * (-6.283185482025146484375f)), 2097152.0f, mad(_2807, 6.283185482025146484375f, floor(mad(mad(_2799, Material_Material_PreshaderBuffer[27].y, -_2808), 2097152.0f, _2807)) * (-6.283185482025146484375f)))) * _2818)) + float3(_560, _560, sin(mad(mad(_2839, 6.283185482025146484375f, _2844 * (-6.283185482025146484375f)), 2097152.0f, mad(_2843, 6.283185482025146484375f, floor(mad(mad(_2835, Material_Material_PreshaderBuffer[28].y, -_2844), 2097152.0f, _2843)) * (-6.283185482025146484375f)))) * _2854));
    float _2869 = (abs(Material_Material_PreshaderBuffer[29].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[29].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[29].x : Material_Material_PreshaderBuffer[29].y) : Material_Material_PreshaderBuffer[29].x;
    float _2877 = (abs(_2869 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_2869 >= 1.0f) ? Material_Material_PreshaderBuffer[29].z : Material_Material_PreshaderBuffer[29].x) : Material_Material_PreshaderBuffer[29].x;
    float3 _2887 = float3(min(max((abs(_2877) > 9.9999997473787516355514526367188e-06f) ? ((_2877 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[30].w, 0.0f);
    float2 _2893 = float2(min(max(_2887 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2894 = _1709 * _2893;
    float2 _2895 = _2893 * _1710;
    float _2900 = _2894.x + _2894.y;
    float _2904 = _2900 * Material_Material_PreshaderBuffer[32].z;
    float _2908 = mad(_2895.x + _2895.y, Material_Material_PreshaderBuffer[32].z, Material_Material_PreshaderBuffer[32].w * _2008);
    float _2909 = floor(_2904);
    float2 _2926 = float2(min(max(_2887 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2927 = _1709 * _2926;
    float2 _2928 = _2926 * _1710;
    float _2933 = _2927.x + _2927.y;
    float _2937 = _2933 * Material_Material_PreshaderBuffer[33].y;
    float _2941 = mad(_2928.x + _2928.y, Material_Material_PreshaderBuffer[33].y, Material_Material_PreshaderBuffer[33].z * _2008);
    float _2942 = floor(_2937);
    float2 _2962 = float2(min(max(_2887 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2963 = _1709 * _2962;
    float2 _2964 = _2962 * _1710;
    float _2969 = _2963.x + _2963.y;
    float _2973 = _2969 * Material_Material_PreshaderBuffer[34].x;
    float _2977 = mad(_2964.x + _2964.y, Material_Material_PreshaderBuffer[34].x, Material_Material_PreshaderBuffer[34].y * _2008);
    float _2978 = floor(_2973);
    float2 _2997 = float2(min(max(_2887 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2998 = _1709 * _2997;
    float2 _2999 = _2997 * _1710;
    float _3004 = _2998.x + _2998.y;
    float _3008 = _3004 * Material_Material_PreshaderBuffer[34].w;
    float _3012 = mad(_2999.x + _2999.y, Material_Material_PreshaderBuffer[34].w, Material_Material_PreshaderBuffer[35].x * _2008);
    float _3013 = floor(_3008);
    float3 _3027 = _2859 + (((float3(_560, _560, sin(mad(mad(_2904, 6.283185482025146484375f, _2909 * (-6.283185482025146484375f)), 2097152.0f, mad(_2908, 6.283185482025146484375f, floor(mad(mad(_2900, Material_Material_PreshaderBuffer[32].z, -_2909), 2097152.0f, _2908)) * (-6.283185482025146484375f)))) * _2747) + float3(_560, _560, sin(mad(mad(_2937, 6.283185482025146484375f, _2942 * (-6.283185482025146484375f)), 2097152.0f, mad(_2941, 6.283185482025146484375f, floor(mad(mad(_2933, Material_Material_PreshaderBuffer[33].y, -_2942), 2097152.0f, _2941)) * (-6.283185482025146484375f)))) * _2781)) + float3(_560, _560, sin(mad(mad(_2973, 6.283185482025146484375f, _2978 * (-6.283185482025146484375f)), 2097152.0f, mad(_2977, 6.283185482025146484375f, floor(mad(mad(_2969, Material_Material_PreshaderBuffer[34].x, -_2978), 2097152.0f, _2977)) * (-6.283185482025146484375f)))) * _2818)) + float3(_560, _560, sin(mad(mad(_3008, 6.283185482025146484375f, _3013 * (-6.283185482025146484375f)), 2097152.0f, mad(_3012, 6.283185482025146484375f, floor(mad(mad(_3004, Material_Material_PreshaderBuffer[34].w, -_3013), 2097152.0f, _3012)) * (-6.283185482025146484375f)))) * _2854));
    float _3037 = (abs(Material_Material_PreshaderBuffer[35].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[35].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[35].y : Material_Material_PreshaderBuffer[35].z) : Material_Material_PreshaderBuffer[35].y;
    float _3045 = (abs(_3037 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3037 >= 1.0f) ? Material_Material_PreshaderBuffer[35].w : Material_Material_PreshaderBuffer[35].y) : Material_Material_PreshaderBuffer[35].y;
    float3 _3055 = float3(min(max((abs(_3045) > 9.9999997473787516355514526367188e-06f) ? ((_3045 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[37].x, 0.0f);
    float2 _3061 = float2(min(max(_3055 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3062 = _1709 * _3061;
    float2 _3063 = _3061 * _1710;
    float _3068 = _3062.x + _3062.y;
    float _3072 = _3068 * Material_Material_PreshaderBuffer[38].w;
    float _3076 = mad(_3063.x + _3063.y, Material_Material_PreshaderBuffer[38].w, Material_Material_PreshaderBuffer[39].x * _2008);
    float _3077 = floor(_3072);
    float2 _3094 = float2(min(max(_3055 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3095 = _1709 * _3094;
    float2 _3096 = _3094 * _1710;
    float _3101 = _3095.x + _3095.y;
    float _3105 = _3101 * Material_Material_PreshaderBuffer[39].z;
    float _3109 = mad(_3096.x + _3096.y, Material_Material_PreshaderBuffer[39].z, Material_Material_PreshaderBuffer[39].w * _2008);
    float _3110 = floor(_3105);
    float2 _3130 = float2(min(max(_3055 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3131 = _1709 * _3130;
    float2 _3132 = _3130 * _1710;
    float _3137 = _3131.x + _3131.y;
    float _3141 = _3137 * Material_Material_PreshaderBuffer[40].y;
    float _3145 = mad(_3132.x + _3132.y, Material_Material_PreshaderBuffer[40].y, Material_Material_PreshaderBuffer[40].z * _2008);
    float _3146 = floor(_3141);
    float2 _3165 = float2(min(max(_3055 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3166 = _1709 * _3165;
    float2 _3167 = _3165 * _1710;
    float _3172 = _3166.x + _3166.y;
    float _3176 = _3172 * Material_Material_PreshaderBuffer[41].x;
    float _3180 = mad(_3167.x + _3167.y, Material_Material_PreshaderBuffer[41].x, Material_Material_PreshaderBuffer[41].y * _2008);
    float _3181 = floor(_3176);
    float _3204 = (abs(Material_Material_PreshaderBuffer[41].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[41].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[41].z : Material_Material_PreshaderBuffer[41].w) : Material_Material_PreshaderBuffer[41].z;
    float _3212 = (abs(_3204 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3204 >= 1.0f) ? Material_Material_PreshaderBuffer[42].x : Material_Material_PreshaderBuffer[41].z) : Material_Material_PreshaderBuffer[41].z;
    float3 _3222 = float3(min(max((abs(_3212) > 9.9999997473787516355514526367188e-06f) ? ((_3212 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[43].y, 0.0f);
    float2 _3228 = float2(min(max(_3222 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3229 = _1709 * _3228;
    float2 _3230 = _3228 * _1710;
    float _3235 = _3229.x + _3229.y;
    float _3239 = _3235 * Material_Material_PreshaderBuffer[45].x;
    float _3243 = mad(_3230.x + _3230.y, Material_Material_PreshaderBuffer[45].x, Material_Material_PreshaderBuffer[45].y * _2008);
    float _3244 = floor(_3239);
    float2 _3261 = float2(min(max(_3222 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3262 = _1709 * _3261;
    float2 _3263 = _3261 * _1710;
    float _3268 = _3262.x + _3262.y;
    float _3272 = _3268 * Material_Material_PreshaderBuffer[45].w;
    float _3276 = mad(_3263.x + _3263.y, Material_Material_PreshaderBuffer[45].w, Material_Material_PreshaderBuffer[46].x * _2008);
    float _3277 = floor(_3272);
    float2 _3297 = float2(min(max(_3222 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3298 = _1709 * _3297;
    float2 _3299 = _3297 * _1710;
    float _3304 = _3298.x + _3298.y;
    float _3308 = _3304 * Material_Material_PreshaderBuffer[46].z;
    float _3312 = mad(_3299.x + _3299.y, Material_Material_PreshaderBuffer[46].z, Material_Material_PreshaderBuffer[46].w * _2008);
    float _3313 = floor(_3308);
    float2 _3332 = float2(min(max(_3222 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3333 = _1709 * _3332;
    float2 _3334 = _3332 * _1710;
    float _3339 = _3333.x + _3333.y;
    float _3343 = _3339 * Material_Material_PreshaderBuffer[47].y;
    float _3347 = mad(_3334.x + _3334.y, Material_Material_PreshaderBuffer[47].y, Material_Material_PreshaderBuffer[47].z * _2008);
    float _3348 = floor(_3343);
    float3 _3362 = (((float3(_560, _560, sin(mad(mad(_3072, 6.283185482025146484375f, _3077 * (-6.283185482025146484375f)), 2097152.0f, mad(_3076, 6.283185482025146484375f, floor(mad(mad(_3068, Material_Material_PreshaderBuffer[38].w, -_3077), 2097152.0f, _3076)) * (-6.283185482025146484375f)))) * _2569) + float3(_560, _560, sin(mad(mad(_3105, 6.283185482025146484375f, _3110 * (-6.283185482025146484375f)), 2097152.0f, mad(_3109, 6.283185482025146484375f, floor(mad(mad(_3101, Material_Material_PreshaderBuffer[39].z, -_3110), 2097152.0f, _3109)) * (-6.283185482025146484375f)))) * _2608)) + float3(_560, _560, sin(mad(mad(_3141, 6.283185482025146484375f, _3146 * (-6.283185482025146484375f)), 2097152.0f, mad(_3145, 6.283185482025146484375f, floor(mad(mad(_3137, Material_Material_PreshaderBuffer[40].y, -_3146), 2097152.0f, _3145)) * (-6.283185482025146484375f)))) * _2645)) + float3(_560, _560, sin(mad(mad(_3176, 6.283185482025146484375f, _3181 * (-6.283185482025146484375f)), 2097152.0f, mad(_3180, 6.283185482025146484375f, floor(mad(mad(_3172, Material_Material_PreshaderBuffer[41].x, -_3181), 2097152.0f, _3180)) * (-6.283185482025146484375f)))) * _2681)) + (((float3(_560, _560, sin(mad(mad(_3239, 6.283185482025146484375f, _3244 * (-6.283185482025146484375f)), 2097152.0f, mad(_3243, 6.283185482025146484375f, floor(mad(mad(_3235, Material_Material_PreshaderBuffer[45].x, -_3244), 2097152.0f, _3243)) * (-6.283185482025146484375f)))) * _2747) + float3(_560, _560, sin(mad(mad(_3272, 6.283185482025146484375f, _3277 * (-6.283185482025146484375f)), 2097152.0f, mad(_3276, 6.283185482025146484375f, floor(mad(mad(_3268, Material_Material_PreshaderBuffer[45].w, -_3277), 2097152.0f, _3276)) * (-6.283185482025146484375f)))) * _2781)) + float3(_560, _560, sin(mad(mad(_3308, 6.283185482025146484375f, _3313 * (-6.283185482025146484375f)), 2097152.0f, mad(_3312, 6.283185482025146484375f, floor(mad(mad(_3304, Material_Material_PreshaderBuffer[46].z, -_3313), 2097152.0f, _3312)) * (-6.283185482025146484375f)))) * _2818)) + float3(_560, _560, sin(mad(mad(_3343, 6.283185482025146484375f, _3348 * (-6.283185482025146484375f)), 2097152.0f, mad(_3347, 6.283185482025146484375f, floor(mad(mad(_3339, Material_Material_PreshaderBuffer[47].y, -_3348), 2097152.0f, _3347)) * (-6.283185482025146484375f)))) * _2854));
    float _3372 = (abs(Material_Material_PreshaderBuffer[47].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[47].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[47].w : Material_Material_PreshaderBuffer[48].x) : Material_Material_PreshaderBuffer[47].w;
    float _3380 = (abs(_3372 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3372 >= 1.0f) ? Material_Material_PreshaderBuffer[48].y : Material_Material_PreshaderBuffer[47].w) : Material_Material_PreshaderBuffer[47].w;
    float3 _3390 = float3(min(max((abs(_3380) > 9.9999997473787516355514526367188e-06f) ? ((_3380 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[49].z, 0.0f);
    float2 _3396 = float2(min(max(_3390 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3397 = _1709 * _3396;
    float2 _3398 = _3396 * _1710;
    float _3403 = _3397.x + _3397.y;
    float _3407 = _3403 * Material_Material_PreshaderBuffer[51].y;
    float _3411 = mad(_3398.x + _3398.y, Material_Material_PreshaderBuffer[51].y, Material_Material_PreshaderBuffer[51].z * _2008);
    float _3412 = floor(_3407);
    float2 _3429 = float2(min(max(_3390 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3430 = _1709 * _3429;
    float2 _3431 = _3429 * _1710;
    float _3436 = _3430.x + _3430.y;
    float _3440 = _3436 * Material_Material_PreshaderBuffer[52].x;
    float _3444 = mad(_3431.x + _3431.y, Material_Material_PreshaderBuffer[52].x, Material_Material_PreshaderBuffer[52].y * _2008);
    float _3445 = floor(_3440);
    float2 _3465 = float2(min(max(_3390 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3466 = _1709 * _3465;
    float2 _3467 = _3465 * _1710;
    float _3472 = _3466.x + _3466.y;
    float _3476 = _3472 * Material_Material_PreshaderBuffer[52].w;
    float _3480 = mad(_3467.x + _3467.y, Material_Material_PreshaderBuffer[52].w, Material_Material_PreshaderBuffer[53].x * _2008);
    float _3481 = floor(_3476);
    float2 _3500 = float2(min(max(_3390 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3501 = _1709 * _3500;
    float2 _3502 = _3500 * _1710;
    float _3507 = _3501.x + _3501.y;
    float _3511 = _3507 * Material_Material_PreshaderBuffer[53].z;
    float _3515 = mad(_3502.x + _3502.y, Material_Material_PreshaderBuffer[53].z, Material_Material_PreshaderBuffer[53].w * _2008);
    float _3516 = floor(_3511);
    float3 _3530 = _3362 + (((float3(_560, _560, sin(mad(mad(_3407, 6.283185482025146484375f, _3412 * (-6.283185482025146484375f)), 2097152.0f, mad(_3411, 6.283185482025146484375f, floor(mad(mad(_3403, Material_Material_PreshaderBuffer[51].y, -_3412), 2097152.0f, _3411)) * (-6.283185482025146484375f)))) * _2747) + float3(_560, _560, sin(mad(mad(_3440, 6.283185482025146484375f, _3445 * (-6.283185482025146484375f)), 2097152.0f, mad(_3444, 6.283185482025146484375f, floor(mad(mad(_3436, Material_Material_PreshaderBuffer[52].x, -_3445), 2097152.0f, _3444)) * (-6.283185482025146484375f)))) * _2781)) + float3(_560, _560, sin(mad(mad(_3476, 6.283185482025146484375f, _3481 * (-6.283185482025146484375f)), 2097152.0f, mad(_3480, 6.283185482025146484375f, floor(mad(mad(_3472, Material_Material_PreshaderBuffer[52].w, -_3481), 2097152.0f, _3480)) * (-6.283185482025146484375f)))) * _2818)) + float3(_560, _560, sin(mad(mad(_3511, 6.283185482025146484375f, _3516 * (-6.283185482025146484375f)), 2097152.0f, mad(_3515, 6.283185482025146484375f, floor(mad(mad(_3507, Material_Material_PreshaderBuffer[53].z, -_3516), 2097152.0f, _3515)) * (-6.283185482025146484375f)))) * _2854));
    float3 _3531 = _3027 + _3530;
    float _3544 = (abs(Material_Material_PreshaderBuffer[54].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[54].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[54].y : Material_Material_PreshaderBuffer[54].z) : Material_Material_PreshaderBuffer[54].y;
    float _3552 = (abs(_3544 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3544 >= 1.0f) ? Material_Material_PreshaderBuffer[54].w : Material_Material_PreshaderBuffer[54].y) : Material_Material_PreshaderBuffer[54].y;
    float3 _3562 = float3(min(max((abs(_3552) > 9.9999997473787516355514526367188e-06f) ? ((_3552 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[56].x, 0.0f);
    float2 _3568 = float2(min(max(_3562 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3569 = _1709 * _3568;
    float2 _3570 = _3568 * _1710;
    float _3575 = _3569.x + _3569.y;
    float _3576 = _3570.x + _3570.y;
    float _3579 = Material_Material_PreshaderBuffer[57].y * MaterialCollection0_MaterialCollection0_Vectors[0].y;
    float _3582 = Material_Material_PreshaderBuffer[57].z * _3579;
    float _3583 = 2.0f / _3582;
    float _3584 = _3575 * _3583;
    float3 _3590 = Material_Material_PreshaderBuffer[58].x.xxx;
    float3 _3595 = Material_Material_PreshaderBuffer[58].y.xxx;
    float3 _3596 = (View_View_ViewTilePosition * _3590) * _3595;
    float3 _3599 = (1.0f / MaterialCollection0_MaterialCollection0_Vectors[0].y).xxx;
    float3 _3600 = ((_3590 * _655) * _3595) * _3599;
    float2 _3607 = (_1174 * Material_Material_PreshaderBuffer[58].w).xx;
    float3 _3611 = float3(_3600.xy, (_3607 + _3600.z.xx).x);
    float3 _3622 = 0.0f.xxx;
    float _3627 = 0.0f;
    _3622 = ((mad(_3596, _3599, -floor(mad(_3596, _3599, (_3611 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _3611) * 1.0f;
    _3627 = 0.0f;
    float _3625 = 1.0f;
    uint _3629 = 0u;
    [loop]
    for (; _3629 < 6u; )
    {
        float3 _3633 = frac(_3622);
        float _3635 = dot(floor(_3622), float3(19.0f, 47.0f, 101.0f));
        uint3 _3647 = (uint3(int3(int(_3635), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3648 = _3647.y;
        uint _3649 = _3647.z;
        uint _3652 = _3647.x + (_3648 * _3649);
        uint _3654 = _3648 + (_3649 * _3652);
        uint3 _3659 = uint3(0u, 0u, 0u);
        _3659.x = _3652 + (_3654 * (_3649 + (_3652 * _3654)));
        uint3 _3660 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _3673 = (uint3(int3(int(_3635 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3674 = _3673.y;
        uint _3675 = _3673.z;
        uint _3678 = _3673.x + (_3674 * _3675);
        uint _3680 = _3674 + (_3675 * _3678);
        uint3 _3685 = uint3(0u, 0u, 0u);
        _3685.x = _3678 + (_3680 * (_3675 + (_3678 * _3680)));
        uint3 _3698 = (uint3(int3(int(_3635 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3699 = _3698.y;
        uint _3700 = _3698.z;
        uint _3703 = _3698.x + (_3699 * _3700);
        uint _3705 = _3699 + (_3700 * _3703);
        uint3 _3710 = uint3(0u, 0u, 0u);
        _3710.x = _3703 + (_3705 * (_3700 + (_3703 * _3705)));
        uint3 _3723 = (uint3(int3(int(_3635 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3724 = _3723.y;
        uint _3725 = _3723.z;
        uint _3728 = _3723.x + (_3724 * _3725);
        uint _3730 = _3724 + (_3725 * _3728);
        uint3 _3735 = uint3(0u, 0u, 0u);
        _3735.x = _3728 + (_3730 * (_3725 + (_3728 * _3730)));
        uint3 _3748 = (uint3(int3(int(_3635 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3749 = _3748.y;
        uint _3750 = _3748.z;
        uint _3753 = _3748.x + (_3749 * _3750);
        uint _3755 = _3749 + (_3750 * _3753);
        uint3 _3760 = uint3(0u, 0u, 0u);
        _3760.x = _3753 + (_3755 * (_3750 + (_3753 * _3755)));
        uint3 _3773 = (uint3(int3(int(_3635 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3774 = _3773.y;
        uint _3775 = _3773.z;
        uint _3778 = _3773.x + (_3774 * _3775);
        uint _3780 = _3774 + (_3775 * _3778);
        uint3 _3785 = uint3(0u, 0u, 0u);
        _3785.x = _3778 + (_3780 * (_3775 + (_3778 * _3780)));
        uint3 _3798 = (uint3(int3(int(_3635 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3799 = _3798.y;
        uint _3800 = _3798.z;
        uint _3803 = _3798.x + (_3799 * _3800);
        uint _3805 = _3799 + (_3800 * _3803);
        uint3 _3810 = uint3(0u, 0u, 0u);
        _3810.x = _3803 + (_3805 * (_3800 + (_3803 * _3805)));
        uint3 _3823 = (uint3(int3(int(_3635 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3824 = _3823.y;
        uint _3825 = _3823.z;
        uint _3828 = _3823.x + (_3824 * _3825);
        uint _3830 = _3824 + (_3825 * _3828);
        uint3 _3835 = uint3(0u, 0u, 0u);
        _3835.x = _3828 + (_3830 * (_3825 + (_3828 * _3830)));
        float4 _3846 = float4(_3633, 0.0f);
        float4 _3852 = ((_3846 * _3846) * _3846) * mad(_3846, (_3846 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _3853 = _3852.x;
        float _3856 = _3852.y;
        float _3628 = mad(lerp(lerp(lerp(dot(mad(float3((_3659 >> _3660).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3633), dot(mad(float3((_3685 >> _3660).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3633 - float3(1.0f, 0.0f, 0.0f)), _3853), lerp(dot(mad(float3((_3710 >> _3660).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3633 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_3735 >> _3660).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3633 - float3(1.0f, 1.0f, 0.0f)), _3853), _3856), lerp(lerp(dot(mad(float3((_3760 >> _3660).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3633 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_3785 >> _3660).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3633 - float3(1.0f, 0.0f, 1.0f)), _3853), lerp(dot(mad(float3((_3810 >> _3660).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3633 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_3835 >> _3660).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3633 - 1.0f.xxx), _3853), _3856), _3852.z), _3625, _3627);
        _3622 *= 2.0f;
        _3625 *= 0.5f;
        _3627 = _3628;
        _3629++;
        continue;
    }
    float _3866 = lerp(_1174, _1727, clamp(lerp(0.0f, 1.0f, mad(_3627, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _3868 = mad(_3576, _3583, (_3583 * Material_Material_PreshaderBuffer[57].w) * _3866);
    float _3869 = floor(_3584);
    float _3881 = Material_Material_PreshaderBuffer[59].x * MaterialCollection0_MaterialCollection0_Vectors[0].y;
    float _3886 = mad(Material_Material_PreshaderBuffer[59].x, MaterialCollection0_MaterialCollection0_Vectors[0].y, -(Material_Material_PreshaderBuffer[59].y * MaterialCollection0_MaterialCollection0_Vectors[0].y));
    float3 _3889 = Material_Material_PreshaderBuffer[59].z.xxx;
    float3 _3894 = Material_Material_PreshaderBuffer[59].w.xxx;
    float3 _3895 = (View_View_ViewTilePosition * _3889) * _3894;
    float3 _3897 = ((_3889 * _655) * _3894) * _3599;
    float2 _3904 = (_1174 * Material_Material_PreshaderBuffer[60].y).xx;
    float3 _3908 = float3(_3897.xy, (_3904 + _3897.z.xx).x);
    float3 _3919 = 0.0f.xxx;
    float _3924 = 0.0f;
    _3919 = ((mad(_3895, _3599, -floor(mad(_3895, _3599, (_3908 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _3908) * 1.0f;
    _3924 = 0.0f;
    float _3922 = 1.0f;
    uint _3926 = 0u;
    [loop]
    for (; _3926 < 10u; )
    {
        float3 _3930 = frac(_3919);
        float _3932 = dot(floor(_3919), float3(19.0f, 47.0f, 101.0f));
        uint3 _3944 = (uint3(int3(int(_3932), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3945 = _3944.y;
        uint _3946 = _3944.z;
        uint _3949 = _3944.x + (_3945 * _3946);
        uint _3951 = _3945 + (_3946 * _3949);
        uint3 _3956 = uint3(0u, 0u, 0u);
        _3956.x = _3949 + (_3951 * (_3946 + (_3949 * _3951)));
        uint3 _3957 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _3970 = (uint3(int3(int(_3932 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3971 = _3970.y;
        uint _3972 = _3970.z;
        uint _3975 = _3970.x + (_3971 * _3972);
        uint _3977 = _3971 + (_3972 * _3975);
        uint3 _3982 = uint3(0u, 0u, 0u);
        _3982.x = _3975 + (_3977 * (_3972 + (_3975 * _3977)));
        uint3 _3995 = (uint3(int3(int(_3932 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3996 = _3995.y;
        uint _3997 = _3995.z;
        uint _4000 = _3995.x + (_3996 * _3997);
        uint _4002 = _3996 + (_3997 * _4000);
        uint3 _4007 = uint3(0u, 0u, 0u);
        _4007.x = _4000 + (_4002 * (_3997 + (_4000 * _4002)));
        uint3 _4020 = (uint3(int3(int(_3932 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4021 = _4020.y;
        uint _4022 = _4020.z;
        uint _4025 = _4020.x + (_4021 * _4022);
        uint _4027 = _4021 + (_4022 * _4025);
        uint3 _4032 = uint3(0u, 0u, 0u);
        _4032.x = _4025 + (_4027 * (_4022 + (_4025 * _4027)));
        uint3 _4045 = (uint3(int3(int(_3932 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4046 = _4045.y;
        uint _4047 = _4045.z;
        uint _4050 = _4045.x + (_4046 * _4047);
        uint _4052 = _4046 + (_4047 * _4050);
        uint3 _4057 = uint3(0u, 0u, 0u);
        _4057.x = _4050 + (_4052 * (_4047 + (_4050 * _4052)));
        uint3 _4070 = (uint3(int3(int(_3932 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4071 = _4070.y;
        uint _4072 = _4070.z;
        uint _4075 = _4070.x + (_4071 * _4072);
        uint _4077 = _4071 + (_4072 * _4075);
        uint3 _4082 = uint3(0u, 0u, 0u);
        _4082.x = _4075 + (_4077 * (_4072 + (_4075 * _4077)));
        uint3 _4095 = (uint3(int3(int(_3932 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4096 = _4095.y;
        uint _4097 = _4095.z;
        uint _4100 = _4095.x + (_4096 * _4097);
        uint _4102 = _4096 + (_4097 * _4100);
        uint3 _4107 = uint3(0u, 0u, 0u);
        _4107.x = _4100 + (_4102 * (_4097 + (_4100 * _4102)));
        uint3 _4120 = (uint3(int3(int(_3932 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4121 = _4120.y;
        uint _4122 = _4120.z;
        uint _4125 = _4120.x + (_4121 * _4122);
        uint _4127 = _4121 + (_4122 * _4125);
        uint3 _4132 = uint3(0u, 0u, 0u);
        _4132.x = _4125 + (_4127 * (_4122 + (_4125 * _4127)));
        float4 _4143 = float4(_3930, 0.0f);
        float4 _4149 = ((_4143 * _4143) * _4143) * mad(_4143, (_4143 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _4150 = _4149.x;
        float _4153 = _4149.y;
        float _4160 = abs(lerp(lerp(lerp(dot(mad(float3((_3956 >> _3957).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3930), dot(mad(float3((_3982 >> _3957).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3930 - float3(1.0f, 0.0f, 0.0f)), _4150), lerp(dot(mad(float3((_4007 >> _3957).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3930 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_4032 >> _3957).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3930 - float3(1.0f, 1.0f, 0.0f)), _4150), _4153), lerp(lerp(dot(mad(float3((_4057 >> _3957).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3930 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_4082 >> _3957).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3930 - float3(1.0f, 0.0f, 1.0f)), _4150), lerp(dot(mad(float3((_4107 >> _3957).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3930 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_4132 >> _3957).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3930 - 1.0f.xxx), _4150), _4153), _4149.z));
        float _3925 = mad(_4160, _3922, _3924);
        _3919 *= 2.0f;
        _3922 *= 0.5f;
        _3924 = _3925;
        _3926++;
        continue;
    }
    float3 _4164 = Material_Material_PreshaderBuffer[60].z.xxx;
    float3 _4169 = Material_Material_PreshaderBuffer[60].w.xxx;
    float3 _4170 = (View_View_ViewTilePosition * _4164) * _4169;
    float3 _4172 = ((_4164 * _655) * _4169) * _3599;
    float2 _4179 = (_1174 * Material_Material_PreshaderBuffer[61].y).xx;
    float3 _4183 = float3(_4172.xy, (_4179 + _4172.z.xx).x);
    float3 _4194 = 0.0f.xxx;
    float _4199 = 0.0f;
    _4194 = ((mad(_4170, _3599, -floor(mad(_4170, _3599, (_4183 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _4183) * 1.0f;
    _4199 = 0.0f;
    float _4197 = 1.0f;
    uint _4201 = 0u;
    [loop]
    for (; _4201 < 10u; )
    {
        float3 _4205 = frac(_4194);
        float _4207 = dot(floor(_4194), float3(19.0f, 47.0f, 101.0f));
        uint3 _4219 = (uint3(int3(int(_4207), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4220 = _4219.y;
        uint _4221 = _4219.z;
        uint _4224 = _4219.x + (_4220 * _4221);
        uint _4226 = _4220 + (_4221 * _4224);
        uint3 _4231 = uint3(0u, 0u, 0u);
        _4231.x = _4224 + (_4226 * (_4221 + (_4224 * _4226)));
        uint3 _4232 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _4245 = (uint3(int3(int(_4207 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4246 = _4245.y;
        uint _4247 = _4245.z;
        uint _4250 = _4245.x + (_4246 * _4247);
        uint _4252 = _4246 + (_4247 * _4250);
        uint3 _4257 = uint3(0u, 0u, 0u);
        _4257.x = _4250 + (_4252 * (_4247 + (_4250 * _4252)));
        uint3 _4270 = (uint3(int3(int(_4207 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4271 = _4270.y;
        uint _4272 = _4270.z;
        uint _4275 = _4270.x + (_4271 * _4272);
        uint _4277 = _4271 + (_4272 * _4275);
        uint3 _4282 = uint3(0u, 0u, 0u);
        _4282.x = _4275 + (_4277 * (_4272 + (_4275 * _4277)));
        uint3 _4295 = (uint3(int3(int(_4207 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4296 = _4295.y;
        uint _4297 = _4295.z;
        uint _4300 = _4295.x + (_4296 * _4297);
        uint _4302 = _4296 + (_4297 * _4300);
        uint3 _4307 = uint3(0u, 0u, 0u);
        _4307.x = _4300 + (_4302 * (_4297 + (_4300 * _4302)));
        uint3 _4320 = (uint3(int3(int(_4207 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4321 = _4320.y;
        uint _4322 = _4320.z;
        uint _4325 = _4320.x + (_4321 * _4322);
        uint _4327 = _4321 + (_4322 * _4325);
        uint3 _4332 = uint3(0u, 0u, 0u);
        _4332.x = _4325 + (_4327 * (_4322 + (_4325 * _4327)));
        uint3 _4345 = (uint3(int3(int(_4207 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4346 = _4345.y;
        uint _4347 = _4345.z;
        uint _4350 = _4345.x + (_4346 * _4347);
        uint _4352 = _4346 + (_4347 * _4350);
        uint3 _4357 = uint3(0u, 0u, 0u);
        _4357.x = _4350 + (_4352 * (_4347 + (_4350 * _4352)));
        uint3 _4370 = (uint3(int3(int(_4207 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4371 = _4370.y;
        uint _4372 = _4370.z;
        uint _4375 = _4370.x + (_4371 * _4372);
        uint _4377 = _4371 + (_4372 * _4375);
        uint3 _4382 = uint3(0u, 0u, 0u);
        _4382.x = _4375 + (_4377 * (_4372 + (_4375 * _4377)));
        uint3 _4395 = (uint3(int3(int(_4207 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4396 = _4395.y;
        uint _4397 = _4395.z;
        uint _4400 = _4395.x + (_4396 * _4397);
        uint _4402 = _4396 + (_4397 * _4400);
        uint3 _4407 = uint3(0u, 0u, 0u);
        _4407.x = _4400 + (_4402 * (_4397 + (_4400 * _4402)));
        float4 _4418 = float4(_4205, 0.0f);
        float4 _4424 = ((_4418 * _4418) * _4418) * mad(_4418, (_4418 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _4425 = _4424.x;
        float _4428 = _4424.y;
        float _4435 = abs(lerp(lerp(lerp(dot(mad(float3((_4231 >> _4232).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4205), dot(mad(float3((_4257 >> _4232).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4205 - float3(1.0f, 0.0f, 0.0f)), _4425), lerp(dot(mad(float3((_4282 >> _4232).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4205 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_4307 >> _4232).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4205 - float3(1.0f, 1.0f, 0.0f)), _4425), _4428), lerp(lerp(dot(mad(float3((_4332 >> _4232).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4205 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_4357 >> _4232).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4205 - float3(1.0f, 0.0f, 1.0f)), _4425), lerp(dot(mad(float3((_4382 >> _4232).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4205 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_4407 >> _4232).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4205 - 1.0f.xxx), _4425), _4428), _4424.z));
        float _4200 = mad(_4435, _4197, _4199);
        _4194 *= 2.0f;
        _4197 *= 0.5f;
        _4199 = _4200;
        _4201++;
        continue;
    }
    float _4443 = lerp(_3881, _3886, lerp(0.0f, 1.0f, _3924) * mad(lerp(0.0f, 1.0f, _4199), Material_Material_PreshaderBuffer[61].w, Material_Material_PreshaderBuffer[61].z));
    float2 _4451 = float2(min(max(_3562 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4452 = _1709 * _4451;
    float2 _4453 = _4451 * _1710;
    float _4458 = _4452.x + _4452.y;
    float _4459 = _4453.x + _4453.y;
    float _4462 = _3582 * Material_Material_PreshaderBuffer[15].w;
    float _4463 = 2.0f / _4462;
    float _4464 = _4458 * _4463;
    float _4469 = mad(_4459, _4463, (_4463 * Material_Material_PreshaderBuffer[62].y) * _3866);
    float _4470 = floor(_4464);
    float _4480 = _4443 * Material_Material_PreshaderBuffer[17].z;
    float2 _4491 = float2(min(max(_3562 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4492 = _1709 * _4491;
    float2 _4493 = _4491 * _1710;
    float _4498 = _4492.x + _4492.y;
    float _4499 = _4493.x + _4493.y;
    float _4500 = _4462 * Material_Material_PreshaderBuffer[15].w;
    float _4501 = 2.0f / _4500;
    float _4502 = _4498 * _4501;
    float _4507 = mad(_4499, _4501, (_4501 * Material_Material_PreshaderBuffer[62].w) * _3866);
    float _4508 = floor(_4502);
    float _4518 = _4480 * Material_Material_PreshaderBuffer[17].z;
    float2 _4528 = float2(min(max(_3562 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4529 = _1709 * _4528;
    float2 _4530 = _4528 * _1710;
    float _4535 = _4529.x + _4529.y;
    float _4536 = _4530.x + _4530.y;
    float _4538 = 2.0f / (_4500 * Material_Material_PreshaderBuffer[15].w);
    float _4539 = _4535 * _4538;
    float _4544 = mad(_4536, _4538, (_4538 * Material_Material_PreshaderBuffer[63].y) * _3866);
    float _4545 = floor(_4539);
    float _4569 = (abs(Material_Material_PreshaderBuffer[64].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[64].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[64].x : Material_Material_PreshaderBuffer[64].y) : Material_Material_PreshaderBuffer[64].x;
    float _4577 = (abs(_4569 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_4569 >= 1.0f) ? Material_Material_PreshaderBuffer[64].z : Material_Material_PreshaderBuffer[64].x) : Material_Material_PreshaderBuffer[64].x;
    float3 _4587 = float3(min(max((abs(_4577) > 9.9999997473787516355514526367188e-06f) ? ((_4577 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[65].w, 0.0f);
    float2 _4593 = float2(min(max(_4587 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4594 = _1709 * _4593;
    float2 _4595 = _4593 * _1710;
    float _4600 = _4594.x + _4594.y;
    float _4601 = _4595.x + _4595.y;
    float _4604 = _3579 * Material_Material_PreshaderBuffer[23].w;
    float _4607 = Material_Material_PreshaderBuffer[67].x * _4604;
    float _4608 = 2.0f / _4607;
    float _4609 = _4600 * _4608;
    float _4614 = mad(_4601, _4608, (_4608 * Material_Material_PreshaderBuffer[67].y) * _3866);
    float _4615 = floor(_4609);
    float _4625 = _4443 * Material_Material_PreshaderBuffer[25].w;
    float2 _4633 = float2(min(max(_4587 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4634 = _1709 * _4633;
    float2 _4635 = _4633 * _1710;
    float _4640 = _4634.x + _4634.y;
    float _4641 = _4635.x + _4635.y;
    float _4642 = _4607 * Material_Material_PreshaderBuffer[15].w;
    float _4643 = 2.0f / _4642;
    float _4644 = _4640 * _4643;
    float _4649 = mad(_4641, _4643, (_4643 * Material_Material_PreshaderBuffer[67].z) * _3866);
    float _4650 = floor(_4644);
    float _4660 = _4625 * Material_Material_PreshaderBuffer[17].z;
    float2 _4671 = float2(min(max(_4587 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4672 = _1709 * _4671;
    float2 _4673 = _4671 * _1710;
    float _4678 = _4672.x + _4672.y;
    float _4679 = _4673.x + _4673.y;
    float _4680 = _4642 * Material_Material_PreshaderBuffer[15].w;
    float _4681 = 2.0f / _4680;
    float _4682 = _4678 * _4681;
    float _4687 = mad(_4679, _4681, (_4681 * Material_Material_PreshaderBuffer[67].w) * _3866);
    float _4688 = floor(_4682);
    float _4698 = _4660 * Material_Material_PreshaderBuffer[17].z;
    float2 _4708 = float2(min(max(_4587 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4709 = _1709 * _4708;
    float2 _4710 = _4708 * _1710;
    float _4715 = _4709.x + _4709.y;
    float _4716 = _4710.x + _4710.y;
    float _4718 = 2.0f / (_4680 * Material_Material_PreshaderBuffer[15].w);
    float _4719 = _4715 * _4718;
    float _4724 = mad(_4716, _4718, (_4718 * Material_Material_PreshaderBuffer[68].x) * _3866);
    float _4725 = floor(_4719);
    float _4735 = _4698 * Material_Material_PreshaderBuffer[17].z;
    float3 _4740 = (((float3(_560, _560, sin(mad(mad(_3584, 6.283185482025146484375f, _3869 * (-6.283185482025146484375f)), 2097152.0f, mad(_3868, 6.283185482025146484375f, floor(mad(mad(_3575, _3583, -_3869), 2097152.0f, _3868)) * (-6.283185482025146484375f)))) * _4443) + float3(_560, _560, sin(mad(mad(_4464, 6.283185482025146484375f, _4470 * (-6.283185482025146484375f)), 2097152.0f, mad(_4469, 6.283185482025146484375f, floor(mad(mad(_4458, _4463, -_4470), 2097152.0f, _4469)) * (-6.283185482025146484375f)))) * _4480)) + float3(_560, _560, sin(mad(mad(_4502, 6.283185482025146484375f, _4508 * (-6.283185482025146484375f)), 2097152.0f, mad(_4507, 6.283185482025146484375f, floor(mad(mad(_4498, _4501, -_4508), 2097152.0f, _4507)) * (-6.283185482025146484375f)))) * _4518)) + float3(_560, _560, sin(mad(mad(_4539, 6.283185482025146484375f, _4545 * (-6.283185482025146484375f)), 2097152.0f, mad(_4544, 6.283185482025146484375f, floor(mad(mad(_4535, _4538, -_4545), 2097152.0f, _4544)) * (-6.283185482025146484375f)))) * (_4518 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_560, _560, sin(mad(mad(_4609, 6.283185482025146484375f, _4615 * (-6.283185482025146484375f)), 2097152.0f, mad(_4614, 6.283185482025146484375f, floor(mad(mad(_4600, _4608, -_4615), 2097152.0f, _4614)) * (-6.283185482025146484375f)))) * _4625) + float3(_560, _560, sin(mad(mad(_4644, 6.283185482025146484375f, _4650 * (-6.283185482025146484375f)), 2097152.0f, mad(_4649, 6.283185482025146484375f, floor(mad(mad(_4640, _4643, -_4650), 2097152.0f, _4649)) * (-6.283185482025146484375f)))) * _4660)) + float3(_560, _560, sin(mad(mad(_4682, 6.283185482025146484375f, _4688 * (-6.283185482025146484375f)), 2097152.0f, mad(_4687, 6.283185482025146484375f, floor(mad(mad(_4678, _4681, -_4688), 2097152.0f, _4687)) * (-6.283185482025146484375f)))) * _4698)) + float3(_560, _560, sin(mad(mad(_4719, 6.283185482025146484375f, _4725 * (-6.283185482025146484375f)), 2097152.0f, mad(_4724, 6.283185482025146484375f, floor(mad(mad(_4715, _4718, -_4725), 2097152.0f, _4724)) * (-6.283185482025146484375f)))) * _4735));
    float _4750 = (abs(Material_Material_PreshaderBuffer[68].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[68].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[68].y : Material_Material_PreshaderBuffer[68].z) : Material_Material_PreshaderBuffer[68].y;
    float _4758 = (abs(_4750 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_4750 >= 1.0f) ? Material_Material_PreshaderBuffer[68].w : Material_Material_PreshaderBuffer[68].y) : Material_Material_PreshaderBuffer[68].y;
    float3 _4768 = float3(min(max((abs(_4758) > 9.9999997473787516355514526367188e-06f) ? ((_4758 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[70].x, 0.0f);
    float2 _4774 = float2(min(max(_4768 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4775 = _1709 * _4774;
    float2 _4776 = _4774 * _1710;
    float _4781 = _4775.x + _4775.y;
    float _4782 = _4776.x + _4776.y;
    float _4785 = Material_Material_PreshaderBuffer[71].y * _4604;
    float _4786 = 2.0f / _4785;
    float _4787 = _4781 * _4786;
    float _4790 = mad(_4782, _4786, (_4786 * Material_Material_PreshaderBuffer[67].y) * _3866);
    float _4791 = floor(_4787);
    float2 _4808 = float2(min(max(_4768 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4809 = _1709 * _4808;
    float2 _4810 = _4808 * _1710;
    float _4815 = _4809.x + _4809.y;
    float _4816 = _4810.x + _4810.y;
    float _4817 = _4785 * Material_Material_PreshaderBuffer[15].w;
    float _4818 = 2.0f / _4817;
    float _4819 = _4815 * _4818;
    float _4822 = mad(_4816, _4818, (_4818 * Material_Material_PreshaderBuffer[67].z) * _3866);
    float _4823 = floor(_4819);
    float2 _4843 = float2(min(max(_4768 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4844 = _1709 * _4843;
    float2 _4845 = _4843 * _1710;
    float _4850 = _4844.x + _4844.y;
    float _4851 = _4845.x + _4845.y;
    float _4852 = _4817 * Material_Material_PreshaderBuffer[15].w;
    float _4853 = 2.0f / _4852;
    float _4854 = _4850 * _4853;
    float _4857 = mad(_4851, _4853, (_4853 * Material_Material_PreshaderBuffer[67].w) * _3866);
    float _4858 = floor(_4854);
    float2 _4877 = float2(min(max(_4768 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4878 = _1709 * _4877;
    float2 _4879 = _4877 * _1710;
    float _4884 = _4878.x + _4878.y;
    float _4885 = _4879.x + _4879.y;
    float _4887 = 2.0f / (_4852 * Material_Material_PreshaderBuffer[15].w);
    float _4888 = _4884 * _4887;
    float _4891 = mad(_4885, _4887, (_4887 * Material_Material_PreshaderBuffer[68].x) * _3866);
    float _4892 = floor(_4888);
    float3 _4906 = _4740 + (((float3(_560, _560, sin(mad(mad(_4787, 6.283185482025146484375f, _4791 * (-6.283185482025146484375f)), 2097152.0f, mad(_4790, 6.283185482025146484375f, floor(mad(mad(_4781, _4786, -_4791), 2097152.0f, _4790)) * (-6.283185482025146484375f)))) * _4625) + float3(_560, _560, sin(mad(mad(_4819, 6.283185482025146484375f, _4823 * (-6.283185482025146484375f)), 2097152.0f, mad(_4822, 6.283185482025146484375f, floor(mad(mad(_4815, _4818, -_4823), 2097152.0f, _4822)) * (-6.283185482025146484375f)))) * _4660)) + float3(_560, _560, sin(mad(mad(_4854, 6.283185482025146484375f, _4858 * (-6.283185482025146484375f)), 2097152.0f, mad(_4857, 6.283185482025146484375f, floor(mad(mad(_4850, _4853, -_4858), 2097152.0f, _4857)) * (-6.283185482025146484375f)))) * _4698)) + float3(_560, _560, sin(mad(mad(_4888, 6.283185482025146484375f, _4892 * (-6.283185482025146484375f)), 2097152.0f, mad(_4891, 6.283185482025146484375f, floor(mad(mad(_4884, _4887, -_4892), 2097152.0f, _4891)) * (-6.283185482025146484375f)))) * _4735));
    float _4907 = _3579 * 0.800000011920928955078125f;
    float _4908 = Material_Material_PreshaderBuffer[57].z * _4907;
    float _4909 = 2.0f / _4908;
    float _4910 = _3575 * _4909;
    float _4915 = mad(_3576, _4909, (_4909 * Material_Material_PreshaderBuffer[71].z) * _3866);
    float _4916 = floor(_4910);
    float _4926 = _4443 * 0.800000011920928955078125f;
    float _4929 = _4908 * Material_Material_PreshaderBuffer[15].w;
    float _4930 = 2.0f / _4929;
    float _4931 = _4458 * _4930;
    float _4936 = mad(_4459, _4930, (_4930 * Material_Material_PreshaderBuffer[71].w) * _3866);
    float _4937 = floor(_4931);
    float _4947 = _4926 * Material_Material_PreshaderBuffer[17].z;
    float _4953 = _4929 * Material_Material_PreshaderBuffer[15].w;
    float _4954 = 2.0f / _4953;
    float _4955 = _4498 * _4954;
    float _4960 = mad(_4499, _4954, (_4954 * Material_Material_PreshaderBuffer[72].x) * _3866);
    float _4961 = floor(_4955);
    float _4971 = _4947 * Material_Material_PreshaderBuffer[17].z;
    float _4977 = 2.0f / (_4953 * Material_Material_PreshaderBuffer[15].w);
    float _4978 = _4535 * _4977;
    float _4983 = mad(_4536, _4977, (_4977 * Material_Material_PreshaderBuffer[72].y) * _3866);
    float _4984 = floor(_4978);
    float _4994 = _4971 * Material_Material_PreshaderBuffer[17].z;
    float _4999 = _4907 * Material_Material_PreshaderBuffer[23].w;
    float _5000 = Material_Material_PreshaderBuffer[67].x * _4999;
    float _5001 = 2.0f / _5000;
    float _5002 = _4600 * _5001;
    float _5007 = mad(_4601, _5001, (_5001 * Material_Material_PreshaderBuffer[72].z) * _3866);
    float _5008 = floor(_5002);
    float _5018 = _4926 * Material_Material_PreshaderBuffer[25].w;
    float _5021 = _5000 * Material_Material_PreshaderBuffer[15].w;
    float _5022 = 2.0f / _5021;
    float _5023 = _4640 * _5022;
    float _5028 = mad(_4641, _5022, (_5022 * Material_Material_PreshaderBuffer[72].w) * _3866);
    float _5029 = floor(_5023);
    float _5039 = _5018 * Material_Material_PreshaderBuffer[17].z;
    float _5045 = _5021 * Material_Material_PreshaderBuffer[15].w;
    float _5046 = 2.0f / _5045;
    float _5047 = _4678 * _5046;
    float _5052 = mad(_4679, _5046, (_5046 * Material_Material_PreshaderBuffer[73].x) * _3866);
    float _5053 = floor(_5047);
    float _5063 = _5039 * Material_Material_PreshaderBuffer[17].z;
    float _5069 = 2.0f / (_5045 * Material_Material_PreshaderBuffer[15].w);
    float _5070 = _4715 * _5069;
    float _5075 = mad(_4716, _5069, (_5069 * Material_Material_PreshaderBuffer[73].y) * _3866);
    float _5076 = floor(_5070);
    float _5086 = _5063 * Material_Material_PreshaderBuffer[17].z;
    float3 _5091 = (((float3(_560, _560, sin(mad(mad(_4910, 6.283185482025146484375f, _4916 * (-6.283185482025146484375f)), 2097152.0f, mad(_4915, 6.283185482025146484375f, floor(mad(mad(_3575, _4909, -_4916), 2097152.0f, _4915)) * (-6.283185482025146484375f)))) * _4926) + float3(_560, _560, sin(mad(mad(_4931, 6.283185482025146484375f, _4937 * (-6.283185482025146484375f)), 2097152.0f, mad(_4936, 6.283185482025146484375f, floor(mad(mad(_4458, _4930, -_4937), 2097152.0f, _4936)) * (-6.283185482025146484375f)))) * _4947)) + float3(_560, _560, sin(mad(mad(_4955, 6.283185482025146484375f, _4961 * (-6.283185482025146484375f)), 2097152.0f, mad(_4960, 6.283185482025146484375f, floor(mad(mad(_4498, _4954, -_4961), 2097152.0f, _4960)) * (-6.283185482025146484375f)))) * _4971)) + float3(_560, _560, sin(mad(mad(_4978, 6.283185482025146484375f, _4984 * (-6.283185482025146484375f)), 2097152.0f, mad(_4983, 6.283185482025146484375f, floor(mad(mad(_4535, _4977, -_4984), 2097152.0f, _4983)) * (-6.283185482025146484375f)))) * _4994)) + (((float3(_560, _560, sin(mad(mad(_5002, 6.283185482025146484375f, _5008 * (-6.283185482025146484375f)), 2097152.0f, mad(_5007, 6.283185482025146484375f, floor(mad(mad(_4600, _5001, -_5008), 2097152.0f, _5007)) * (-6.283185482025146484375f)))) * _5018) + float3(_560, _560, sin(mad(mad(_5023, 6.283185482025146484375f, _5029 * (-6.283185482025146484375f)), 2097152.0f, mad(_5028, 6.283185482025146484375f, floor(mad(mad(_4640, _5022, -_5029), 2097152.0f, _5028)) * (-6.283185482025146484375f)))) * _5039)) + float3(_560, _560, sin(mad(mad(_5047, 6.283185482025146484375f, _5053 * (-6.283185482025146484375f)), 2097152.0f, mad(_5052, 6.283185482025146484375f, floor(mad(mad(_4678, _5046, -_5053), 2097152.0f, _5052)) * (-6.283185482025146484375f)))) * _5063)) + float3(_560, _560, sin(mad(mad(_5070, 6.283185482025146484375f, _5076 * (-6.283185482025146484375f)), 2097152.0f, mad(_5075, 6.283185482025146484375f, floor(mad(mad(_4715, _5069, -_5076), 2097152.0f, _5075)) * (-6.283185482025146484375f)))) * _5086));
    float _5092 = Material_Material_PreshaderBuffer[71].y * _4999;
    float _5093 = 2.0f / _5092;
    float _5094 = _4781 * _5093;
    float _5097 = mad(_4782, _5093, (_5093 * Material_Material_PreshaderBuffer[72].z) * _3866);
    float _5098 = floor(_5094);
    float _5110 = _5092 * Material_Material_PreshaderBuffer[15].w;
    float _5111 = 2.0f / _5110;
    float _5112 = _4815 * _5111;
    float _5115 = mad(_4816, _5111, (_5111 * Material_Material_PreshaderBuffer[72].w) * _3866);
    float _5116 = floor(_5112);
    float _5131 = _5110 * Material_Material_PreshaderBuffer[15].w;
    float _5132 = 2.0f / _5131;
    float _5133 = _4850 * _5132;
    float _5136 = mad(_4851, _5132, (_5132 * Material_Material_PreshaderBuffer[73].x) * _3866);
    float _5137 = floor(_5133);
    float _5152 = 2.0f / (_5131 * Material_Material_PreshaderBuffer[15].w);
    float _5153 = _4884 * _5152;
    float _5156 = mad(_4885, _5152, (_5152 * Material_Material_PreshaderBuffer[73].y) * _3866);
    float _5157 = floor(_5153);
    float3 _5171 = _5091 + (((float3(_560, _560, sin(mad(mad(_5094, 6.283185482025146484375f, _5098 * (-6.283185482025146484375f)), 2097152.0f, mad(_5097, 6.283185482025146484375f, floor(mad(mad(_4781, _5093, -_5098), 2097152.0f, _5097)) * (-6.283185482025146484375f)))) * _5018) + float3(_560, _560, sin(mad(mad(_5112, 6.283185482025146484375f, _5116 * (-6.283185482025146484375f)), 2097152.0f, mad(_5115, 6.283185482025146484375f, floor(mad(mad(_4815, _5111, -_5116), 2097152.0f, _5115)) * (-6.283185482025146484375f)))) * _5039)) + float3(_560, _560, sin(mad(mad(_5133, 6.283185482025146484375f, _5137 * (-6.283185482025146484375f)), 2097152.0f, mad(_5136, 6.283185482025146484375f, floor(mad(mad(_4850, _5132, -_5137), 2097152.0f, _5136)) * (-6.283185482025146484375f)))) * _5063)) + float3(_560, _560, sin(mad(mad(_5153, 6.283185482025146484375f, _5157 * (-6.283185482025146484375f)), 2097152.0f, mad(_5156, 6.283185482025146484375f, floor(mad(mad(_4884, _5152, -_5157), 2097152.0f, _5156)) * (-6.283185482025146484375f)))) * _5086));
    float _5172 = _3579 * 4.0f;
    float _5173 = Material_Material_PreshaderBuffer[57].z * _5172;
    float _5174 = 2.0f / _5173;
    float _5175 = _3575 * _5174;
    float _5180 = mad(_3576, _5174, (_5174 * Material_Material_PreshaderBuffer[73].z) * _3866);
    float _5181 = floor(_5175);
    float _5193 = _5173 * Material_Material_PreshaderBuffer[15].w;
    float _5194 = 2.0f / _5193;
    float _5195 = _4458 * _5194;
    float _5200 = mad(_4459, _5194, (_5194 * Material_Material_PreshaderBuffer[73].w) * _3866);
    float _5201 = floor(_5195);
    float _5216 = _5193 * Material_Material_PreshaderBuffer[15].w;
    float _5217 = 2.0f / _5216;
    float _5218 = _4498 * _5217;
    float _5223 = mad(_4499, _5217, (_5217 * Material_Material_PreshaderBuffer[74].x) * _3866);
    float _5224 = floor(_5218);
    float _5239 = 2.0f / (_5216 * Material_Material_PreshaderBuffer[15].w);
    float _5240 = _4535 * _5239;
    float _5245 = mad(_4536, _5239, (_5239 * Material_Material_PreshaderBuffer[74].y) * _3866);
    float _5246 = floor(_5240);
    float _5260 = _5172 * Material_Material_PreshaderBuffer[23].w;
    float _5261 = Material_Material_PreshaderBuffer[67].x * _5260;
    float _5262 = 2.0f / _5261;
    float _5263 = _4600 * _5262;
    float _5268 = mad(_4601, _5262, (_5262 * Material_Material_PreshaderBuffer[74].z) * _3866);
    float _5269 = floor(_5263);
    float _5281 = _5261 * Material_Material_PreshaderBuffer[15].w;
    float _5282 = 2.0f / _5281;
    float _5283 = _4640 * _5282;
    float _5288 = mad(_4641, _5282, (_5282 * Material_Material_PreshaderBuffer[74].w) * _3866);
    float _5289 = floor(_5283);
    float _5304 = _5281 * Material_Material_PreshaderBuffer[15].w;
    float _5305 = 2.0f / _5304;
    float _5306 = _4678 * _5305;
    float _5311 = mad(_4679, _5305, (_5305 * Material_Material_PreshaderBuffer[75].x) * _3866);
    float _5312 = floor(_5306);
    float _5327 = 2.0f / (_5304 * Material_Material_PreshaderBuffer[15].w);
    float _5328 = _4715 * _5327;
    float _5333 = mad(_4716, _5327, (_5327 * Material_Material_PreshaderBuffer[75].y) * _3866);
    float _5334 = floor(_5328);
    float3 _5348 = (((float3(_560, _560, sin(mad(mad(_5175, 6.283185482025146484375f, _5181 * (-6.283185482025146484375f)), 2097152.0f, mad(_5180, 6.283185482025146484375f, floor(mad(mad(_3575, _5174, -_5181), 2097152.0f, _5180)) * (-6.283185482025146484375f)))) * _4926) + float3(_560, _560, sin(mad(mad(_5195, 6.283185482025146484375f, _5201 * (-6.283185482025146484375f)), 2097152.0f, mad(_5200, 6.283185482025146484375f, floor(mad(mad(_4458, _5194, -_5201), 2097152.0f, _5200)) * (-6.283185482025146484375f)))) * _4947)) + float3(_560, _560, sin(mad(mad(_5218, 6.283185482025146484375f, _5224 * (-6.283185482025146484375f)), 2097152.0f, mad(_5223, 6.283185482025146484375f, floor(mad(mad(_4498, _5217, -_5224), 2097152.0f, _5223)) * (-6.283185482025146484375f)))) * _4971)) + float3(_560, _560, sin(mad(mad(_5240, 6.283185482025146484375f, _5246 * (-6.283185482025146484375f)), 2097152.0f, mad(_5245, 6.283185482025146484375f, floor(mad(mad(_4535, _5239, -_5246), 2097152.0f, _5245)) * (-6.283185482025146484375f)))) * _4994)) + (((float3(_560, _560, sin(mad(mad(_5263, 6.283185482025146484375f, _5269 * (-6.283185482025146484375f)), 2097152.0f, mad(_5268, 6.283185482025146484375f, floor(mad(mad(_4600, _5262, -_5269), 2097152.0f, _5268)) * (-6.283185482025146484375f)))) * _5018) + float3(_560, _560, sin(mad(mad(_5283, 6.283185482025146484375f, _5289 * (-6.283185482025146484375f)), 2097152.0f, mad(_5288, 6.283185482025146484375f, floor(mad(mad(_4640, _5282, -_5289), 2097152.0f, _5288)) * (-6.283185482025146484375f)))) * _5039)) + float3(_560, _560, sin(mad(mad(_5306, 6.283185482025146484375f, _5312 * (-6.283185482025146484375f)), 2097152.0f, mad(_5311, 6.283185482025146484375f, floor(mad(mad(_4678, _5305, -_5312), 2097152.0f, _5311)) * (-6.283185482025146484375f)))) * _5063)) + float3(_560, _560, sin(mad(mad(_5328, 6.283185482025146484375f, _5334 * (-6.283185482025146484375f)), 2097152.0f, mad(_5333, 6.283185482025146484375f, floor(mad(mad(_4715, _5327, -_5334), 2097152.0f, _5333)) * (-6.283185482025146484375f)))) * _5086));
    float _5349 = Material_Material_PreshaderBuffer[71].y * _5260;
    float _5350 = 2.0f / _5349;
    float _5351 = _4781 * _5350;
    float _5354 = mad(_4782, _5350, (_5350 * Material_Material_PreshaderBuffer[74].z) * _3866);
    float _5355 = floor(_5351);
    float _5367 = _5349 * Material_Material_PreshaderBuffer[15].w;
    float _5368 = 2.0f / _5367;
    float _5369 = _4815 * _5368;
    float _5372 = mad(_4816, _5368, (_5368 * Material_Material_PreshaderBuffer[74].w) * _3866);
    float _5373 = floor(_5369);
    float _5388 = _5367 * Material_Material_PreshaderBuffer[15].w;
    float _5389 = 2.0f / _5388;
    float _5390 = _4850 * _5389;
    float _5393 = mad(_4851, _5389, (_5389 * Material_Material_PreshaderBuffer[75].x) * _3866);
    float _5394 = floor(_5390);
    float _5409 = 2.0f / (_5388 * Material_Material_PreshaderBuffer[15].w);
    float _5410 = _4884 * _5409;
    float _5413 = mad(_4885, _5409, (_5409 * Material_Material_PreshaderBuffer[75].y) * _3866);
    float _5414 = floor(_5410);
    float3 _5428 = _5348 + (((float3(_560, _560, sin(mad(mad(_5351, 6.283185482025146484375f, _5355 * (-6.283185482025146484375f)), 2097152.0f, mad(_5354, 6.283185482025146484375f, floor(mad(mad(_4781, _5350, -_5355), 2097152.0f, _5354)) * (-6.283185482025146484375f)))) * _5018) + float3(_560, _560, sin(mad(mad(_5369, 6.283185482025146484375f, _5373 * (-6.283185482025146484375f)), 2097152.0f, mad(_5372, 6.283185482025146484375f, floor(mad(mad(_4815, _5368, -_5373), 2097152.0f, _5372)) * (-6.283185482025146484375f)))) * _5039)) + float3(_560, _560, sin(mad(mad(_5390, 6.283185482025146484375f, _5394 * (-6.283185482025146484375f)), 2097152.0f, mad(_5393, 6.283185482025146484375f, floor(mad(mad(_4850, _5389, -_5394), 2097152.0f, _5393)) * (-6.283185482025146484375f)))) * _5063)) + float3(_560, _560, sin(mad(mad(_5410, 6.283185482025146484375f, _5414 * (-6.283185482025146484375f)), 2097152.0f, mad(_5413, 6.283185482025146484375f, floor(mad(mad(_4884, _5409, -_5414), 2097152.0f, _5413)) * (-6.283185482025146484375f)))) * _5086));
    float _5429 = _3579 * 0.75f;
    float _5430 = Material_Material_PreshaderBuffer[57].z * _5429;
    float _5431 = 2.0f / _5430;
    float _5432 = _3575 * _5431;
    float _5435 = mad(_3576, _5431, (_5431 * Material_Material_PreshaderBuffer[71].z) * _3866);
    float _5436 = floor(_5432);
    float _5446 = _4443 * 0.5f;
    float _5449 = _5430 * Material_Material_PreshaderBuffer[15].w;
    float _5450 = 2.0f / _5449;
    float _5451 = _4458 * _5450;
    float _5454 = mad(_4459, _5450, (_5450 * Material_Material_PreshaderBuffer[71].w) * _3866);
    float _5455 = floor(_5451);
    float _5465 = _5446 * Material_Material_PreshaderBuffer[17].z;
    float _5471 = _5449 * Material_Material_PreshaderBuffer[15].w;
    float _5472 = 2.0f / _5471;
    float _5473 = _4498 * _5472;
    float _5476 = mad(_4499, _5472, (_5472 * Material_Material_PreshaderBuffer[72].x) * _3866);
    float _5477 = floor(_5473);
    float _5487 = _5465 * Material_Material_PreshaderBuffer[17].z;
    float _5493 = 2.0f / (_5471 * Material_Material_PreshaderBuffer[15].w);
    float _5494 = _4535 * _5493;
    float _5497 = mad(_4536, _5493, (_5493 * Material_Material_PreshaderBuffer[72].y) * _3866);
    float _5498 = floor(_5494);
    float _5513 = _5429 * Material_Material_PreshaderBuffer[23].w;
    float _5514 = Material_Material_PreshaderBuffer[67].x * _5513;
    float _5515 = 2.0f / _5514;
    float _5516 = _4600 * _5515;
    float _5519 = mad(_4601, _5515, (_5515 * Material_Material_PreshaderBuffer[72].z) * _3866);
    float _5520 = floor(_5516);
    float _5530 = _5446 * Material_Material_PreshaderBuffer[25].w;
    float _5533 = _5514 * Material_Material_PreshaderBuffer[15].w;
    float _5534 = 2.0f / _5533;
    float _5535 = _4640 * _5534;
    float _5538 = mad(_4641, _5534, (_5534 * Material_Material_PreshaderBuffer[72].w) * _3866);
    float _5539 = floor(_5535);
    float _5549 = _5530 * Material_Material_PreshaderBuffer[17].z;
    float _5555 = _5533 * Material_Material_PreshaderBuffer[15].w;
    float _5556 = 2.0f / _5555;
    float _5557 = _4678 * _5556;
    float _5560 = mad(_4679, _5556, (_5556 * Material_Material_PreshaderBuffer[73].x) * _3866);
    float _5561 = floor(_5557);
    float _5571 = _5549 * Material_Material_PreshaderBuffer[17].z;
    float _5577 = 2.0f / (_5555 * Material_Material_PreshaderBuffer[15].w);
    float _5578 = _4715 * _5577;
    float _5581 = mad(_4716, _5577, (_5577 * Material_Material_PreshaderBuffer[73].y) * _3866);
    float _5582 = floor(_5578);
    float _5592 = _5571 * Material_Material_PreshaderBuffer[17].z;
    float3 _5597 = (((float3(_560, _560, sin(mad(mad(_5432, 6.283185482025146484375f, _5436 * (-6.283185482025146484375f)), 2097152.0f, mad(_5435, 6.283185482025146484375f, floor(mad(mad(_3575, _5431, -_5436), 2097152.0f, _5435)) * (-6.283185482025146484375f)))) * _5446) + float3(_560, _560, sin(mad(mad(_5451, 6.283185482025146484375f, _5455 * (-6.283185482025146484375f)), 2097152.0f, mad(_5454, 6.283185482025146484375f, floor(mad(mad(_4458, _5450, -_5455), 2097152.0f, _5454)) * (-6.283185482025146484375f)))) * _5465)) + float3(_560, _560, sin(mad(mad(_5473, 6.283185482025146484375f, _5477 * (-6.283185482025146484375f)), 2097152.0f, mad(_5476, 6.283185482025146484375f, floor(mad(mad(_4498, _5472, -_5477), 2097152.0f, _5476)) * (-6.283185482025146484375f)))) * _5487)) + float3(_560, _560, sin(mad(mad(_5494, 6.283185482025146484375f, _5498 * (-6.283185482025146484375f)), 2097152.0f, mad(_5497, 6.283185482025146484375f, floor(mad(mad(_4535, _5493, -_5498), 2097152.0f, _5497)) * (-6.283185482025146484375f)))) * (_5487 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_560, _560, sin(mad(mad(_5516, 6.283185482025146484375f, _5520 * (-6.283185482025146484375f)), 2097152.0f, mad(_5519, 6.283185482025146484375f, floor(mad(mad(_4600, _5515, -_5520), 2097152.0f, _5519)) * (-6.283185482025146484375f)))) * _5530) + float3(_560, _560, sin(mad(mad(_5535, 6.283185482025146484375f, _5539 * (-6.283185482025146484375f)), 2097152.0f, mad(_5538, 6.283185482025146484375f, floor(mad(mad(_4640, _5534, -_5539), 2097152.0f, _5538)) * (-6.283185482025146484375f)))) * _5549)) + float3(_560, _560, sin(mad(mad(_5557, 6.283185482025146484375f, _5561 * (-6.283185482025146484375f)), 2097152.0f, mad(_5560, 6.283185482025146484375f, floor(mad(mad(_4678, _5556, -_5561), 2097152.0f, _5560)) * (-6.283185482025146484375f)))) * _5571)) + float3(_560, _560, sin(mad(mad(_5578, 6.283185482025146484375f, _5582 * (-6.283185482025146484375f)), 2097152.0f, mad(_5581, 6.283185482025146484375f, floor(mad(mad(_4715, _5577, -_5582), 2097152.0f, _5581)) * (-6.283185482025146484375f)))) * _5592));
    float _5598 = Material_Material_PreshaderBuffer[71].y * _5513;
    float _5599 = 2.0f / _5598;
    float _5600 = _4781 * _5599;
    float _5603 = mad(_4782, _5599, (_5599 * Material_Material_PreshaderBuffer[72].z) * _3866);
    float _5604 = floor(_5600);
    float _5616 = _5598 * Material_Material_PreshaderBuffer[15].w;
    float _5617 = 2.0f / _5616;
    float _5618 = _4815 * _5617;
    float _5621 = mad(_4816, _5617, (_5617 * Material_Material_PreshaderBuffer[72].w) * _3866);
    float _5622 = floor(_5618);
    float _5637 = _5616 * Material_Material_PreshaderBuffer[15].w;
    float _5638 = 2.0f / _5637;
    float _5639 = _4850 * _5638;
    float _5642 = mad(_4851, _5638, (_5638 * Material_Material_PreshaderBuffer[73].x) * _3866);
    float _5643 = floor(_5639);
    float _5658 = 2.0f / (_5637 * Material_Material_PreshaderBuffer[15].w);
    float _5659 = _4884 * _5658;
    float _5662 = mad(_4885, _5658, (_5658 * Material_Material_PreshaderBuffer[73].y) * _3866);
    float _5663 = floor(_5659);
    float3 _5677 = _5597 + (((float3(_560, _560, sin(mad(mad(_5600, 6.283185482025146484375f, _5604 * (-6.283185482025146484375f)), 2097152.0f, mad(_5603, 6.283185482025146484375f, floor(mad(mad(_4781, _5599, -_5604), 2097152.0f, _5603)) * (-6.283185482025146484375f)))) * _5530) + float3(_560, _560, sin(mad(mad(_5618, 6.283185482025146484375f, _5622 * (-6.283185482025146484375f)), 2097152.0f, mad(_5621, 6.283185482025146484375f, floor(mad(mad(_4815, _5617, -_5622), 2097152.0f, _5621)) * (-6.283185482025146484375f)))) * _5549)) + float3(_560, _560, sin(mad(mad(_5639, 6.283185482025146484375f, _5643 * (-6.283185482025146484375f)), 2097152.0f, mad(_5642, 6.283185482025146484375f, floor(mad(mad(_4850, _5638, -_5643), 2097152.0f, _5642)) * (-6.283185482025146484375f)))) * _5571)) + float3(_560, _560, sin(mad(mad(_5659, 6.283185482025146484375f, _5663 * (-6.283185482025146484375f)), 2097152.0f, mad(_5662, 6.283185482025146484375f, floor(mad(mad(_4884, _5658, -_5663), 2097152.0f, _5662)) * (-6.283185482025146484375f)))) * _5592));
    float _5690 = (abs(Material_Material_PreshaderBuffer[75].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[75].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[75].z : Material_Material_PreshaderBuffer[75].w) : Material_Material_PreshaderBuffer[75].z;
    float _5698 = (abs(_5690 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_5690 >= 1.0f) ? Material_Material_PreshaderBuffer[76].x : Material_Material_PreshaderBuffer[75].z) : Material_Material_PreshaderBuffer[75].z;
    float3 _5708 = float3(min(max((abs(_5698) > 9.9999997473787516355514526367188e-06f) ? ((_5698 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[77].y, 0.0f);
    float2 _5714 = float2(min(max(_5708 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _5715 = _1709 * _5714;
    float2 _5716 = _5714 * _1710;
    float _5721 = _5715.x + _5715.y;
    float _5722 = _5716.x + _5716.y;
    float _5725 = Material_Material_PreshaderBuffer[78].z * _3579;
    float _5726 = 2.0f / _5725;
    float _5727 = _5721 * _5726;
    float3 _5730 = View_View_ViewTilePosition * _3599;
    float3 _5731 = (_655 + 10000.0f.xxx) * _3599;
    float3 _5732 = _5730 * _3590;
    float3 _5734 = (_3590 * _5731) * _3595;
    float3 _5741 = float3(_5734.xy, (_3607 + _5734.z.xx).x);
    float3 _5752 = 0.0f.xxx;
    float _5757 = 0.0f;
    _5752 = ((mad(_5732, _3595, -floor(mad(_5732, _3595, (_5741 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _5741) * 1.0f;
    _5757 = 0.0f;
    float _5755 = 1.0f;
    uint _5759 = 0u;
    [loop]
    for (; _5759 < 6u; )
    {
        float3 _5763 = frac(_5752);
        float _5765 = dot(floor(_5752), float3(19.0f, 47.0f, 101.0f));
        uint3 _5777 = (uint3(int3(int(_5765), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5778 = _5777.y;
        uint _5779 = _5777.z;
        uint _5782 = _5777.x + (_5778 * _5779);
        uint _5784 = _5778 + (_5779 * _5782);
        uint3 _5789 = uint3(0u, 0u, 0u);
        _5789.x = _5782 + (_5784 * (_5779 + (_5782 * _5784)));
        uint3 _5790 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _5803 = (uint3(int3(int(_5765 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5804 = _5803.y;
        uint _5805 = _5803.z;
        uint _5808 = _5803.x + (_5804 * _5805);
        uint _5810 = _5804 + (_5805 * _5808);
        uint3 _5815 = uint3(0u, 0u, 0u);
        _5815.x = _5808 + (_5810 * (_5805 + (_5808 * _5810)));
        uint3 _5828 = (uint3(int3(int(_5765 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5829 = _5828.y;
        uint _5830 = _5828.z;
        uint _5833 = _5828.x + (_5829 * _5830);
        uint _5835 = _5829 + (_5830 * _5833);
        uint3 _5840 = uint3(0u, 0u, 0u);
        _5840.x = _5833 + (_5835 * (_5830 + (_5833 * _5835)));
        uint3 _5853 = (uint3(int3(int(_5765 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5854 = _5853.y;
        uint _5855 = _5853.z;
        uint _5858 = _5853.x + (_5854 * _5855);
        uint _5860 = _5854 + (_5855 * _5858);
        uint3 _5865 = uint3(0u, 0u, 0u);
        _5865.x = _5858 + (_5860 * (_5855 + (_5858 * _5860)));
        uint3 _5878 = (uint3(int3(int(_5765 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5879 = _5878.y;
        uint _5880 = _5878.z;
        uint _5883 = _5878.x + (_5879 * _5880);
        uint _5885 = _5879 + (_5880 * _5883);
        uint3 _5890 = uint3(0u, 0u, 0u);
        _5890.x = _5883 + (_5885 * (_5880 + (_5883 * _5885)));
        uint3 _5903 = (uint3(int3(int(_5765 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5904 = _5903.y;
        uint _5905 = _5903.z;
        uint _5908 = _5903.x + (_5904 * _5905);
        uint _5910 = _5904 + (_5905 * _5908);
        uint3 _5915 = uint3(0u, 0u, 0u);
        _5915.x = _5908 + (_5910 * (_5905 + (_5908 * _5910)));
        uint3 _5928 = (uint3(int3(int(_5765 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5929 = _5928.y;
        uint _5930 = _5928.z;
        uint _5933 = _5928.x + (_5929 * _5930);
        uint _5935 = _5929 + (_5930 * _5933);
        uint3 _5940 = uint3(0u, 0u, 0u);
        _5940.x = _5933 + (_5935 * (_5930 + (_5933 * _5935)));
        uint3 _5953 = (uint3(int3(int(_5765 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5954 = _5953.y;
        uint _5955 = _5953.z;
        uint _5958 = _5953.x + (_5954 * _5955);
        uint _5960 = _5954 + (_5955 * _5958);
        uint3 _5965 = uint3(0u, 0u, 0u);
        _5965.x = _5958 + (_5960 * (_5955 + (_5958 * _5960)));
        float4 _5976 = float4(_5763, 0.0f);
        float4 _5982 = ((_5976 * _5976) * _5976) * mad(_5976, (_5976 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _5983 = _5982.x;
        float _5986 = _5982.y;
        float _5758 = mad(lerp(lerp(lerp(dot(mad(float3((_5789 >> _5790).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5763), dot(mad(float3((_5815 >> _5790).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5763 - float3(1.0f, 0.0f, 0.0f)), _5983), lerp(dot(mad(float3((_5840 >> _5790).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5763 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_5865 >> _5790).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5763 - float3(1.0f, 1.0f, 0.0f)), _5983), _5986), lerp(lerp(dot(mad(float3((_5890 >> _5790).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5763 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_5915 >> _5790).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5763 - float3(1.0f, 0.0f, 1.0f)), _5983), lerp(dot(mad(float3((_5940 >> _5790).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5763 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_5965 >> _5790).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5763 - 1.0f.xxx), _5983), _5986), _5982.z), _5755, _5757);
        _5752 *= 2.0f;
        _5755 *= 0.5f;
        _5757 = _5758;
        _5759++;
        continue;
    }
    float _5996 = lerp(_1174, _1727, clamp(lerp(0.0f, 1.0f, mad(_5757, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _5998 = mad(_5722, _5726, (_5726 * Material_Material_PreshaderBuffer[57].w) * _5996);
    float _5999 = floor(_5727);
    float3 _6009 = _5730 * _3889;
    float3 _6011 = (_3889 * _5731) * _3894;
    float3 _6018 = float3(_6011.xy, (_3904 + _6011.z.xx).x);
    float3 _6029 = 0.0f.xxx;
    float _6034 = 0.0f;
    _6029 = ((mad(_6009, _3894, -floor(mad(_6009, _3894, (_6018 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _6018) * 1.0f;
    _6034 = 0.0f;
    float _6032 = 1.0f;
    uint _6036 = 0u;
    [loop]
    for (; _6036 < 10u; )
    {
        float3 _6040 = frac(_6029);
        float _6042 = dot(floor(_6029), float3(19.0f, 47.0f, 101.0f));
        uint3 _6054 = (uint3(int3(int(_6042), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6055 = _6054.y;
        uint _6056 = _6054.z;
        uint _6059 = _6054.x + (_6055 * _6056);
        uint _6061 = _6055 + (_6056 * _6059);
        uint3 _6066 = uint3(0u, 0u, 0u);
        _6066.x = _6059 + (_6061 * (_6056 + (_6059 * _6061)));
        uint3 _6067 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _6080 = (uint3(int3(int(_6042 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6081 = _6080.y;
        uint _6082 = _6080.z;
        uint _6085 = _6080.x + (_6081 * _6082);
        uint _6087 = _6081 + (_6082 * _6085);
        uint3 _6092 = uint3(0u, 0u, 0u);
        _6092.x = _6085 + (_6087 * (_6082 + (_6085 * _6087)));
        uint3 _6105 = (uint3(int3(int(_6042 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6106 = _6105.y;
        uint _6107 = _6105.z;
        uint _6110 = _6105.x + (_6106 * _6107);
        uint _6112 = _6106 + (_6107 * _6110);
        uint3 _6117 = uint3(0u, 0u, 0u);
        _6117.x = _6110 + (_6112 * (_6107 + (_6110 * _6112)));
        uint3 _6130 = (uint3(int3(int(_6042 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6131 = _6130.y;
        uint _6132 = _6130.z;
        uint _6135 = _6130.x + (_6131 * _6132);
        uint _6137 = _6131 + (_6132 * _6135);
        uint3 _6142 = uint3(0u, 0u, 0u);
        _6142.x = _6135 + (_6137 * (_6132 + (_6135 * _6137)));
        uint3 _6155 = (uint3(int3(int(_6042 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6156 = _6155.y;
        uint _6157 = _6155.z;
        uint _6160 = _6155.x + (_6156 * _6157);
        uint _6162 = _6156 + (_6157 * _6160);
        uint3 _6167 = uint3(0u, 0u, 0u);
        _6167.x = _6160 + (_6162 * (_6157 + (_6160 * _6162)));
        uint3 _6180 = (uint3(int3(int(_6042 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6181 = _6180.y;
        uint _6182 = _6180.z;
        uint _6185 = _6180.x + (_6181 * _6182);
        uint _6187 = _6181 + (_6182 * _6185);
        uint3 _6192 = uint3(0u, 0u, 0u);
        _6192.x = _6185 + (_6187 * (_6182 + (_6185 * _6187)));
        uint3 _6205 = (uint3(int3(int(_6042 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6206 = _6205.y;
        uint _6207 = _6205.z;
        uint _6210 = _6205.x + (_6206 * _6207);
        uint _6212 = _6206 + (_6207 * _6210);
        uint3 _6217 = uint3(0u, 0u, 0u);
        _6217.x = _6210 + (_6212 * (_6207 + (_6210 * _6212)));
        uint3 _6230 = (uint3(int3(int(_6042 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6231 = _6230.y;
        uint _6232 = _6230.z;
        uint _6235 = _6230.x + (_6231 * _6232);
        uint _6237 = _6231 + (_6232 * _6235);
        uint3 _6242 = uint3(0u, 0u, 0u);
        _6242.x = _6235 + (_6237 * (_6232 + (_6235 * _6237)));
        float4 _6253 = float4(_6040, 0.0f);
        float4 _6259 = ((_6253 * _6253) * _6253) * mad(_6253, (_6253 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _6260 = _6259.x;
        float _6263 = _6259.y;
        float _6270 = abs(lerp(lerp(lerp(dot(mad(float3((_6066 >> _6067).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6040), dot(mad(float3((_6092 >> _6067).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6040 - float3(1.0f, 0.0f, 0.0f)), _6260), lerp(dot(mad(float3((_6117 >> _6067).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6040 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_6142 >> _6067).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6040 - float3(1.0f, 1.0f, 0.0f)), _6260), _6263), lerp(lerp(dot(mad(float3((_6167 >> _6067).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6040 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_6192 >> _6067).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6040 - float3(1.0f, 0.0f, 1.0f)), _6260), lerp(dot(mad(float3((_6217 >> _6067).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6040 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_6242 >> _6067).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6040 - 1.0f.xxx), _6260), _6263), _6259.z));
        float _6035 = mad(_6270, _6032, _6034);
        _6029 *= 2.0f;
        _6032 *= 0.5f;
        _6034 = _6035;
        _6036++;
        continue;
    }
    float3 _6272 = _5730 * _4164;
    float3 _6274 = (_4164 * _5731) * _4169;
    float3 _6281 = float3(_6274.xy, (_4179 + _6274.z.xx).x);
    float3 _6292 = 0.0f.xxx;
    float _6297 = 0.0f;
    _6292 = ((mad(_6272, _4169, -floor(mad(_6272, _4169, (_6281 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _6281) * 1.0f;
    _6297 = 0.0f;
    float _6295 = 1.0f;
    uint _6299 = 0u;
    [loop]
    for (; _6299 < 10u; )
    {
        float3 _6303 = frac(_6292);
        float _6305 = dot(floor(_6292), float3(19.0f, 47.0f, 101.0f));
        uint3 _6317 = (uint3(int3(int(_6305), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6318 = _6317.y;
        uint _6319 = _6317.z;
        uint _6322 = _6317.x + (_6318 * _6319);
        uint _6324 = _6318 + (_6319 * _6322);
        uint3 _6329 = uint3(0u, 0u, 0u);
        _6329.x = _6322 + (_6324 * (_6319 + (_6322 * _6324)));
        uint3 _6330 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _6343 = (uint3(int3(int(_6305 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6344 = _6343.y;
        uint _6345 = _6343.z;
        uint _6348 = _6343.x + (_6344 * _6345);
        uint _6350 = _6344 + (_6345 * _6348);
        uint3 _6355 = uint3(0u, 0u, 0u);
        _6355.x = _6348 + (_6350 * (_6345 + (_6348 * _6350)));
        uint3 _6368 = (uint3(int3(int(_6305 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6369 = _6368.y;
        uint _6370 = _6368.z;
        uint _6373 = _6368.x + (_6369 * _6370);
        uint _6375 = _6369 + (_6370 * _6373);
        uint3 _6380 = uint3(0u, 0u, 0u);
        _6380.x = _6373 + (_6375 * (_6370 + (_6373 * _6375)));
        uint3 _6393 = (uint3(int3(int(_6305 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6394 = _6393.y;
        uint _6395 = _6393.z;
        uint _6398 = _6393.x + (_6394 * _6395);
        uint _6400 = _6394 + (_6395 * _6398);
        uint3 _6405 = uint3(0u, 0u, 0u);
        _6405.x = _6398 + (_6400 * (_6395 + (_6398 * _6400)));
        uint3 _6418 = (uint3(int3(int(_6305 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6419 = _6418.y;
        uint _6420 = _6418.z;
        uint _6423 = _6418.x + (_6419 * _6420);
        uint _6425 = _6419 + (_6420 * _6423);
        uint3 _6430 = uint3(0u, 0u, 0u);
        _6430.x = _6423 + (_6425 * (_6420 + (_6423 * _6425)));
        uint3 _6443 = (uint3(int3(int(_6305 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6444 = _6443.y;
        uint _6445 = _6443.z;
        uint _6448 = _6443.x + (_6444 * _6445);
        uint _6450 = _6444 + (_6445 * _6448);
        uint3 _6455 = uint3(0u, 0u, 0u);
        _6455.x = _6448 + (_6450 * (_6445 + (_6448 * _6450)));
        uint3 _6468 = (uint3(int3(int(_6305 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6469 = _6468.y;
        uint _6470 = _6468.z;
        uint _6473 = _6468.x + (_6469 * _6470);
        uint _6475 = _6469 + (_6470 * _6473);
        uint3 _6480 = uint3(0u, 0u, 0u);
        _6480.x = _6473 + (_6475 * (_6470 + (_6473 * _6475)));
        uint3 _6493 = (uint3(int3(int(_6305 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6494 = _6493.y;
        uint _6495 = _6493.z;
        uint _6498 = _6493.x + (_6494 * _6495);
        uint _6500 = _6494 + (_6495 * _6498);
        uint3 _6505 = uint3(0u, 0u, 0u);
        _6505.x = _6498 + (_6500 * (_6495 + (_6498 * _6500)));
        float4 _6516 = float4(_6303, 0.0f);
        float4 _6522 = ((_6516 * _6516) * _6516) * mad(_6516, (_6516 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _6523 = _6522.x;
        float _6526 = _6522.y;
        float _6533 = abs(lerp(lerp(lerp(dot(mad(float3((_6329 >> _6330).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6303), dot(mad(float3((_6355 >> _6330).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6303 - float3(1.0f, 0.0f, 0.0f)), _6523), lerp(dot(mad(float3((_6380 >> _6330).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6303 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_6405 >> _6330).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6303 - float3(1.0f, 1.0f, 0.0f)), _6523), _6526), lerp(lerp(dot(mad(float3((_6430 >> _6330).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6303 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_6455 >> _6330).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6303 - float3(1.0f, 0.0f, 1.0f)), _6523), lerp(dot(mad(float3((_6480 >> _6330).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6303 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_6505 >> _6330).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6303 - 1.0f.xxx), _6523), _6526), _6522.z));
        float _6298 = mad(_6533, _6295, _6297);
        _6292 *= 2.0f;
        _6295 *= 0.5f;
        _6297 = _6298;
        _6299++;
        continue;
    }
    float _6537 = lerp(_3881, _3886, lerp(0.0f, 1.0f, _6034) * mad(lerp(0.0f, 1.0f, _6297), Material_Material_PreshaderBuffer[61].w, Material_Material_PreshaderBuffer[61].z));
    float2 _6545 = float2(min(max(_5708 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6546 = _1709 * _6545;
    float2 _6547 = _6545 * _1710;
    float _6552 = _6546.x + _6546.y;
    float _6553 = _6547.x + _6547.y;
    float _6554 = _5725 * Material_Material_PreshaderBuffer[15].w;
    float _6555 = 2.0f / _6554;
    float _6556 = _6552 * _6555;
    float _6559 = mad(_6553, _6555, (_6555 * Material_Material_PreshaderBuffer[62].y) * _5996);
    float _6560 = floor(_6556);
    float _6570 = _6537 * Material_Material_PreshaderBuffer[17].z;
    float2 _6581 = float2(min(max(_5708 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6582 = _1709 * _6581;
    float2 _6583 = _6581 * _1710;
    float _6588 = _6582.x + _6582.y;
    float _6589 = _6583.x + _6583.y;
    float _6590 = _6554 * Material_Material_PreshaderBuffer[15].w;
    float _6591 = 2.0f / _6590;
    float _6592 = _6588 * _6591;
    float _6595 = mad(_6589, _6591, (_6591 * Material_Material_PreshaderBuffer[62].w) * _5996);
    float _6596 = floor(_6592);
    float _6606 = _6570 * Material_Material_PreshaderBuffer[17].z;
    float2 _6616 = float2(min(max(_5708 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6617 = _1709 * _6616;
    float2 _6618 = _6616 * _1710;
    float _6623 = _6617.x + _6617.y;
    float _6624 = _6618.x + _6618.y;
    float _6626 = 2.0f / (_6590 * Material_Material_PreshaderBuffer[15].w);
    float _6627 = _6623 * _6626;
    float _6630 = mad(_6624, _6626, (_6626 * Material_Material_PreshaderBuffer[63].y) * _5996);
    float _6631 = floor(_6627);
    float _6655 = (abs(Material_Material_PreshaderBuffer[78].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[78].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[78].w : Material_Material_PreshaderBuffer[79].x) : Material_Material_PreshaderBuffer[78].w;
    float _6663 = (abs(_6655 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_6655 >= 1.0f) ? Material_Material_PreshaderBuffer[79].y : Material_Material_PreshaderBuffer[78].w) : Material_Material_PreshaderBuffer[78].w;
    float3 _6673 = float3(min(max((abs(_6663) > 9.9999997473787516355514526367188e-06f) ? ((_6663 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[80].z, 0.0f);
    float2 _6679 = float2(min(max(_6673 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6680 = _1709 * _6679;
    float2 _6681 = _6679 * _1710;
    float _6686 = _6680.x + _6680.y;
    float _6687 = _6681.x + _6681.y;
    float _6690 = Material_Material_PreshaderBuffer[81].w * _4604;
    float _6691 = 2.0f / _6690;
    float _6692 = _6686 * _6691;
    float _6695 = mad(_6687, _6691, (_6691 * Material_Material_PreshaderBuffer[67].y) * _5996);
    float _6696 = floor(_6692);
    float _6706 = _6537 * Material_Material_PreshaderBuffer[25].w;
    float2 _6714 = float2(min(max(_6673 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6715 = _1709 * _6714;
    float2 _6716 = _6714 * _1710;
    float _6721 = _6715.x + _6715.y;
    float _6722 = _6716.x + _6716.y;
    float _6723 = _6690 * Material_Material_PreshaderBuffer[15].w;
    float _6724 = 2.0f / _6723;
    float _6725 = _6721 * _6724;
    float _6728 = mad(_6722, _6724, (_6724 * Material_Material_PreshaderBuffer[67].z) * _5996);
    float _6729 = floor(_6725);
    float _6739 = _6706 * Material_Material_PreshaderBuffer[17].z;
    float2 _6750 = float2(min(max(_6673 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6751 = _1709 * _6750;
    float2 _6752 = _6750 * _1710;
    float _6757 = _6751.x + _6751.y;
    float _6758 = _6752.x + _6752.y;
    float _6759 = _6723 * Material_Material_PreshaderBuffer[15].w;
    float _6760 = 2.0f / _6759;
    float _6761 = _6757 * _6760;
    float _6764 = mad(_6758, _6760, (_6760 * Material_Material_PreshaderBuffer[67].w) * _5996);
    float _6765 = floor(_6761);
    float _6775 = _6739 * Material_Material_PreshaderBuffer[17].z;
    float2 _6785 = float2(min(max(_6673 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6786 = _1709 * _6785;
    float2 _6787 = _6785 * _1710;
    float _6792 = _6786.x + _6786.y;
    float _6793 = _6787.x + _6787.y;
    float _6795 = 2.0f / (_6759 * Material_Material_PreshaderBuffer[15].w);
    float _6796 = _6792 * _6795;
    float _6799 = mad(_6793, _6795, (_6795 * Material_Material_PreshaderBuffer[68].x) * _5996);
    float _6800 = floor(_6796);
    float _6810 = _6775 * Material_Material_PreshaderBuffer[17].z;
    float3 _6815 = (((float3(_560, _560, sin(mad(mad(_5727, 6.283185482025146484375f, _5999 * (-6.283185482025146484375f)), 2097152.0f, mad(_5998, 6.283185482025146484375f, floor(mad(mad(_5721, _5726, -_5999), 2097152.0f, _5998)) * (-6.283185482025146484375f)))) * _6537) + float3(_560, _560, sin(mad(mad(_6556, 6.283185482025146484375f, _6560 * (-6.283185482025146484375f)), 2097152.0f, mad(_6559, 6.283185482025146484375f, floor(mad(mad(_6552, _6555, -_6560), 2097152.0f, _6559)) * (-6.283185482025146484375f)))) * _6570)) + float3(_560, _560, sin(mad(mad(_6592, 6.283185482025146484375f, _6596 * (-6.283185482025146484375f)), 2097152.0f, mad(_6595, 6.283185482025146484375f, floor(mad(mad(_6588, _6591, -_6596), 2097152.0f, _6595)) * (-6.283185482025146484375f)))) * _6606)) + float3(_560, _560, sin(mad(mad(_6627, 6.283185482025146484375f, _6631 * (-6.283185482025146484375f)), 2097152.0f, mad(_6630, 6.283185482025146484375f, floor(mad(mad(_6623, _6626, -_6631), 2097152.0f, _6630)) * (-6.283185482025146484375f)))) * (_6606 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_560, _560, sin(mad(mad(_6692, 6.283185482025146484375f, _6696 * (-6.283185482025146484375f)), 2097152.0f, mad(_6695, 6.283185482025146484375f, floor(mad(mad(_6686, _6691, -_6696), 2097152.0f, _6695)) * (-6.283185482025146484375f)))) * _6706) + float3(_560, _560, sin(mad(mad(_6725, 6.283185482025146484375f, _6729 * (-6.283185482025146484375f)), 2097152.0f, mad(_6728, 6.283185482025146484375f, floor(mad(mad(_6721, _6724, -_6729), 2097152.0f, _6728)) * (-6.283185482025146484375f)))) * _6739)) + float3(_560, _560, sin(mad(mad(_6761, 6.283185482025146484375f, _6765 * (-6.283185482025146484375f)), 2097152.0f, mad(_6764, 6.283185482025146484375f, floor(mad(mad(_6757, _6760, -_6765), 2097152.0f, _6764)) * (-6.283185482025146484375f)))) * _6775)) + float3(_560, _560, sin(mad(mad(_6796, 6.283185482025146484375f, _6800 * (-6.283185482025146484375f)), 2097152.0f, mad(_6799, 6.283185482025146484375f, floor(mad(mad(_6792, _6795, -_6800), 2097152.0f, _6799)) * (-6.283185482025146484375f)))) * _6810));
    float _6825 = (abs(Material_Material_PreshaderBuffer[82].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[82].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[82].x : Material_Material_PreshaderBuffer[82].y) : Material_Material_PreshaderBuffer[82].x;
    float _6833 = (abs(_6825 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_6825 >= 1.0f) ? Material_Material_PreshaderBuffer[82].z : Material_Material_PreshaderBuffer[82].x) : Material_Material_PreshaderBuffer[82].x;
    float3 _6843 = float3(min(max((abs(_6833) > 9.9999997473787516355514526367188e-06f) ? ((_6833 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[83].w, 0.0f);
    float2 _6849 = float2(min(max(_6843 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6850 = _1709 * _6849;
    float2 _6851 = _6849 * _1710;
    float _6856 = _6850.x + _6850.y;
    float _6857 = _6851.x + _6851.y;
    float _6860 = Material_Material_PreshaderBuffer[85].x * _4604;
    float _6861 = 2.0f / _6860;
    float _6862 = _6856 * _6861;
    float _6865 = mad(_6857, _6861, (_6861 * Material_Material_PreshaderBuffer[67].y) * _5996);
    float _6866 = floor(_6862);
    float2 _6883 = float2(min(max(_6843 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6884 = _1709 * _6883;
    float2 _6885 = _6883 * _1710;
    float _6890 = _6884.x + _6884.y;
    float _6891 = _6885.x + _6885.y;
    float _6892 = _6860 * Material_Material_PreshaderBuffer[15].w;
    float _6893 = 2.0f / _6892;
    float _6894 = _6890 * _6893;
    float _6897 = mad(_6891, _6893, (_6893 * Material_Material_PreshaderBuffer[67].z) * _5996);
    float _6898 = floor(_6894);
    float2 _6918 = float2(min(max(_6843 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6919 = _1709 * _6918;
    float2 _6920 = _6918 * _1710;
    float _6925 = _6919.x + _6919.y;
    float _6926 = _6920.x + _6920.y;
    float _6927 = _6892 * Material_Material_PreshaderBuffer[15].w;
    float _6928 = 2.0f / _6927;
    float _6929 = _6925 * _6928;
    float _6932 = mad(_6926, _6928, (_6928 * Material_Material_PreshaderBuffer[67].w) * _5996);
    float _6933 = floor(_6929);
    float2 _6952 = float2(min(max(_6843 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6953 = _1709 * _6952;
    float2 _6954 = _6952 * _1710;
    float _6959 = _6953.x + _6953.y;
    float _6960 = _6954.x + _6954.y;
    float _6962 = 2.0f / (_6927 * Material_Material_PreshaderBuffer[15].w);
    float _6963 = _6959 * _6962;
    float _6966 = mad(_6960, _6962, (_6962 * Material_Material_PreshaderBuffer[68].x) * _5996);
    float _6967 = floor(_6963);
    float3 _6981 = _6815 + (((float3(_560, _560, sin(mad(mad(_6862, 6.283185482025146484375f, _6866 * (-6.283185482025146484375f)), 2097152.0f, mad(_6865, 6.283185482025146484375f, floor(mad(mad(_6856, _6861, -_6866), 2097152.0f, _6865)) * (-6.283185482025146484375f)))) * _6706) + float3(_560, _560, sin(mad(mad(_6894, 6.283185482025146484375f, _6898 * (-6.283185482025146484375f)), 2097152.0f, mad(_6897, 6.283185482025146484375f, floor(mad(mad(_6890, _6893, -_6898), 2097152.0f, _6897)) * (-6.283185482025146484375f)))) * _6739)) + float3(_560, _560, sin(mad(mad(_6929, 6.283185482025146484375f, _6933 * (-6.283185482025146484375f)), 2097152.0f, mad(_6932, 6.283185482025146484375f, floor(mad(mad(_6925, _6928, -_6933), 2097152.0f, _6932)) * (-6.283185482025146484375f)))) * _6775)) + float3(_560, _560, sin(mad(mad(_6963, 6.283185482025146484375f, _6967 * (-6.283185482025146484375f)), 2097152.0f, mad(_6966, 6.283185482025146484375f, floor(mad(mad(_6959, _6962, -_6967), 2097152.0f, _6966)) * (-6.283185482025146484375f)))) * _6810));
    float _6982 = _3579 * 8.0f;
    float _6983 = Material_Material_PreshaderBuffer[78].z * _6982;
    float _6984 = 2.0f / _6983;
    float _6985 = _5721 * _6984;
    float _6988 = mad(_5722, _6984, (_6984 * Material_Material_PreshaderBuffer[71].z) * _5996);
    float _6989 = floor(_6985);
    float _6999 = _6537 * 8.0f;
    float _7002 = _6983 * Material_Material_PreshaderBuffer[15].w;
    float _7003 = 2.0f / _7002;
    float _7004 = _6552 * _7003;
    float _7007 = mad(_6553, _7003, (_7003 * Material_Material_PreshaderBuffer[71].w) * _5996);
    float _7008 = floor(_7004);
    float _7018 = _6999 * Material_Material_PreshaderBuffer[17].z;
    float _7024 = _7002 * Material_Material_PreshaderBuffer[15].w;
    float _7025 = 2.0f / _7024;
    float _7026 = _6588 * _7025;
    float _7029 = mad(_6589, _7025, (_7025 * Material_Material_PreshaderBuffer[72].x) * _5996);
    float _7030 = floor(_7026);
    float _7040 = _7018 * Material_Material_PreshaderBuffer[17].z;
    float _7046 = 2.0f / (_7024 * Material_Material_PreshaderBuffer[15].w);
    float _7047 = _6623 * _7046;
    float _7050 = mad(_6624, _7046, (_7046 * Material_Material_PreshaderBuffer[72].y) * _5996);
    float _7051 = floor(_7047);
    float _7066 = _6982 * Material_Material_PreshaderBuffer[23].w;
    float _7067 = Material_Material_PreshaderBuffer[81].w * _7066;
    float _7068 = 2.0f / _7067;
    float _7069 = _6686 * _7068;
    float _7072 = mad(_6687, _7068, (_7068 * Material_Material_PreshaderBuffer[72].z) * _5996);
    float _7073 = floor(_7069);
    float _7083 = _6999 * Material_Material_PreshaderBuffer[25].w;
    float _7086 = _7067 * Material_Material_PreshaderBuffer[15].w;
    float _7087 = 2.0f / _7086;
    float _7088 = _6721 * _7087;
    float _7091 = mad(_6722, _7087, (_7087 * Material_Material_PreshaderBuffer[72].w) * _5996);
    float _7092 = floor(_7088);
    float _7102 = _7083 * Material_Material_PreshaderBuffer[17].z;
    float _7108 = _7086 * Material_Material_PreshaderBuffer[15].w;
    float _7109 = 2.0f / _7108;
    float _7110 = _6757 * _7109;
    float _7113 = mad(_6758, _7109, (_7109 * Material_Material_PreshaderBuffer[73].x) * _5996);
    float _7114 = floor(_7110);
    float _7124 = _7102 * Material_Material_PreshaderBuffer[17].z;
    float _7130 = 2.0f / (_7108 * Material_Material_PreshaderBuffer[15].w);
    float _7131 = _6792 * _7130;
    float _7134 = mad(_6793, _7130, (_7130 * Material_Material_PreshaderBuffer[73].y) * _5996);
    float _7135 = floor(_7131);
    float _7145 = _7124 * Material_Material_PreshaderBuffer[17].z;
    float3 _7150 = (((float3(_560, _560, sin(mad(mad(_6985, 6.283185482025146484375f, _6989 * (-6.283185482025146484375f)), 2097152.0f, mad(_6988, 6.283185482025146484375f, floor(mad(mad(_5721, _6984, -_6989), 2097152.0f, _6988)) * (-6.283185482025146484375f)))) * _6999) + float3(_560, _560, sin(mad(mad(_7004, 6.283185482025146484375f, _7008 * (-6.283185482025146484375f)), 2097152.0f, mad(_7007, 6.283185482025146484375f, floor(mad(mad(_6552, _7003, -_7008), 2097152.0f, _7007)) * (-6.283185482025146484375f)))) * _7018)) + float3(_560, _560, sin(mad(mad(_7026, 6.283185482025146484375f, _7030 * (-6.283185482025146484375f)), 2097152.0f, mad(_7029, 6.283185482025146484375f, floor(mad(mad(_6588, _7025, -_7030), 2097152.0f, _7029)) * (-6.283185482025146484375f)))) * _7040)) + float3(_560, _560, sin(mad(mad(_7047, 6.283185482025146484375f, _7051 * (-6.283185482025146484375f)), 2097152.0f, mad(_7050, 6.283185482025146484375f, floor(mad(mad(_6623, _7046, -_7051), 2097152.0f, _7050)) * (-6.283185482025146484375f)))) * (_7040 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_560, _560, sin(mad(mad(_7069, 6.283185482025146484375f, _7073 * (-6.283185482025146484375f)), 2097152.0f, mad(_7072, 6.283185482025146484375f, floor(mad(mad(_6686, _7068, -_7073), 2097152.0f, _7072)) * (-6.283185482025146484375f)))) * _7083) + float3(_560, _560, sin(mad(mad(_7088, 6.283185482025146484375f, _7092 * (-6.283185482025146484375f)), 2097152.0f, mad(_7091, 6.283185482025146484375f, floor(mad(mad(_6721, _7087, -_7092), 2097152.0f, _7091)) * (-6.283185482025146484375f)))) * _7102)) + float3(_560, _560, sin(mad(mad(_7110, 6.283185482025146484375f, _7114 * (-6.283185482025146484375f)), 2097152.0f, mad(_7113, 6.283185482025146484375f, floor(mad(mad(_6757, _7109, -_7114), 2097152.0f, _7113)) * (-6.283185482025146484375f)))) * _7124)) + float3(_560, _560, sin(mad(mad(_7131, 6.283185482025146484375f, _7135 * (-6.283185482025146484375f)), 2097152.0f, mad(_7134, 6.283185482025146484375f, floor(mad(mad(_6792, _7130, -_7135), 2097152.0f, _7134)) * (-6.283185482025146484375f)))) * _7145));
    float _7151 = Material_Material_PreshaderBuffer[85].x * _7066;
    float _7152 = 2.0f / _7151;
    float _7153 = _6856 * _7152;
    float _7156 = mad(_6857, _7152, (_7152 * Material_Material_PreshaderBuffer[72].z) * _5996);
    float _7157 = floor(_7153);
    float _7169 = _7151 * Material_Material_PreshaderBuffer[15].w;
    float _7170 = 2.0f / _7169;
    float _7171 = _6890 * _7170;
    float _7174 = mad(_6891, _7170, (_7170 * Material_Material_PreshaderBuffer[72].w) * _5996);
    float _7175 = floor(_7171);
    float _7190 = _7169 * Material_Material_PreshaderBuffer[15].w;
    float _7191 = 2.0f / _7190;
    float _7192 = _6925 * _7191;
    float _7195 = mad(_6926, _7191, (_7191 * Material_Material_PreshaderBuffer[73].x) * _5996);
    float _7196 = floor(_7192);
    float _7211 = 2.0f / (_7190 * Material_Material_PreshaderBuffer[15].w);
    float _7212 = _6959 * _7211;
    float _7215 = mad(_6960, _7211, (_7211 * Material_Material_PreshaderBuffer[73].y) * _5996);
    float _7216 = floor(_7212);
    float3 _7230 = _7150 + (((float3(_560, _560, sin(mad(mad(_7153, 6.283185482025146484375f, _7157 * (-6.283185482025146484375f)), 2097152.0f, mad(_7156, 6.283185482025146484375f, floor(mad(mad(_6856, _7152, -_7157), 2097152.0f, _7156)) * (-6.283185482025146484375f)))) * _7083) + float3(_560, _560, sin(mad(mad(_7171, 6.283185482025146484375f, _7175 * (-6.283185482025146484375f)), 2097152.0f, mad(_7174, 6.283185482025146484375f, floor(mad(mad(_6890, _7170, -_7175), 2097152.0f, _7174)) * (-6.283185482025146484375f)))) * _7102)) + float3(_560, _560, sin(mad(mad(_7192, 6.283185482025146484375f, _7196 * (-6.283185482025146484375f)), 2097152.0f, mad(_7195, 6.283185482025146484375f, floor(mad(mad(_6925, _7191, -_7196), 2097152.0f, _7195)) * (-6.283185482025146484375f)))) * _7124)) + float3(_560, _560, sin(mad(mad(_7212, 6.283185482025146484375f, _7216 * (-6.283185482025146484375f)), 2097152.0f, mad(_7215, 6.283185482025146484375f, floor(mad(mad(_6959, _7211, -_7216), 2097152.0f, _7215)) * (-6.283185482025146484375f)))) * _7145));
    float _7231 = Material_Material_PreshaderBuffer[78].z * _5172;
    float _7232 = 2.0f / _7231;
    float _7233 = _5721 * _7232;
    float _7236 = mad(_5722, _7232, (_7232 * Material_Material_PreshaderBuffer[73].z) * _5996);
    float _7237 = floor(_7233);
    float _7247 = _6537 * 4.0f;
    float _7250 = _7231 * Material_Material_PreshaderBuffer[15].w;
    float _7251 = 2.0f / _7250;
    float _7252 = _6552 * _7251;
    float _7255 = mad(_6553, _7251, (_7251 * Material_Material_PreshaderBuffer[73].w) * _5996);
    float _7256 = floor(_7252);
    float _7266 = _7247 * Material_Material_PreshaderBuffer[17].z;
    float _7272 = _7250 * Material_Material_PreshaderBuffer[15].w;
    float _7273 = 2.0f / _7272;
    float _7274 = _6588 * _7273;
    float _7277 = mad(_6589, _7273, (_7273 * Material_Material_PreshaderBuffer[74].x) * _5996);
    float _7278 = floor(_7274);
    float _7288 = _7266 * Material_Material_PreshaderBuffer[17].z;
    float _7294 = 2.0f / (_7272 * Material_Material_PreshaderBuffer[15].w);
    float _7295 = _6623 * _7294;
    float _7298 = mad(_6624, _7294, (_7294 * Material_Material_PreshaderBuffer[74].y) * _5996);
    float _7299 = floor(_7295);
    float _7314 = Material_Material_PreshaderBuffer[81].w * _5260;
    float _7315 = 2.0f / _7314;
    float _7316 = _6686 * _7315;
    float _7319 = mad(_6687, _7315, (_7315 * Material_Material_PreshaderBuffer[74].z) * _5996);
    float _7320 = floor(_7316);
    float _7330 = _7247 * Material_Material_PreshaderBuffer[25].w;
    float _7333 = _7314 * Material_Material_PreshaderBuffer[15].w;
    float _7334 = 2.0f / _7333;
    float _7335 = _6721 * _7334;
    float _7338 = mad(_6722, _7334, (_7334 * Material_Material_PreshaderBuffer[74].w) * _5996);
    float _7339 = floor(_7335);
    float _7349 = _7330 * Material_Material_PreshaderBuffer[17].z;
    float _7355 = _7333 * Material_Material_PreshaderBuffer[15].w;
    float _7356 = 2.0f / _7355;
    float _7357 = _6757 * _7356;
    float _7360 = mad(_6758, _7356, (_7356 * Material_Material_PreshaderBuffer[75].x) * _5996);
    float _7361 = floor(_7357);
    float _7371 = _7349 * Material_Material_PreshaderBuffer[17].z;
    float _7377 = 2.0f / (_7355 * Material_Material_PreshaderBuffer[15].w);
    float _7378 = _6792 * _7377;
    float _7381 = mad(_6793, _7377, (_7377 * Material_Material_PreshaderBuffer[75].y) * _5996);
    float _7382 = floor(_7378);
    float _7392 = _7371 * Material_Material_PreshaderBuffer[17].z;
    float3 _7397 = (((float3(_560, _560, sin(mad(mad(_7233, 6.283185482025146484375f, _7237 * (-6.283185482025146484375f)), 2097152.0f, mad(_7236, 6.283185482025146484375f, floor(mad(mad(_5721, _7232, -_7237), 2097152.0f, _7236)) * (-6.283185482025146484375f)))) * _7247) + float3(_560, _560, sin(mad(mad(_7252, 6.283185482025146484375f, _7256 * (-6.283185482025146484375f)), 2097152.0f, mad(_7255, 6.283185482025146484375f, floor(mad(mad(_6552, _7251, -_7256), 2097152.0f, _7255)) * (-6.283185482025146484375f)))) * _7266)) + float3(_560, _560, sin(mad(mad(_7274, 6.283185482025146484375f, _7278 * (-6.283185482025146484375f)), 2097152.0f, mad(_7277, 6.283185482025146484375f, floor(mad(mad(_6588, _7273, -_7278), 2097152.0f, _7277)) * (-6.283185482025146484375f)))) * _7288)) + float3(_560, _560, sin(mad(mad(_7295, 6.283185482025146484375f, _7299 * (-6.283185482025146484375f)), 2097152.0f, mad(_7298, 6.283185482025146484375f, floor(mad(mad(_6623, _7294, -_7299), 2097152.0f, _7298)) * (-6.283185482025146484375f)))) * (_7288 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_560, _560, sin(mad(mad(_7316, 6.283185482025146484375f, _7320 * (-6.283185482025146484375f)), 2097152.0f, mad(_7319, 6.283185482025146484375f, floor(mad(mad(_6686, _7315, -_7320), 2097152.0f, _7319)) * (-6.283185482025146484375f)))) * _7330) + float3(_560, _560, sin(mad(mad(_7335, 6.283185482025146484375f, _7339 * (-6.283185482025146484375f)), 2097152.0f, mad(_7338, 6.283185482025146484375f, floor(mad(mad(_6721, _7334, -_7339), 2097152.0f, _7338)) * (-6.283185482025146484375f)))) * _7349)) + float3(_560, _560, sin(mad(mad(_7357, 6.283185482025146484375f, _7361 * (-6.283185482025146484375f)), 2097152.0f, mad(_7360, 6.283185482025146484375f, floor(mad(mad(_6757, _7356, -_7361), 2097152.0f, _7360)) * (-6.283185482025146484375f)))) * _7371)) + float3(_560, _560, sin(mad(mad(_7378, 6.283185482025146484375f, _7382 * (-6.283185482025146484375f)), 2097152.0f, mad(_7381, 6.283185482025146484375f, floor(mad(mad(_6792, _7377, -_7382), 2097152.0f, _7381)) * (-6.283185482025146484375f)))) * _7392));
    float _7398 = Material_Material_PreshaderBuffer[85].x * _5260;
    float _7399 = 2.0f / _7398;
    float _7400 = _6856 * _7399;
    float _7403 = mad(_6857, _7399, (_7399 * Material_Material_PreshaderBuffer[74].z) * _5996);
    float _7404 = floor(_7400);
    float _7416 = _7398 * Material_Material_PreshaderBuffer[15].w;
    float _7417 = 2.0f / _7416;
    float _7418 = _6890 * _7417;
    float _7421 = mad(_6891, _7417, (_7417 * Material_Material_PreshaderBuffer[74].w) * _5996);
    float _7422 = floor(_7418);
    float _7437 = _7416 * Material_Material_PreshaderBuffer[15].w;
    float _7438 = 2.0f / _7437;
    float _7439 = _6925 * _7438;
    float _7442 = mad(_6926, _7438, (_7438 * Material_Material_PreshaderBuffer[75].x) * _5996);
    float _7443 = floor(_7439);
    float _7458 = 2.0f / (_7437 * Material_Material_PreshaderBuffer[15].w);
    float _7459 = _6959 * _7458;
    float _7462 = mad(_6960, _7458, (_7458 * Material_Material_PreshaderBuffer[75].y) * _5996);
    float _7463 = floor(_7459);
    float3 _7477 = _7397 + (((float3(_560, _560, sin(mad(mad(_7400, 6.283185482025146484375f, _7404 * (-6.283185482025146484375f)), 2097152.0f, mad(_7403, 6.283185482025146484375f, floor(mad(mad(_6856, _7399, -_7404), 2097152.0f, _7403)) * (-6.283185482025146484375f)))) * _7330) + float3(_560, _560, sin(mad(mad(_7418, 6.283185482025146484375f, _7422 * (-6.283185482025146484375f)), 2097152.0f, mad(_7421, 6.283185482025146484375f, floor(mad(mad(_6890, _7417, -_7422), 2097152.0f, _7421)) * (-6.283185482025146484375f)))) * _7349)) + float3(_560, _560, sin(mad(mad(_7439, 6.283185482025146484375f, _7443 * (-6.283185482025146484375f)), 2097152.0f, mad(_7442, 6.283185482025146484375f, floor(mad(mad(_6925, _7438, -_7443), 2097152.0f, _7442)) * (-6.283185482025146484375f)))) * _7371)) + float3(_560, _560, sin(mad(mad(_7459, 6.283185482025146484375f, _7463 * (-6.283185482025146484375f)), 2097152.0f, mad(_7462, 6.283185482025146484375f, floor(mad(mad(_6959, _7458, -_7463), 2097152.0f, _7462)) * (-6.283185482025146484375f)))) * _7392));
    float _7478 = Material_Material_PreshaderBuffer[78].z * _5429;
    float _7479 = 2.0f / _7478;
    float _7480 = _5721 * _7479;
    float _7483 = mad(_5722, _7479, (_7479 * Material_Material_PreshaderBuffer[71].z) * _5996);
    float _7484 = floor(_7480);
    float _7494 = _6537 * 0.5f;
    float _7497 = _7478 * Material_Material_PreshaderBuffer[15].w;
    float _7498 = 2.0f / _7497;
    float _7499 = _6552 * _7498;
    float _7502 = mad(_6553, _7498, (_7498 * Material_Material_PreshaderBuffer[71].w) * _5996);
    float _7503 = floor(_7499);
    float _7513 = _7494 * Material_Material_PreshaderBuffer[17].z;
    float _7519 = _7497 * Material_Material_PreshaderBuffer[15].w;
    float _7520 = 2.0f / _7519;
    float _7521 = _6588 * _7520;
    float _7524 = mad(_6589, _7520, (_7520 * Material_Material_PreshaderBuffer[72].x) * _5996);
    float _7525 = floor(_7521);
    float _7535 = _7513 * Material_Material_PreshaderBuffer[17].z;
    float _7541 = 2.0f / (_7519 * Material_Material_PreshaderBuffer[15].w);
    float _7542 = _6623 * _7541;
    float _7545 = mad(_6624, _7541, (_7541 * Material_Material_PreshaderBuffer[72].y) * _5996);
    float _7546 = floor(_7542);
    float _7561 = Material_Material_PreshaderBuffer[81].w * _5513;
    float _7562 = 2.0f / _7561;
    float _7563 = _6686 * _7562;
    float _7566 = mad(_6687, _7562, (_7562 * Material_Material_PreshaderBuffer[72].z) * _5996);
    float _7567 = floor(_7563);
    float _7577 = _7494 * Material_Material_PreshaderBuffer[25].w;
    float _7580 = _7561 * Material_Material_PreshaderBuffer[15].w;
    float _7581 = 2.0f / _7580;
    float _7582 = _6721 * _7581;
    float _7585 = mad(_6722, _7581, (_7581 * Material_Material_PreshaderBuffer[72].w) * _5996);
    float _7586 = floor(_7582);
    float _7596 = _7577 * Material_Material_PreshaderBuffer[17].z;
    float _7602 = _7580 * Material_Material_PreshaderBuffer[15].w;
    float _7603 = 2.0f / _7602;
    float _7604 = _6757 * _7603;
    float _7607 = mad(_6758, _7603, (_7603 * Material_Material_PreshaderBuffer[73].x) * _5996);
    float _7608 = floor(_7604);
    float _7618 = _7596 * Material_Material_PreshaderBuffer[17].z;
    float _7624 = 2.0f / (_7602 * Material_Material_PreshaderBuffer[15].w);
    float _7625 = _6792 * _7624;
    float _7628 = mad(_6793, _7624, (_7624 * Material_Material_PreshaderBuffer[73].y) * _5996);
    float _7629 = floor(_7625);
    float _7639 = _7618 * Material_Material_PreshaderBuffer[17].z;
    float3 _7644 = (((float3(_560, _560, sin(mad(mad(_7480, 6.283185482025146484375f, _7484 * (-6.283185482025146484375f)), 2097152.0f, mad(_7483, 6.283185482025146484375f, floor(mad(mad(_5721, _7479, -_7484), 2097152.0f, _7483)) * (-6.283185482025146484375f)))) * _7494) + float3(_560, _560, sin(mad(mad(_7499, 6.283185482025146484375f, _7503 * (-6.283185482025146484375f)), 2097152.0f, mad(_7502, 6.283185482025146484375f, floor(mad(mad(_6552, _7498, -_7503), 2097152.0f, _7502)) * (-6.283185482025146484375f)))) * _7513)) + float3(_560, _560, sin(mad(mad(_7521, 6.283185482025146484375f, _7525 * (-6.283185482025146484375f)), 2097152.0f, mad(_7524, 6.283185482025146484375f, floor(mad(mad(_6588, _7520, -_7525), 2097152.0f, _7524)) * (-6.283185482025146484375f)))) * _7535)) + float3(_560, _560, sin(mad(mad(_7542, 6.283185482025146484375f, _7546 * (-6.283185482025146484375f)), 2097152.0f, mad(_7545, 6.283185482025146484375f, floor(mad(mad(_6623, _7541, -_7546), 2097152.0f, _7545)) * (-6.283185482025146484375f)))) * (_7535 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_560, _560, sin(mad(mad(_7563, 6.283185482025146484375f, _7567 * (-6.283185482025146484375f)), 2097152.0f, mad(_7566, 6.283185482025146484375f, floor(mad(mad(_6686, _7562, -_7567), 2097152.0f, _7566)) * (-6.283185482025146484375f)))) * _7577) + float3(_560, _560, sin(mad(mad(_7582, 6.283185482025146484375f, _7586 * (-6.283185482025146484375f)), 2097152.0f, mad(_7585, 6.283185482025146484375f, floor(mad(mad(_6721, _7581, -_7586), 2097152.0f, _7585)) * (-6.283185482025146484375f)))) * _7596)) + float3(_560, _560, sin(mad(mad(_7604, 6.283185482025146484375f, _7608 * (-6.283185482025146484375f)), 2097152.0f, mad(_7607, 6.283185482025146484375f, floor(mad(mad(_6757, _7603, -_7608), 2097152.0f, _7607)) * (-6.283185482025146484375f)))) * _7618)) + float3(_560, _560, sin(mad(mad(_7625, 6.283185482025146484375f, _7629 * (-6.283185482025146484375f)), 2097152.0f, mad(_7628, 6.283185482025146484375f, floor(mad(mad(_6792, _7624, -_7629), 2097152.0f, _7628)) * (-6.283185482025146484375f)))) * _7639));
    float _7645 = Material_Material_PreshaderBuffer[85].x * _5513;
    float _7646 = 2.0f / _7645;
    float _7647 = _6856 * _7646;
    float _7650 = mad(_6857, _7646, (_7646 * Material_Material_PreshaderBuffer[72].z) * _5996);
    float _7651 = floor(_7647);
    float _7663 = _7645 * Material_Material_PreshaderBuffer[15].w;
    float _7664 = 2.0f / _7663;
    float _7665 = _6890 * _7664;
    float _7668 = mad(_6891, _7664, (_7664 * Material_Material_PreshaderBuffer[72].w) * _5996);
    float _7669 = floor(_7665);
    float _7684 = _7663 * Material_Material_PreshaderBuffer[15].w;
    float _7685 = 2.0f / _7684;
    float _7686 = _6925 * _7685;
    float _7689 = mad(_6926, _7685, (_7685 * Material_Material_PreshaderBuffer[73].x) * _5996);
    float _7690 = floor(_7686);
    float _7705 = 2.0f / (_7684 * Material_Material_PreshaderBuffer[15].w);
    float _7706 = _6959 * _7705;
    float _7709 = mad(_6960, _7705, (_7705 * Material_Material_PreshaderBuffer[73].y) * _5996);
    float _7710 = floor(_7706);
    float3 _7724 = _7644 + (((float3(_560, _560, sin(mad(mad(_7647, 6.283185482025146484375f, _7651 * (-6.283185482025146484375f)), 2097152.0f, mad(_7650, 6.283185482025146484375f, floor(mad(mad(_6856, _7646, -_7651), 2097152.0f, _7650)) * (-6.283185482025146484375f)))) * _7577) + float3(_560, _560, sin(mad(mad(_7665, 6.283185482025146484375f, _7669 * (-6.283185482025146484375f)), 2097152.0f, mad(_7668, 6.283185482025146484375f, floor(mad(mad(_6890, _7664, -_7669), 2097152.0f, _7668)) * (-6.283185482025146484375f)))) * _7596)) + float3(_560, _560, sin(mad(mad(_7686, 6.283185482025146484375f, _7690 * (-6.283185482025146484375f)), 2097152.0f, mad(_7689, 6.283185482025146484375f, floor(mad(mad(_6925, _7685, -_7690), 2097152.0f, _7689)) * (-6.283185482025146484375f)))) * _7618)) + float3(_560, _560, sin(mad(mad(_7706, 6.283185482025146484375f, _7710 * (-6.283185482025146484375f)), 2097152.0f, mad(_7709, 6.283185482025146484375f, floor(mad(mad(_6959, _7705, -_7710), 2097152.0f, _7709)) * (-6.283185482025146484375f)))) * _7639));
    float3 _7729 = mad(_3531, Material_Material_PreshaderBuffer[54].x.xxx, (_4906 + (_5171 + (_5428 + _5677))) + (_6981 + (_7230 + (_7477 + _7724))));
    float _7730 = _7729.z;
    float _7748 = clamp(mad(clamp(mad(_7730, MaterialCollection0_MaterialCollection0_Vectors[0].y, -Material_Material_PreshaderBuffer[90].w) * Material_Material_PreshaderBuffer[91].z, 0.0f, 1.0f), Material_Material_PreshaderBuffer[91].w, -Material_Material_PreshaderBuffer[92].x) * Material_Material_PreshaderBuffer[92].w, 0.0f, 1.0f);
    float3 _7750 = mad(_7730.xxx, in_var_TEXCOORD11_centroid.xyz, _654);
    float3 _7751 = ddx(View_View_ViewTilePosition);
    float3 _7753 = ddx(_7750);
    float3 _7755 = ddy(View_View_ViewTilePosition);
    float3 _7757 = ddy(_7750);
    float3 _7761 = ddx(View_View_ViewTilePosition);
    float3 _7763 = ddx(_654);
    float3 _7765 = ddy(View_View_ViewTilePosition);
    float3 _7767 = ddy(_654);
    float3 _7770 = normalize(cross((_7761 * 2097152.0f) + _7763, (_7765 * 2097152.0f) + _7767));
    float3 _7776 = lerp((normalize(cross((_7751 * 2097152.0f) + _7753, (_7755 * 2097152.0f) + _7757)) - _7770) + in_var_TEXCOORD11_centroid.xyz, float3(0.0f, 0.0f, 1.0f), Material_Material_PreshaderBuffer[93].y.xxx);
    float3 _7783 = Material_Material_PreshaderBuffer[93].w.xxx;
    float3 _7796 = float3((View_View_ViewTilePosition * _7783).xy, 0.0f);
    float3 _7797 = float3((mad(_7776, Material_Material_PreshaderBuffer[93].z.xxx, _655) * _7783).xy, ((_1174 * Material_Material_PreshaderBuffer[94].y).xx + float2(1.0f, 0.0f)).x);
    float3 _7807 = 0.0f.xxx;
    float _7812 = 0.0f;
    _7807 = (((_7796 - floor(_7796 + ((_7797 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _7797) * 1.0f;
    _7812 = 0.0f;
    float _7810 = 1.0f;
    uint _7814 = 0u;
    [loop]
    for (; _7814 < 10u; )
    {
        float3 _7818 = frac(_7807);
        float _7820 = dot(floor(_7807), float3(19.0f, 47.0f, 101.0f));
        uint3 _7832 = (uint3(int3(int(_7820), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7833 = _7832.y;
        uint _7834 = _7832.z;
        uint _7837 = _7832.x + (_7833 * _7834);
        uint _7839 = _7833 + (_7834 * _7837);
        uint3 _7844 = uint3(0u, 0u, 0u);
        _7844.x = _7837 + (_7839 * (_7834 + (_7837 * _7839)));
        uint3 _7845 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _7858 = (uint3(int3(int(_7820 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7859 = _7858.y;
        uint _7860 = _7858.z;
        uint _7863 = _7858.x + (_7859 * _7860);
        uint _7865 = _7859 + (_7860 * _7863);
        uint3 _7870 = uint3(0u, 0u, 0u);
        _7870.x = _7863 + (_7865 * (_7860 + (_7863 * _7865)));
        uint3 _7883 = (uint3(int3(int(_7820 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7884 = _7883.y;
        uint _7885 = _7883.z;
        uint _7888 = _7883.x + (_7884 * _7885);
        uint _7890 = _7884 + (_7885 * _7888);
        uint3 _7895 = uint3(0u, 0u, 0u);
        _7895.x = _7888 + (_7890 * (_7885 + (_7888 * _7890)));
        uint3 _7908 = (uint3(int3(int(_7820 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7909 = _7908.y;
        uint _7910 = _7908.z;
        uint _7913 = _7908.x + (_7909 * _7910);
        uint _7915 = _7909 + (_7910 * _7913);
        uint3 _7920 = uint3(0u, 0u, 0u);
        _7920.x = _7913 + (_7915 * (_7910 + (_7913 * _7915)));
        uint3 _7933 = (uint3(int3(int(_7820 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7934 = _7933.y;
        uint _7935 = _7933.z;
        uint _7938 = _7933.x + (_7934 * _7935);
        uint _7940 = _7934 + (_7935 * _7938);
        uint3 _7945 = uint3(0u, 0u, 0u);
        _7945.x = _7938 + (_7940 * (_7935 + (_7938 * _7940)));
        uint3 _7958 = (uint3(int3(int(_7820 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7959 = _7958.y;
        uint _7960 = _7958.z;
        uint _7963 = _7958.x + (_7959 * _7960);
        uint _7965 = _7959 + (_7960 * _7963);
        uint3 _7970 = uint3(0u, 0u, 0u);
        _7970.x = _7963 + (_7965 * (_7960 + (_7963 * _7965)));
        uint3 _7983 = (uint3(int3(int(_7820 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7984 = _7983.y;
        uint _7985 = _7983.z;
        uint _7988 = _7983.x + (_7984 * _7985);
        uint _7990 = _7984 + (_7985 * _7988);
        uint3 _7995 = uint3(0u, 0u, 0u);
        _7995.x = _7988 + (_7990 * (_7985 + (_7988 * _7990)));
        uint3 _8008 = (uint3(int3(int(_7820 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _8009 = _8008.y;
        uint _8010 = _8008.z;
        uint _8013 = _8008.x + (_8009 * _8010);
        uint _8015 = _8009 + (_8010 * _8013);
        uint3 _8020 = uint3(0u, 0u, 0u);
        _8020.x = _8013 + (_8015 * (_8010 + (_8013 * _8015)));
        float4 _8031 = float4(_7818, 0.0f);
        float4 _8037 = ((_8031 * _8031) * _8031) * mad(_8031, (_8031 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _8038 = _8037.x;
        float _8041 = _8037.y;
        float _8048 = abs(lerp(lerp(lerp(dot(mad(float3((_7844 >> _7845).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7818), dot(mad(float3((_7870 >> _7845).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7818 - float3(1.0f, 0.0f, 0.0f)), _8038), lerp(dot(mad(float3((_7895 >> _7845).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7818 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_7920 >> _7845).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7818 - float3(1.0f, 1.0f, 0.0f)), _8038), _8041), lerp(lerp(dot(mad(float3((_7945 >> _7845).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7818 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_7970 >> _7845).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7818 - float3(1.0f, 0.0f, 1.0f)), _8038), lerp(dot(mad(float3((_7995 >> _7845).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7818 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_8020 >> _7845).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7818 - 1.0f.xxx), _8038), _8041), _8037.z));
        float _7813 = mad(_8048, _7810, _7812);
        _7807 *= 2.0f;
        _7810 *= 0.5f;
        _7812 = _7813;
        _7814++;
        continue;
    }
    float _8052 = -_7748;
    float _8058 = clamp(mad(mad(_8052, Material_Material_PreshaderBuffer[94].z, lerp(0.0f, 1.0f, _7812)) / mad(_8052, Material_Material_PreshaderBuffer[94].z, mad(_7748, Material_Material_PreshaderBuffer[94].z, 1.0f)), -1.0f, 1.0f), 0.0f, 1.0f);
    float _8067 = clamp(lerp(Material_Material_PreshaderBuffer[95].x, Material_Material_PreshaderBuffer[94].w, (_8058 <= 0.0f) ? 0.0f : pow(_8058, 2.0f)), 0.0f, 1.0f);
    float _8068 = _7748 * _8067;
    float3 _8071 = Material_Material_PreshaderBuffer[95].y.xxx;
    float3 _8072 = View_View_ViewTilePosition * _8071;
    float3 _8073 = _655 * _8071;
    float3 _8084 = 0.0f.xxx;
    float3 _8087 = 0.0f.xxx;
    float _8091 = 0.0f;
    _8084 = _552;
    _8087 = mad(_655, _8071, mad(View_View_ViewTilePosition, _8071, -floor(mad(View_View_ViewTilePosition, _8071, (_8073 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _8091 = 0.0f;
    float3 _8088 = 0.0f.xxx;
    float _8090 = 0.0f;
    float _8092 = 0.0f;
    float3 _8085 = 0.0f.xxx;
    float _8089 = 1.0f;
    uint _8093 = 0u;
    [loop]
    for (; _8093 < 1u; _8084 = _8085, _8087 = _8088, _8089 = _8090, _8091 = _8092, _8093++)
    {
        float3 _8098 = frac(_8087);
        float3 _8099 = floor(_8087);
        float3 _8100 = _8084;
        _8100.x = 0.0f;
        float4 _8102 = 0.0f.xxxx;
        _8102 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _8085 = _8100;
        float3 _8105 = 0.0f.xxx;
        float4 _8103 = 0.0f.xxxx;
        float3 _8112 = 0.0f.xxx;
        for (; _8085.x <= 1.0f; _8105 = _8112, _8105.x = _8112.x + 1.0f, _8102 = _8103, _8085 = _8105)
        {
            float3 _8110 = _8085;
            _8110.y = 0.0f;
            _8112 = _8110;
            _8103 = _8102;
            float3 _8113 = 0.0f.xxx;
            float4 _8115 = 0.0f.xxxx;
            float3 _8124 = 0.0f.xxx;
            for (; _8112.y <= 1.0f; _8113 = _8124, _8113.y = _8124.y + 1.0f, _8112 = _8113, _8103 = _8115)
            {
                float3 _8120 = _8112;
                _8120.z = 0.0f;
                _8115 = _8103;
                _8124 = _8120;
                for (; _8124.z <= 1.0f; )
                {
                    float3 _8129 = _8099 + _8124;
                    uint3 _8134 = (uint3(int3(float3(_8129.x, _8129.y, _8129.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _8135 = _8134.y;
                    uint _8136 = _8134.z;
                    uint _8139 = _8134.x + (_8135 * _8136);
                    uint _8141 = _8135 + (_8136 * _8139);
                    uint _8143 = _8136 + (_8139 * _8141);
                    uint _8145 = _8139 + (_8141 * _8143);
                    uint3 _8146 = _8134;
                    _8146.x = _8145;
                    uint _8148 = _8141 + (_8143 * _8145);
                    _8146.y = _8148;
                    _8146.z = _8143 + (_8145 * _8148);
                    float3 _8160 = _8098 - (_8124 + (normalize(mad(float3(_8146 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _8125 = _8124;
                    _8125.z = _8124.z + 1.0f;
                    _8115 = float4(0.0f, 0.0f, 0.0f, min(_8115.w, dot(_8160, _8160)));
                    _8124 = _8125;
                    continue;
                }
            }
        }
        _8092 = mad(abs(mad(sqrt(_8102.w), 2.0f, -1.0f)), _8089, _8091);
        _8088 = _8087 * 2.0f;
        _8090 = _8089 * 0.5f;
    }
    float3 _8186 = 0.0f.xxx;
    float3 _8189 = 0.0f.xxx;
    float _8193 = 0.0f;
    _8186 = _552;
    _8189 = mad(_8073, 1.2000000476837158203125f.xxx, mad(_8072, 1.2000000476837158203125f.xxx, -floor(mad(_8072, 1.2000000476837158203125f.xxx, ((_8073 * 1.2000000476837158203125f.xxx) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _8193 = 0.0f;
    float3 _8190 = 0.0f.xxx;
    float _8192 = 0.0f;
    float _8194 = 0.0f;
    float3 _8187 = 0.0f.xxx;
    float _8191 = 1.0f;
    uint _8195 = 0u;
    [loop]
    for (; _8195 < 1u; _8186 = _8187, _8189 = _8190, _8191 = _8192, _8193 = _8194, _8195++)
    {
        float3 _8200 = frac(_8189);
        float3 _8201 = floor(_8189);
        float3 _8202 = _8186;
        _8202.x = 0.0f;
        float4 _8204 = 0.0f.xxxx;
        _8204 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _8187 = _8202;
        float3 _8207 = 0.0f.xxx;
        float4 _8205 = 0.0f.xxxx;
        float3 _8214 = 0.0f.xxx;
        for (; _8187.x <= 1.0f; _8207 = _8214, _8207.x = _8214.x + 1.0f, _8204 = _8205, _8187 = _8207)
        {
            float3 _8212 = _8187;
            _8212.y = 0.0f;
            _8214 = _8212;
            _8205 = _8204;
            float3 _8215 = 0.0f.xxx;
            float4 _8217 = 0.0f.xxxx;
            float3 _8226 = 0.0f.xxx;
            for (; _8214.y <= 1.0f; _8215 = _8226, _8215.y = _8226.y + 1.0f, _8214 = _8215, _8205 = _8217)
            {
                float3 _8222 = _8214;
                _8222.z = 0.0f;
                _8217 = _8205;
                _8226 = _8222;
                for (; _8226.z <= 1.0f; )
                {
                    float3 _8231 = _8201 + _8226;
                    uint3 _8236 = (uint3(int3(float3(_8231.x, _8231.y, _8231.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _8237 = _8236.y;
                    uint _8238 = _8236.z;
                    uint _8241 = _8236.x + (_8237 * _8238);
                    uint _8243 = _8237 + (_8238 * _8241);
                    uint _8245 = _8238 + (_8241 * _8243);
                    uint _8247 = _8241 + (_8243 * _8245);
                    uint3 _8248 = _8236;
                    _8248.x = _8247;
                    uint _8250 = _8243 + (_8245 * _8247);
                    _8248.y = _8250;
                    _8248.z = _8245 + (_8247 * _8250);
                    float3 _8262 = _8200 - (_8226 + (normalize(mad(float3(_8248 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _8227 = _8226;
                    _8227.z = _8226.z + 1.0f;
                    _8217 = float4(0.0f, 0.0f, 0.0f, min(_8217.w, dot(_8262, _8262)));
                    _8226 = _8227;
                    continue;
                }
            }
        }
        _8194 = mad(abs(mad(sqrt(_8204.w), 2.0f, -1.0f)), _8191, _8193);
        _8190 = _8189 * 2.0f;
        _8192 = _8191 * 0.5f;
    }
    float _8277 = clamp(lerp(-1.0f, 1.0f, _8091), 0.0f, 1.0f) + clamp(lerp(-1.0f, 1.0f, _8193), 0.0f, 1.0f);
    float _8282 = clamp(_787 * mad(mad(_900, _1456, -_1666), Material_Material_PreshaderBuffer[90].z, mad(_7748, _8067, -_8277)), 0.0f, 1.0f);
    float3 _8290 = mad(_3531.z.xxx, in_var_TEXCOORD11_centroid.xyz, _654);
    float _8307 = max(abs(1.0f - max(0.0f, dot(_7776, _671))), 9.9999997473787516355514526367188e-05f);
    bool _8310 = _8307 <= 0.0f;
    float3 _8337 = mad((_787 * (mad(_1457, _1666, _1457) + mad(_8068, _8277, _8068))).xxx, in_var_TEXCOORD11_centroid.xyz, _654);
    float3 _8338 = ddx(View_View_ViewTilePosition);
    float3 _8340 = ddx(_8337);
    float3 _8342 = ddy(View_View_ViewTilePosition);
    float3 _8344 = ddy(_8337);
    float3 _8351 = lerp(lerp(lerp((normalize(cross((ddx(View_View_ViewTilePosition) * 2097152.0f) + ddx(_8290), (ddy(View_View_ViewTilePosition) * 2097152.0f) + ddy(_8290))) - _7770) + in_var_TEXCOORD11_centroid.xyz, lerp(_7776, float3(0.0f, 0.0f, 1.0f), lerp(Material_Material_PreshaderBuffer[97].x, Material_Material_PreshaderBuffer[96].w, mad(_8310 ? 0.0f : pow(_8307, Material_Material_PreshaderBuffer[96].x), Material_Material_PreshaderBuffer[96].z, Material_Material_PreshaderBuffer[96].y)).xxx), _786.xxx), float3(0.0f, 0.0f, 1.0f), lerp(Material_Material_PreshaderBuffer[97].y, 0.0f, _786).xxx), (normalize(cross((_8338 * 2097152.0f) + _8340, (_8342 * 2097152.0f) + _8344)) - _7770) + in_var_TEXCOORD11_centroid.xyz, _1457.xxx);
    float3 _8383 = Material_Material_PreshaderBuffer[107].xyz + Material_Material_PreshaderBuffer[106].xyz;
    if ((lerp(1.0f, 0.0f, clamp(mad(sqrt(mad(mad(_692, _692 * 4.76837158203125e-07f, mad(_682, _682 * 4.76837158203125e-07f, _686 * (_686 * 4.76837158203125e-07f))), 4.76837158203125e-07f, mad(_691, mad(_692, 9.5367431640625e-07f, _691), mad(_681, mad(_682, 9.5367431640625e-07f, _681), _685 * mad(_686, 9.5367431640625e-07f, _685))))) * (1.0f / max(9.9999997473787516355514526367188e-06f, MaterialCollection0_MaterialCollection0_Vectors[1].x)), -209715200000.0f, 100000.0f), 0.0f, 1.0f)) - 0.33329999446868896484375f) < 0.0f)
    {
        discard;
    }
    float _8401 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    uint _8402 = in_var_PRIMITIVE_ID * 41u;
    uint _8419 = (((1u | (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8402].x) & 512u) != 0u) ? 32u : 0u)) | (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8402].x) & 256u) != 0u) ? 64u : 0u)) & 4294967288u) | 4u;
    float _8428 = mad(clamp(lerp(lerp(Material_Material_PreshaderBuffer[105].x, Material_Material_PreshaderBuffer[103].w, mad(_8310 ? 0.0f : pow(_8307, Material_Material_PreshaderBuffer[104].y), Material_Material_PreshaderBuffer[104].w, Material_Material_PreshaderBuffer[104].z)), 1.0f, _8282), 0.0f, 1.0f), View_View_SpecularOverrideParameter.w, View_View_SpecularOverrideParameter.x);
    float4 _8429 = 0.0f.xxxx;
    _8429.y = _8428;
    float _8436 = clamp(max(View_View_MinRoughness, mad(lerp(Material_Material_PreshaderBuffer[95].w, Material_Material_PreshaderBuffer[95].z, _8282), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x)), 0.0f, 1.0f);
    _8429.z = _8436;
    float _8438 = clamp(lerp(Material_Material_PreshaderBuffer[97].z, 1.0f, _8282), 0.0f, 1.0f);
    _8429.w = _8438;
    float3 _8441 = clamp((Material_Material_PreshaderBuffer[107].xyz / _8383).xyz, 0.0f.xxx, 1.0f.xxx);
    float4 _8442 = float4(_8441.x, _8441.y, _8441.z, 0.0f.xxxx.w);
    _8442.w = 0.0f;
    float3 _8448 = mad(clamp(lerp(0.0f, Material_Material_PreshaderBuffer[105].y, _8282).xxx.xyz, 0.0f.xxx, 1.0f.xxx), View_View_DiffuseOverrideParameter.www, View_View_DiffuseOverrideParameter.xyz).xyz;
    float3 _8449 = normalize(_8351);
    float3 _8458 = 0.0f.xxx;
    float3 _8459 = 0.0f.xxx;
    [branch]
    if (!((asuint(dot(_8449, _8449)) & 2139095040u) != 2139095040u))
    {
        float3 _8457 = normalize(in_var_TEXCOORD11_centroid.xyz);
        _8458 = _8457;
        _8459 = _8457;
    }
    else
    {
        _8458 = _8351;
        _8459 = _8449;
    }
    float _8460 = 1.0f - _8438;
    float3 _8471 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _654, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
    float4 _8482 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_8471.x), int(_8471.y), int(_8471.z), 0).xyz, 0)));
    float3 _8497 = (((_8482.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_8471 / _8482.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize;
    float _8510 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8402].x) & 4u) != 0u)
    {
        _8510 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f).x;
    }
    else
    {
        _8510 = 1.0f;
    }
    float4 _8511 = float4(_8510, 1.0f, 1.0f, 1.0f);
    bool _8513 = all(bool4(_8511.x == 0.0f.xxxx.x, _8511.y == 0.0f.xxxx.y, _8511.z == 0.0f.xxxx.z, _8511.w == 0.0f.xxxx.w));
    bool _8515 = all(bool4(_8511.x == 1.0f.xxxx.x, _8511.y == 1.0f.xxxx.y, _8511.z == 1.0f.xxxx.z, _8511.w == 1.0f.xxxx.w));
    uint _8534 = 0u;
    if ((!_8513) && (!_8515))
    {
        _8534 = _8419 | 8u;
    }
    else
    {
        uint _8532 = 0u;
        if (_8513)
        {
            _8532 = (_8419 | 0u) | 16u;
        }
        else
        {
            uint _8529 = 0u;
            if (_8515)
            {
                _8529 = (_8419 | 0u) | 0u;
            }
            else
            {
                _8529 = _8419;
            }
            _8532 = _8529;
        }
        _8534 = _8532;
    }
    float _8535 = 0.07999999821186065673828125f * _8428;
    float3 _8540 = (_8448 * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
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
    float4 _8559 = View_VolumetricLightmapBrickAmbientVector.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f);
    float _8575 = _8559.x;
    float4 _8577 = (((View_VolumetricLightmapBrickSHCoefficients0.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f) * 2.0f) - 1.0f.xxxx) * _8575) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float _8578 = _8559.y;
    float4 _8580 = (((View_VolumetricLightmapBrickSHCoefficients2.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f) * 2.0f) - 1.0f.xxxx) * _8578) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float _8581 = _8559.z;
    float4 _8583 = (((View_VolumetricLightmapBrickSHCoefficients4.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f) * 2.0f) - 1.0f.xxxx) * _8581) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float4 _8600 = (((View_VolumetricLightmapBrickSHCoefficients1.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f) * 2.0f) - 1.0f.xxxx) * _8575) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _8602 = (((View_VolumetricLightmapBrickSHCoefficients3.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f) * 2.0f) - 1.0f.xxxx) * _8578) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _8604 = (((View_VolumetricLightmapBrickSHCoefficients5.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f) * 2.0f) - 1.0f.xxxx) * _8581) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _8637 = 0.0f.xxxx;
    _8637.y = (-0.48860299587249755859375f) * _8459.y;
    _8637.z = 0.48860299587249755859375f * _8459.z;
    _8637.w = (-0.48860299587249755859375f) * _8459.x;
    float3 _8644 = _8459 * _8459;
    float4 _8647 = 0.0f.xxxx;
    _8647.x = (1.09254801273345947265625f * _8459.x) * _8459.y;
    _8647.y = ((-1.09254801273345947265625f) * _8459.y) * _8459.z;
    _8647.z = 0.3153919875621795654296875f * mad(3.0f, _8644.z, -1.0f);
    _8647.w = ((-1.09254801273345947265625f) * _8459.x) * _8459.z;
    _8637.x = 0.886227548122406005859375f;
    float3 _8663 = _8637.yzw * 2.094395160675048828125f;
    float4 _8664 = float4(_8637.x, _8663.x, _8663.y, _8663.z);
    float4 _8665 = _8647 * 0.785398185253143310546875f;
    float _8666 = (_8644.x - _8644.y) * 0.4290426075458526611328125f;
    float3 _8671 = 0.0f.xxx;
    _8671.x = mad(_8600.w, _8666, dot(float4(_8575, _8577.xyz), _8664) + dot(float4(_8577.w, _8600.xyz), _8665));
    _8671.y = mad(_8602.w, _8666, dot(float4(_8578, _8580.xyz), _8664) + dot(float4(_8580.w, _8602.xyz), _8665));
    _8671.z = mad(_8604.w, _8666, dot(float4(_8581, _8583.xyz), _8664) + dot(float4(_8583.w, _8604.xyz), _8665));
    bool _8688 = OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u;
    float3 _8762 = 0.0f.xxx;
    if (_8688)
    {
        float _8714 = 0.0f;
        float _8715 = 0.0f;
        float3 _8716 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _8701 = (View_SkyBentNormalBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f).xyz * 2.0f) - 1.0f.xxx;
            float _8702 = length(_8701);
            float3 _8705 = _8701 / max(_8702, 9.9999997473787516355514526367188e-05f).xxx;
            float _8708 = mad(_8702 - 1.0f, 1.0f - _8702, 1.0f);
            _8714 = lerp(clamp(dot(_8705, _8459), 0.0f, 1.0f), 1.0f, _8708);
            _8715 = _8702;
            _8716 = lerp(_8705, _8459, _8708.xxx);
        }
        else
        {
            _8714 = 1.0f;
            _8715 = 1.0f;
            _8716 = _8459;
        }
        float4 _8720 = float4(_8716, 1.0f);
        float3 _8724 = 0.0f.xxx;
        _8724.x = dot(View_SkyIrradianceEnvironmentMap[0u], _8720);
        _8724.y = dot(View_SkyIrradianceEnvironmentMap[1u], _8720);
        _8724.z = dot(View_SkyIrradianceEnvironmentMap[2u], _8720);
        float4 _8735 = _8720.xyzz * _8720.yzzx;
        float3 _8739 = 0.0f.xxx;
        _8739.x = dot(View_SkyIrradianceEnvironmentMap[3u], _8735);
        _8739.y = dot(View_SkyIrradianceEnvironmentMap[4u], _8735);
        _8739.z = dot(View_SkyIrradianceEnvironmentMap[5u], _8735);
        _8762 = (max(0.0f.xxx, (_8724 + _8739) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_8716.x, _8716.x, -(_8716.y * _8716.y)))) * View_View_SkyLightColor.xyz) * (_8715 * _8714);
    }
    else
    {
        _8762 = 0.0f.xxx;
    }
    float3 _8763 = mad(max(0.0f.xxx, _8671) * 0.3183098733425140380859375f.xxx, View_View_PrecomputedIndirectLightingColorScale, _8762);
    float3 _8778 = _8553 * _8438;
    uint2 _8805 = uint2(_637 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    bool _8822 = true && (SingleLayerWater_SingleLayerWater_bSeparateMainDirLightLuminance != 0u);
    float4 _8836 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _8836 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(0.0f.xx)), 0).xy, 0));
    }
    else
    {
        _8836 = 1.0f.xxxx;
    }
    float4 _8837 = _8836 * _8836;
    uint _8840 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8402].x);
    uint _8853 = (uint((_8840 & 2048u) != 0u) | (uint((_8840 & 4096u) != 0u) << 1u)) | (uint((_8840 & 8192u) != 0u) << 2u);
    float4 _9961 = 0.0f.xxxx;
    float3 _9962 = 0.0f.xxx;
    float _9963 = 0.0f;
    float4 _9964 = 0.0f.xxxx;
    float4 _9965 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        float4 _8878 = float4(_560, float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 2u) >> 1u), float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 4u) >> 2u), float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 8u) >> 3u));
        _8878.x = 1.0f;
        float4 _8882 = _8511;
        _8882.x = 1.0f;
        float _8961 = 0.0f;
        if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _8890 = _657.xxxx;
            float4 _8892 = float4(bool4(_8890.x >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.x, _8890.y >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.y, _8890.z >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.z, _8890.w >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _8900 = uint(((_8892.x + _8892.y) + _8892.z) + _8892.w);
            float _8960 = 0.0f;
            if (_8900 < OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _8910 = mul(float4(_653, 1.0f), OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_8900]);
                float2 _8914 = _8910.xy / _8910.w.xx;
                bool2 _8918 = bool2(_8914.x >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8900].xy.x, _8914.y >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8900].xy.y);
                bool2 _8920 = bool2(_8914.x <= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8900].zw.x, _8914.y <= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8900].zw.y);
                float _8959 = 0.0f;
                if (all(bool2(_8918.x && _8920.x, _8918.y && _8920.y)))
                {
                    float2 _8938 = mad(_8914, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy, (-0.5f).xx);
                    float2 _8939 = frac(_8938);
                    float4 _8950 = clamp((OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(OpaqueBasePass_Shared_Forward_ShadowmapSampler, (floor(_8938) + 1.0f.xx) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - mad(1.0f - _8910.z, 4000.0f, -1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _8954 = lerp(_8950.wx, _8950.zy, _8939.xx);
                    _8959 = lerp(_8954.x, _8954.y, _8939.y);
                }
                else
                {
                    _8959 = 1.0f;
                }
                _8960 = _8959;
            }
            else
            {
                _8960 = 1.0f;
            }
            _8961 = _8960;
        }
        else
        {
            _8961 = 1.0f;
        }
        float _9648 = 0.0f;
        [branch]
        if ((!(SingleLayerWater_SingleLayerWater_bMainDirectionalLightVSMFiltering != 0u)) && (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM != (-1)))
        {
            float _9646 = 0.0f;
            do
            {
                float _8971 = max(0.0f, 0.0f);
                uint _8972 = uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM);
                uint _8973 = _8972 * 336u;
                uint _8975 = (_8973 + 96u) >> 2u;
                float4x4 _8989 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                _8989[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8975 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8975 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8975 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8975 + 3u) * 4 + 0)));
                uint _8991 = (_8973 + 128u) >> 2u;
                float4x4 _9005 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                _9005[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8991 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8991 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8991 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8991 + 3u) * 4 + 0)));
                uint _9007 = (_8973 + 144u) >> 2u;
                _9005[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9007 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9007 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9007 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9007 + 3u) * 4 + 0)));
                uint _9023 = (_8973 + 160u) >> 2u;
                _9005[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9023 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9023 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9023 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9023 + 3u) * 4 + 0)));
                uint _9039 = (_8973 + 176u) >> 2u;
                _9005[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9039 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9039 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9039 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9039 + 3u) * 4 + 0)));
                uint _9055 = (_8973 + 256u) >> 2u;
                float3 _9065 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9055 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9055 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9055 + 2u) * 4 + 0)));
                uint _9067 = (_8973 + 268u) >> 2u;
                uint _9071 = (_8973 + 272u) >> 2u;
                uint _9083 = (_8973 + 288u) >> 2u;
                if (VirtualShadowMap_ProjectionData.Load(_9067 * 4 + 0) == 0u)
                {
                    int _9318 = max(0, (int(floor(log2(length(((View_View_ViewTilePosition - (-_9065)) * 2097152.0f) + (_654 - (-asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9083 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9083 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9083 + 2u) * 4 + 0))))))) + asfloat(VirtualShadowMap_ProjectionData.Load(((_8973 + 300u) >> 2u) * 4 + 0)))) - int(VirtualShadowMap_ProjectionData.Load(((_8973 + 312u) >> 2u) * 4 + 0))));
                    if (_9318 < int(VirtualShadowMap_ProjectionData.Load(((_8973 + 316u) >> 2u) * 4 + 0)))
                    {
                        int _9322 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM + _9318;
                        uint _9323 = uint(_9322);
                        uint _9324 = _9323 * 336u;
                        uint _9326 = (_9324 + 96u) >> 2u;
                        uint _9341 = (_9324 + 112u) >> 2u;
                        uint _9350 = (_9324 + 128u) >> 2u;
                        float4x4 _9364 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9364[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9350 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9350 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9350 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9350 + 3u) * 4 + 0)));
                        uint _9366 = (_9324 + 144u) >> 2u;
                        _9364[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9366 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9366 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9366 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9366 + 3u) * 4 + 0)));
                        uint _9382 = (_9324 + 160u) >> 2u;
                        _9364[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9382 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9382 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9382 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9382 + 3u) * 4 + 0)));
                        uint _9398 = (_9324 + 176u) >> 2u;
                        _9364[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9398 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9398 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9398 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9398 + 3u) * 4 + 0)));
                        uint _9414 = (_9324 + 256u) >> 2u;
                        uint _9426 = (_9324 + 272u) >> 2u;
                        float4 _9445 = mul(float4(((View_View_ViewTilePosition + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9414 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9414 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9414 + 2u) * 4 + 0)))) * 2097152.0f) + (_654 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9426 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9426 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9426 + 2u) * 4 + 0)))), 1.0f), _9364);
                        float2 _9446 = _9445.xy;
                        uint2 _9448 = uint2(_9446 * 128.0f);
                        uint _9464 = 0u;
                        do
                        {
                            if (uint(int(_9323)) < 8192u)
                            {
                                _9464 = _9323;
                                break;
                            }
                            _9464 = (8192u + ((_9323 - 8192u) * 21845u)) + (_9448.x + (_9448.y << 7u));
                            break;
                        } while(false);
                        uint _9472 = (VirtualShadowMap_PageTable[_9464] >> 20u) & 63u;
                        bool _9474 = (VirtualShadowMap_PageTable[_9464] & 134217728u) != 0u;
                        float _9637 = 0.0f;
                        bool _9638 = false;
                        if (_9474)
                        {
                            float _9613 = 0.0f;
                            float _9614 = 0.0f;
                            uint2 _9615 = uint2(0u, 0u);
                            uint2 _9616 = uint2(0u, 0u);
                            bool _9617 = false;
                            if (_9472 > 0u)
                            {
                                uint _9487 = (_9324 + 304u) >> 2u;
                                uint _9490 = _9487 + 1u;
                                uint _9495 = uint(int(_9323 + _9472));
                                uint _9498 = ((_9495 * 336u) + 304u) >> 2u;
                                int _9510 = int(_9472);
                                uint2 _9518 = ((_9448 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_9487 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_9490 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_9498 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9498 + 1u) * 4 + 0)))) << (_9510.xx & int2(31, 31)))) >> (_9472.xx & uint2(31u, 31u));
                                uint2 _9519 = _9518 * uint2(128u, 128u);
                                uint _9533 = uint(_9322 + _9510) * 336u;
                                uint _9535 = (_9533 + 112u) >> 2u;
                                uint _9550 = (_9533 + 304u) >> 2u;
                                float _9571 = (_9510 >= 0) ? (1.0f / float(1u << (uint(_9510) & 31u))) : float(1u << (uint(-_9510) & 31u));
                                uint _9600 = 0u;
                                do
                                {
                                    if (uint(int(_9495)) < 8192u)
                                    {
                                        _9600 = _9495;
                                        break;
                                    }
                                    _9600 = (8192u + ((_9495 - 8192u) * 21845u)) + (_9518.x + (_9518.y << 7u));
                                    break;
                                } while(false);
                                _9613 = _9571;
                                _9614 = mad(-_9571, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9341 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9341 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9341 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9341 + 3u) * 4 + 0))).z, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9535 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9535 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9535 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9535 + 3u) * 4 + 0))).z);
                                _9615 = clamp(uint2(((_9446 * _9571) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_9550 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9550 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_9487 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_9490 * 4 + 0)))) * _9571)) * 0.25f).xy) * 16384.0f), _9519, _9519 + uint2(127u, 127u));
                                _9616 = uint2(VirtualShadowMap_PageTable[_9600] & 1023u, (VirtualShadowMap_PageTable[_9600] >> 10u) & 1023u);
                                _9617 = ((VirtualShadowMap_PageTable[_9600] & 134217728u) != 0u) && (((VirtualShadowMap_PageTable[_9600] >> 20u) & 63u) == 0u);
                            }
                            else
                            {
                                _9613 = 1.0f;
                                _9614 = 0.0f;
                                _9615 = uint2(_9446 * 16384.0f);
                                _9616 = uint2(VirtualShadowMap_PageTable[_9464] & 1023u, (VirtualShadowMap_PageTable[_9464] >> 10u) & 1023u);
                                _9617 = _9474 && (_9472 == 0u);
                            }
                            float _9635 = 0.0f;
                            if (_9617)
                            {
                                int4 _9626 = int4(uint4((_9616 * uint2(128u, 128u)) + (_9615 & uint2(127u, 127u)), 0u, 0u));
                                _9635 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_9626.xyz, _9626.w)).x) - _9614) / _9613;
                            }
                            else
                            {
                                _9635 = 0.0f;
                            }
                            _9637 = _9635;
                            _9638 = _9617 ? true : false;
                        }
                        else
                        {
                            _9637 = 0.0f;
                            _9638 = false;
                        }
                        if (_9638)
                        {
                            _9646 = (mad(_8971, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9326 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9326 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9326 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9326 + 3u) * 4 + 0))).z, _9637) > _9445.z) ? 0.0f : 1.0f;
                            break;
                        }
                    }
                }
                else
                {
                    float3 _9118 = ((View_View_ViewTilePosition + _9065) * 2097152.0f) + (_654 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9071 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9071 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9071 + 2u) * 4 + 0))));
                    float4x4 _9231 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    int _9232 = 0;
                    float4x4 _9233 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    if (VirtualShadowMap_ProjectionData.Load(_9067 * 4 + 0) != 2u)
                    {
                        uint _9146 = 0u;
                        do
                        {
                            float _9124 = _9118.x;
                            float _9125 = abs(_9124);
                            float _9126 = _9118.y;
                            float _9127 = abs(_9126);
                            float _9129 = _9118.z;
                            float _9130 = abs(_9129);
                            if ((_9125 >= _9127) && (_9125 >= _9130))
                            {
                                _9146 = (_9124 > 0.0f) ? 0u : 1u;
                                break;
                            }
                            else
                            {
                                if (_9127 > _9130)
                                {
                                    _9146 = (_9126 > 0.0f) ? 2u : 3u;
                                    break;
                                }
                                else
                                {
                                    _9146 = (_9129 > 0.0f) ? 4u : 5u;
                                    break;
                                }
                                break; // unreachable workaround
                            }
                            break; // unreachable workaround
                        } while(false);
                        int _9148 = int(_8972 + _9146);
                        uint _9150 = uint(_9148) * 336u;
                        uint _9152 = (_9150 + 96u) >> 2u;
                        float4x4 _9166 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9166[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9152 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9152 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9152 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9152 + 3u) * 4 + 0)));
                        uint _9168 = (_9150 + 128u) >> 2u;
                        float4x4 _9182 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9182[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9168 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9168 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9168 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9168 + 3u) * 4 + 0)));
                        uint _9184 = (_9150 + 144u) >> 2u;
                        _9182[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9184 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9184 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9184 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9184 + 3u) * 4 + 0)));
                        uint _9200 = (_9150 + 160u) >> 2u;
                        _9182[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9200 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9200 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9200 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9200 + 3u) * 4 + 0)));
                        uint _9216 = (_9150 + 176u) >> 2u;
                        _9182[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9216 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9216 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9216 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9216 + 3u) * 4 + 0)));
                        _9231 = _9166;
                        _9232 = _9148;
                        _9233 = _9182;
                    }
                    else
                    {
                        _9231 = _8989;
                        _9232 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM;
                        _9233 = _9005;
                    }
                    float4 _9238 = mul(float4(_9118, 1.0f), _9233);
                    float _9239 = _9238.w;
                    float3 _9242 = _9238.xyz / _9239.xxx;
                    float2 _9243 = _9242.xy;
                    float _9296 = 0.0f;
                    bool _9297 = false;
                    do
                    {
                        bool _9253 = false;
                        uint _9246 = uint(_9232);
                        uint2 _9248 = uint2(_9243 * 128.0f);
                        uint _9264 = 0u;
                        do
                        {
                            _9253 = uint(int(_9246)) < 8192u;
                            if (_9253)
                            {
                                _9264 = _9246;
                                break;
                            }
                            _9264 = (8192u + ((_9246 - 8192u) * 21845u)) + (_9248.x + (_9248.y << 7u));
                            break;
                        } while(false);
                        if ((VirtualShadowMap_PageTable[_9264] & 134217728u) != 0u)
                        {
                            int4 _9289 = int4(uint4((uint2(VirtualShadowMap_PageTable[_9264] & 1023u, (VirtualShadowMap_PageTable[_9264] >> 10u) & 1023u) * uint2(128u, 128u)) + (uint2(_9243 * float(16384u >> ((_9253 ? 7u : ((VirtualShadowMap_PageTable[_9264] >> 20u) & 63u)) & 31u))) & uint2(127u, 127u)), 0u, 0u));
                            _9296 = asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_9289.xyz, _9289.w)).x);
                            _9297 = true;
                            break;
                        }
                        _9296 = 0.0f;
                        _9297 = false;
                        break;
                    } while(false);
                    if (_9297)
                    {
                        _9646 = ((_9296 - (((-_8971) * _9231[2].z) / _9239)) > _9242.z) ? 0.0f : 1.0f;
                        break;
                    }
                }
                _9646 = 1.0f;
                break;
            } while(false);
            _9648 = _8961 * _9646;
        }
        else
        {
            _9648 = _8961;
        }
        float _9655 = clamp(mad(_657, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
        float _9657 = lerp(_9648, lerp(1.0f, dot(_8882, _8878), dot(_8878, 1.0f.xxxx)), _9655 * _9655);
        float3 _9932 = 0.0f.xxx;
        float3 _9933 = 0.0f.xxx;
        [branch]
        if ((_9657 + min(_9657, 1.0f)) > 0.0f)
        {
            float _9663 = max(_8436, View_View_MinRoughness);
            float _9664 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _9667 = rsqrt(_9664);
            float3 _9668 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _9667;
            float _9669 = dot(_8459, _9668);
            float _9687 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _9676 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_9664 + 1.0f)), 0.0f, 1.0f));
                float _9686 = 0.0f;
                if (_9669 < _9676)
                {
                    float _9682 = _9676 + max(_9669, -_9676);
                    _9686 = (_9682 * _9682) / (4.0f * _9676);
                }
                else
                {
                    _9686 = _9669;
                }
                _9687 = _9686;
            }
            else
            {
                _9687 = _9669;
            }
            float _9688 = clamp(_9687, 0.0f, 1.0f);
            float _9689 = max(_9663, View_View_MinRoughness);
            float _9694 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _9667) * mad(-_9689, _9689, 1.0f), 0.0f, 1.0f);
            uint _9701 = 0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u);
            float _9702 = dot(_8459, _671);
            float _9703 = dot(_671, _9668);
            float _9705 = rsqrt(mad(2.0f, _9703, 2.0f));
            float _9708 = clamp((_9669 + _9702) * _9705, 0.0f, 1.0f);
            float _9710 = clamp(mad(_9705, _9703, _9705), 0.0f, 1.0f);
            bool _9711 = _9694 > 0.0f;
            float _9790 = 0.0f;
            float _9791 = 0.0f;
            if (_9711)
            {
                float _9716 = sqrt(mad(-_9694, _9694, 1.0f));
                float _9717 = 2.0f * _9669;
                float _9718 = -_9703;
                float _9719 = mad(_9717, _9702, _9718);
                float _9788 = 0.0f;
                float _9789 = 0.0f;
                if (_9719 >= _9716)
                {
                    _9788 = 1.0f;
                    _9789 = abs(_9702);
                }
                else
                {
                    float _9724 = -_9719;
                    float _9727 = _9694 * rsqrt(mad(_9724, _9719, 1.0f));
                    float _9728 = mad(_9724, _9669, _9702);
                    float _9732 = mad(_9724, _9703, mad(2.0f * _9702, _9702, -1.0f));
                    float _9743 = _9727 * sqrt(clamp(mad(_9717 * _9702, _9703, mad(_9718, _9703, mad(-_9702, _9702, mad(-_9669, _9669, 1.0f)))), 0.0f, 1.0f));
                    float _9745 = (_9743 * 2.0f) * _9702;
                    float _9746 = mad(_9669, _9716, _9702);
                    float _9747 = mad(_9727, _9728, _9746);
                    float _9749 = mad(_9727, _9732, mad(_9703, _9716, 1.0f));
                    float _9750 = _9743 * _9749;
                    float _9751 = _9747 * _9749;
                    float _9756 = _9751 * mad(-0.5f, _9750, (0.25f * _9745) * _9747);
                    float _9766 = mad(_9747, mad(_9746, _9749 * _9749, _9751 * mad(-0.5f, mad(_9703, _9716, _9749), -0.5f)), mad(_9750, _9750, (_9745 * _9747) * mad(_9745, _9747, _9750 * (-2.0f))));
                    float _9770 = (2.0f * _9756) / mad(_9766, _9766, _9756 * _9756);
                    float _9771 = _9770 * _9766;
                    float _9773 = mad(-_9770, _9756, 1.0f);
                    float _9779 = mad(_9703, _9716, mad(_9773, _9727 * _9732, _9771 * _9745));
                    float _9781 = rsqrt(mad(2.0f, _9779, 2.0f));
                    _9788 = clamp((mad(_9669, _9716, mad(_9773, _9727 * _9728, _9771 * _9743)) + _9702) * _9781, 0.0f, 1.0f);
                    _9789 = clamp(mad(_9781, _9779, _9781), 0.0f, 1.0f);
                }
                _9790 = _9788;
                _9791 = _9789;
            }
            else
            {
                _9790 = _9708;
                _9791 = _9710;
            }
            float _9794 = clamp(abs(_9702) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float _9795 = _9663 * _9663;
            float _9796 = _9795 * _9795;
            float _9801 = clamp(_9710, 0.0f, 1.0f);
            int _9803 = asint(_9796);
            float _9809 = clamp(0.0555555559694766998291015625f * log2(mad(2.0f, asfloat(2129859010 - _9803), -1.0f)), 0.0f, 1.0f);
            float _9810 = 1.0f - _9801;
            float _9811 = _9810 * _9810;
            float _9814 = 1.0f - clamp(_9702, 0.0f, 1.0f);
            float _9815 = _9814 * _9814;
            float _9819 = 1.0f - clamp(_9688, 0.0f, 1.0f);
            float _9820 = _9819 * _9819;
            float3 _9844 = 1.0f.xxx * _9688;
            float3 _9894 = 0.0f.xxx;
            if ((_9701 & 1u) == 1u)
            {
                _9894 = 0.0f.xxx;
            }
            else
            {
                float _9863 = 0.0f;
                if (_9711)
                {
                    _9863 = _9796 / mad(_9795, _9795, ((0.25f * _9694) * mad(3.0f, asfloat(532487669 + (_9803 >> 1)), _9694)) / (_9791 + 0.001000000047497451305389404296875f));
                }
                else
                {
                    _9863 = 1.0f;
                }
                float _9866 = mad(mad(_9790, _9796, -_9790), _9790, 1.0f);
                float _9871 = sqrt(_9796);
                float _9872 = 1.0f - _9871;
                float _9878 = 1.0f - _9791;
                float _9879 = _9878 * _9878;
                float _9880 = _9879 * _9879;
                _9894 = _9844 * (((clamp(50.0f * _8555.y, 0.0f, 1.0f) * (_9880 * _9878)).xxx + (_8555 * mad(-_9880, _9878, 1.0f))) * (((_9796 / ((3.1415927410125732421875f * _9866) * _9866)) * _9863) * (0.5f / mad(_9688, mad(_9794, _9872, _9871), _9794 * mad(_9688, _9872, _9871)))));
            }
            float4 _9903 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_9794, _9663), 0.0f);
            bool3 _9907 = (View_View_bShadingEnergyConservation != 0u).xxx;
            float _9908 = _9903.x;
            float3 _9912 = 1.0f.xxx + (_8555 * ((1.0f - _9908) / _9908));
            float3 _9913 = float3(_9907.x ? _9912.x : 1.0f.xxx.x, _9907.y ? _9912.y : 1.0f.xxx.y, _9907.z ? _9912.z : 1.0f.xxx.z);
            float3 _9929 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _9657;
            float3 _9931 = mad(((_8778 * (0.3183098733425140380859375f * mad((mad(mad(34.5f, _9809, -59.0f), _9809, 24.5f) * _9801) * exp2((-max(mad(73.1999969482421875f, _9809, -21.200000762939453125f), 8.8999996185302734375f)) * asfloat(532487669 + (asint(clamp(_9708, 0.0f, 1.0f)) >> 1))), asfloat(_9701 >> 1u), lerp(mad(_9811 * _9811, _9810, _9801), mad(-0.75f, (_9815 * _9815) * _9814, 1.0f) * mad(-0.75f, (_9820 * _9820) * _9819, 1.0f), clamp(mad(2.2000000476837158203125f, _9809, -0.5f), 0.0f, 1.0f))))) * _9844) * ((View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(_9913 * ((_8555 * _9908) + ((clamp(50.0f * _8555.y, 0.0f, 1.0f).xxx - _8555) * _9903.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f), _9929, 0.0f.xxx);
            _9932 = _9931;
            _9933 = ((_9894 * _9913) * 1.0f) * _9929;
        }
        else
        {
            _9932 = 0.0f.xxx;
            _9933 = 0.0f.xxx;
        }
        float4 _9937 = float4(_9932, 0.0f);
        float4 _9941 = float4(_9933, 0.0f);
        float3 _9958 = 0.0f.xxx;
        float4 _9959 = 0.0f.xxxx;
        float4 _9960 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _8853) != 0u)
        {
            float4 _9946 = float4(_9937.x, _9937.y, _9937.z, _9937.w);
            float4 _9947 = float4(_9941.x, _9941.y, _9941.z, _9941.w);
            float3 _9954 = 0.0f.xxx;
            if (_8822)
            {
                _9954 = _9937.xyz + _9941.xyz;
            }
            else
            {
                _9954 = 0.0f.xxx;
            }
            bool4 _9955 = _8822.xxxx;
            _9958 = _9954;
            _9959 = float4(_9955.x ? 0.0f.xxxx.x : _9946.x, _9955.y ? 0.0f.xxxx.y : _9946.y, _9955.z ? 0.0f.xxxx.z : _9946.z, _9955.w ? 0.0f.xxxx.w : _9946.w);
            _9960 = float4(_9955.x ? 0.0f.xxxx.x : _9947.x, _9955.y ? 0.0f.xxxx.y : _9947.y, _9955.z ? 0.0f.xxxx.z : _9947.z, _9955.w ? 0.0f.xxxx.w : _9947.w);
        }
        else
        {
            _9958 = 0.0f.xxx;
            _9959 = 0.0f.xxxx;
            _9960 = 0.0f.xxxx;
        }
        _9961 = _8882;
        _9962 = _9958;
        _9963 = _9657;
        _9964 = _9959;
        _9965 = _9960;
    }
    else
    {
        _9961 = _8511;
        _9962 = 0.0f.xxx;
        _9963 = 1.0f;
        _9964 = 0.0f.xxxx;
        _9965 = 0.0f.xxxx;
    }
    uint _9966 = ((((min(uint(max(0.0f, log2(mad(_596, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _8805.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _8805.x) * 2u;
    uint _9972 = _9966 + 1u;
    uint _9975 = min(min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_9966], OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
    float4 _9977 = 0.0f.xxxx;
    float4 _9980 = 0.0f.xxxx;
    _9977 = _9964;
    _9980 = _9965;
    float4 _9978 = 0.0f.xxxx;
    float4 _9981 = 0.0f.xxxx;
    [loop]
    for (uint _9982 = 0u; _9982 < _9975; _9977 = _9978, _9980 = _9981, _9982++)
    {
        uint _9991 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_9972] + _9982).x * 6u;
        uint _9994 = _9991 + 1u;
        uint _9997 = _9991 + 2u;
        uint _10000 = _9991 + 3u;
        uint _10003 = _9991 + 4u;
        uint _10007 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9997].w);
        uint _10013 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9994].y);
        uint _10029 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_10000].z);
        float2 _10031 = spvUnpackHalf2x16(_10029 & 65535u);
        float _10032 = _10031.x;
        float2 _10035 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_10000].w));
        float _10036 = _10035.x;
        bool _10041 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9994].w == 0.0f;
        float4 _10062 = float4(float(_10007 & 1u), float((_10007 & 2u) >> 1u), float((_10007 & 4u) >> 2u), float((_10007 & 8u) >> 3u));
        uint _10063 = _10007 >> 4u;
        float3 _10079 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9991].xyz - _653;
        float _10080 = dot(_10079, _10079);
        float _10097 = 0.0f;
        if (_10041)
        {
            float _10092 = _10080 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9991].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9991].w);
            float _10095 = clamp(mad(-_10092, _10092, 1.0f), 0.0f, 1.0f);
            _10097 = _10095 * _10095;
        }
        else
        {
            float3 _10086 = _10079 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9991].w;
            _10097 = pow(1.0f - clamp(dot(_10086, _10086), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9994].w);
        }
        float _10108 = 0.0f;
        if (((_10007 >> 16u) & 3u) == 2u)
        {
            float _10105 = clamp((dot(_10079 * rsqrt(_10080), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9997].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_10000].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_10000].y, 0.0f, 1.0f);
            _10108 = _10097 * (_10105 * _10105);
        }
        else
        {
            _10108 = _10097;
        }
        float3 _10479 = 0.0f.xxx;
        float3 _10480 = 0.0f.xxx;
        [branch]
        if (_10108 > 0.0f)
        {
            float _10120 = 0.0f;
            [branch]
            if (uint((_10007 & 255u) != 0u) != 0u)
            {
                _10120 = dot(float4(float(_10063 & 1u), float((_10063 & 2u) >> 1u), float((_10063 & 4u) >> 2u), float((_10063 & 8u) >> 3u)), _8837) * lerp(1.0f, dot(_9961, _10062), dot(_10062, 1.0f.xxxx));
            }
            else
            {
                _10120 = 1.0f;
            }
            float3 _10477 = 0.0f.xxx;
            float3 _10478 = 0.0f.xxx;
            [branch]
            if ((_10120 + _10120) > 0.0f)
            {
                float3 _10126 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_10003].xyz * (0.5f * _10036);
                float3 _10127 = _10079 - _10126;
                float3 _10128 = _10079 + _10126;
                float _10129 = max(_8436, View_View_MinRoughness);
                bool _10130 = _10036 > 0.0f;
                float _10155 = 0.0f;
                float _10156 = 0.0f;
                float _10157 = 0.0f;
                [branch]
                if (_10130)
                {
                    float _10142 = rsqrt(dot(_10127, _10127));
                    float _10143 = rsqrt(dot(_10128, _10128));
                    float _10144 = _10142 * _10143;
                    float _10146 = dot(_10127, _10128) * _10144;
                    _10155 = _10146;
                    _10156 = 0.5f * mad(dot(_8459, _10127), _10142, dot(_8459, _10128) * _10143);
                    _10157 = _10144 / mad(_10142, _10143, mad(_10146, 0.5f, 0.5f));
                }
                else
                {
                    float _10134 = dot(_10127, _10127);
                    _10155 = 1.0f;
                    _10156 = dot(_8459, _10127 * rsqrt(_10134));
                    _10157 = 1.0f / (_10134 + 1.0f);
                }
                float _10175 = 0.0f;
                if (_10032 > 0.0f)
                {
                    float _10164 = sqrt(clamp((_10032 * _10032) * _10157, 0.0f, 1.0f));
                    float _10174 = 0.0f;
                    if (_10156 < _10164)
                    {
                        float _10170 = _10164 + max(_10156, -_10164);
                        _10174 = (_10170 * _10170) / (4.0f * _10164);
                    }
                    else
                    {
                        _10174 = _10156;
                    }
                    _10175 = _10174;
                }
                else
                {
                    _10175 = _10156;
                }
                float _10176 = clamp(_10175, 0.0f, 1.0f);
                float3 _10194 = 0.0f.xxx;
                if (_10130)
                {
                    float3 _10181 = reflect(-_671, _8459);
                    float3 _10182 = _10128 - _10127;
                    float _10183 = dot(_10181, _10182);
                    _10194 = _10127 + (_10182 * clamp(dot(_10127, (_10181 * _10183) - _10182) / mad(_10036, _10036, -(_10183 * _10183)), 0.0f, 1.0f));
                }
                else
                {
                    _10194 = _10127;
                }
                float _10196 = rsqrt(dot(_10194, _10194));
                float3 _10197 = _10194 * _10196;
                float _10198 = max(_10129, View_View_MinRoughness);
                float _10203 = clamp((_10032 * _10196) * mad(-_10198, _10198, 1.0f), 0.0f, 1.0f);
                float _10205 = clamp(spvUnpackHalf2x16(_10029 >> 16u).x * _10196, 0.0f, 1.0f);
                uint _10212 = 0u | (asuint(clamp(mad(-max(_10036, _10032), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u);
                float _10213 = dot(_8459, _10197);
                float _10214 = dot(_8459, _671);
                float _10215 = dot(_671, _10197);
                float _10217 = rsqrt(mad(2.0f, _10215, 2.0f));
                float _10220 = clamp((_10213 + _10214) * _10217, 0.0f, 1.0f);
                float _10222 = clamp(mad(_10217, _10215, _10217), 0.0f, 1.0f);
                bool _10223 = _10203 > 0.0f;
                float _10302 = 0.0f;
                float _10303 = 0.0f;
                if (_10223)
                {
                    float _10228 = sqrt(mad(-_10203, _10203, 1.0f));
                    float _10229 = 2.0f * _10213;
                    float _10230 = -_10215;
                    float _10231 = mad(_10229, _10214, _10230);
                    float _10300 = 0.0f;
                    float _10301 = 0.0f;
                    if (_10231 >= _10228)
                    {
                        _10300 = 1.0f;
                        _10301 = abs(_10214);
                    }
                    else
                    {
                        float _10236 = -_10231;
                        float _10239 = _10203 * rsqrt(mad(_10236, _10231, 1.0f));
                        float _10240 = mad(_10236, _10213, _10214);
                        float _10244 = mad(_10236, _10215, mad(2.0f * _10214, _10214, -1.0f));
                        float _10255 = _10239 * sqrt(clamp(mad(_10229 * _10214, _10215, mad(_10230, _10215, mad(-_10214, _10214, mad(-_10213, _10213, 1.0f)))), 0.0f, 1.0f));
                        float _10257 = (_10255 * 2.0f) * _10214;
                        float _10258 = mad(_10213, _10228, _10214);
                        float _10259 = mad(_10239, _10240, _10258);
                        float _10261 = mad(_10239, _10244, mad(_10215, _10228, 1.0f));
                        float _10262 = _10255 * _10261;
                        float _10263 = _10259 * _10261;
                        float _10268 = _10263 * mad(-0.5f, _10262, (0.25f * _10257) * _10259);
                        float _10278 = mad(_10259, mad(_10258, _10261 * _10261, _10263 * mad(-0.5f, mad(_10215, _10228, _10261), -0.5f)), mad(_10262, _10262, (_10257 * _10259) * mad(_10257, _10259, _10262 * (-2.0f))));
                        float _10282 = (2.0f * _10268) / mad(_10278, _10278, _10268 * _10268);
                        float _10283 = _10282 * _10278;
                        float _10285 = mad(-_10282, _10268, 1.0f);
                        float _10291 = mad(_10215, _10228, mad(_10285, _10239 * _10244, _10283 * _10257));
                        float _10293 = rsqrt(mad(2.0f, _10291, 2.0f));
                        _10300 = clamp((mad(_10213, _10228, mad(_10285, _10239 * _10240, _10283 * _10255)) + _10214) * _10293, 0.0f, 1.0f);
                        _10301 = clamp(mad(_10293, _10291, _10293), 0.0f, 1.0f);
                    }
                    _10302 = _10300;
                    _10303 = _10301;
                }
                else
                {
                    _10302 = _10220;
                    _10303 = _10222;
                }
                float _10306 = clamp(abs(_10214) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float _10307 = _10129 * _10129;
                float _10308 = _10307 * _10307;
                float _10313 = clamp(_10222, 0.0f, 1.0f);
                float _10321 = clamp(0.0555555559694766998291015625f * log2(mad(2.0f, asfloat(2129859010 - asint(_10308)), -1.0f)), 0.0f, 1.0f);
                float _10322 = 1.0f - _10313;
                float _10323 = _10322 * _10322;
                float _10326 = 1.0f - clamp(_10214, 0.0f, 1.0f);
                float _10327 = _10326 * _10326;
                float _10331 = 1.0f - clamp(_10176, 0.0f, 1.0f);
                float _10332 = _10331 * _10331;
                float3 _10357 = 1.0f.xxx * ((_10041 ? _10157 : 1.0f) * _10176);
                float3 _10439 = 0.0f.xxx;
                if ((_10212 & 1u) == 1u)
                {
                    _10439 = 0.0f.xxx;
                }
                else
                {
                    float _10372 = 0.0f;
                    if (_10205 > 0.0f)
                    {
                        _10372 = clamp(mad(_10307, _10307, (_10205 * _10205) / mad(_10303, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _10372 = _10308;
                    }
                    float _10386 = 0.0f;
                    float _10387 = 0.0f;
                    if (_10223)
                    {
                        float _10384 = _10372 + (((0.25f * _10203) * mad(3.0f, asfloat(532487669 + (asint(_10372) >> 1)), _10203)) / (_10303 + 0.001000000047497451305389404296875f));
                        _10386 = _10372 / _10384;
                        _10387 = _10384;
                    }
                    else
                    {
                        _10386 = 1.0f;
                        _10387 = _10372;
                    }
                    float _10408 = 0.0f;
                    if (_10155 < 1.0f)
                    {
                        float _10394 = sqrt((1.00010001659393310546875f - _10155) / (1.0f + _10155));
                        _10408 = _10386 * sqrt(_10387 / (_10387 + (((0.25f * _10394) * mad(3.0f, asfloat(532487669 + (asint(_10387) >> 1)), _10394)) / (_10303 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _10408 = _10386;
                    }
                    float _10411 = mad(mad(_10302, _10372, -_10302), _10302, 1.0f);
                    float _10416 = sqrt(_10372);
                    float _10417 = 1.0f - _10416;
                    float _10423 = 1.0f - _10303;
                    float _10424 = _10423 * _10423;
                    float _10425 = _10424 * _10424;
                    _10439 = _10357 * (((clamp(50.0f * _8555.y, 0.0f, 1.0f) * (_10425 * _10423)).xxx + (_8555 * mad(-_10425, _10423, 1.0f))) * (((_10372 / ((3.1415927410125732421875f * _10411) * _10411)) * _10408) * (0.5f / mad(_10176, mad(_10306, _10417, _10416), _10306 * mad(_10176, _10417, _10416)))));
                }
                float4 _10448 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_10306, _10129), 0.0f);
                bool3 _10452 = (View_View_bShadingEnergyConservation != 0u).xxx;
                float _10453 = _10448.x;
                float3 _10457 = 1.0f.xxx + (_8555 * ((1.0f - _10453) / _10453));
                float3 _10458 = float3(_10452.x ? _10457.x : 1.0f.xxx.x, _10452.y ? _10457.y : 1.0f.xxx.y, _10452.z ? _10457.z : 1.0f.xxx.z);
                float3 _10474 = ((float3(float((_10013 >> 0u) & 1023u), float((_10013 >> 10u) & 1023u), float((_10013 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9994].x) * _10108) * _10120;
                float3 _10476 = mad(((_8778 * (0.3183098733425140380859375f * mad((mad(mad(34.5f, _10321, -59.0f), _10321, 24.5f) * _10313) * exp2((-max(mad(73.1999969482421875f, _10321, -21.200000762939453125f), 8.8999996185302734375f)) * asfloat(532487669 + (asint(clamp(_10220, 0.0f, 1.0f)) >> 1))), asfloat(_10212 >> 1u), lerp(mad(_10323 * _10323, _10322, _10313), mad(-0.75f, (_10327 * _10327) * _10326, 1.0f) * mad(-0.75f, (_10332 * _10332) * _10331, 1.0f), clamp(mad(2.2000000476837158203125f, _10321, -0.5f), 0.0f, 1.0f))))) * _10357) * ((View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(_10458 * ((_8555 * _10453) + ((clamp(50.0f * _8555.y, 0.0f, 1.0f).xxx - _8555) * _10448.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f), _10474, 0.0f.xxx);
                _10477 = _10476;
                _10478 = ((_10439 * _10458) * spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_10003].w) & 65535u).x) * _10474;
            }
            else
            {
                _10477 = 0.0f.xxx;
                _10478 = 0.0f.xxx;
            }
            _10479 = _10477;
            _10480 = _10478;
        }
        else
        {
            _10479 = 0.0f.xxx;
            _10480 = 0.0f.xxx;
        }
        [flatten]
        if ((((_10007 >> 8u) & 7u) & _8853) != 0u)
        {
            _9978 = _9977 + float4(_10479, 0.0f);
            _9981 = _9980 + float4(_10480, 0.0f);
        }
        else
        {
            _9978 = _9977;
            _9981 = _9980;
        }
    }
    bool4 _10498 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    float3 _10584 = 0.0f.xxx;
    float3 _10585 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _10529 = _8402 + 31u;
        float3 _10538 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_8402 + 1u].xyz) * 2097152.0f) + (_654 - Scene_GPUScene_GPUScenePrimitiveSceneData[_8402 + 18u].xyz));
        float3 _10539 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_8402 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_8402 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_8402 + 25u].w) + 1.0f.xxx;
        float3 _10582 = 0.0f.xxx;
        float3 _10583 = 0.0f.xxx;
        if (any(bool3(_10538.x > _10539.x, _10538.y > _10539.y, _10538.z > _10539.z)))
        {
            float3 _10562 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _10563 = _654 * 0.57700002193450927734375f.xxx;
            float3 _10578 = frac(mad((_10563.x + _10563.y) + _10563.z, 0.00200000009499490261077880859375f, frac(((_10562.x + _10562.y) + _10562.z) * 4194.30419921875f))).xxx;
            float3 _10581 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_10578.x > 0.5f.xxx.x, _10578.y > 0.5f.xxx.y, _10578.z > 0.5f.xxx.z)));
            _10582 = _10581;
            _10583 = _10581;
        }
        else
        {
            float3 _10561 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_10529].x > 0.0f)
            {
                float3 _10549 = abs(_653 - in_var_TEXCOORD9);
                _10561 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_10549.x, max(_10549.y, _10549.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_10529].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _10561 = 0.0f.xxx;
            }
            _10582 = 0.0f.xxx;
            _10583 = _10561;
        }
        _10584 = _10582;
        _10585 = _10583;
    }
    else
    {
        _10584 = 0.0f.xxx;
        _10585 = 0.0f.xxx;
    }
    float4 _10596 = OpaqueBasePass_PreIntegratedGFTexture.SampleLevel(View_SharedBilinearClampedSampler, float2(max(0.0f, dot(_8459, _671)), _8436), 0.0f);
    float3 _10834 = 0.0f.xxx;
    float3 _10835 = 0.0f.xxx;
    if (_8460 > 0.0f)
    {
        float2 _10624 = clamp(mad(_644.xy / _657.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz), SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.xy, SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.zw);
        float4 _10626 = SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture.SampleLevel(View_SharedBilinearClampedSampler, _10624, 0.0f);
        float _10627 = _10626.x;
        float _10637 = -View_View_InvDeviceZToWorldZTransform.w;
        float _10640 = mad(_10627, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10627, View_View_InvDeviceZToWorldZTransform.z, _10637));
        float _10671 = _10640 - _657;
        float2 _10680 = clamp(_10624 + (((((((normalize(mul(_8459, float3x3(View_View_TranslatedWorldToView[0].xyz, View_View_TranslatedWorldToView[1].xyz, View_View_TranslatedWorldToView[2].xyz))).xy * (Material_Material_PreshaderBuffer[107].w - 1.0f)) * View_View_ViewSizeAndInvSize.xy) * View_View_BufferSizeAndInvSize.zw) * ((SingleLayerWater_SingleLayerWater_DistortionParams.zw * float2(0.000230000005103647708892822265625f, -0.000230000005103647708892822265625f)) * float2(SingleLayerWater_SingleLayerWater_DistortionParams.x, SingleLayerWater_SingleLayerWater_DistortionParams.y * SingleLayerWater_SingleLayerWater_DistortionParams.x))) * clamp(mad(_10671, 1.0f / max(1.0f, clamp(abs(Material_Material_PreshaderBuffer[108].x * (-0.5f)), 0.0f, 50.0f)), -Material_Material_PreshaderBuffer[108].x), 0.0f, 1.0f)) * 4.0f) * clamp(_10671 * 0.0333333350718021392822265625f, 0.0f, 1.0f)), SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.xy, SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.zw);
        float4 _10682 = SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture.GatherRed(View_SharedBilinearClampedSampler, _10680);
        float _10683 = _10682.x;
        float _10688 = _10682.y;
        float _10693 = _10682.z;
        float _10698 = _10682.w;
        float4 _10703 = float4(mad(_10683, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10683, View_View_InvDeviceZToWorldZTransform.z, _10637)), mad(_10688, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10688, View_View_InvDeviceZToWorldZTransform.z, _10637)), mad(_10693, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10693, View_View_InvDeviceZToWorldZTransform.z, _10637)), mad(_10698, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10698, View_View_InvDeviceZToWorldZTransform.z, _10637)));
        float4 _10704 = _657.xxxx;
        bool _10706 = any(bool4(_10703.x < _10704.x, _10703.y < _10704.y, _10703.z < _10704.z, _10703.w < _10704.w));
        float _10732 = 0.0f;
        float _10733 = 0.0f;
        if (_10706)
        {
            _10732 = _10640;
            _10733 = _10627;
        }
        else
        {
            float2 _10713 = frac(((_10680 * SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterTextureSize) * 1.0f) - 0.5f.xx);
            float _10715 = _10713.x;
            float _10716 = 1.0f - _10715;
            float _10717 = _10713.y;
            float _10718 = 1.0f - _10717;
            float4 _10720 = 0.0f.xxxx;
            _10720.x = _10716 * _10718;
            _10720.y = _10715 * _10718;
            _10720.z = _10716 * _10717;
            _10720.w = _10715 * _10717;
            float _10727 = dot(_10682.wzxy, _10720);
            _10732 = mad(_10727, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10727, View_View_InvDeviceZToWorldZTransform.z, _10637));
            _10733 = _10727;
        }
        bool2 _10734 = _10706.xx;
        float _10738 = max(0.0f, _10732 - _657);
        float3 _10740 = clamp(_8383.xyz, 0.0f.xxx, 64512.0f.xxx).xyz;
        float _10748 = 1.0f / ((2.0f / (1.0f - sqrt(min(_8535, 0.9900000095367431640625f)))) - 1.0f);
        float3 _10771 = 0.0f.xxx;
        bool _10772 = false;
        do
        {
            float _10751 = dot(_671, _8459);
            float _10756 = mad(-(_10748 * _10748), mad(-_10751, _10751, 1.0f), 1.0f);
            if (_10756 < 0.0f)
            {
                _10771 = reflect(-_671, _8459);
                _10772 = false;
                break;
            }
            _10771 = (_8459 * mad(_10748, _10751, (-((_10751 >= 0.0f) ? 1.0f : (-1.0f))) * sqrt(_10756))) - (_671 * _10748);
            _10772 = true;
            break;
        } while(false);
        float _10784 = 0.0f;
        if (_10772)
        {
            float _10777 = mad(1.5499999523162841796875f, 0.0f, -0.0f);
            float _10778 = mad(_10777, dot(-View_View_DirectionalLightDirection, _10771), 1.0f);
            _10784 = mad(-_10777, _10777, 1.0f) / ((12.56637096405029296875f * _10778) * _10778);
        }
        else
        {
            _10784 = 0.0f;
        }
        float4 _10786 = mul(float4(gl_FragCoord.xy, max(9.9999999600419720025001879548654e-13f, _10733), 1.0f), View_View_SVPositionToTranslatedWorld);
        float3 _10812 = exp(-(_10740 * _10738));
        float3 _10813 = ((View_View_DirectionalLightColor.xyz * 3.1415927410125732421875f) * _10784) * _9963;
        float3 _10819 = clamp(((_8442.xyz * _10740) * (1.0f.xxx - _10812)) / max(_10740, 9.9999997473787516355514526367188e-06f.xxx), 0.0f.xxx, 1.0f.xxx);
        float3 _10823 = 1.0f.xxx - ((_8555 * _10596.x) + (clamp(50.0f * _8555.y, 0.0f, 1.0f) * _10596.y).xxx);
        float3 _10824 = float3(_10823.x, _10823.y, _10823.z);
        _10834 = _9962 + ((((_10813 * float(_8822)) * _10819) * _10824) * _8460);
        _10835 = mad((((_8763 * 3.1415927410125732421875f) * 0.079577468335628509521484375f) + (_10813 * (_8822 ? 0.0f : 1.0f))) * _10819, _10824, (_10812 * float3(1.0f.xxx.x, 1.0f.xxx.y, 1.0f.xxx.z)) * (((exp(_10740 * (-max(0.0f, (((View_View_ViewTilePosition - View_View_ViewTilePosition) * 2097152.0f) + (_654 - ((_10786.xyz / _10786.w.xxx) - View_View_RelativePreViewTranslation))).z))) * View_View_OneOverPreExposure) * SingleLayerWater_SceneColorWithoutSingleLayerWaterTexture.SampleLevel(View_SharedBilinearClampedSampler, float2(_10734.x ? _10624.x : _10680.x, _10734.y ? _10624.y : _10680.y), 0.0f).xyz) * lerp(1.0f.xxx, clamp(Material_Material_PreshaderBuffer[105].z.xxx.xyz, 0.0f.xxx, 64512.0f.xxx).xyz, clamp(_10738 * 0.0199999995529651641845703125f, 0.0f, 1.0f).xxx))) * _8460;
    }
    else
    {
        _10834 = _9962;
        _10835 = 0.0f.xxx;
    }
    float3 _10837 = normalize(_8458);
    uint2 _10838 = uint2(gl_FragCoord.xy);
    float3 _10841 = mad(clamp(_8448, 0.0f.xxx, 1.0f.xxx), View_View_DiffuseOverrideParameter.www, View_View_DiffuseOverrideParameter.xyz);
    _8429.x = 0.0f;
    float _10844 = mad(clamp(_8428, 0.0f, 1.0f), View_View_SpecularOverrideParameter.w, View_View_SpecularOverrideParameter.x);
    _8429.y = _10844;
    float _10848 = clamp(max(View_View_MinRoughness, mad(_8436, View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x)), 0.0f, 1.0f);
    _8429.z = _10848;
    float _10850 = clamp(_8438, 0.0f, 1.0f);
    _8429.w = _10850;
    bool3 _10857 = (View_View_bShadingEnergyConservation != 0u).xxx;
    bool _10858 = any(bool3(true, true, true));
    uint _10981 = 0u;
    float3 _10982 = 0.0f.xxx;
    uint _10983 = 0u;
    uint _10984 = 0u;
    bool _10985 = false;
    bool _10986 = false;
    float3 _10987 = 0.0f.xxx;
    float _10988 = 0.0f;
    float3 _10989 = 0.0f.xxx;
    float _10990 = 0.0f;
    if (_10858)
    {
        float3 _10969 = 0.0f.xxx;
        uint _10970 = 0u;
        bool _10971 = false;
        bool _10972 = false;
        float3 _10973 = 0.0f.xxx;
        float _10974 = 0.0f;
        float _10975 = 0.0f;
        uint _10976 = 0u;
        switch (4u)
        {
            case 0u:
            {
                float3 _10950 = 0.0f.xxx;
                do
                {
                    float3 _10947 = 0.0f.xxx;
                    bool _10948 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10947 = lerp(_10841.xyz, _8429.xyz, clamp((max(0.0f, max(_10844, _10848)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10948 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10947 = _10841.xyz;
                            _10948 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10947 = _10841.xyz;
                            _10948 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10947 = _10841.xyz;
                            _10948 = true;
                            break;
                        }
                        default:
                        {
                            _10947 = _466;
                            _10948 = false;
                            break;
                        }
                    }
                    if (_10948)
                    {
                        _10950 = _10947;
                        break;
                    }
                    _10950 = 0.0f.xxx;
                    break;
                } while(false);
                float3 _10951 = _10950 * 1.0f;
                float3 _10965 = 0.0f.xxx;
                float _10966 = 0.0f;
                if (false)
                {
                    float3 _10963 = 0.0f.xxx;
                    float _10964 = 0.0f;
                    if (false)
                    {
                        _10963 = lerp(0.0f, 0.039999999105930328369140625f, clamp((max(0.039999999105930328369140625f, max(0.039999999105930328369140625f, 0.039999999105930328369140625f)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f)).xxx;
                        _10964 = 0.0f;
                    }
                    else
                    {
                        _10963 = _10951;
                        _10964 = 0.0f;
                    }
                    _10965 = _10963;
                    _10966 = _10964;
                }
                else
                {
                    _10965 = _10951;
                    _10966 = 0.0f;
                }
                _10969 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10970 = 1u;
                _10971 = (true && all(bool3(true, true, true))) && true;
                _10972 = true;
                _10973 = _10965;
                _10974 = _10966;
                _10975 = 1.0f;
                _10976 = (_8534 | 0u) | 0u;
                break;
            }
            case 3u:
            {
                float3 _10920 = 0.0f.xxx;
                do
                {
                    float3 _10917 = 0.0f.xxx;
                    bool _10918 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10917 = lerp(_10841.xyz, _8429.xyz, clamp((max(0.0f, max(_10844, _10848)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10918 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10917 = _10841.xyz;
                            _10918 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10917 = _10841.xyz;
                            _10918 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10917 = _10841.xyz;
                            _10918 = true;
                            break;
                        }
                        default:
                        {
                            _10917 = _466;
                            _10918 = false;
                            break;
                        }
                    }
                    if (_10918)
                    {
                        _10920 = _10917;
                        break;
                    }
                    _10920 = 0.0f.xxx;
                    break;
                } while(false);
                _10969 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10970 = 1u;
                _10971 = false;
                _10972 = false;
                _10973 = _10920 * 1.0f;
                _10974 = 1.0f;
                _10975 = 1.0f;
                _10976 = (_8534 & 4294967288u) | 5u;
                break;
            }
            case 5u:
            {
                _10969 = 0.0f.xxx;
                _10970 = 1u;
                _10971 = false;
                _10972 = false;
                _10973 = 0.0f.xxx;
                _10974 = 1.0f;
                _10975 = 1.0f;
                _10976 = ((_8534 | 0u) & 4294967288u) | 6u;
                break;
            }
            case 4u:
            {
                float3 _10890 = 0.0f.xxx;
                do
                {
                    float3 _10887 = 0.0f.xxx;
                    bool _10888 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10887 = lerp(_10841.xyz, _8429.xyz, clamp((max(0.0f, max(_10844, _10848)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10888 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10887 = _10841.xyz;
                            _10888 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10887 = _10841.xyz;
                            _10888 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10887 = _10841.xyz;
                            _10888 = true;
                            break;
                        }
                        default:
                        {
                            _10887 = _466;
                            _10888 = false;
                            break;
                        }
                    }
                    if (_10888)
                    {
                        _10890 = _10887;
                        break;
                    }
                    _10890 = 0.0f.xxx;
                    break;
                } while(false);
                _10969 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10970 = 2u;
                _10971 = false;
                _10972 = false;
                _10973 = _10890 * 1.0f;
                _10974 = mad(1.0f, _10848, 0.0f);
                _10975 = 1.0f;
                _10976 = (_8534 & 4294967288u) | 4u;
                break;
            }
            default:
            {
                _10969 = 0.0f.xxx;
                _10970 = 0u;
                _10971 = true;
                _10972 = true;
                _10973 = 0.0f.xxx;
                _10974 = 0.0f;
                _10975 = 0.0f;
                _10976 = _8534;
                break;
            }
        }
        float3 _10977[4] = { _10837, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx };
        float3 _589[4] = _10977;
        _10981 = 8194u;
        _10982 = _10969;
        _10983 = _10970;
        _10984 = _10976;
        _10985 = _10971;
        _10986 = _10972;
        _10987 = _10973;
        _10988 = _10974;
        _10989 = _589[0u] * 1.0f;
        _10990 = _10975;
    }
    else
    {
        _10981 = 8192u;
        _10982 = 0.0f.xxx;
        _10983 = 0u;
        _10984 = _8534;
        _10985 = true;
        _10986 = true;
        _10987 = 0.0f.xxx;
        _10988 = 0.0f;
        _10989 = 0.0f.xxx;
        _10990 = 0.0f;
    }
    uint _10991 = uint(_10858);
    bool _10992 = _10990 > 0.0f;
    bool3 _10993 = _10992.xxx;
    float3 _10994 = normalize(_10989);
    float3 _10995 = float3(_10993.x ? _10994.x : 0.0f.xxx.x, _10993.y ? _10994.y : 0.0f.xxx.y, _10993.z ? _10994.z : 0.0f.xxx.z);
    float3 _10999 = _10987 / _10990.xxx;
    uint _11086 = 0u;
    uint _11087 = 0u;
    uint _11088 = 0u;
    if (_10986)
    {
        bool _11004 = _10985 && (_10991 == 1u);
        uint _11084 = 0u;
        uint _11085 = 0u;
        if (_11004)
        {
            uint _11017 = 0u;
            if (((_10981 >> 6u) & 1u) != 0u)
            {
                _11017 = 1u;
            }
            else
            {
                _11017 = 0u;
            }
            uint _11025 = 0u;
            if ((((_10981 >> 9u) & 1u) != 0u) && true)
            {
                _11025 = _11017 | 4u;
            }
            else
            {
                _11025 = _11017;
            }
            uint _11032 = 0u;
            if (((_10981 >> 10u) & 1u) != 0u)
            {
                _11032 = _11025 | 8u;
            }
            else
            {
                _11032 = _11025;
            }
            uint _11034 = (_10981 >> 2u) & 7u;
            uint _11039 = 0u;
            if (_11034 == 4u)
            {
                _11039 = _11032 | 16u;
            }
            else
            {
                _11039 = _11032;
            }
            uint _11044 = 0u;
            if (_11034 == 1u)
            {
                _11044 = _11039 | 32u;
            }
            else
            {
                _11044 = _11039;
            }
            uint _11049 = 0u;
            if (_11034 == 3u)
            {
                _11049 = _11044 | 64u;
            }
            else
            {
                _11049 = _11044;
            }
            uint _11050 = _11049 & 2u;
            uint _11082 = 0u;
            uint _11083 = 0u;
            if ((_11050 == 2u) || (_11050 == 3u))
            {
                _11082 = 1u;
                _11083 = 0u;
            }
            else
            {
                uint _11080 = 0u;
                uint _11081 = 0u;
                if ((_11049 & 4u) == 4u)
                {
                    _11080 = 2u;
                    _11081 = 0u;
                }
                else
                {
                    uint _11078 = 0u;
                    uint _11079 = 0u;
                    if ((_11049 & 40u) == 40u)
                    {
                        _11078 = 5u;
                        _11079 = 0u;
                    }
                    else
                    {
                        uint _11076 = 0u;
                        uint _11077 = 0u;
                        if ((_11049 & 32u) == 32u)
                        {
                            _11076 = 3u;
                            _11077 = 0u;
                        }
                        else
                        {
                            bool _11073 = (_11049 & 72u) == 64u;
                            _11076 = _11073 ? 4u : 0u;
                            _11077 = _11073 ? 0u : 0u;
                        }
                        _11078 = _11076;
                        _11079 = _11077;
                    }
                    _11080 = _11078;
                    _11081 = _11079;
                }
                _11082 = _11080;
                _11083 = _11081;
            }
            _11084 = _11082;
            _11085 = _11083;
        }
        else
        {
            _11084 = 0u;
            _11085 = 0u;
        }
        _11086 = _11084;
        _11087 = _11085;
        _11088 = (_10984 & 4294967288u) | ((_11004 ? 1u : (_11004 ? 2u : 3u)) & 7u);
    }
    else
    {
        _11086 = 0u;
        _11087 = 0u;
        _11088 = _10984;
    }
    float3 _11690 = 0.0f.xxx;
    float _11691 = 0.0f;
    float2 _11692 = 0.0f.xx;
    [branch]
    if (_10858)
    {
        float3 _11091[4] = { _10837, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx };
        float3 _590[4] = _11091;
        uint _11093 = (_10981 >> 14u) & 3u;
        float _11096 = dot(_590[_11093], _671);
        float3 _11374 = 0.0f.xxx;
        float3 _11375 = 0.0f.xxx;
        float3 _11376 = 0.0f.xxx;
        float3 _11377 = 0.0f.xxx;
        switch ((_10981 >> 11u) & 7u)
        {
            case 0u:
            {
                float3 _11265 = _10841.xyz;
                float4 _11269 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_11096, 0.001000000047497451305389404296875f), 0.0f);
                float _11270 = _11269.x;
                float3 _11274 = 1.0f.xxx + (_8429.xyz * ((1.0f - _11270) / _11270));
                float _11287 = (View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(float3(_10857.x ? _11274.x : 1.0f.xxx.x, _10857.y ? _11274.y : 1.0f.xxx.y, _10857.z ? _11274.z : 1.0f.xxx.z) * ((_8429.xyz * _11270) + ((-_8429.xyz) * _11269.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f;
                float3 _11288 = _11265 * _11287;
                uint _11290 = (_10981 >> 2u) & 7u;
                float3 _11351 = 0.0f.xxx;
                [branch]
                if (_11290 == 4u)
                {
                    float _11299 = clamp(max(0.0f, max(0.0f, max(0.0f, 0.0f)) - 0.039999999105930328369140625f) * 3.0f, 0.0f, 1.0f);
                    float _11303 = abs(clamp(_11096, 0.0f, 1.0f));
                    float _11309 = clamp((mad(-0.15658299624919891357421875f, _11303, 1.57079637050628662109375f) * sqrt(1.0f - _11303)) * 0.636619746685028076171875f, 0.0f, 1.0f);
                    float _11318 = clamp(mad(10.0f, 0.001587301609106361865997314453125f, 1.0f), 0.0f, 1.0f);
                    float _11319 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10841.x, _11309), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11318;
                    float _11326 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10841.y, _11309), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11318;
                    float _11333 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10841.z, _11309), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11318;
                    float3 _11334 = float3(_11319, _11326, _11333);
                    float _11339 = max(_11288.x, max(_11288.y, _11288.z));
                    float _11341 = max(_11319, max(_11326, _11333));
                    float3 _11347 = 0.0f.xxx;
                    if (_11339 < _11341)
                    {
                        _11347 = _11334 * (_11339 / _11341);
                    }
                    else
                    {
                        _11347 = _11334;
                    }
                    _11351 = lerp(_11288, _11347 * _11287, (_11299 * _11299).xxx);
                }
                else
                {
                    _11351 = _11288;
                }
                float3 _11366 = 0.0f.xxx;
                [branch]
                if (_11290 == 1u)
                {
                    _11366 = (0.3183098733425140380859375f.xxx * exp((-max(9.9999999747524270787835121154785e-07f.xxx, 1.0f.xxx / max(9.9999999600419720025001879548654e-13f.xxx, 0.0f.xxx))) * (1.0f / max(9.9999997473787516355514526367188e-05f, abs(1.0f))))) * _11287;
                }
                else
                {
                    _11366 = 0.0f.xxx;
                }
                [branch]
                if (((_10981 >> 9u) & 1u) != 0u)
                {
                    _11374 = _11351 * 1.0f;
                    _11375 = _590[_11093];
                    _11376 = _11366;
                    _11377 = _11265 * 1.0f;
                    break;
                }
                _11374 = _11351;
                _11375 = _590[_11093];
                _11376 = _11366;
                _11377 = _11265;
                break;
            }
            case 3u:
            {
                float3 _11109 = normalize(_671 - (_590[_11093] * dot(_671, _590[_11093])));
                float _11110 = min(0.0f, 1.0f);
                float _11111 = dot(_671, _11109);
                float _11113 = clamp(dot(_590[_11093], _11109), -1.0f, 1.0f);
                float _11114 = clamp(_11096, -1.0f, 1.0f);
                float _11115 = abs(_11114);
                float _11116 = mad(-0.15658299624919891357421875f, _11115, 1.57079637050628662109375f);
                float _11118 = sqrt(1.0f - _11115);
                float _11125 = abs(_11113);
                float _11126 = mad(-0.15658299624919891357421875f, _11125, 1.57079637050628662109375f);
                float _11128 = sqrt(1.0f - _11125);
                float _11138 = cos(0.5f * abs((1.57079637050628662109375f - ((_11114 >= 0.0f) ? (_11116 * _11118) : mad(-_11116, _11118, 3.1415927410125732421875f))) - (1.57079637050628662109375f - ((_11113 >= 0.0f) ? (_11126 * _11128) : mad(-_11126, _11128, 3.1415927410125732421875f)))));
                float3 _11140 = _11109 - (_590[_11093] * _11113);
                float3 _11142 = _671 - (_590[_11093] * _11114);
                float _11148 = dot(_11140, _11142) * rsqrt(mad(dot(_11140, _11140), dot(_11142, _11142), 9.9999997473787516355514526367188e-05f));
                float _11151 = sqrt(clamp(mad(0.5f, _11148, 0.5f), 0.0f, 1.0f));
                float _11155 = mad(1.5378702300949953496456146240234e-05f, 0.5f, 0.20000000298023223876953125f);
                float _11156 = mad(1.5378702300949953496456146240234e-05f, 2.0f, 0.20000000298023223876953125f);
                float _11164 = mad(0.0039215688593685626983642578125f, 0.0039215688593685626983642578125f, 0.20000000298023223876953125f) * (1.41421353816986083984375f * _11151);
                float _11165 = _11113 + _11114;
                float _11166 = mad(0.1398856937885284423828125f, mad(0.997551023960113525390625f * _11151, sqrt(mad(-_11114, _11114, 1.0f)), (-0.06994284689426422119140625f) * _11114), _11165);
                float _11178 = 1.0f - sqrt(clamp(mad(0.5f, _11111, 0.5f), 0.0f, 1.0f));
                float _11179 = _11178 * _11178;
                float _11192 = _11165 - 0.0350000001490116119384765625f;
                float _11200 = 1.0f / mad(0.36000001430511474609375f, _11138, 1.190000057220458984375f / _11138);
                float _11203 = _11151 * mad(_11200, mad(-0.800000011920928955078125f, _11148, 0.60000002384185791015625f), 1.0f);
                float _11208 = -_11138;
                float _11209 = mad(_11208, sqrt(clamp(mad(-_11203, _11203, 1.0f), 0.0f, 1.0f)), 1.0f);
                float _11210 = _11209 * _11209;
                float _11214 = 1.0f - mad(0.95347940921783447265625f, (_11210 * _11210) * _11209, 0.0465205647051334381103515625f);
                float3 _11216 = abs(_10841.xyz);
                float _11217 = _11203 * _11200;
                float _11232 = _11165 - 0.14000000059604644775390625f;
                float _11240 = mad(_11208, 0.5f, 1.0f);
                float _11241 = _11240 * _11240;
                float _11244 = mad(0.95347940921783447265625f, (_11241 * _11241) * _11240, 0.0465205647051334381103515625f);
                float _11245 = 1.0f - _11244;
                float3 _11257 = (((((((exp(((-0.5f) * (_11166 * _11166)) / (_11164 * _11164)) / (2.5066282749176025390625f * _11164)) * (0.25f * _11151)) * mad(0.95347940921783447265625f, (_11179 * _11179) * _11178, 0.0465205647051334381103515625f)) * (_10844 * 2.0f)) * lerp(1.0f, _11110, clamp(-_11111, 0.0f, 1.0f))).xxx + ((pow(_11216, ((0.5f * sqrt(mad(-_11217, _11217, 1.0f))) / _11138).xxx) * (((exp(((-0.5f) * (_11192 * _11192)) / (_11155 * _11155)) / (2.5066282749176025390625f * _11155)) * exp(mad(-3.650000095367431640625f, _11148, -3.980000019073486328125f))) * (_11214 * _11214))) * _11110)) + (pow(_11216, (0.800000011920928955078125f / _11138).xxx) * (((exp(((-0.5f) * (_11232 * _11232)) / (_11156 * _11156)) / (2.5066282749176025390625f * _11156)) * exp(mad(17.0f, _11148, -16.7800006866455078125f))) * ((_11245 * _11245) * _11244)))) * 1.0f;
                _11374 = min(1.0f.xxx, (-min(-mad(0.0f.xxx, float3(1.0f.xxx.x, 1.0f.xxx.y, 1.0f.xxx.z), _11257), 0.0f.xxx)) * 6.283185482025146484375f);
                _11375 = _11109;
                _11376 = 0.0f.xxx;
                _11377 = 0.0f.xxx;
                break;
            }
            case 5u:
            {
                float3 _11103 = _10841.xyz;
                _11374 = _11103 * 1.0f;
                _11375 = _590[_11093];
                _11376 = 0.0f.xxx;
                _11377 = _11103;
                break;
            }
            default:
            {
                _11374 = 0.0f.xxx;
                _11375 = 0.0f.xxx;
                _11376 = 0.0f.xxx;
                _11377 = 0.0f.xxx;
                break;
            }
        }
        bool _11379 = any(bool3(_11376.x > 0.0f.xxx.x, _11376.y > 0.0f.xxx.y, _11376.z > 0.0f.xxx.z));
        float4 _11381 = View_VolumetricLightmapBrickAmbientVector.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f);
        float _11394 = _11381.x;
        float4 _11396 = (((View_VolumetricLightmapBrickSHCoefficients0.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f) * 2.0f) - 1.0f.xxxx) * _11394) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
        float _11397 = _11381.y;
        float4 _11399 = (((View_VolumetricLightmapBrickSHCoefficients2.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f) * 2.0f) - 1.0f.xxxx) * _11397) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
        float _11400 = _11381.z;
        float4 _11402 = (((View_VolumetricLightmapBrickSHCoefficients4.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f) * 2.0f) - 1.0f.xxxx) * _11400) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
        float4 _11416 = (((View_VolumetricLightmapBrickSHCoefficients1.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f) * 2.0f) - 1.0f.xxxx) * _11394) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
        float4 _11418 = (((View_VolumetricLightmapBrickSHCoefficients3.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f) * 2.0f) - 1.0f.xxxx) * _11397) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
        float4 _11420 = (((View_VolumetricLightmapBrickSHCoefficients5.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f) * 2.0f) - 1.0f.xxxx) * _11400) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
        float4 _11424 = float4(_11394, _11396.xyz);
        float4 _11429 = float4(_11396.w, _11416.xyz);
        float _11430 = _11416.w;
        float4 _11434 = float4(_11397, _11399.xyz);
        float4 _11439 = float4(_11399.w, _11418.xyz);
        float _11440 = _11418.w;
        float4 _11444 = float4(_11400, _11402.xyz);
        float4 _11449 = float4(_11402.w, _11420.xyz);
        float _11450 = _11420.w;
        float4 _11453 = 0.0f.xxxx;
        _11453.y = (-0.48860299587249755859375f) * _11375.y;
        _11453.z = 0.48860299587249755859375f * _11375.z;
        _11453.w = (-0.48860299587249755859375f) * _11375.x;
        float3 _11460 = _11375 * _11375;
        float4 _11463 = 0.0f.xxxx;
        _11463.x = (1.09254801273345947265625f * _11375.x) * _11375.y;
        _11463.y = ((-1.09254801273345947265625f) * _11375.y) * _11375.z;
        _11463.z = 0.3153919875621795654296875f * mad(3.0f, _11460.z, -1.0f);
        _11463.w = ((-1.09254801273345947265625f) * _11375.x) * _11375.z;
        _11453.x = 0.886227548122406005859375f;
        float3 _11479 = _11453.yzw * 2.094395160675048828125f;
        float4 _11480 = float4(_11453.x, _11479.x, _11479.y, _11479.z);
        float4 _11481 = _11463 * 0.785398185253143310546875f;
        float _11482 = (_11460.x - _11460.y) * 0.4290426075458526611328125f;
        float3 _11487 = 0.0f.xxx;
        _11487.x = mad(_11430, _11482, dot(_11424, _11480) + dot(_11429, _11481));
        _11487.y = mad(_11440, _11482, dot(_11434, _11480) + dot(_11439, _11481));
        _11487.z = mad(_11450, _11482, dot(_11444, _11480) + dot(_11449, _11481));
        float3 _11552 = 0.0f.xxx;
        if (_11379)
        {
            float3 _11502 = -_11375;
            float _11503 = _11502.y;
            float4 _11505 = 0.0f.xxxx;
            _11505.y = (-0.48860299587249755859375f) * _11503;
            float _11506 = _11502.z;
            _11505.z = 0.48860299587249755859375f * _11506;
            float _11509 = _11502.x;
            _11505.w = (-0.48860299587249755859375f) * _11509;
            float3 _11512 = _11502 * _11502;
            float4 _11515 = 0.0f.xxxx;
            _11515.x = (1.09254801273345947265625f * _11509) * _11503;
            _11515.y = ((-1.09254801273345947265625f) * _11503) * _11506;
            _11515.z = 0.3153919875621795654296875f * mad(3.0f, _11512.z, -1.0f);
            _11515.w = ((-1.09254801273345947265625f) * _11509) * _11506;
            _11505.x = 0.886227548122406005859375f;
            float3 _11531 = _11505.yzw * 2.094395160675048828125f;
            float4 _11532 = float4(_11505.x, _11531.x, _11531.y, _11531.z);
            float4 _11533 = _11515 * 0.785398185253143310546875f;
            float _11534 = (_11512.x - _11512.y) * 0.4290426075458526611328125f;
            float3 _11539 = 0.0f.xxx;
            _11539.x = mad(_11430, _11534, dot(_11424, _11532) + dot(_11429, _11533));
            _11539.y = mad(_11440, _11534, dot(_11434, _11532) + dot(_11439, _11533));
            _11539.z = mad(_11450, _11534, dot(_11444, _11532) + dot(_11449, _11533));
            _11552 = max(0.0f.xxx, _11539) * 0.3183098733425140380859375f.xxx;
        }
        else
        {
            _11552 = 0.0f.xxx;
        }
        float3 _11666 = 0.0f.xxx;
        float3 _11667 = 0.0f.xxx;
        if (_8688)
        {
            float _11578 = 0.0f;
            float _11579 = 0.0f;
            float3 _11580 = 0.0f.xxx;
            [branch]
            if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
            {
                float3 _11565 = (View_SkyBentNormalBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _8497, 0.0f).xyz * 2.0f) - 1.0f.xxx;
                float _11566 = length(_11565);
                float3 _11569 = _11565 / max(_11566, 9.9999997473787516355514526367188e-05f).xxx;
                float _11572 = mad(_11566 - 1.0f, 1.0f - _11566, 1.0f);
                _11578 = lerp(clamp(dot(_11569, _11375), 0.0f, 1.0f), 1.0f, _11572);
                _11579 = _11566;
                _11580 = lerp(_11569, _11375, _11572.xxx);
            }
            else
            {
                _11578 = 1.0f;
                _11579 = 1.0f;
                _11580 = _11375;
            }
            float4 _11584 = float4(_11580, 1.0f);
            float3 _11588 = 0.0f.xxx;
            _11588.x = dot(View_SkyIrradianceEnvironmentMap[0u], _11584);
            _11588.y = dot(View_SkyIrradianceEnvironmentMap[1u], _11584);
            _11588.z = dot(View_SkyIrradianceEnvironmentMap[2u], _11584);
            float4 _11599 = _11584.xyzz * _11584.yzzx;
            float3 _11603 = 0.0f.xxx;
            _11603.x = dot(View_SkyIrradianceEnvironmentMap[3u], _11599);
            _11603.y = dot(View_SkyIrradianceEnvironmentMap[4u], _11599);
            _11603.z = dot(View_SkyIrradianceEnvironmentMap[5u], _11599);
            float3 _11665 = 0.0f.xxx;
            if (_11379)
            {
                float3 _11628 = -_11375;
                float _11629 = _11628.x;
                float _11630 = _11628.y;
                float4 _11632 = float4(_11629, _11630, _11628.z, 1.0f);
                float3 _11635 = 0.0f.xxx;
                _11635.x = dot(View_SkyIrradianceEnvironmentMap[0u], _11632);
                _11635.y = dot(View_SkyIrradianceEnvironmentMap[1u], _11632);
                _11635.z = dot(View_SkyIrradianceEnvironmentMap[2u], _11632);
                float4 _11644 = _11632.xyzz * _11632.yzzx;
                float3 _11647 = 0.0f.xxx;
                _11647.x = dot(View_SkyIrradianceEnvironmentMap[3u], _11644);
                _11647.y = dot(View_SkyIrradianceEnvironmentMap[4u], _11644);
                _11647.z = dot(View_SkyIrradianceEnvironmentMap[5u], _11644);
                _11665 = (max(0.0f.xxx, (_11635 + _11647) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_11629, _11629, -(_11630 * _11630)))) * View_View_SkyLightColor.xyz) * _11579;
            }
            else
            {
                _11665 = 0.0f.xxx;
            }
            _11666 = (max(0.0f.xxx, (_11588 + _11603) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_11580.x, _11580.x, -(_11580.y * _11580.y)))) * View_View_SkyLightColor.xyz) * (_11579 * _11578);
            _11667 = _11665;
        }
        else
        {
            _11666 = 0.0f.xxx;
            _11667 = 0.0f.xxx;
        }
        float3 _11669 = mad(max(0.0f.xxx, _11487) * 0.3183098733425140380859375f.xxx, View_View_PrecomputedIndirectLightingColorScale, _11666);
        float2 _11685 = 0.0f.xx;
        _11685.x = max(1.0f.xxx, 0.99960005283355712890625f.xxx).y;
        _11685.y = dot(_11669, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f));
        _11690 = mad(mad(_11669, _11374, mad(_11552, View_View_PrecomputedIndirectLightingColorScale, _11667) * _11376), max(1.0f.xxx, ((((((_11377 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_11377 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_11377 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), _10982);
        _11691 = 1.0f;
        _11692 = _11685;
    }
    else
    {
        _11690 = _10982;
        _11691 = 0.0f;
        _11692 = 0.0f.xx;
    }
    float2 _11695 = _11692 * (1.0f / max(1.0f, _11691));
    uint _11710 = (_11088 & 4294902015u) | ((uint(min(255.0f, mad(log2(mad(_11695.y * _11695.x, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f) * 255.0f)) & 255u) << 8u);
    uint _11711 = _11710 & 7u;
    bool _11713 = (_11711 == 1u) || false;
    bool _11714 = _11711 == 4u;
    bool _11716 = (_11711 == 2u) || false;
    bool _11717 = _11711 == 5u;
    bool _11718 = _11711 == 6u;
    bool _11725 = !_11714;
    bool _11726 = (((!_11713) && (!_11716)) && (!(_11717 || _11718))) && _11725;
    uint _11773 = 0u;
    uint _11774 = 0u;
    if (_11726)
    {
        float2 _11746 = _10837.xy / dot(1.0f.xxx, abs(_10837)).xx;
        float3 _11764 = 0.0f.xxx;
        if (_10837.z <= 0.0f)
        {
            float2 _11755 = _11746.xy;
            bool2 _11756 = bool2(_11755.x >= 0.0f.xx.x, _11755.y >= 0.0f.xx.y);
            float2 _11762 = (1.0f.xx - abs(_11746.yx)) * float2(_11756.x ? 1.0f : (-1.0f), _11756.y ? 1.0f : (-1.0f));
            _11764 = float3(_11762.x, _11762.y, _10837.z);
        }
        else
        {
            _11764 = float3(_11746.x, _11746.y, _10837.z);
        }
        _11773 = spvPackHalf2x16(float2(_11764.x, 0.0f)) | (spvPackHalf2x16(float2(_11764.y, 0.0f)) << 16u);
        _11774 = (((((((0u | ((_10991 & 15u) << 16u)) & 4287627263u) | 1048576u) & 4169138175u) | 0u) | (_11710 & 134217728u)) & 4294901760u) | ((_11710 & 65535u) << 0u);
    }
    else
    {
        _11773 = 0u;
        _11774 = 0u;
    }
    uint _11775 = _11726 ? 2u : 0u;
    uint _13783 = 0u;
    uint _13784 = 0u;
    uint _13785 = 0u;
    uint _13786 = 0u;
    uint _13787 = 0u;
    [branch]
    if (_10858)
    {
        uint _11785 = (((_10981 & 4294967263u) | 32u) & 4294901759u) | ((uint(any(bool3(false, false, false))) & 1u) << 16u);
        bool _11786 = _11713 && true;
        uint _12960 = 0u;
        uint _12961 = 0u;
        uint _12962 = 0u;
        uint _12963 = 0u;
        uint _12964 = 0u;
        if (_11786)
        {
            float _12802 = _8401 - 0.5f;
            float _12803 = _12802 * 0.0078740157186985015869140625f;
            float3 _12805 = float3(_12803, _12803, _12802 * 0.01587301678955554962158203125f);
            float3 _12806 = clamp(_10841.xyz, 0.0f.xxx, 1.0f.xxx);
            float _12807 = _12806.x;
            float _12816 = 0.0f;
            do
            {
                if (_12807 < 0.00313066993840038776397705078125f)
                {
                    _12816 = _12807 * 12.9200000762939453125f;
                    break;
                }
                _12816 = mad(pow(_12807, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12817 = _12806.y;
            float _12826 = 0.0f;
            do
            {
                if (_12817 < 0.00313066993840038776397705078125f)
                {
                    _12826 = _12817 * 12.9200000762939453125f;
                    break;
                }
                _12826 = mad(pow(_12817, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12827 = _12806.z;
            float _12836 = 0.0f;
            do
            {
                if (_12827 < 0.00313066993840038776397705078125f)
                {
                    _12836 = _12827 * 12.9200000762939453125f;
                    break;
                }
                _12836 = mad(pow(_12827, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float3 _12837 = float3(_12816, _12826, _12836);
            float3 _12843 = clamp(mad(_12805, float3(min((asuint(_12837) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12837), 0.0f.xxx, 1.0f.xxx);
            uint _12857 = ((uint(_12843.x * 127.0f) << 0u) | (uint(_12843.y * 127.0f) << 7u)) | (uint(_12843.z * 63.0f) << 14u);
            float3 _12862 = clamp(_8429.xyz, 0.0f.xxx, 1.0f.xxx);
            float _12863 = _12862.x;
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
            float _12873 = _12862.y;
            float _12882 = 0.0f;
            do
            {
                if (_12873 < 0.00313066993840038776397705078125f)
                {
                    _12882 = _12873 * 12.9200000762939453125f;
                    break;
                }
                _12882 = mad(pow(_12873, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12883 = _12862.z;
            float _12892 = 0.0f;
            do
            {
                if (_12883 < 0.00313066993840038776397705078125f)
                {
                    _12892 = _12883 * 12.9200000762939453125f;
                    break;
                }
                _12892 = mad(pow(_12883, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float3 _12893 = float3(_12872, _12882, _12892);
            float3 _12899 = clamp(mad(_12805, float3(min((asuint(_12893) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12893), 0.0f.xxx, 1.0f.xxx);
            uint _12921 = ((0u | ((_11710 & 65535u) << 0u)) & 65535u) | (((((_12857 >> 12u) & 255u) << 8u) | 0u) << 16u);
            uint _12936 = 0u;
            uint _12937 = 0u;
            uint _12938 = 0u;
            if (_11775 < 3u)
            {
                _12936 = (_11775 == 2u) ? _12921 : 0u;
                _12937 = (_11775 == 1u) ? _12921 : _11773;
                _12938 = (_11775 == 0u) ? _12921 : _11774;
            }
            else
            {
                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 - 3u)] = _12921;
                _12936 = 0u;
                _12937 = _11773;
                _12938 = _11774;
            }
            uint _12939 = _11775 + 1u;
            uint _12941 = (((uint(_12899.x * 127.0f) << 0u) | (uint(_12899.y * 127.0f) << 7u)) | (uint(_12899.z * 63.0f) << 14u)) | ((_12857 & 4095u) << 20u);
            uint _12956 = 0u;
            uint _12957 = 0u;
            uint _12958 = 0u;
            if (_12939 < 3u)
            {
                _12956 = (_12939 == 2u) ? _12941 : _12936;
                _12957 = (_12939 == 1u) ? _12941 : _12937;
                _12958 = (_12939 == 0u) ? _12941 : _12938;
            }
            else
            {
                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 + 4294967294u)] = _12941;
                _12956 = _12936;
                _12957 = _12937;
                _12958 = _12938;
            }
            _12960 = 0u;
            _12961 = _12956;
            _12962 = _12957;
            _12963 = _12958;
            _12964 = _11775 + 2u;
        }
        else
        {
            uint _12796 = 0u;
            uint _12797 = 0u;
            uint _12798 = 0u;
            uint _12799 = 0u;
            uint _12800 = 0u;
            if (_11716 && true)
            {
                uint _12026 = (_11785 & 4294967293u) | 2u;
                uint _12033 = ((0u | ((_11710 & 65535u) << 0u)) & 65535u) | ((_11086 & 7u) << 16u);
                uint _12791 = 0u;
                uint _12792 = 0u;
                uint _12793 = 0u;
                uint _12794 = 0u;
                uint _12795 = 0u;
                [branch]
                if (_11086 == 0u)
                {
                    uint _12772 = _12033 | ((_12026 & 2047u) << 19u);
                    uint _12787 = 0u;
                    uint _12788 = 0u;
                    uint _12789 = 0u;
                    if (_11775 < 3u)
                    {
                        _12787 = (_11775 == 2u) ? _12772 : 0u;
                        _12788 = (_11775 == 1u) ? _12772 : _11773;
                        _12789 = (_11775 == 0u) ? _12772 : _11774;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 - 3u)] = _12772;
                        _12787 = 0u;
                        _12788 = _11773;
                        _12789 = _11774;
                    }
                    _12791 = _12026;
                    _12792 = _12787;
                    _12793 = _12788;
                    _12794 = _12789;
                    _12795 = _11775 + 1u;
                }
                else
                {
                    uint _12765 = 0u;
                    uint _12766 = 0u;
                    uint _12767 = 0u;
                    uint _12768 = 0u;
                    uint _12769 = 0u;
                    if (_11086 == 1u)
                    {
                        float _12641 = _8401 - 0.5f;
                        float _12642 = _12641 * 0.0078740157186985015869140625f;
                        float3 _12645 = clamp(_10841.xyz, 0.0f.xxx, 1.0f.xxx);
                        float _12646 = _12645.x;
                        float _12655 = 0.0f;
                        do
                        {
                            if (_12646 < 0.00313066993840038776397705078125f)
                            {
                                _12655 = _12646 * 12.9200000762939453125f;
                                break;
                            }
                            _12655 = mad(pow(_12646, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12656 = _12645.y;
                        float _12665 = 0.0f;
                        do
                        {
                            if (_12656 < 0.00313066993840038776397705078125f)
                            {
                                _12665 = _12656 * 12.9200000762939453125f;
                                break;
                            }
                            _12665 = mad(pow(_12656, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12666 = _12645.z;
                        float _12675 = 0.0f;
                        do
                        {
                            if (_12666 < 0.00313066993840038776397705078125f)
                            {
                                _12675 = _12666 * 12.9200000762939453125f;
                                break;
                            }
                            _12675 = mad(pow(_12666, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float3 _12676 = float3(_12655, _12665, _12675);
                        float3 _12682 = clamp(mad(float3(_12642, _12642, _12641 * 0.01587301678955554962158203125f), float3(min((asuint(_12676) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12676), 0.0f.xxx, 1.0f.xxx);
                        uint _12708 = _12033 | 0u;
                        uint _12723 = 0u;
                        uint _12724 = 0u;
                        uint _12725 = 0u;
                        if (_11775 < 3u)
                        {
                            _12723 = (_11775 == 2u) ? _12708 : 0u;
                            _12724 = (_11775 == 1u) ? _12708 : _11773;
                            _12725 = (_11775 == 0u) ? _12708 : _11774;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 - 3u)] = _12708;
                            _12723 = 0u;
                            _12724 = _11773;
                            _12725 = _11774;
                        }
                        uint _12726 = _11775 + 1u;
                        uint _12727 = (((uint(_12682.x * 127.0f) << 0u) | (uint(_12682.y * 127.0f) << 7u)) | (uint(_12682.z * 63.0f) << 14u)) | 0u;
                        uint _12742 = 0u;
                        uint _12743 = 0u;
                        uint _12744 = 0u;
                        if (_12726 < 3u)
                        {
                            _12742 = (_12726 == 2u) ? _12727 : _12723;
                            _12743 = (_12726 == 1u) ? _12727 : _12724;
                            _12744 = (_12726 == 0u) ? _12727 : _12725;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 + 4294967294u)] = _12727;
                            _12742 = _12723;
                            _12743 = _12724;
                            _12744 = _12725;
                        }
                        uint _12745 = _11775 + 2u;
                        uint _12746 = (((0u | (uint(clamp(_10844, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_10848, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u) | 0u;
                        uint _12761 = 0u;
                        uint _12762 = 0u;
                        uint _12763 = 0u;
                        if (_12745 < 3u)
                        {
                            _12761 = (_12745 == 2u) ? _12746 : _12742;
                            _12762 = (_12745 == 1u) ? _12746 : _12743;
                            _12763 = (_12745 == 0u) ? _12746 : _12744;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 + 4294967295u)] = _12746;
                            _12761 = _12742;
                            _12762 = _12743;
                            _12763 = _12744;
                        }
                        _12765 = 0u;
                        _12766 = _12761;
                        _12767 = _12762;
                        _12768 = _12763;
                        _12769 = _11775 + 3u;
                    }
                    else
                    {
                        uint _12635 = 0u;
                        uint _12636 = 0u;
                        uint _12637 = 0u;
                        uint _12638 = 0u;
                        uint _12639 = 0u;
                        if (_11086 == 2u)
                        {
                            float _12426 = _8401 - 0.5f;
                            float _12427 = _12426 * 0.0078740157186985015869140625f;
                            float3 _12429 = float3(_12427, _12427, _12426 * 0.01587301678955554962158203125f);
                            float3 _12430 = clamp(_10841.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _12431 = _12430.x;
                            float _12440 = 0.0f;
                            do
                            {
                                if (_12431 < 0.00313066993840038776397705078125f)
                                {
                                    _12440 = _12431 * 12.9200000762939453125f;
                                    break;
                                }
                                _12440 = mad(pow(_12431, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12441 = _12430.y;
                            float _12450 = 0.0f;
                            do
                            {
                                if (_12441 < 0.00313066993840038776397705078125f)
                                {
                                    _12450 = _12441 * 12.9200000762939453125f;
                                    break;
                                }
                                _12450 = mad(pow(_12441, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12451 = _12430.z;
                            float _12460 = 0.0f;
                            do
                            {
                                if (_12451 < 0.00313066993840038776397705078125f)
                                {
                                    _12460 = _12451 * 12.9200000762939453125f;
                                    break;
                                }
                                _12460 = mad(pow(_12451, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12461 = float3(_12440, _12450, _12460);
                            float3 _12467 = clamp(mad(_12429, float3(min((asuint(_12461) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12461), 0.0f.xxx, 1.0f.xxx);
                            float3 _12483 = clamp(_8429.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _12484 = _12483.x;
                            float _12493 = 0.0f;
                            do
                            {
                                if (_12484 < 0.00313066993840038776397705078125f)
                                {
                                    _12493 = _12484 * 12.9200000762939453125f;
                                    break;
                                }
                                _12493 = mad(pow(_12484, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12494 = _12483.y;
                            float _12503 = 0.0f;
                            do
                            {
                                if (_12494 < 0.00313066993840038776397705078125f)
                                {
                                    _12503 = _12494 * 12.9200000762939453125f;
                                    break;
                                }
                                _12503 = mad(pow(_12494, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12504 = _12483.z;
                            float _12513 = 0.0f;
                            do
                            {
                                if (_12504 < 0.00313066993840038776397705078125f)
                                {
                                    _12513 = _12504 * 12.9200000762939453125f;
                                    break;
                                }
                                _12513 = mad(pow(_12504, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12514 = float3(_12493, _12503, _12513);
                            float3 _12520 = clamp(mad(_12429, float3(min((asuint(_12514) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12514), 0.0f.xxx, 1.0f.xxx);
                            float _12540 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12540 = 0.0f;
                                    break;
                                }
                                _12540 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12546 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12546 = 0.0f;
                                    break;
                                }
                                _12546 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12552 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12552 = 0.0f;
                                    break;
                                }
                                _12552 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12553 = float3(_12540, _12546, _12552);
                            float3 _12559 = clamp(mad(_12429, float3(min((asuint(_12553) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12553), 0.0f.xxx, 1.0f.xxx);
                            uint _12573 = ((uint(_12559.x * 127.0f) << 0u) | (uint(_12559.y * 127.0f) << 7u)) | (uint(_12559.z * 63.0f) << 14u);
                            uint _12574 = _12033 | 0u;
                            uint _12589 = 0u;
                            uint _12590 = 0u;
                            uint _12591 = 0u;
                            if (_11775 < 3u)
                            {
                                _12589 = (_11775 == 2u) ? _12574 : 0u;
                                _12590 = (_11775 == 1u) ? _12574 : _11773;
                                _12591 = (_11775 == 0u) ? _12574 : _11774;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 - 3u)] = _12574;
                                _12589 = 0u;
                                _12590 = _11773;
                                _12591 = _11774;
                            }
                            uint _12592 = _11775 + 1u;
                            uint _12595 = (((uint(_12467.x * 127.0f) << 0u) | (uint(_12467.y * 127.0f) << 7u)) | (uint(_12467.z * 63.0f) << 14u)) | ((_12573 & 1047552u) << 10u);
                            uint _12610 = 0u;
                            uint _12611 = 0u;
                            uint _12612 = 0u;
                            if (_12592 < 3u)
                            {
                                _12610 = (_12592 == 2u) ? _12595 : _12589;
                                _12611 = (_12592 == 1u) ? _12595 : _12590;
                                _12612 = (_12592 == 0u) ? _12595 : _12591;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 + 4294967294u)] = _12595;
                                _12610 = _12589;
                                _12611 = _12590;
                                _12612 = _12591;
                            }
                            uint _12613 = _11775 + 2u;
                            uint _12616 = (((uint(_12520.x * 127.0f) << 0u) | (uint(_12520.y * 127.0f) << 7u)) | (uint(_12520.z * 63.0f) << 14u)) | ((_12573 & 1023u) << 20u);
                            uint _12631 = 0u;
                            uint _12632 = 0u;
                            uint _12633 = 0u;
                            if (_12613 < 3u)
                            {
                                _12631 = (_12613 == 2u) ? _12616 : _12610;
                                _12632 = (_12613 == 1u) ? _12616 : _12611;
                                _12633 = (_12613 == 0u) ? _12616 : _12612;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 + 4294967295u)] = _12616;
                                _12631 = _12610;
                                _12632 = _12611;
                                _12633 = _12612;
                            }
                            _12635 = 0u;
                            _12636 = _12631;
                            _12637 = _12632;
                            _12638 = _12633;
                            _12639 = _11775 + 3u;
                        }
                        else
                        {
                            uint _12420 = 0u;
                            uint _12421 = 0u;
                            uint _12422 = 0u;
                            uint _12423 = 0u;
                            uint _12424 = 0u;
                            if ((_11086 == 3u) || (_11086 == 5u))
                            {
                                float _12230 = _8401 - 0.5f;
                                float _12231 = _12230 * 0.0078740157186985015869140625f;
                                float3 _12233 = float3(_12231, _12231, _12230 * 0.01587301678955554962158203125f);
                                float3 _12234 = clamp(_10841.xyz, 0.0f.xxx, 1.0f.xxx);
                                float _12235 = _12234.x;
                                float _12244 = 0.0f;
                                do
                                {
                                    if (_12235 < 0.00313066993840038776397705078125f)
                                    {
                                        _12244 = _12235 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12244 = mad(pow(_12235, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _12245 = _12234.y;
                                float _12254 = 0.0f;
                                do
                                {
                                    if (_12245 < 0.00313066993840038776397705078125f)
                                    {
                                        _12254 = _12245 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12254 = mad(pow(_12245, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _12255 = _12234.z;
                                float _12264 = 0.0f;
                                do
                                {
                                    if (_12255 < 0.00313066993840038776397705078125f)
                                    {
                                        _12264 = _12255 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12264 = mad(pow(_12255, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float3 _12265 = float3(_12244, _12254, _12264);
                                float3 _12271 = clamp(mad(_12233, float3(min((asuint(_12265) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12265), 0.0f.xxx, 1.0f.xxx);
                                float3 _12287 = clamp(_8429.xyz, 0.0f.xxx, 1.0f.xxx);
                                float _12288 = _12287.x;
                                float _12297 = 0.0f;
                                do
                                {
                                    if (_12288 < 0.00313066993840038776397705078125f)
                                    {
                                        _12297 = _12288 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12297 = mad(pow(_12288, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _12298 = _12287.y;
                                float _12307 = 0.0f;
                                do
                                {
                                    if (_12298 < 0.00313066993840038776397705078125f)
                                    {
                                        _12307 = _12298 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12307 = mad(pow(_12298, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _12308 = _12287.z;
                                float _12317 = 0.0f;
                                do
                                {
                                    if (_12308 < 0.00313066993840038776397705078125f)
                                    {
                                        _12317 = _12308 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _12317 = mad(pow(_12308, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float3 _12318 = float3(_12297, _12307, _12317);
                                float3 _12324 = clamp(mad(_12233, float3(min((asuint(_12318) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12318), 0.0f.xxx, 1.0f.xxx);
                                uint _12343 = spvPackHalf2x16(0.0f.xx);
                                uint _12351 = (((_12343 << 15u) & 1072693248u) | ((_12343 << 5u) & 1047552u)) | ((_12343 >> 5u) & 1023u);
                                uint _12361 = (_12033 | ((uint(clamp(clamp(1.0f - abs(0.0f), 0.0f, 1.0f), 0.0f, 1.0f) * 127.0f) & 127u) << 19u)) | (((_12351 >> 24u) & 63u) << 26u);
                                uint _12376 = 0u;
                                uint _12377 = 0u;
                                uint _12378 = 0u;
                                if (_11775 < 3u)
                                {
                                    _12376 = (_11775 == 2u) ? _12361 : 0u;
                                    _12377 = (_11775 == 1u) ? _12361 : _11773;
                                    _12378 = (_11775 == 0u) ? _12361 : _11774;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 - 3u)] = _12361;
                                    _12376 = 0u;
                                    _12377 = _11773;
                                    _12378 = _11774;
                                }
                                uint _12379 = _11775 + 1u;
                                uint _12381 = (((uint(_12271.x * 127.0f) << 0u) | (uint(_12271.y * 127.0f) << 7u)) | (uint(_12271.z * 63.0f) << 14u)) | ((_12351 & 4095u) << 20u);
                                uint _12396 = 0u;
                                uint _12397 = 0u;
                                uint _12398 = 0u;
                                if (_12379 < 3u)
                                {
                                    _12396 = (_12379 == 2u) ? _12381 : _12376;
                                    _12397 = (_12379 == 1u) ? _12381 : _12377;
                                    _12398 = (_12379 == 0u) ? _12381 : _12378;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 + 4294967294u)] = _12381;
                                    _12396 = _12376;
                                    _12397 = _12377;
                                    _12398 = _12378;
                                }
                                uint _12399 = _11775 + 2u;
                                uint _12401 = (((uint(_12324.x * 127.0f) << 0u) | (uint(_12324.y * 127.0f) << 7u)) | (uint(_12324.z * 63.0f) << 14u)) | (((_12351 >> 12u) & 4095u) << 20u);
                                uint _12416 = 0u;
                                uint _12417 = 0u;
                                uint _12418 = 0u;
                                if (_12399 < 3u)
                                {
                                    _12416 = (_12399 == 2u) ? _12401 : _12396;
                                    _12417 = (_12399 == 1u) ? _12401 : _12397;
                                    _12418 = (_12399 == 0u) ? _12401 : _12398;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 + 4294967295u)] = _12401;
                                    _12416 = _12396;
                                    _12417 = _12397;
                                    _12418 = _12398;
                                }
                                _12420 = 0u;
                                _12421 = _12416;
                                _12422 = _12417;
                                _12423 = _12418;
                                _12424 = _11775 + 3u;
                            }
                            else
                            {
                                bool _12052 = _11086 == 4u;
                                uint _12222 = 0u;
                                uint _12223 = 0u;
                                uint _12224 = 0u;
                                uint _12225 = 0u;
                                if (_12052)
                                {
                                    float _12056 = _8401 - 0.5f;
                                    float _12057 = _12056 * 0.0078740157186985015869140625f;
                                    float3 _12059 = float3(_12057, _12057, _12056 * 0.01587301678955554962158203125f);
                                    float3 _12060 = clamp(_10841.xyz, 0.0f.xxx, 1.0f.xxx);
                                    float _12061 = _12060.x;
                                    float _12070 = 0.0f;
                                    do
                                    {
                                        if (_12061 < 0.00313066993840038776397705078125f)
                                        {
                                            _12070 = _12061 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _12070 = mad(pow(_12061, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _12071 = _12060.y;
                                    float _12080 = 0.0f;
                                    do
                                    {
                                        if (_12071 < 0.00313066993840038776397705078125f)
                                        {
                                            _12080 = _12071 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _12080 = mad(pow(_12071, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _12081 = _12060.z;
                                    float _12090 = 0.0f;
                                    do
                                    {
                                        if (_12081 < 0.00313066993840038776397705078125f)
                                        {
                                            _12090 = _12081 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _12090 = mad(pow(_12081, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float3 _12091 = float3(_12070, _12080, _12090);
                                    float3 _12097 = clamp(mad(_12059, float3(min((asuint(_12091) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12091), 0.0f.xxx, 1.0f.xxx);
                                    float3 _12113 = clamp(_8429.xyz, 0.0f.xxx, 1.0f.xxx);
                                    float _12114 = _12113.x;
                                    float _12123 = 0.0f;
                                    do
                                    {
                                        if (_12114 < 0.00313066993840038776397705078125f)
                                        {
                                            _12123 = _12114 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _12123 = mad(pow(_12114, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _12124 = _12113.y;
                                    float _12133 = 0.0f;
                                    do
                                    {
                                        if (_12124 < 0.00313066993840038776397705078125f)
                                        {
                                            _12133 = _12124 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _12133 = mad(pow(_12124, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _12134 = _12113.z;
                                    float _12143 = 0.0f;
                                    do
                                    {
                                        if (_12134 < 0.00313066993840038776397705078125f)
                                        {
                                            _12143 = _12134 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _12143 = mad(pow(_12134, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float3 _12144 = float3(_12123, _12133, _12143);
                                    float3 _12150 = clamp(mad(_12059, float3(min((asuint(_12144) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12144), 0.0f.xxx, 1.0f.xxx);
                                    uint _12165 = _12033 | 0u;
                                    uint _12180 = 0u;
                                    uint _12181 = 0u;
                                    uint _12182 = 0u;
                                    if (_11775 < 3u)
                                    {
                                        _12180 = (_11775 == 2u) ? _12165 : 0u;
                                        _12181 = (_11775 == 1u) ? _12165 : _11773;
                                        _12182 = (_11775 == 0u) ? _12165 : _11774;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 - 3u)] = _12165;
                                        _12180 = 0u;
                                        _12181 = _11773;
                                        _12182 = _11774;
                                    }
                                    uint _12183 = _11775 + 1u;
                                    uint _12184 = (((uint(_12097.x * 127.0f) << 0u) | (uint(_12097.y * 127.0f) << 7u)) | (uint(_12097.z * 63.0f) << 14u)) | 0u;
                                    uint _12199 = 0u;
                                    uint _12200 = 0u;
                                    uint _12201 = 0u;
                                    if (_12183 < 3u)
                                    {
                                        _12199 = (_12183 == 2u) ? _12184 : _12180;
                                        _12200 = (_12183 == 1u) ? _12184 : _12181;
                                        _12201 = (_12183 == 0u) ? _12184 : _12182;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 + 4294967294u)] = _12184;
                                        _12199 = _12180;
                                        _12200 = _12181;
                                        _12201 = _12182;
                                    }
                                    uint _12202 = _11775 + 2u;
                                    uint _12203 = (((uint(_12150.x * 127.0f) << 0u) | (uint(_12150.y * 127.0f) << 7u)) | (uint(_12150.z * 63.0f) << 14u)) | 0u;
                                    uint _12218 = 0u;
                                    uint _12219 = 0u;
                                    uint _12220 = 0u;
                                    if (_12202 < 3u)
                                    {
                                        _12218 = (_12202 == 2u) ? _12203 : _12199;
                                        _12219 = (_12202 == 1u) ? _12203 : _12200;
                                        _12220 = (_12202 == 0u) ? _12203 : _12201;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 + 4294967295u)] = _12203;
                                        _12218 = _12199;
                                        _12219 = _12200;
                                        _12220 = _12201;
                                    }
                                    _12222 = _12218;
                                    _12223 = _12219;
                                    _12224 = _12220;
                                    _12225 = _11775 + 3u;
                                }
                                else
                                {
                                    _12222 = 0u;
                                    _12223 = _11773;
                                    _12224 = _11774;
                                    _12225 = _11775;
                                }
                                _12420 = _12052 ? 0u : _12026;
                                _12421 = _12222;
                                _12422 = _12223;
                                _12423 = _12224;
                                _12424 = _12225;
                            }
                            _12635 = _12420;
                            _12636 = _12421;
                            _12637 = _12422;
                            _12638 = _12423;
                            _12639 = _12424;
                        }
                        _12765 = _12635;
                        _12766 = _12636;
                        _12767 = _12637;
                        _12768 = _12638;
                        _12769 = _12639;
                    }
                    _12791 = _12765;
                    _12792 = _12766;
                    _12793 = _12767;
                    _12794 = _12768;
                    _12795 = _12769;
                }
                _12796 = _12791;
                _12797 = _12792;
                _12798 = _12793;
                _12799 = _12794;
                _12800 = _12795;
            }
            else
            {
                uint _12020 = 0u;
                uint _12021 = 0u;
                uint _12022 = 0u;
                uint _12023 = 0u;
                uint _12024 = 0u;
                if (_11718)
                {
                    uint _12001 = ((0u | ((_11710 & 65535u) << 0u)) & 65535u) | ((0u | (uint(clamp(_10844, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u);
                    uint _12016 = 0u;
                    uint _12017 = 0u;
                    uint _12018 = 0u;
                    if (_11775 < 3u)
                    {
                        _12016 = (_11775 == 2u) ? _12001 : 0u;
                        _12017 = (_11775 == 1u) ? _12001 : _11773;
                        _12018 = (_11775 == 0u) ? _12001 : _11774;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 - 3u)] = _12001;
                        _12016 = 0u;
                        _12017 = _11773;
                        _12018 = _11774;
                    }
                    _12020 = _11785;
                    _12021 = _12016;
                    _12022 = _12017;
                    _12023 = _12018;
                    _12024 = _11775 + 1u;
                }
                else
                {
                    uint _11986 = 0u;
                    uint _11987 = 0u;
                    uint _11988 = 0u;
                    uint _11989 = 0u;
                    uint _11990 = 0u;
                    if (_11717)
                    {
                        uint _11967 = (0u | ((_11710 & 65535u) << 0u)) & 65535u;
                        uint _11982 = 0u;
                        uint _11983 = 0u;
                        uint _11984 = 0u;
                        if (_11775 < 3u)
                        {
                            _11982 = (_11775 == 2u) ? _11967 : 0u;
                            _11983 = (_11775 == 1u) ? _11967 : _11773;
                            _11984 = (_11775 == 0u) ? _11967 : _11774;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 - 3u)] = _11967;
                            _11982 = 0u;
                            _11983 = _11773;
                            _11984 = _11774;
                        }
                        _11986 = _11785;
                        _11987 = _11982;
                        _11988 = _11983;
                        _11989 = _11984;
                        _11990 = _11775 + 1u;
                    }
                    else
                    {
                        uint _11959 = 0u;
                        uint _11960 = 0u;
                        uint _11961 = 0u;
                        uint _11962 = 0u;
                        uint _11963 = 0u;
                        if (_11714)
                        {
                            float _11829 = _8401 - 0.5f;
                            float _11830 = _11829 * 0.0078740157186985015869140625f;
                            float3 _11832 = float3(_11830, _11830, _11829 * 0.01587301678955554962158203125f);
                            float3 _11833 = clamp(_10841.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _11834 = _11833.x;
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
                            float _11844 = _11833.y;
                            float _11853 = 0.0f;
                            do
                            {
                                if (_11844 < 0.00313066993840038776397705078125f)
                                {
                                    _11853 = _11844 * 12.9200000762939453125f;
                                    break;
                                }
                                _11853 = mad(pow(_11844, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _11854 = _11833.z;
                            float _11863 = 0.0f;
                            do
                            {
                                if (_11854 < 0.00313066993840038776397705078125f)
                                {
                                    _11863 = _11854 * 12.9200000762939453125f;
                                    break;
                                }
                                _11863 = mad(pow(_11854, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _11864 = float3(_11843, _11853, _11863);
                            float3 _11870 = clamp(mad(_11832, float3(min((asuint(_11864) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11864), 0.0f.xxx, 1.0f.xxx);
                            uint _11884 = ((uint(_11870.x * 127.0f) << 0u) | (uint(_11870.y * 127.0f) << 7u)) | (uint(_11870.z * 63.0f) << 14u);
                            float3 _11892 = clamp(float3(_10850, 0.0f, _10844), 0.0f.xxx, 1.0f.xxx);
                            float3 _11898 = clamp(mad(_11832, float3(min((asuint(_11892) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11892), 0.0f.xxx, 1.0f.xxx);
                            uint _11920 = ((0u | ((_11710 & 65535u) << 0u)) & 65535u) | (((((_11884 >> 12u) & 255u) << 8u) | uint(clamp(_10848, 0.0f, 1.0f) * 255.0f)) << 16u);
                            uint _11935 = 0u;
                            uint _11936 = 0u;
                            uint _11937 = 0u;
                            if (_11775 < 3u)
                            {
                                _11935 = (_11775 == 2u) ? _11920 : 0u;
                                _11936 = (_11775 == 1u) ? _11920 : _11773;
                                _11937 = (_11775 == 0u) ? _11920 : _11774;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 - 3u)] = _11920;
                                _11935 = 0u;
                                _11936 = _11773;
                                _11937 = _11774;
                            }
                            uint _11938 = _11775 + 1u;
                            uint _11940 = ((_11884 & 4095u) << 20u) | (((uint(_11898.x * 127.0f) << 0u) | (uint(_11898.y * 127.0f) << 7u)) | (uint(_11898.z * 63.0f) << 14u));
                            uint _11955 = 0u;
                            uint _11956 = 0u;
                            uint _11957 = 0u;
                            if (_11938 < 3u)
                            {
                                _11955 = (_11938 == 2u) ? _11940 : _11935;
                                _11956 = (_11938 == 1u) ? _11940 : _11936;
                                _11957 = (_11938 == 0u) ? _11940 : _11937;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 + 4294967294u)] = _11940;
                                _11955 = _11935;
                                _11956 = _11936;
                                _11957 = _11937;
                            }
                            _11959 = 0u;
                            _11960 = _11955;
                            _11961 = _11956;
                            _11962 = _11957;
                            _11963 = _11775 + 2u;
                        }
                        else
                        {
                            uint _11809 = (_11785 & 4194303u) | ((((spvPackHalf2x16(float2(1.0f, 0.0f)) >> 5u) & 1023u) & 1023u) << 22u);
                            uint _11824 = 0u;
                            uint _11825 = 0u;
                            uint _11826 = 0u;
                            if (_11775 < 3u)
                            {
                                _11824 = (_11775 == 2u) ? _11809 : 0u;
                                _11825 = (_11775 == 1u) ? _11809 : _11773;
                                _11826 = (_11775 == 0u) ? _11809 : _11774;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _11775 - 3u)] = _11809;
                                _11824 = 0u;
                                _11825 = _11773;
                                _11826 = _11774;
                            }
                            _11959 = _11809;
                            _11960 = _11824;
                            _11961 = _11825;
                            _11962 = _11826;
                            _11963 = _11775 + 1u;
                        }
                        _11986 = _11959;
                        _11987 = _11960;
                        _11988 = _11961;
                        _11989 = _11962;
                        _11990 = _11963;
                    }
                    _12020 = _11986;
                    _12021 = _11987;
                    _12022 = _11988;
                    _12023 = _11989;
                    _12024 = _11990;
                }
                _12796 = _12020;
                _12797 = _12021;
                _12798 = _12022;
                _12799 = _12023;
                _12800 = _12024;
            }
            _12960 = _12796;
            _12961 = _12797;
            _12962 = _12798;
            _12963 = _12799;
            _12964 = _12800;
        }
        uint _13778 = 0u;
        uint _13779 = 0u;
        uint _13780 = 0u;
        uint _13781 = 0u;
        uint _13782 = 0u;
        if (((!_11786) && _11725) && (_11086 == 0u))
        {
            uint _13773 = 0u;
            uint _13774 = 0u;
            uint _13775 = 0u;
            uint _13776 = 0u;
            uint _13777 = 0u;
            switch ((_12960 >> 11u) & 7u)
            {
                case 0u:
                {
                    float _13268 = _8401 - 0.5f;
                    float _13269 = _13268 * 0.0078740157186985015869140625f;
                    float _13270 = _13268 * 0.01587301678955554962158203125f;
                    float3 _13271 = float3(_13269, _13269, _13270);
                    float3 _13272 = clamp(_10841.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _13273 = _13272.x;
                    float _13282 = 0.0f;
                    do
                    {
                        if (_13273 < 0.00313066993840038776397705078125f)
                        {
                            _13282 = _13273 * 12.9200000762939453125f;
                            break;
                        }
                        _13282 = mad(pow(_13273, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13283 = _13272.y;
                    float _13292 = 0.0f;
                    do
                    {
                        if (_13283 < 0.00313066993840038776397705078125f)
                        {
                            _13292 = _13283 * 12.9200000762939453125f;
                            break;
                        }
                        _13292 = mad(pow(_13283, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13293 = _13272.z;
                    float _13302 = 0.0f;
                    do
                    {
                        if (_13293 < 0.00313066993840038776397705078125f)
                        {
                            _13302 = _13293 * 12.9200000762939453125f;
                            break;
                        }
                        _13302 = mad(pow(_13293, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float3 _13303 = float3(_13282, _13292, _13302);
                    float3 _13309 = clamp(mad(_13271, float3(min((asuint(_13303) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13303), 0.0f.xxx, 1.0f.xxx);
                    float3 _13325 = clamp(_8429.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _13326 = _13325.x;
                    float _13335 = 0.0f;
                    do
                    {
                        if (_13326 < 0.00313066993840038776397705078125f)
                        {
                            _13335 = _13326 * 12.9200000762939453125f;
                            break;
                        }
                        _13335 = mad(pow(_13326, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13336 = _13325.y;
                    float _13345 = 0.0f;
                    do
                    {
                        if (_13336 < 0.00313066993840038776397705078125f)
                        {
                            _13345 = _13336 * 12.9200000762939453125f;
                            break;
                        }
                        _13345 = mad(pow(_13336, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13346 = _13325.z;
                    float _13355 = 0.0f;
                    do
                    {
                        if (_13346 < 0.00313066993840038776397705078125f)
                        {
                            _13355 = _13346 * 12.9200000762939453125f;
                            break;
                        }
                        _13355 = mad(pow(_13346, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float3 _13356 = float3(_13335, _13345, _13355);
                    float3 _13362 = clamp(mad(_13271, float3(min((asuint(_13356) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13356), 0.0f.xxx, 1.0f.xxx);
                    uint _13376 = ((uint(_13362.x * 127.0f) << 0u) | (uint(_13362.y * 127.0f) << 7u)) | (uint(_13362.z * 63.0f) << 14u);
                    uint _13380 = (((((uint(_13309.x * 127.0f) << 0u) | (uint(_13309.y * 127.0f) << 7u)) | (uint(_13309.z * 63.0f) << 14u)) << 12u) & 4294963200u) | (_13376 & 4095u);
                    uint _13397 = 0u;
                    uint _13398 = 0u;
                    uint _13399 = 0u;
                    if (_12964 < 3u)
                    {
                        _13397 = (_12964 == 2u) ? _13380 : _12961;
                        _13398 = (_12964 == 1u) ? _13380 : _12962;
                        _13399 = (_12964 == 0u) ? _13380 : _12963;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _12964 - 3u)] = _13380;
                        _13397 = _12961;
                        _13398 = _12962;
                        _13399 = _12963;
                    }
                    uint _13400 = _12964 + 1u;
                    uint _13409 = ((_13376 >> 12u) & 255u) | ((0u | (uint(clamp((_10850 + 1.0f) * 0.5f, 0.0f, 1.0f) * 255.0f) << 16u)) | 2130706432u);
                    uint _13424 = 0u;
                    uint _13425 = 0u;
                    uint _13426 = 0u;
                    if (_13400 < 3u)
                    {
                        _13424 = (_13400 == 2u) ? _13409 : _13397;
                        _13425 = (_13400 == 1u) ? _13409 : _13398;
                        _13426 = (_13400 == 0u) ? _13409 : _13399;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _12964 + 4294967294u)] = _13409;
                        _13424 = _13397;
                        _13425 = _13398;
                        _13426 = _13399;
                    }
                    uint _13427 = _12964 + 2u;
                    uint _13478 = 0u;
                    uint _13479 = 0u;
                    uint _13480 = 0u;
                    uint _13481 = 0u;
                    if ((((_12960 >> 7u) & 1u) != 0u) || (((_12960 >> 6u) & 1u) != 0u))
                    {
                        bool3 _13440 = (max(0.0f, max(0.0f, 0.0f)) > 0.0f).xxx;
                        float3 _13441 = float3(_13440.x ? 0.0f.xxx.x : 1.0f.xxx.x, _13440.y ? 0.0f.xxx.y : 1.0f.xxx.y, _13440.z ? 0.0f.xxx.z : 1.0f.xxx.z);
                        float3 _13445 = mad(float3(_560, dot(_13441, float3(2.0f, 0.0f, -2.0f)), dot(_13441, float3(-1.0f, 2.0f, -1.0f))), 0.25f.xxx, float3(0.0f, 0.5f, 0.5f));
                        uint _13459 = 0u | ((((uint(clamp(_13445.y, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13445.z, 0.0f, 1.0f) * 255.0f) << 8u)) | 0u) | 0u);
                        uint _13474 = 0u;
                        uint _13475 = 0u;
                        uint _13476 = 0u;
                        if (_13427 < 3u)
                        {
                            _13474 = (_13427 == 2u) ? _13459 : _13424;
                            _13475 = (_13427 == 1u) ? _13459 : _13425;
                            _13476 = (_13427 == 0u) ? _13459 : _13426;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _12964 + 4294967295u)] = _13459;
                            _13474 = _13424;
                            _13475 = _13425;
                            _13476 = _13426;
                        }
                        _13478 = _13474;
                        _13479 = _13475;
                        _13480 = _13476;
                        _13481 = _12964 + 3u;
                    }
                    else
                    {
                        _13478 = _13424;
                        _13479 = _13425;
                        _13480 = _13426;
                        _13481 = _13427;
                    }
                    uint _13483 = (_12960 >> 2u) & 7u;
                    uint _13654 = 0u;
                    uint _13655 = 0u;
                    uint _13656 = 0u;
                    uint _13657 = 0u;
                    uint _13658 = 0u;
                    uint _13659 = 0u;
                    if (_13483 != 0u)
                    {
                        uint _13578 = 0u;
                        uint _13579 = 0u;
                        if (_13483 != 4u)
                        {
                            uint _13492 = (_11087 & 4294967292u) | (_13483 & 3u);
                            uint _13526 = 0u;
                            if (_13483 == 1u)
                            {
                                _13526 = (_13492 & 3u) | (uint(clamp(1.0f - abs(0.0f), 0.0f, 1.0f) * 255.0f) << 2u);
                            }
                            else
                            {
                                uint _13517 = 0u;
                                if (_13483 == 3u)
                                {
                                    _13517 = ((_13492 & 3u) | (uint(mad(0.0f, 255.0f, 0.5f)) << 24u)) | 0u;
                                }
                                else
                                {
                                    uint _13504 = (spvPackHalf2x16(0.0f.xx) >> 5u) & 1023u;
                                    _13517 = (_13492 & 3u) | (((_13504 << 22u) | (_13504 << 12u)) | (_13504 << 2u));
                                }
                                _13526 = _13517;
                            }
                            float3 _13532 = clamp(float4(_10841, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                            float _13533 = _13532.x;
                            float _13542 = 0.0f;
                            do
                            {
                                if (_13533 < 0.00313066993840038776397705078125f)
                                {
                                    _13542 = _13533 * 12.9200000762939453125f;
                                    break;
                                }
                                _13542 = mad(pow(_13533, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _13543 = _13532.y;
                            float _13552 = 0.0f;
                            do
                            {
                                if (_13543 < 0.00313066993840038776397705078125f)
                                {
                                    _13552 = _13543 * 12.9200000762939453125f;
                                    break;
                                }
                                _13552 = mad(pow(_13543, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _13553 = _13532.z;
                            float _13562 = 0.0f;
                            do
                            {
                                if (_13553 < 0.00313066993840038776397705078125f)
                                {
                                    _13562 = _13553 * 12.9200000762939453125f;
                                    break;
                                }
                                _13562 = mad(pow(_13553, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            _13578 = (((uint(clamp(_13542, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13552, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_13562, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                            _13579 = _13526;
                        }
                        else
                        {
                            _13578 = 0u;
                            _13579 = _11087;
                        }
                        uint _13651 = 0u;
                        uint _13652 = 0u;
                        uint _13653 = 0u;
                        if (_13483 == 3u)
                        {
                            uint _13633 = 0u | (((spvPackHalf2x16(0.0f.xx) >> 5u) & 1023u) << 16u);
                            uint _13648 = 0u;
                            uint _13649 = 0u;
                            uint _13650 = 0u;
                            if (_13481 < 3u)
                            {
                                _13648 = (_13481 == 2u) ? _13633 : _13478;
                                _13649 = (_13481 == 1u) ? _13633 : _13479;
                                _13650 = (_13481 == 0u) ? _13633 : _13480;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _13481 - 3u)] = _13633;
                                _13648 = _13478;
                                _13649 = _13479;
                                _13650 = _13480;
                            }
                            _13651 = _13648;
                            _13652 = _13649;
                            _13653 = _13650;
                        }
                        else
                        {
                            float4 _13594 = 0.0f.xxxx;
                            if ((((_12960 >> 10u) & 1u) != 0u) && (_13483 == 2u))
                            {
                                float3 _13592 = max(0.0f.xxx, 0.0f.xxx);
                                _13594 = float4(_13592.x, _13592.y, _13592.z, 0.0f.xxxx.w);
                            }
                            else
                            {
                                _13594 = 0.0f.xxxx;
                            }
                            uint _13611 = (((spvPackHalf2x16(float2(_13594.x, 0.0f)) << 17u) & 4292870144u) | ((spvPackHalf2x16(float2(_13594.y, 0.0f)) << 6u) & 2096128u)) | ((spvPackHalf2x16(float2(_13594.z, 0.0f)) >> 5u) & 1023u);
                            uint _13626 = 0u;
                            uint _13627 = 0u;
                            uint _13628 = 0u;
                            if (_13481 < 3u)
                            {
                                _13626 = (_13481 == 2u) ? _13611 : _13478;
                                _13627 = (_13481 == 1u) ? _13611 : _13479;
                                _13628 = (_13481 == 0u) ? _13611 : _13480;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _13481 - 3u)] = _13611;
                                _13626 = _13478;
                                _13627 = _13479;
                                _13628 = _13480;
                            }
                            _13651 = _13626;
                            _13652 = _13627;
                            _13653 = _13628;
                        }
                        _13654 = _13578;
                        _13655 = _13579;
                        _13656 = _13651;
                        _13657 = _13652;
                        _13658 = _13653;
                        _13659 = _13481 + 1u;
                    }
                    else
                    {
                        _13654 = 0u;
                        _13655 = _11087;
                        _13656 = _13478;
                        _13657 = _13479;
                        _13658 = _13480;
                        _13659 = _13481;
                    }
                    uint _13730 = 0u;
                    uint _13731 = 0u;
                    uint _13732 = 0u;
                    uint _13733 = 0u;
                    if (((_12960 >> 9u) & 1u) != 0u)
                    {
                        float _13670 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13670 = 0.0f;
                                break;
                            }
                            _13670 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13676 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13676 = 0.0f;
                                break;
                            }
                            _13676 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13682 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13682 = 0.0f;
                                break;
                            }
                            _13682 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float3 _13683 = float3(_13670, _13676, _13682);
                        float3 _13689 = clamp(mad(_13271, float3(min((asuint(_13683) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13683), 0.0f.xxx, 1.0f.xxx);
                        uint _13707 = uint(clamp(mad(_13270, 0.0f, 0.0f), 0.0f, 1.0f) * 63.0f);
                        uint _13711 = ((((uint(_13689.x * 127.0f) << 0u) | (uint(_13689.y * 127.0f) << 7u)) | (uint(_13689.z * 63.0f) << 14u)) | (_13707 << 20u)) | (_13707 << 26u);
                        uint _13726 = 0u;
                        uint _13727 = 0u;
                        uint _13728 = 0u;
                        if (_13659 < 3u)
                        {
                            _13726 = (_13659 == 2u) ? _13711 : _13656;
                            _13727 = (_13659 == 1u) ? _13711 : _13657;
                            _13728 = (_13659 == 0u) ? _13711 : _13658;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _13659 - 3u)] = _13711;
                            _13726 = _13656;
                            _13727 = _13657;
                            _13728 = _13658;
                        }
                        _13730 = _13726;
                        _13731 = _13727;
                        _13732 = _13728;
                        _13733 = _13659 + 1u;
                    }
                    else
                    {
                        _13730 = _13656;
                        _13731 = _13657;
                        _13732 = _13658;
                        _13733 = _13659;
                    }
                    uint _13770 = 0u;
                    uint _13771 = 0u;
                    uint _13772 = 0u;
                    if (((_12960 >> 16u) & 1u) != 0u)
                    {
                        float _13741 = 0.0f;
                        do
                        {
                            _13741 = mad(1.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        uint _13746 = uint(clamp(_13741, 0.0f, 1.0f) * 255.0f);
                        uint _13752 = (((_13746 << 0u) | (_13746 << 8u)) | (_13746 << 16u)) | 0u;
                        uint _13767 = 0u;
                        uint _13768 = 0u;
                        uint _13769 = 0u;
                        if (_13733 < 3u)
                        {
                            _13767 = (_13733 == 2u) ? _13752 : _13730;
                            _13768 = (_13733 == 1u) ? _13752 : _13731;
                            _13769 = (_13733 == 0u) ? _13752 : _13732;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _13733 - 3u)] = _13752;
                            _13767 = _13730;
                            _13768 = _13731;
                            _13769 = _13732;
                        }
                        _13770 = _13767;
                        _13771 = _13768;
                        _13772 = _13769;
                    }
                    else
                    {
                        _13770 = _13730;
                        _13771 = _13731;
                        _13772 = _13732;
                    }
                    _13773 = _13654;
                    _13774 = _13655;
                    _13775 = _13770;
                    _13776 = _13771;
                    _13777 = _13772;
                    break;
                }
                case 3u:
                {
                    float3 _13171 = clamp(float4(_10841, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                    float _13172 = _13171.x;
                    float _13181 = 0.0f;
                    do
                    {
                        if (_13172 < 0.00313066993840038776397705078125f)
                        {
                            _13181 = _13172 * 12.9200000762939453125f;
                            break;
                        }
                        _13181 = mad(pow(_13172, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13182 = _13171.y;
                    float _13191 = 0.0f;
                    do
                    {
                        if (_13182 < 0.00313066993840038776397705078125f)
                        {
                            _13191 = _13182 * 12.9200000762939453125f;
                            break;
                        }
                        _13191 = mad(pow(_13182, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13192 = _13171.z;
                    float _13201 = 0.0f;
                    do
                    {
                        if (_13192 < 0.00313066993840038776397705078125f)
                        {
                            _13201 = _13192 * 12.9200000762939453125f;
                            break;
                        }
                        _13201 = mad(pow(_13192, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    uint _13216 = (((uint(clamp(_13181, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13191, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_13201, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                    uint _13231 = 0u;
                    uint _13232 = 0u;
                    uint _13233 = 0u;
                    if (_12964 < 3u)
                    {
                        _13231 = (_12964 == 2u) ? _13216 : _12961;
                        _13232 = (_12964 == 1u) ? _13216 : _12962;
                        _13233 = (_12964 == 0u) ? _13216 : _12963;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _12964 - 3u)] = _13216;
                        _13231 = _12961;
                        _13232 = _12962;
                        _13233 = _12963;
                    }
                    uint _13234 = _12964 + 1u;
                    uint _13249 = ((0u | (uint(clamp(_10844, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_10848, 0.0f, 1.0f) * 255.0f) << 16u)) | (uint(clamp(_10850, 0.0f, 1.0f) * 255.0f) << 24u);
                    uint _13264 = 0u;
                    uint _13265 = 0u;
                    uint _13266 = 0u;
                    if (_13234 < 3u)
                    {
                        _13264 = (_13234 == 2u) ? _13249 : _13231;
                        _13265 = (_13234 == 1u) ? _13249 : _13232;
                        _13266 = (_13234 == 0u) ? _13249 : _13233;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _12964 + 4294967294u)] = _13249;
                        _13264 = _13231;
                        _13265 = _13232;
                        _13266 = _13233;
                    }
                    _13773 = 0u;
                    _13774 = _11087;
                    _13775 = _13264;
                    _13776 = _13265;
                    _13777 = _13266;
                    break;
                }
                case 5u:
                {
                    float3 _12982 = 0.0f.xxx;
                    if (true)
                    {
                        float2 _12980 = 1.0f.xx - abs(0.0f.xx);
                        _12982 = float3(_12980.x, _12980.y, 0.0f.xxxx.z);
                    }
                    else
                    {
                        _12982 = 0.0f.xxx;
                    }
                    float3 _12989 = 0.0f.xxx;
                    if (true)
                    {
                        float2 _12987 = 1.0f.xx - abs(0.0f.xx);
                        _12989 = float3(_12987.x, _12987.y, 0.0f.xxxx.z);
                    }
                    else
                    {
                        _12989 = 0.0f.xxx;
                    }
                    float3 _12992 = clamp(_10841.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12993 = _12992.x;
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
                    float _13003 = _12992.y;
                    float _13012 = 0.0f;
                    do
                    {
                        if (_13003 < 0.00313066993840038776397705078125f)
                        {
                            _13012 = _13003 * 12.9200000762939453125f;
                            break;
                        }
                        _13012 = mad(pow(_13003, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13013 = _12992.z;
                    float _13022 = 0.0f;
                    do
                    {
                        if (_13013 < 0.00313066993840038776397705078125f)
                        {
                            _13022 = _13013 * 12.9200000762939453125f;
                            break;
                        }
                        _13022 = mad(pow(_13013, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    uint _13037 = (((uint(clamp(_13002, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13012, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_13022, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                    uint _13052 = 0u;
                    uint _13053 = 0u;
                    uint _13054 = 0u;
                    if (_12964 < 3u)
                    {
                        _13052 = (_12964 == 2u) ? _13037 : _12961;
                        _13053 = (_12964 == 1u) ? _13037 : _12962;
                        _13054 = (_12964 == 0u) ? _13037 : _12963;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _12964 - 3u)] = _13037;
                        _13052 = _12961;
                        _13053 = _12962;
                        _13054 = _12963;
                    }
                    uint _13055 = _12964 + 1u;
                    float2 _13057 = (_12982.xy * 0.5f) + 0.5f.xx;
                    float2 _13059 = (_12989.xy * 0.5f) + 0.5f.xx;
                    uint _13082 = (((uint(clamp(_13057.x, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13057.y, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_13059.x, 0.0f, 1.0f) * 255.0f) << 16u)) | (uint(clamp(_13059.y, 0.0f, 1.0f) * 255.0f) << 24u);
                    uint _13097 = 0u;
                    uint _13098 = 0u;
                    uint _13099 = 0u;
                    if (_13055 < 3u)
                    {
                        _13097 = (_13055 == 2u) ? _13082 : _13052;
                        _13098 = (_13055 == 1u) ? _13082 : _13053;
                        _13099 = (_13055 == 0u) ? _13082 : _13054;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10838, _12964 + 4294967294u)] = _13082;
                        _13097 = _13052;
                        _13098 = _13053;
                        _13099 = _13054;
                    }
                    uint _13164 = 0u;
                    uint _13165 = 0u;
                    if (((_12960 >> 2u) & 7u) == 3u)
                    {
                        float3 _13118 = clamp(float4(_10841, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                        float _13119 = _13118.x;
                        float _13128 = 0.0f;
                        do
                        {
                            if (_13119 < 0.00313066993840038776397705078125f)
                            {
                                _13128 = _13119 * 12.9200000762939453125f;
                                break;
                            }
                            _13128 = mad(pow(_13119, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13129 = _13118.y;
                        float _13138 = 0.0f;
                        do
                        {
                            if (_13129 < 0.00313066993840038776397705078125f)
                            {
                                _13138 = _13129 * 12.9200000762939453125f;
                                break;
                            }
                            _13138 = mad(pow(_13129, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13139 = _13118.z;
                        float _13148 = 0.0f;
                        do
                        {
                            if (_13139 < 0.00313066993840038776397705078125f)
                            {
                                _13148 = _13139 * 12.9200000762939453125f;
                                break;
                            }
                            _13148 = mad(pow(_13139, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        _13164 = (((uint(clamp(_13128, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13138, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_13148, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                        _13165 = ((((_11087 & 4294967292u) | 3u) & 3u) | (uint(mad(_10848, 255.0f, 0.5f)) << 24u)) | 16711680u;
                    }
                    else
                    {
                        _13164 = 0u;
                        _13165 = _11087;
                    }
                    _13773 = _13164;
                    _13774 = _13165;
                    _13775 = _13097;
                    _13776 = _13098;
                    _13777 = _13099;
                    break;
                }
                default:
                {
                    _13773 = 0u;
                    _13774 = _11087;
                    _13775 = _12961;
                    _13776 = _12962;
                    _13777 = _12963;
                    break;
                }
            }
            _13778 = _13773;
            _13779 = _13774;
            _13780 = _13775;
            _13781 = _13776;
            _13782 = _13777;
        }
        else
        {
            _13778 = 0u;
            _13779 = _11087;
            _13780 = _12961;
            _13781 = _12962;
            _13782 = _12963;
        }
        _13783 = _13778;
        _13784 = _13779;
        _13785 = _13780;
        _13786 = _13781;
        _13787 = _13782;
    }
    else
    {
        _13783 = 0u;
        _13784 = _11087;
        _13785 = 0u;
        _13786 = _11773;
        _13787 = _11774;
    }
    float2 _13792 = _10995.xy / dot(1.0f.xxx, abs(_10995)).xx;
    float3 _13810 = 0.0f.xxx;
    if (_10995.z <= 0.0f)
    {
        float2 _13801 = _13792.xy;
        bool2 _13802 = bool2(_13801.x >= 0.0f.xx.x, _13801.y >= 0.0f.xx.y);
        float2 _13808 = (1.0f.xx - abs(_13792.yx)) * float2(_13802.x ? 1.0f : (-1.0f), _13802.y ? 1.0f : (-1.0f));
        _13810 = float3(_13808.x, _13808.y, _10995.z);
    }
    else
    {
        _13810 = float3(_13792.x, _13792.y, _10995.z);
    }
    uint2 _13815 = uint2(clamp((_13810.xy * 1023.0f) + 1024.0f.xx, 0.0f.xx, 2047.0f.xx));
    uint _13827 = _13784 & 3u;
    [branch]
    if (_13827 != 0u)
    {
        uint _13834 = uint(OpaqueBasePass_OpaqueBasePass_Strata_FirstSliceStoringStrataSSSDataWithoutMRT);
        uint _13835 = _10838.x;
        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_13835, _10838.y, _13834)] = _13784;
        if ((_13827 == 2u) || (_13827 == 3u))
        {
            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_13835, _10838.y, _13834 + 1u)] = _13783;
        }
    }
    float4 _13856 = float4((lerp((((float4(_10498.x ? 0.0f.xxxx.x : _9977.x, _10498.y ? 0.0f.xxxx.y : _9977.y, _10498.z ? 0.0f.xxxx.z : _9977.z, _10498.w ? 0.0f.xxxx.w : _9977.w).xyz + float4(_10498.x ? 0.0f.xxxx.x : _9980.x, _10498.y ? 0.0f.xxxx.y : _9980.y, _10498.z ? 0.0f.xxxx.z : _9980.z, _10498.w ? 0.0f.xxxx.w : _9980.w).xyz) + (((_8763 * _8553) * max(1.0f.xxx, ((((((_8448 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_8448 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_8448 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)) * _8438)) + _10585) + _10835, float3(_10993.x ? _10999.x : 0.0f.xxx.x, _10993.y ? _10999.y : 0.0f.xxx.y, _10993.z ? _10999.z : 0.0f.xxx.z), View_View_UnlitViewmodeMask.xxx) + (_11690 + _10584)) * 1.0f, 0.0f);
    float4 _13863 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _13862 = _13856;
        _13862.w = 0.0f;
        _13863 = _13862;
    }
    else
    {
        _13863 = _13856;
    }
    float4 _13864 = 0.0f.xxxx;
    _13864.x = _8510;
    _13864.y = 1.0f;
    _13864.z = 1.0f;
    _13864.w = 1.0f;
    float4 _13873 = _13863 * View_View_PreExposure;
    float3 _13875 = min(_13873.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_13875.x, _13875.y, _13875.z, _13873.w);
    out_var_SV_Target1 = _13864;
    out_var_SV_Target2 = float4(_10834 * View_View_PreExposure, 1.0f);
    out_var_SV_Target3 = _13787;
    out_var_SV_Target4 = _13786;
    out_var_SV_Target5 = _13785;
    out_var_SV_Target6 = (((_13815.x | (_13815.y << 11u)) << 10u) | (uint(clamp(_10992 ? (_10988 / _10990) : 0.0f, 0.0f, 1.0f) * 255.0f) << 2u)) | _10983;
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
