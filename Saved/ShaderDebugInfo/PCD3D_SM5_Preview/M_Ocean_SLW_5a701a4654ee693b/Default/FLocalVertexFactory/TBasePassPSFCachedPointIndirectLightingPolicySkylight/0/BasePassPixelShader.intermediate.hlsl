#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _457 = 0.0f.xxx;
static float3 _540 = 0.0f.xxx;
static uint3 _541 = uint3(0u, 0u, 0u);
static float4 _542 = 0.0f.xxxx;
static float3 _543 = 0.0f.xxx;
static float4x4 _544 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
static float _551 = 0.0f;
static uint3 _552 = uint3(0u, 0u, 0u);
static float4 _553 = 0.0f.xxxx;
static float3 _554 = 0.0f.xxx;
static float2 _555 = 0.0f.xx;

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
    float4 IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal : packoffset(c4);
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
    float _588 = 1.0f / gl_FragCoord.w;
    float2 _629 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _636 = float4(mad(_629, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _551, 1.0f) * _588;
    float4 _641 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _645 = _641.xyz / _641.w.xxx;
    float3 _646 = _645 - View_View_RelativePreViewTranslation;
    float3 _647 = in_var_TEXCOORD9 - View_View_RelativePreViewTranslation;
    float _649 = _636.w;
    float3 _663 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _663 = -View_View_ViewForward;
    }
    else
    {
        _663 = normalize(-_645);
    }
    float3 _670 = View_View_ViewTilePosition * float3(-1.0f, -1.0f, -0.0f);
    float3 _672 = mad(-_646, float3(1.0f, 1.0f, 0.0f), float3(MaterialCollection0_MaterialCollection0_Vectors[4].xyz));
    float _673 = _670.x;
    float _674 = _672.x;
    float _677 = _670.y;
    float _678 = _672.y;
    float _683 = _670.z;
    float _684 = _672.z;
    float3 _704 = Material_Material_PreshaderBuffer[86].z.xxx;
    float3 _716 = 0.0f.xxx;
    float _721 = 0.0f;
    _716 = mad(_646, _704, mad(View_View_ViewTilePosition, _704, -floor(mad(View_View_ViewTilePosition, _704, ((_646 * _704) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _721 = 0.0f;
    float _719 = 1.0f;
    uint _723 = 0u;
    [loop]
    for (; _723 < 6u; )
    {
        float3 _727 = _716 * 0.066666670143604278564453125f.xxx;
        float3 _729 = frac(_727) * 15.0f;
        float3 _730 = frac(_729);
        float4 _735 = float4(_730, 0.0f);
        float4 _748 = View_PerlinNoise3DTexture.SampleLevel(View_PerlinNoise3DTextureSampler, mad((_729 - _730) + (((_735 * _735) * _735) * mad(_735, (_735 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx)).xyz, 0.0625f.xxx, 0.03125f.xxx), 0.0f);
        float _722 = mad(abs(dot(_729, mad(_748.xyz * 255.0f, 0.0078740157186985015869140625f.xxx, (-1.0f).xxx)) - mad(_748.w, 255.0f, -127.0f)), _719, _721);
        _716 *= 2.0f;
        _719 *= 0.5f;
        _721 = _722;
        _723++;
        continue;
    }
    float _778 = clamp(mad(-length((mad(View_View_ViewTilePosition, float3(1.0f, 1.0f, 0.0f), _670) * 2097152.0f) + mad(View_View_RelativeWorldCameraOrigin, float3(1.0f, 1.0f, 0.0f), _646 * float3(-1.0f, -1.0f, -0.0f))), 1.0f / max(9.9999997473787516355514526367188e-06f, MaterialCollection0_MaterialCollection0_Vectors[0].x * Material_Material_PreshaderBuffer[85].y), 1.0f) * Material_Material_PreshaderBuffer[86].y, 0.0f, 1.0f);
    float _779 = lerp(clamp(lerp(-1.0f, 1.0f, _721), 0.0f, 1.0f), 1.0f, _778);
    float3 _782 = ((View_View_ViewTilePosition + (-View_View_ViewTilePosition)) * 2097152.0f) + _645;
    uint3 _784 = uint3(0u, 0u, 0u);
    _784 = _541;
    float _790 = 0.0f;
    uint3 _785 = uint3(0u, 0u, 0u);
    float _881 = 0.0f;
    uint _787 = 0u;
    float _789 = 0.0f;
    uint _792 = 0u;
    for (;;)
    {
        _792 = View_View_NumGlobalSDFClipmaps;
        if (_787 < _792)
        {
            float3 _806 = min(max((_782 - View_View_GlobalVolumeTranslatedCenterAndExtent[_787].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_787].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_787].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_787].www) - _782, 0.0f.xxx));
            float _816 = View_View_GlobalVolumeTranslatedCenterAndExtent[_787].w * View_View_GlobalVolumeTexelSize;
            _790 = 8.0f * _816;
            if (min(_806.x, min(_806.y, _806.z)) > _816)
            {
                float3 _826 = frac(frac(mad(_782, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_787].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_787].xyz)));
                float _830 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _837 = (clamp(_826, 0.0f.xxx, 1.0f.xxx) * _830) + float3(int3(0, 0, int(_787 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                uint4 _847 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_837.x), int(_837.y), int(_837.z), 0).xyz, 0));
                uint _848 = _847.x;
                uint _849 = _848 & 16777215u;
                uint3 _880 = uint3(0u, 0u, 0u);
                if (_848 < 4294967295u)
                {
                    uint3 _854 = _784;
                    _854.x = _849 & 127u;
                    _854.y = (_849 >> 7u) & 127u;
                    _854.z = _849 >> 14u;
                    float4 _873 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_854 * uint3(8u, 8u, 8u)) + (frac(_826 * _830) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f);
                    float _874 = _873.x;
                    if (_874 < 1.0f)
                    {
                        _881 = mad(_874, 2.0f, -1.0f) * _790;
                        break;
                    }
                    _880 = _854;
                }
                else
                {
                    _880 = _784;
                }
                _785 = _880;
            }
            else
            {
                _785 = _784;
            }
            _784 = _785;
            _787++;
            _789 = _790;
            continue;
        }
        else
        {
            _881 = _789;
            break;
        }
    }
    float _892 = clamp(mad(mad(_881, Material_Material_PreshaderBuffer[87].x, -Material_Material_PreshaderBuffer[87].y) * Material_Material_PreshaderBuffer[88].x, -1.0f, 1.0f), 0.0f, 1.0f);
    uint3 _894 = uint3(0u, 0u, 0u);
    _894 = _541;
    uint3 _895 = uint3(0u, 0u, 0u);
    float3 _1152 = 0.0f.xxx;
    uint _897 = 0u;
    for (;;)
    {
        if (_897 < _792)
        {
            float _907 = View_View_GlobalVolumeTranslatedCenterAndExtent[_897].w * View_View_GlobalVolumeTexelSize;
            float3 _917 = min(max((_782 - View_View_GlobalVolumeTranslatedCenterAndExtent[_897].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_897].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_897].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_897].www) - _782, 0.0f.xxx));
            if (min(_917.x, min(_917.y, _917.z)) >= _907)
            {
                float3 _932 = frac(frac(mad(_782, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_897].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_897].xyz)));
                float _936 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _942 = float3(int3(0, 0, int(_897 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                float3 _943 = (clamp(_932, 0.0f.xxx, 1.0f.xxx) * _936) + _942;
                uint4 _953 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_943.x), int(_943.y), int(_943.z), 0).xyz, 0));
                uint _954 = _953.x;
                uint _955 = _954 & 16777215u;
                uint3 _1151 = uint3(0u, 0u, 0u);
                if (_954 < 4294967295u)
                {
                    uint3 _960 = _894;
                    _960.x = _955 & 127u;
                    _960.y = (_955 >> 7u) & 127u;
                    _960.z = _955 >> 14u;
                    if (View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_960 * uint3(8u, 8u, 8u)) + (frac(_932 * _936) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x < 0.89999997615814208984375f)
                    {
                        float _984 = 0.5f * View_View_GlobalVolumeTexelSize;
                        float3 _987 = frac(_932 + float3(_984, 0.0f, 0.0f));
                        float3 _990 = (clamp(_987, 0.0f.xxx, 1.0f.xxx) * _936) + _942;
                        uint4 _999 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_990.x), int(_990.y), int(_990.z), 0).xyz, 0));
                        uint _1000 = _999.x;
                        uint _1001 = _1000 & 16777215u;
                        float _1023 = 0.0f;
                        if (_1000 < 4294967295u)
                        {
                            uint3 _1006 = uint3(0u, 0u, 0u);
                            _1006.x = _1001 & 127u;
                            _1006.y = (_1001 >> 7u) & 127u;
                            _1006.z = _1001 >> 14u;
                            _1023 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1006 * uint3(8u, 8u, 8u)) + (frac(_987 * _936) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1023 = 1.0f;
                        }
                        float _1024 = View_View_GlobalVolumeTexelSize * (-0.5f);
                        float3 _1027 = frac(_932 + float3(_1024, 0.0f, 0.0f));
                        float3 _1030 = (clamp(_1027, 0.0f.xxx, 1.0f.xxx) * _936) + _942;
                        uint4 _1039 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1030.x), int(_1030.y), int(_1030.z), 0).xyz, 0));
                        uint _1040 = _1039.x;
                        uint _1041 = _1040 & 16777215u;
                        float _1063 = 0.0f;
                        if (_1040 < 4294967295u)
                        {
                            uint3 _1046 = uint3(0u, 0u, 0u);
                            _1046.x = _1041 & 127u;
                            _1046.y = (_1041 >> 7u) & 127u;
                            _1046.z = _1041 >> 14u;
                            _1063 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1046 * uint3(8u, 8u, 8u)) + (frac(_1027 * _936) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1063 = 1.0f;
                        }
                        float3 _1066 = frac(_932 + float3(0.0f, _984, 0.0f));
                        float3 _1069 = (clamp(_1066, 0.0f.xxx, 1.0f.xxx) * _936) + _942;
                        uint4 _1078 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1069.x), int(_1069.y), int(_1069.z), 0).xyz, 0));
                        uint _1079 = _1078.x;
                        uint _1080 = _1079 & 16777215u;
                        float _1102 = 0.0f;
                        if (_1079 < 4294967295u)
                        {
                            uint3 _1085 = uint3(0u, 0u, 0u);
                            _1085.x = _1080 & 127u;
                            _1085.y = (_1080 >> 7u) & 127u;
                            _1085.z = _1080 >> 14u;
                            _1102 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1085 * uint3(8u, 8u, 8u)) + (frac(_1066 * _936) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1102 = 1.0f;
                        }
                        float3 _1105 = frac(_932 + float3(0.0f, _1024, 0.0f));
                        float3 _1108 = (clamp(_1105, 0.0f.xxx, 1.0f.xxx) * _936) + _942;
                        uint4 _1117 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1108.x), int(_1108.y), int(_1108.z), 0).xyz, 0));
                        uint _1118 = _1117.x;
                        uint _1119 = _1118 & 16777215u;
                        float _1141 = 0.0f;
                        if (_1118 < 4294967295u)
                        {
                            uint3 _1124 = uint3(0u, 0u, 0u);
                            _1124.x = _1119 & 127u;
                            _1124.y = (_1119 >> 7u) & 127u;
                            _1124.z = _1119 >> 14u;
                            _1141 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1124 * uint3(8u, 8u, 8u)) + (frac(_1105 * _936) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1141 = 1.0f;
                        }
                        _1152 = (float3(_1023 - _1063, _1102 - _1141, _551) * (_907 * 16.0f)) / (View_View_GlobalVolumeTranslatedCenterAndExtent[_897].w * (128.0f * View_View_GlobalVolumeTexelSize)).xxx;
                        break;
                    }
                    _1151 = _960;
                }
                else
                {
                    _1151 = _894;
                }
                _895 = _1151;
            }
            else
            {
                _895 = _894;
            }
            _894 = _895;
            _897++;
            continue;
        }
        else
        {
            _1152 = float3(0.0f, 0.0f, 0.001000000047497451305389404296875f);
            break;
        }
    }
    float3 _1159 = Material_Material_PreshaderBuffer[88].w.xxx;
    float _1166 = lerp(View_View_GameTime, MaterialCollection0_MaterialCollection0_Vectors[0].z, MaterialCollection0_MaterialCollection0_Vectors[0].w);
    float3 _1177 = float3((View_View_ViewTilePosition * _1159).xy, 0.0f);
    float3 _1178 = float3((mad(_1152, Material_Material_PreshaderBuffer[88].z.xxx, _647) * _1159).xy, ((_1166 * Material_Material_PreshaderBuffer[89].y).xx + float2(1.0f, 0.0f)).x);
    float3 _1188 = 0.0f.xxx;
    float _1193 = 0.0f;
    _1188 = (((_1177 - floor(_1177 + ((_1178 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _1178) * 1.0f;
    _1193 = 0.0f;
    float _1191 = 1.0f;
    uint _1195 = 0u;
    [loop]
    for (; _1195 < 10u; )
    {
        float3 _1199 = frac(_1188);
        float _1201 = dot(floor(_1188), float3(19.0f, 47.0f, 101.0f));
        uint3 _1213 = (uint3(int3(int(_1201), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1214 = _1213.y;
        uint _1215 = _1213.z;
        uint _1218 = _1213.x + (_1214 * _1215);
        uint _1220 = _1214 + (_1215 * _1218);
        uint3 _1225 = uint3(0u, 0u, 0u);
        _1225.x = _1218 + (_1220 * (_1215 + (_1218 * _1220)));
        uint3 _1226 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _1239 = (uint3(int3(int(_1201 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1240 = _1239.y;
        uint _1241 = _1239.z;
        uint _1244 = _1239.x + (_1240 * _1241);
        uint _1246 = _1240 + (_1241 * _1244);
        uint3 _1251 = uint3(0u, 0u, 0u);
        _1251.x = _1244 + (_1246 * (_1241 + (_1244 * _1246)));
        uint3 _1264 = (uint3(int3(int(_1201 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1265 = _1264.y;
        uint _1266 = _1264.z;
        uint _1269 = _1264.x + (_1265 * _1266);
        uint _1271 = _1265 + (_1266 * _1269);
        uint3 _1276 = uint3(0u, 0u, 0u);
        _1276.x = _1269 + (_1271 * (_1266 + (_1269 * _1271)));
        uint3 _1289 = (uint3(int3(int(_1201 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1290 = _1289.y;
        uint _1291 = _1289.z;
        uint _1294 = _1289.x + (_1290 * _1291);
        uint _1296 = _1290 + (_1291 * _1294);
        uint3 _1301 = uint3(0u, 0u, 0u);
        _1301.x = _1294 + (_1296 * (_1291 + (_1294 * _1296)));
        uint3 _1314 = (uint3(int3(int(_1201 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1315 = _1314.y;
        uint _1316 = _1314.z;
        uint _1319 = _1314.x + (_1315 * _1316);
        uint _1321 = _1315 + (_1316 * _1319);
        uint3 _1326 = uint3(0u, 0u, 0u);
        _1326.x = _1319 + (_1321 * (_1316 + (_1319 * _1321)));
        uint3 _1339 = (uint3(int3(int(_1201 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1340 = _1339.y;
        uint _1341 = _1339.z;
        uint _1344 = _1339.x + (_1340 * _1341);
        uint _1346 = _1340 + (_1341 * _1344);
        uint3 _1351 = uint3(0u, 0u, 0u);
        _1351.x = _1344 + (_1346 * (_1341 + (_1344 * _1346)));
        uint3 _1364 = (uint3(int3(int(_1201 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1365 = _1364.y;
        uint _1366 = _1364.z;
        uint _1369 = _1364.x + (_1365 * _1366);
        uint _1371 = _1365 + (_1366 * _1369);
        uint3 _1376 = uint3(0u, 0u, 0u);
        _1376.x = _1369 + (_1371 * (_1366 + (_1369 * _1371)));
        uint3 _1389 = (uint3(int3(int(_1201 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1390 = _1389.y;
        uint _1391 = _1389.z;
        uint _1394 = _1389.x + (_1390 * _1391);
        uint _1396 = _1390 + (_1391 * _1394);
        uint3 _1401 = uint3(0u, 0u, 0u);
        _1401.x = _1394 + (_1396 * (_1391 + (_1394 * _1396)));
        float4 _1412 = float4(_1199, 0.0f);
        float4 _1418 = ((_1412 * _1412) * _1412) * mad(_1412, (_1412 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _1419 = _1418.x;
        float _1422 = _1418.y;
        float _1429 = abs(lerp(lerp(lerp(dot(mad(float3((_1225 >> _1226).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1199), dot(mad(float3((_1251 >> _1226).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1199 - float3(1.0f, 0.0f, 0.0f)), _1419), lerp(dot(mad(float3((_1276 >> _1226).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1199 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_1301 >> _1226).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1199 - float3(1.0f, 1.0f, 0.0f)), _1419), _1422), lerp(lerp(dot(mad(float3((_1326 >> _1226).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1199 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_1351 >> _1226).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1199 - float3(1.0f, 0.0f, 1.0f)), _1419), lerp(dot(mad(float3((_1376 >> _1226).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1199 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_1401 >> _1226).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1199 - 1.0f.xxx), _1419), _1422), _1418.z));
        float _1194 = mad(_1429, _1191, _1193);
        _1188 *= 2.0f;
        _1191 *= 0.5f;
        _1193 = _1194;
        _1195++;
        continue;
    }
    float _1433 = -_892;
    float _1439 = clamp(mad(mad(_1433, Material_Material_PreshaderBuffer[89].z, lerp(0.0f, 1.0f, _1193)) / mad(_1433, Material_Material_PreshaderBuffer[89].z, mad(_892, Material_Material_PreshaderBuffer[89].z, 1.0f)), -1.0f, 1.0f), 0.0f, 1.0f);
    float _1448 = clamp(lerp(Material_Material_PreshaderBuffer[90].x, Material_Material_PreshaderBuffer[89].w, (_1439 <= 0.0f) ? 0.0f : pow(_1439, 2.0f)), 0.0f, 1.0f);
    float _1449 = _892 * _1448;
    float3 _1452 = Material_Material_PreshaderBuffer[90].y.xxx;
    float3 _1453 = View_View_ViewTilePosition * _1452;
    float3 _1454 = _647 * _1452;
    float3 _1465 = 0.0f.xxx;
    float3 _1468 = 0.0f.xxx;
    float _1472 = 0.0f;
    _1465 = _543;
    _1468 = mad(_647, _1452, mad(View_View_ViewTilePosition, _1452, -floor(mad(View_View_ViewTilePosition, _1452, (_1454 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _1472 = 0.0f;
    float3 _1469 = 0.0f.xxx;
    float _1471 = 0.0f;
    float _1473 = 0.0f;
    float3 _1466 = 0.0f.xxx;
    float _1470 = 1.0f;
    uint _1474 = 0u;
    [loop]
    for (; _1474 < 1u; _1465 = _1466, _1468 = _1469, _1470 = _1471, _1472 = _1473, _1474++)
    {
        float3 _1479 = frac(_1468);
        float3 _1480 = floor(_1468);
        float3 _1481 = _1465;
        _1481.x = 0.0f;
        float4 _1483 = 0.0f.xxxx;
        _1483 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _1466 = _1481;
        float3 _1486 = 0.0f.xxx;
        float4 _1484 = 0.0f.xxxx;
        float3 _1493 = 0.0f.xxx;
        for (; _1466.x <= 1.0f; _1486 = _1493, _1486.x = _1493.x + 1.0f, _1483 = _1484, _1466 = _1486)
        {
            float3 _1491 = _1466;
            _1491.y = 0.0f;
            _1493 = _1491;
            _1484 = _1483;
            float3 _1494 = 0.0f.xxx;
            float4 _1496 = 0.0f.xxxx;
            float3 _1505 = 0.0f.xxx;
            for (; _1493.y <= 1.0f; _1494 = _1505, _1494.y = _1505.y + 1.0f, _1493 = _1494, _1484 = _1496)
            {
                float3 _1501 = _1493;
                _1501.z = 0.0f;
                _1496 = _1484;
                _1505 = _1501;
                for (; _1505.z <= 1.0f; )
                {
                    float3 _1510 = _1480 + _1505;
                    uint3 _1515 = (uint3(int3(float3(_1510.x, _1510.y, _1510.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _1516 = _1515.y;
                    uint _1517 = _1515.z;
                    uint _1520 = _1515.x + (_1516 * _1517);
                    uint _1522 = _1516 + (_1517 * _1520);
                    uint _1524 = _1517 + (_1520 * _1522);
                    uint _1526 = _1520 + (_1522 * _1524);
                    uint3 _1527 = _1515;
                    _1527.x = _1526;
                    uint _1529 = _1522 + (_1524 * _1526);
                    _1527.y = _1529;
                    _1527.z = _1524 + (_1526 * _1529);
                    float3 _1541 = _1479 - (_1505 + (normalize(mad(float3(_1527 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _1506 = _1505;
                    _1506.z = _1505.z + 1.0f;
                    _1496 = float4(0.0f, 0.0f, 0.0f, min(_1496.w, dot(_1541, _1541)));
                    _1505 = _1506;
                    continue;
                }
            }
        }
        _1473 = mad(abs(mad(sqrt(_1483.w), 2.0f, -1.0f)), _1470, _1472);
        _1469 = _1468 * 2.0f;
        _1471 = _1470 * 0.5f;
    }
    float3 _1567 = 0.0f.xxx;
    float3 _1570 = 0.0f.xxx;
    float _1574 = 0.0f;
    _1567 = _543;
    _1570 = mad(_1454, 1.2000000476837158203125f.xxx, mad(_1453, 1.2000000476837158203125f.xxx, -floor(mad(_1453, 1.2000000476837158203125f.xxx, ((_1454 * 1.2000000476837158203125f.xxx) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _1574 = 0.0f;
    float3 _1571 = 0.0f.xxx;
    float _1573 = 0.0f;
    float _1575 = 0.0f;
    float3 _1568 = 0.0f.xxx;
    float _1572 = 1.0f;
    uint _1576 = 0u;
    [loop]
    for (; _1576 < 1u; _1567 = _1568, _1570 = _1571, _1572 = _1573, _1574 = _1575, _1576++)
    {
        float3 _1581 = frac(_1570);
        float3 _1582 = floor(_1570);
        float3 _1583 = _1567;
        _1583.x = 0.0f;
        float4 _1585 = 0.0f.xxxx;
        _1585 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _1568 = _1583;
        float3 _1588 = 0.0f.xxx;
        float4 _1586 = 0.0f.xxxx;
        float3 _1595 = 0.0f.xxx;
        for (; _1568.x <= 1.0f; _1588 = _1595, _1588.x = _1595.x + 1.0f, _1585 = _1586, _1568 = _1588)
        {
            float3 _1593 = _1568;
            _1593.y = 0.0f;
            _1595 = _1593;
            _1586 = _1585;
            float3 _1596 = 0.0f.xxx;
            float4 _1598 = 0.0f.xxxx;
            float3 _1607 = 0.0f.xxx;
            for (; _1595.y <= 1.0f; _1596 = _1607, _1596.y = _1607.y + 1.0f, _1595 = _1596, _1586 = _1598)
            {
                float3 _1603 = _1595;
                _1603.z = 0.0f;
                _1598 = _1586;
                _1607 = _1603;
                for (; _1607.z <= 1.0f; )
                {
                    float3 _1612 = _1582 + _1607;
                    uint3 _1617 = (uint3(int3(float3(_1612.x, _1612.y, _1612.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _1618 = _1617.y;
                    uint _1619 = _1617.z;
                    uint _1622 = _1617.x + (_1618 * _1619);
                    uint _1624 = _1618 + (_1619 * _1622);
                    uint _1626 = _1619 + (_1622 * _1624);
                    uint _1628 = _1622 + (_1624 * _1626);
                    uint3 _1629 = _1617;
                    _1629.x = _1628;
                    uint _1631 = _1624 + (_1626 * _1628);
                    _1629.y = _1631;
                    _1629.z = _1626 + (_1628 * _1631);
                    float3 _1643 = _1581 - (_1607 + (normalize(mad(float3(_1629 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _1608 = _1607;
                    _1608.z = _1607.z + 1.0f;
                    _1598 = float4(0.0f, 0.0f, 0.0f, min(_1598.w, dot(_1643, _1643)));
                    _1607 = _1608;
                    continue;
                }
            }
        }
        _1575 = mad(abs(mad(sqrt(_1585.w), 2.0f, -1.0f)), _1572, _1574);
        _1571 = _1570 * 2.0f;
        _1573 = _1572 * 0.5f;
    }
    float _1658 = clamp(lerp(-1.0f, 1.0f, _1472), 0.0f, 1.0f) + clamp(lerp(-1.0f, 1.0f, _1574), 0.0f, 1.0f);
    float _1672 = (abs(Material_Material_PreshaderBuffer[2].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[2].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[2].x : Material_Material_PreshaderBuffer[2].y) : Material_Material_PreshaderBuffer[2].x;
    float _1680 = (abs(_1672 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_1672 >= 1.0f) ? Material_Material_PreshaderBuffer[2].z : Material_Material_PreshaderBuffer[2].x) : Material_Material_PreshaderBuffer[2].x;
    float3 _1690 = float3(min(max((abs(_1680) > 9.9999997473787516355514526367188e-06f) ? ((_1680 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[4].w, 0.0f);
    float2 _1701 = float2(View_View_ViewTilePosition.xy);
    float2 _1702 = float2(_647.xy);
    float2 _1705 = float2(min(max(_1690 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _1706 = _1701 * _1705;
    float2 _1707 = _1705 * _1702;
    float _1712 = _1706.x + _1706.y;
    float _1716 = _1712 * Material_Material_PreshaderBuffer[9].x;
    float _1719 = _1166 - Material_Material_PreshaderBuffer[9].z;
    float3 _1722 = Material_Material_PreshaderBuffer[9].w.xxx;
    float3 _1727 = Material_Material_PreshaderBuffer[10].x.xxx;
    float3 _1731 = MaterialCollection0_MaterialCollection0_Vectors[0].y.xxx;
    float3 _1732 = ((View_View_ViewTilePosition * _1722) * _1727) * _1731;
    float3 _1734 = (((_1722 * _647) * _1727) * _1731) * 0.100000001490116119384765625f.xxx;
    float3 _1745 = float3(_1734.xy, ((_1166 * Material_Material_PreshaderBuffer[10].z).xx + _1734.z.xx).x);
    float3 _1756 = 0.0f.xxx;
    float _1761 = 0.0f;
    _1756 = ((mad(_1732, 0.100000001490116119384765625f.xxx, -floor(mad(_1732, 0.100000001490116119384765625f.xxx, (_1745 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _1745) * 1.0f;
    _1761 = 0.0f;
    float _1759 = 1.0f;
    uint _1763 = 0u;
    [loop]
    for (; _1763 < 6u; )
    {
        float3 _1767 = frac(_1756);
        float _1769 = dot(floor(_1756), float3(19.0f, 47.0f, 101.0f));
        uint3 _1781 = (uint3(int3(int(_1769), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1782 = _1781.y;
        uint _1783 = _1781.z;
        uint _1786 = _1781.x + (_1782 * _1783);
        uint _1788 = _1782 + (_1783 * _1786);
        uint3 _1793 = uint3(0u, 0u, 0u);
        _1793.x = _1786 + (_1788 * (_1783 + (_1786 * _1788)));
        uint3 _1794 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _1807 = (uint3(int3(int(_1769 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1808 = _1807.y;
        uint _1809 = _1807.z;
        uint _1812 = _1807.x + (_1808 * _1809);
        uint _1814 = _1808 + (_1809 * _1812);
        uint3 _1819 = uint3(0u, 0u, 0u);
        _1819.x = _1812 + (_1814 * (_1809 + (_1812 * _1814)));
        uint3 _1832 = (uint3(int3(int(_1769 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1833 = _1832.y;
        uint _1834 = _1832.z;
        uint _1837 = _1832.x + (_1833 * _1834);
        uint _1839 = _1833 + (_1834 * _1837);
        uint3 _1844 = uint3(0u, 0u, 0u);
        _1844.x = _1837 + (_1839 * (_1834 + (_1837 * _1839)));
        uint3 _1857 = (uint3(int3(int(_1769 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1858 = _1857.y;
        uint _1859 = _1857.z;
        uint _1862 = _1857.x + (_1858 * _1859);
        uint _1864 = _1858 + (_1859 * _1862);
        uint3 _1869 = uint3(0u, 0u, 0u);
        _1869.x = _1862 + (_1864 * (_1859 + (_1862 * _1864)));
        uint3 _1882 = (uint3(int3(int(_1769 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1883 = _1882.y;
        uint _1884 = _1882.z;
        uint _1887 = _1882.x + (_1883 * _1884);
        uint _1889 = _1883 + (_1884 * _1887);
        uint3 _1894 = uint3(0u, 0u, 0u);
        _1894.x = _1887 + (_1889 * (_1884 + (_1887 * _1889)));
        uint3 _1907 = (uint3(int3(int(_1769 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1908 = _1907.y;
        uint _1909 = _1907.z;
        uint _1912 = _1907.x + (_1908 * _1909);
        uint _1914 = _1908 + (_1909 * _1912);
        uint3 _1919 = uint3(0u, 0u, 0u);
        _1919.x = _1912 + (_1914 * (_1909 + (_1912 * _1914)));
        uint3 _1932 = (uint3(int3(int(_1769 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1933 = _1932.y;
        uint _1934 = _1932.z;
        uint _1937 = _1932.x + (_1933 * _1934);
        uint _1939 = _1933 + (_1934 * _1937);
        uint3 _1944 = uint3(0u, 0u, 0u);
        _1944.x = _1937 + (_1939 * (_1934 + (_1937 * _1939)));
        uint3 _1957 = (uint3(int3(int(_1769 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1958 = _1957.y;
        uint _1959 = _1957.z;
        uint _1962 = _1957.x + (_1958 * _1959);
        uint _1964 = _1958 + (_1959 * _1962);
        uint3 _1969 = uint3(0u, 0u, 0u);
        _1969.x = _1962 + (_1964 * (_1959 + (_1962 * _1964)));
        float4 _1980 = float4(_1767, 0.0f);
        float4 _1986 = ((_1980 * _1980) * _1980) * mad(_1980, (_1980 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _1987 = _1986.x;
        float _1990 = _1986.y;
        float _1762 = mad(lerp(lerp(lerp(dot(mad(float3((_1793 >> _1794).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1767), dot(mad(float3((_1819 >> _1794).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1767 - float3(1.0f, 0.0f, 0.0f)), _1987), lerp(dot(mad(float3((_1844 >> _1794).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1767 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_1869 >> _1794).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1767 - float3(1.0f, 1.0f, 0.0f)), _1987), _1990), lerp(lerp(dot(mad(float3((_1894 >> _1794).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1767 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_1919 >> _1794).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1767 - float3(1.0f, 0.0f, 1.0f)), _1987), lerp(dot(mad(float3((_1944 >> _1794).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1767 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_1969 >> _1794).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1767 - 1.0f.xxx), _1987), _1990), _1986.z), _1759, _1761);
        _1756 *= 2.0f;
        _1759 *= 0.5f;
        _1761 = _1762;
        _1763++;
        continue;
    }
    float _2000 = lerp(_1166, _1719, clamp(lerp(0.0f, 1.0f, mad(_1761, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _2004 = mad(_1707.x + _1707.y, Material_Material_PreshaderBuffer[9].x, Material_Material_PreshaderBuffer[10].w * _2000);
    float _2005 = floor(_1716);
    float3 _2017 = Material_Material_PreshaderBuffer[12].x.xxx;
    float3 _2022 = Material_Material_PreshaderBuffer[12].y.xxx;
    float3 _2023 = (View_View_ViewTilePosition * _2017) * _2022;
    float3 _2024 = (_2017 * _647) * _2022;
    float3 _2025 = _2024 * 0.0001000000047497451305389404296875f.xxx;
    float2 _2032 = (_1166 * Material_Material_PreshaderBuffer[12].w).xx;
    float3 _2036 = float3(_2025.xy, (_2032 + _2025.z.xx).x);
    float3 _2047 = 0.0f.xxx;
    float _2052 = 0.0f;
    _2047 = ((mad(_2023, 0.0001000000047497451305389404296875f.xxx, -floor(mad(_2023, 0.0001000000047497451305389404296875f.xxx, (_2036 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _2036) * 1.0f;
    _2052 = 0.0f;
    float _2050 = 1.0f;
    uint _2054 = 0u;
    [loop]
    for (; _2054 < 10u; )
    {
        float3 _2058 = frac(_2047);
        float _2060 = dot(floor(_2047), float3(19.0f, 47.0f, 101.0f));
        uint3 _2072 = (uint3(int3(int(_2060), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2073 = _2072.y;
        uint _2074 = _2072.z;
        uint _2077 = _2072.x + (_2073 * _2074);
        uint _2079 = _2073 + (_2074 * _2077);
        uint3 _2084 = uint3(0u, 0u, 0u);
        _2084.x = _2077 + (_2079 * (_2074 + (_2077 * _2079)));
        uint3 _2085 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _2098 = (uint3(int3(int(_2060 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2099 = _2098.y;
        uint _2100 = _2098.z;
        uint _2103 = _2098.x + (_2099 * _2100);
        uint _2105 = _2099 + (_2100 * _2103);
        uint3 _2110 = uint3(0u, 0u, 0u);
        _2110.x = _2103 + (_2105 * (_2100 + (_2103 * _2105)));
        uint3 _2123 = (uint3(int3(int(_2060 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2124 = _2123.y;
        uint _2125 = _2123.z;
        uint _2128 = _2123.x + (_2124 * _2125);
        uint _2130 = _2124 + (_2125 * _2128);
        uint3 _2135 = uint3(0u, 0u, 0u);
        _2135.x = _2128 + (_2130 * (_2125 + (_2128 * _2130)));
        uint3 _2148 = (uint3(int3(int(_2060 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2149 = _2148.y;
        uint _2150 = _2148.z;
        uint _2153 = _2148.x + (_2149 * _2150);
        uint _2155 = _2149 + (_2150 * _2153);
        uint3 _2160 = uint3(0u, 0u, 0u);
        _2160.x = _2153 + (_2155 * (_2150 + (_2153 * _2155)));
        uint3 _2173 = (uint3(int3(int(_2060 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2174 = _2173.y;
        uint _2175 = _2173.z;
        uint _2178 = _2173.x + (_2174 * _2175);
        uint _2180 = _2174 + (_2175 * _2178);
        uint3 _2185 = uint3(0u, 0u, 0u);
        _2185.x = _2178 + (_2180 * (_2175 + (_2178 * _2180)));
        uint3 _2198 = (uint3(int3(int(_2060 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2199 = _2198.y;
        uint _2200 = _2198.z;
        uint _2203 = _2198.x + (_2199 * _2200);
        uint _2205 = _2199 + (_2200 * _2203);
        uint3 _2210 = uint3(0u, 0u, 0u);
        _2210.x = _2203 + (_2205 * (_2200 + (_2203 * _2205)));
        uint3 _2223 = (uint3(int3(int(_2060 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2224 = _2223.y;
        uint _2225 = _2223.z;
        uint _2228 = _2223.x + (_2224 * _2225);
        uint _2230 = _2224 + (_2225 * _2228);
        uint3 _2235 = uint3(0u, 0u, 0u);
        _2235.x = _2228 + (_2230 * (_2225 + (_2228 * _2230)));
        uint3 _2248 = (uint3(int3(int(_2060 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2249 = _2248.y;
        uint _2250 = _2248.z;
        uint _2253 = _2248.x + (_2249 * _2250);
        uint _2255 = _2249 + (_2250 * _2253);
        uint3 _2260 = uint3(0u, 0u, 0u);
        _2260.x = _2253 + (_2255 * (_2250 + (_2253 * _2255)));
        float4 _2271 = float4(_2058, 0.0f);
        float4 _2277 = ((_2271 * _2271) * _2271) * mad(_2271, (_2271 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _2278 = _2277.x;
        float _2281 = _2277.y;
        float _2288 = abs(lerp(lerp(lerp(dot(mad(float3((_2084 >> _2085).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2058), dot(mad(float3((_2110 >> _2085).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2058 - float3(1.0f, 0.0f, 0.0f)), _2278), lerp(dot(mad(float3((_2135 >> _2085).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2058 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_2160 >> _2085).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2058 - float3(1.0f, 1.0f, 0.0f)), _2278), _2281), lerp(lerp(dot(mad(float3((_2185 >> _2085).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2058 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_2210 >> _2085).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2058 - float3(1.0f, 0.0f, 1.0f)), _2278), lerp(dot(mad(float3((_2235 >> _2085).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2058 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_2260 >> _2085).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2058 - 1.0f.xxx), _2278), _2281), _2277.z));
        float _2053 = mad(_2288, _2050, _2052);
        _2047 *= 2.0f;
        _2050 *= 0.5f;
        _2052 = _2053;
        _2054++;
        continue;
    }
    float3 _2290 = _2024 * 0.000200000009499490261077880859375f.xxx;
    float3 _2297 = float3(_2290.xy, (_2032 + _2290.z.xx).x);
    float3 _2308 = 0.0f.xxx;
    float _2313 = 0.0f;
    _2308 = ((mad(_2023, 0.000200000009499490261077880859375f.xxx, -floor(mad(_2023, 0.000200000009499490261077880859375f.xxx, (_2297 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _2297) * 1.0f;
    _2313 = 0.0f;
    float _2311 = 1.0f;
    uint _2315 = 0u;
    [loop]
    for (; _2315 < 10u; )
    {
        float3 _2319 = frac(_2308);
        float _2321 = dot(floor(_2308), float3(19.0f, 47.0f, 101.0f));
        uint3 _2333 = (uint3(int3(int(_2321), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2334 = _2333.y;
        uint _2335 = _2333.z;
        uint _2338 = _2333.x + (_2334 * _2335);
        uint _2340 = _2334 + (_2335 * _2338);
        uint3 _2345 = uint3(0u, 0u, 0u);
        _2345.x = _2338 + (_2340 * (_2335 + (_2338 * _2340)));
        uint3 _2346 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _2359 = (uint3(int3(int(_2321 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2360 = _2359.y;
        uint _2361 = _2359.z;
        uint _2364 = _2359.x + (_2360 * _2361);
        uint _2366 = _2360 + (_2361 * _2364);
        uint3 _2371 = uint3(0u, 0u, 0u);
        _2371.x = _2364 + (_2366 * (_2361 + (_2364 * _2366)));
        uint3 _2384 = (uint3(int3(int(_2321 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2385 = _2384.y;
        uint _2386 = _2384.z;
        uint _2389 = _2384.x + (_2385 * _2386);
        uint _2391 = _2385 + (_2386 * _2389);
        uint3 _2396 = uint3(0u, 0u, 0u);
        _2396.x = _2389 + (_2391 * (_2386 + (_2389 * _2391)));
        uint3 _2409 = (uint3(int3(int(_2321 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2410 = _2409.y;
        uint _2411 = _2409.z;
        uint _2414 = _2409.x + (_2410 * _2411);
        uint _2416 = _2410 + (_2411 * _2414);
        uint3 _2421 = uint3(0u, 0u, 0u);
        _2421.x = _2414 + (_2416 * (_2411 + (_2414 * _2416)));
        uint3 _2434 = (uint3(int3(int(_2321 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2435 = _2434.y;
        uint _2436 = _2434.z;
        uint _2439 = _2434.x + (_2435 * _2436);
        uint _2441 = _2435 + (_2436 * _2439);
        uint3 _2446 = uint3(0u, 0u, 0u);
        _2446.x = _2439 + (_2441 * (_2436 + (_2439 * _2441)));
        uint3 _2459 = (uint3(int3(int(_2321 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2460 = _2459.y;
        uint _2461 = _2459.z;
        uint _2464 = _2459.x + (_2460 * _2461);
        uint _2466 = _2460 + (_2461 * _2464);
        uint3 _2471 = uint3(0u, 0u, 0u);
        _2471.x = _2464 + (_2466 * (_2461 + (_2464 * _2466)));
        uint3 _2484 = (uint3(int3(int(_2321 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2485 = _2484.y;
        uint _2486 = _2484.z;
        uint _2489 = _2484.x + (_2485 * _2486);
        uint _2491 = _2485 + (_2486 * _2489);
        uint3 _2496 = uint3(0u, 0u, 0u);
        _2496.x = _2489 + (_2491 * (_2486 + (_2489 * _2491)));
        uint3 _2509 = (uint3(int3(int(_2321 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2510 = _2509.y;
        uint _2511 = _2509.z;
        uint _2514 = _2509.x + (_2510 * _2511);
        uint _2516 = _2510 + (_2511 * _2514);
        uint3 _2521 = uint3(0u, 0u, 0u);
        _2521.x = _2514 + (_2516 * (_2511 + (_2514 * _2516)));
        float4 _2532 = float4(_2319, 0.0f);
        float4 _2538 = ((_2532 * _2532) * _2532) * mad(_2532, (_2532 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _2539 = _2538.x;
        float _2542 = _2538.y;
        float _2549 = abs(lerp(lerp(lerp(dot(mad(float3((_2345 >> _2346).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2319), dot(mad(float3((_2371 >> _2346).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2319 - float3(1.0f, 0.0f, 0.0f)), _2539), lerp(dot(mad(float3((_2396 >> _2346).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2319 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_2421 >> _2346).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2319 - float3(1.0f, 1.0f, 0.0f)), _2539), _2542), lerp(lerp(dot(mad(float3((_2446 >> _2346).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2319 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_2471 >> _2346).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2319 - float3(1.0f, 0.0f, 1.0f)), _2539), lerp(dot(mad(float3((_2496 >> _2346).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2319 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_2521 >> _2346).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2319 - 1.0f.xxx), _2539), _2542), _2538.z));
        float _2314 = mad(_2549, _2311, _2313);
        _2308 *= 2.0f;
        _2311 *= 0.5f;
        _2313 = _2314;
        _2315++;
        continue;
    }
    float _2561 = lerp(Material_Material_PreshaderBuffer[11].w, Material_Material_PreshaderBuffer[13].z, lerp(0.0f, 1.0f, _2052) * mad(lerp(0.0f, 1.0f, _2313), Material_Material_PreshaderBuffer[13].y, Material_Material_PreshaderBuffer[13].x));
    float2 _2572 = float2(min(max(_1690 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2573 = _1701 * _2572;
    float2 _2574 = _2572 * _1702;
    float _2579 = _2573.x + _2573.y;
    float _2583 = _2579 * Material_Material_PreshaderBuffer[16].y;
    float _2587 = mad(_2574.x + _2574.y, Material_Material_PreshaderBuffer[16].y, Material_Material_PreshaderBuffer[17].x * _2000);
    float _2588 = floor(_2583);
    float _2600 = _2561 * Material_Material_PreshaderBuffer[17].z;
    float2 _2611 = float2(min(max(_1690 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2612 = _1701 * _2611;
    float2 _2613 = _2611 * _1702;
    float _2618 = _2612.x + _2612.y;
    float _2622 = _2618 * Material_Material_PreshaderBuffer[18].y;
    float _2626 = mad(_2613.x + _2613.y, Material_Material_PreshaderBuffer[18].y, Material_Material_PreshaderBuffer[18].w * _2000);
    float _2627 = floor(_2622);
    float _2637 = _2600 * Material_Material_PreshaderBuffer[17].z;
    float2 _2647 = float2(min(max(_1690 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2648 = _1701 * _2647;
    float2 _2649 = _2647 * _1702;
    float _2654 = _2648.x + _2648.y;
    float _2658 = _2654 * Material_Material_PreshaderBuffer[19].z;
    float _2662 = mad(_2649.x + _2649.y, Material_Material_PreshaderBuffer[19].z, Material_Material_PreshaderBuffer[20].x * _2000);
    float _2663 = floor(_2658);
    float _2673 = _2637 * Material_Material_PreshaderBuffer[17].z;
    float _2687 = (abs(Material_Material_PreshaderBuffer[20].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[20].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[20].w : Material_Material_PreshaderBuffer[21].x) : Material_Material_PreshaderBuffer[20].w;
    float _2695 = (abs(_2687 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_2687 >= 1.0f) ? Material_Material_PreshaderBuffer[21].y : Material_Material_PreshaderBuffer[20].w) : Material_Material_PreshaderBuffer[20].w;
    float3 _2705 = float3(min(max((abs(_2695) > 9.9999997473787516355514526367188e-06f) ? ((_2695 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[22].z, 0.0f);
    float2 _2711 = float2(min(max(_2705 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2712 = _1701 * _2711;
    float2 _2713 = _2711 * _1702;
    float _2718 = _2712.x + _2712.y;
    float _2722 = _2718 * Material_Material_PreshaderBuffer[24].w;
    float _2726 = mad(_2713.x + _2713.y, Material_Material_PreshaderBuffer[24].w, Material_Material_PreshaderBuffer[25].z * _2000);
    float _2727 = floor(_2722);
    float _2739 = _2561 * Material_Material_PreshaderBuffer[25].w;
    float2 _2747 = float2(min(max(_2705 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2748 = _1701 * _2747;
    float2 _2749 = _2747 * _1702;
    float _2754 = _2748.x + _2748.y;
    float _2758 = _2754 * Material_Material_PreshaderBuffer[26].y;
    float _2762 = mad(_2749.x + _2749.y, Material_Material_PreshaderBuffer[26].y, Material_Material_PreshaderBuffer[26].w * _2000);
    float _2763 = floor(_2758);
    float _2773 = _2739 * Material_Material_PreshaderBuffer[17].z;
    float2 _2784 = float2(min(max(_2705 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2785 = _1701 * _2784;
    float2 _2786 = _2784 * _1702;
    float _2791 = _2785.x + _2785.y;
    float _2795 = _2791 * Material_Material_PreshaderBuffer[27].y;
    float _2799 = mad(_2786.x + _2786.y, Material_Material_PreshaderBuffer[27].y, Material_Material_PreshaderBuffer[27].w * _2000);
    float _2800 = floor(_2795);
    float _2810 = _2773 * Material_Material_PreshaderBuffer[17].z;
    float2 _2820 = float2(min(max(_2705 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2821 = _1701 * _2820;
    float2 _2822 = _2820 * _1702;
    float _2827 = _2821.x + _2821.y;
    float _2831 = _2827 * Material_Material_PreshaderBuffer[28].y;
    float _2835 = mad(_2822.x + _2822.y, Material_Material_PreshaderBuffer[28].y, Material_Material_PreshaderBuffer[28].w * _2000);
    float _2836 = floor(_2831);
    float _2846 = _2810 * Material_Material_PreshaderBuffer[17].z;
    float3 _2851 = (((float3(_551, _551, sin(mad(mad(_1716, 6.283185482025146484375f, _2005 * (-6.283185482025146484375f)), 2097152.0f, mad(_2004, 6.283185482025146484375f, floor(mad(mad(_1712, Material_Material_PreshaderBuffer[9].x, -_2005), 2097152.0f, _2004)) * (-6.283185482025146484375f)))) * _2561) + float3(_551, _551, sin(mad(mad(_2583, 6.283185482025146484375f, _2588 * (-6.283185482025146484375f)), 2097152.0f, mad(_2587, 6.283185482025146484375f, floor(mad(mad(_2579, Material_Material_PreshaderBuffer[16].y, -_2588), 2097152.0f, _2587)) * (-6.283185482025146484375f)))) * _2600)) + float3(_551, _551, sin(mad(mad(_2622, 6.283185482025146484375f, _2627 * (-6.283185482025146484375f)), 2097152.0f, mad(_2626, 6.283185482025146484375f, floor(mad(mad(_2618, Material_Material_PreshaderBuffer[18].y, -_2627), 2097152.0f, _2626)) * (-6.283185482025146484375f)))) * _2637)) + float3(_551, _551, sin(mad(mad(_2658, 6.283185482025146484375f, _2663 * (-6.283185482025146484375f)), 2097152.0f, mad(_2662, 6.283185482025146484375f, floor(mad(mad(_2654, Material_Material_PreshaderBuffer[19].z, -_2663), 2097152.0f, _2662)) * (-6.283185482025146484375f)))) * _2673)) + (((float3(_551, _551, sin(mad(mad(_2722, 6.283185482025146484375f, _2727 * (-6.283185482025146484375f)), 2097152.0f, mad(_2726, 6.283185482025146484375f, floor(mad(mad(_2718, Material_Material_PreshaderBuffer[24].w, -_2727), 2097152.0f, _2726)) * (-6.283185482025146484375f)))) * _2739) + float3(_551, _551, sin(mad(mad(_2758, 6.283185482025146484375f, _2763 * (-6.283185482025146484375f)), 2097152.0f, mad(_2762, 6.283185482025146484375f, floor(mad(mad(_2754, Material_Material_PreshaderBuffer[26].y, -_2763), 2097152.0f, _2762)) * (-6.283185482025146484375f)))) * _2773)) + float3(_551, _551, sin(mad(mad(_2795, 6.283185482025146484375f, _2800 * (-6.283185482025146484375f)), 2097152.0f, mad(_2799, 6.283185482025146484375f, floor(mad(mad(_2791, Material_Material_PreshaderBuffer[27].y, -_2800), 2097152.0f, _2799)) * (-6.283185482025146484375f)))) * _2810)) + float3(_551, _551, sin(mad(mad(_2831, 6.283185482025146484375f, _2836 * (-6.283185482025146484375f)), 2097152.0f, mad(_2835, 6.283185482025146484375f, floor(mad(mad(_2827, Material_Material_PreshaderBuffer[28].y, -_2836), 2097152.0f, _2835)) * (-6.283185482025146484375f)))) * _2846));
    float _2861 = (abs(Material_Material_PreshaderBuffer[29].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[29].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[29].x : Material_Material_PreshaderBuffer[29].y) : Material_Material_PreshaderBuffer[29].x;
    float _2869 = (abs(_2861 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_2861 >= 1.0f) ? Material_Material_PreshaderBuffer[29].z : Material_Material_PreshaderBuffer[29].x) : Material_Material_PreshaderBuffer[29].x;
    float3 _2879 = float3(min(max((abs(_2869) > 9.9999997473787516355514526367188e-06f) ? ((_2869 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[30].w, 0.0f);
    float2 _2885 = float2(min(max(_2879 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2886 = _1701 * _2885;
    float2 _2887 = _2885 * _1702;
    float _2892 = _2886.x + _2886.y;
    float _2896 = _2892 * Material_Material_PreshaderBuffer[32].z;
    float _2900 = mad(_2887.x + _2887.y, Material_Material_PreshaderBuffer[32].z, Material_Material_PreshaderBuffer[32].w * _2000);
    float _2901 = floor(_2896);
    float2 _2918 = float2(min(max(_2879 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2919 = _1701 * _2918;
    float2 _2920 = _2918 * _1702;
    float _2925 = _2919.x + _2919.y;
    float _2929 = _2925 * Material_Material_PreshaderBuffer[33].y;
    float _2933 = mad(_2920.x + _2920.y, Material_Material_PreshaderBuffer[33].y, Material_Material_PreshaderBuffer[33].z * _2000);
    float _2934 = floor(_2929);
    float2 _2954 = float2(min(max(_2879 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2955 = _1701 * _2954;
    float2 _2956 = _2954 * _1702;
    float _2961 = _2955.x + _2955.y;
    float _2965 = _2961 * Material_Material_PreshaderBuffer[34].x;
    float _2969 = mad(_2956.x + _2956.y, Material_Material_PreshaderBuffer[34].x, Material_Material_PreshaderBuffer[34].y * _2000);
    float _2970 = floor(_2965);
    float2 _2989 = float2(min(max(_2879 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2990 = _1701 * _2989;
    float2 _2991 = _2989 * _1702;
    float _2996 = _2990.x + _2990.y;
    float _3000 = _2996 * Material_Material_PreshaderBuffer[34].w;
    float _3004 = mad(_2991.x + _2991.y, Material_Material_PreshaderBuffer[34].w, Material_Material_PreshaderBuffer[35].x * _2000);
    float _3005 = floor(_3000);
    float3 _3019 = _2851 + (((float3(_551, _551, sin(mad(mad(_2896, 6.283185482025146484375f, _2901 * (-6.283185482025146484375f)), 2097152.0f, mad(_2900, 6.283185482025146484375f, floor(mad(mad(_2892, Material_Material_PreshaderBuffer[32].z, -_2901), 2097152.0f, _2900)) * (-6.283185482025146484375f)))) * _2739) + float3(_551, _551, sin(mad(mad(_2929, 6.283185482025146484375f, _2934 * (-6.283185482025146484375f)), 2097152.0f, mad(_2933, 6.283185482025146484375f, floor(mad(mad(_2925, Material_Material_PreshaderBuffer[33].y, -_2934), 2097152.0f, _2933)) * (-6.283185482025146484375f)))) * _2773)) + float3(_551, _551, sin(mad(mad(_2965, 6.283185482025146484375f, _2970 * (-6.283185482025146484375f)), 2097152.0f, mad(_2969, 6.283185482025146484375f, floor(mad(mad(_2961, Material_Material_PreshaderBuffer[34].x, -_2970), 2097152.0f, _2969)) * (-6.283185482025146484375f)))) * _2810)) + float3(_551, _551, sin(mad(mad(_3000, 6.283185482025146484375f, _3005 * (-6.283185482025146484375f)), 2097152.0f, mad(_3004, 6.283185482025146484375f, floor(mad(mad(_2996, Material_Material_PreshaderBuffer[34].w, -_3005), 2097152.0f, _3004)) * (-6.283185482025146484375f)))) * _2846));
    float _3029 = (abs(Material_Material_PreshaderBuffer[35].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[35].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[35].y : Material_Material_PreshaderBuffer[35].z) : Material_Material_PreshaderBuffer[35].y;
    float _3037 = (abs(_3029 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3029 >= 1.0f) ? Material_Material_PreshaderBuffer[35].w : Material_Material_PreshaderBuffer[35].y) : Material_Material_PreshaderBuffer[35].y;
    float3 _3047 = float3(min(max((abs(_3037) > 9.9999997473787516355514526367188e-06f) ? ((_3037 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[37].x, 0.0f);
    float2 _3053 = float2(min(max(_3047 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3054 = _1701 * _3053;
    float2 _3055 = _3053 * _1702;
    float _3060 = _3054.x + _3054.y;
    float _3064 = _3060 * Material_Material_PreshaderBuffer[38].w;
    float _3068 = mad(_3055.x + _3055.y, Material_Material_PreshaderBuffer[38].w, Material_Material_PreshaderBuffer[39].x * _2000);
    float _3069 = floor(_3064);
    float2 _3086 = float2(min(max(_3047 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3087 = _1701 * _3086;
    float2 _3088 = _3086 * _1702;
    float _3093 = _3087.x + _3087.y;
    float _3097 = _3093 * Material_Material_PreshaderBuffer[39].z;
    float _3101 = mad(_3088.x + _3088.y, Material_Material_PreshaderBuffer[39].z, Material_Material_PreshaderBuffer[39].w * _2000);
    float _3102 = floor(_3097);
    float2 _3122 = float2(min(max(_3047 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3123 = _1701 * _3122;
    float2 _3124 = _3122 * _1702;
    float _3129 = _3123.x + _3123.y;
    float _3133 = _3129 * Material_Material_PreshaderBuffer[40].y;
    float _3137 = mad(_3124.x + _3124.y, Material_Material_PreshaderBuffer[40].y, Material_Material_PreshaderBuffer[40].z * _2000);
    float _3138 = floor(_3133);
    float2 _3157 = float2(min(max(_3047 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3158 = _1701 * _3157;
    float2 _3159 = _3157 * _1702;
    float _3164 = _3158.x + _3158.y;
    float _3168 = _3164 * Material_Material_PreshaderBuffer[41].x;
    float _3172 = mad(_3159.x + _3159.y, Material_Material_PreshaderBuffer[41].x, Material_Material_PreshaderBuffer[41].y * _2000);
    float _3173 = floor(_3168);
    float _3196 = (abs(Material_Material_PreshaderBuffer[41].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[41].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[41].z : Material_Material_PreshaderBuffer[41].w) : Material_Material_PreshaderBuffer[41].z;
    float _3204 = (abs(_3196 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3196 >= 1.0f) ? Material_Material_PreshaderBuffer[42].x : Material_Material_PreshaderBuffer[41].z) : Material_Material_PreshaderBuffer[41].z;
    float3 _3214 = float3(min(max((abs(_3204) > 9.9999997473787516355514526367188e-06f) ? ((_3204 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[43].y, 0.0f);
    float2 _3220 = float2(min(max(_3214 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3221 = _1701 * _3220;
    float2 _3222 = _3220 * _1702;
    float _3227 = _3221.x + _3221.y;
    float _3231 = _3227 * Material_Material_PreshaderBuffer[45].x;
    float _3235 = mad(_3222.x + _3222.y, Material_Material_PreshaderBuffer[45].x, Material_Material_PreshaderBuffer[45].y * _2000);
    float _3236 = floor(_3231);
    float2 _3253 = float2(min(max(_3214 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3254 = _1701 * _3253;
    float2 _3255 = _3253 * _1702;
    float _3260 = _3254.x + _3254.y;
    float _3264 = _3260 * Material_Material_PreshaderBuffer[45].w;
    float _3268 = mad(_3255.x + _3255.y, Material_Material_PreshaderBuffer[45].w, Material_Material_PreshaderBuffer[46].x * _2000);
    float _3269 = floor(_3264);
    float2 _3289 = float2(min(max(_3214 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3290 = _1701 * _3289;
    float2 _3291 = _3289 * _1702;
    float _3296 = _3290.x + _3290.y;
    float _3300 = _3296 * Material_Material_PreshaderBuffer[46].z;
    float _3304 = mad(_3291.x + _3291.y, Material_Material_PreshaderBuffer[46].z, Material_Material_PreshaderBuffer[46].w * _2000);
    float _3305 = floor(_3300);
    float2 _3324 = float2(min(max(_3214 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3325 = _1701 * _3324;
    float2 _3326 = _3324 * _1702;
    float _3331 = _3325.x + _3325.y;
    float _3335 = _3331 * Material_Material_PreshaderBuffer[47].y;
    float _3339 = mad(_3326.x + _3326.y, Material_Material_PreshaderBuffer[47].y, Material_Material_PreshaderBuffer[47].z * _2000);
    float _3340 = floor(_3335);
    float3 _3354 = (((float3(_551, _551, sin(mad(mad(_3064, 6.283185482025146484375f, _3069 * (-6.283185482025146484375f)), 2097152.0f, mad(_3068, 6.283185482025146484375f, floor(mad(mad(_3060, Material_Material_PreshaderBuffer[38].w, -_3069), 2097152.0f, _3068)) * (-6.283185482025146484375f)))) * _2561) + float3(_551, _551, sin(mad(mad(_3097, 6.283185482025146484375f, _3102 * (-6.283185482025146484375f)), 2097152.0f, mad(_3101, 6.283185482025146484375f, floor(mad(mad(_3093, Material_Material_PreshaderBuffer[39].z, -_3102), 2097152.0f, _3101)) * (-6.283185482025146484375f)))) * _2600)) + float3(_551, _551, sin(mad(mad(_3133, 6.283185482025146484375f, _3138 * (-6.283185482025146484375f)), 2097152.0f, mad(_3137, 6.283185482025146484375f, floor(mad(mad(_3129, Material_Material_PreshaderBuffer[40].y, -_3138), 2097152.0f, _3137)) * (-6.283185482025146484375f)))) * _2637)) + float3(_551, _551, sin(mad(mad(_3168, 6.283185482025146484375f, _3173 * (-6.283185482025146484375f)), 2097152.0f, mad(_3172, 6.283185482025146484375f, floor(mad(mad(_3164, Material_Material_PreshaderBuffer[41].x, -_3173), 2097152.0f, _3172)) * (-6.283185482025146484375f)))) * _2673)) + (((float3(_551, _551, sin(mad(mad(_3231, 6.283185482025146484375f, _3236 * (-6.283185482025146484375f)), 2097152.0f, mad(_3235, 6.283185482025146484375f, floor(mad(mad(_3227, Material_Material_PreshaderBuffer[45].x, -_3236), 2097152.0f, _3235)) * (-6.283185482025146484375f)))) * _2739) + float3(_551, _551, sin(mad(mad(_3264, 6.283185482025146484375f, _3269 * (-6.283185482025146484375f)), 2097152.0f, mad(_3268, 6.283185482025146484375f, floor(mad(mad(_3260, Material_Material_PreshaderBuffer[45].w, -_3269), 2097152.0f, _3268)) * (-6.283185482025146484375f)))) * _2773)) + float3(_551, _551, sin(mad(mad(_3300, 6.283185482025146484375f, _3305 * (-6.283185482025146484375f)), 2097152.0f, mad(_3304, 6.283185482025146484375f, floor(mad(mad(_3296, Material_Material_PreshaderBuffer[46].z, -_3305), 2097152.0f, _3304)) * (-6.283185482025146484375f)))) * _2810)) + float3(_551, _551, sin(mad(mad(_3335, 6.283185482025146484375f, _3340 * (-6.283185482025146484375f)), 2097152.0f, mad(_3339, 6.283185482025146484375f, floor(mad(mad(_3331, Material_Material_PreshaderBuffer[47].y, -_3340), 2097152.0f, _3339)) * (-6.283185482025146484375f)))) * _2846));
    float _3364 = (abs(Material_Material_PreshaderBuffer[47].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[47].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[47].w : Material_Material_PreshaderBuffer[48].x) : Material_Material_PreshaderBuffer[47].w;
    float _3372 = (abs(_3364 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3364 >= 1.0f) ? Material_Material_PreshaderBuffer[48].y : Material_Material_PreshaderBuffer[47].w) : Material_Material_PreshaderBuffer[47].w;
    float3 _3382 = float3(min(max((abs(_3372) > 9.9999997473787516355514526367188e-06f) ? ((_3372 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[49].z, 0.0f);
    float2 _3388 = float2(min(max(_3382 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3389 = _1701 * _3388;
    float2 _3390 = _3388 * _1702;
    float _3395 = _3389.x + _3389.y;
    float _3399 = _3395 * Material_Material_PreshaderBuffer[51].y;
    float _3403 = mad(_3390.x + _3390.y, Material_Material_PreshaderBuffer[51].y, Material_Material_PreshaderBuffer[51].z * _2000);
    float _3404 = floor(_3399);
    float2 _3421 = float2(min(max(_3382 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3422 = _1701 * _3421;
    float2 _3423 = _3421 * _1702;
    float _3428 = _3422.x + _3422.y;
    float _3432 = _3428 * Material_Material_PreshaderBuffer[52].x;
    float _3436 = mad(_3423.x + _3423.y, Material_Material_PreshaderBuffer[52].x, Material_Material_PreshaderBuffer[52].y * _2000);
    float _3437 = floor(_3432);
    float2 _3457 = float2(min(max(_3382 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3458 = _1701 * _3457;
    float2 _3459 = _3457 * _1702;
    float _3464 = _3458.x + _3458.y;
    float _3468 = _3464 * Material_Material_PreshaderBuffer[52].w;
    float _3472 = mad(_3459.x + _3459.y, Material_Material_PreshaderBuffer[52].w, Material_Material_PreshaderBuffer[53].x * _2000);
    float _3473 = floor(_3468);
    float2 _3492 = float2(min(max(_3382 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3493 = _1701 * _3492;
    float2 _3494 = _3492 * _1702;
    float _3499 = _3493.x + _3493.y;
    float _3503 = _3499 * Material_Material_PreshaderBuffer[53].z;
    float _3507 = mad(_3494.x + _3494.y, Material_Material_PreshaderBuffer[53].z, Material_Material_PreshaderBuffer[53].w * _2000);
    float _3508 = floor(_3503);
    float3 _3522 = _3354 + (((float3(_551, _551, sin(mad(mad(_3399, 6.283185482025146484375f, _3404 * (-6.283185482025146484375f)), 2097152.0f, mad(_3403, 6.283185482025146484375f, floor(mad(mad(_3395, Material_Material_PreshaderBuffer[51].y, -_3404), 2097152.0f, _3403)) * (-6.283185482025146484375f)))) * _2739) + float3(_551, _551, sin(mad(mad(_3432, 6.283185482025146484375f, _3437 * (-6.283185482025146484375f)), 2097152.0f, mad(_3436, 6.283185482025146484375f, floor(mad(mad(_3428, Material_Material_PreshaderBuffer[52].x, -_3437), 2097152.0f, _3436)) * (-6.283185482025146484375f)))) * _2773)) + float3(_551, _551, sin(mad(mad(_3468, 6.283185482025146484375f, _3473 * (-6.283185482025146484375f)), 2097152.0f, mad(_3472, 6.283185482025146484375f, floor(mad(mad(_3464, Material_Material_PreshaderBuffer[52].w, -_3473), 2097152.0f, _3472)) * (-6.283185482025146484375f)))) * _2810)) + float3(_551, _551, sin(mad(mad(_3503, 6.283185482025146484375f, _3508 * (-6.283185482025146484375f)), 2097152.0f, mad(_3507, 6.283185482025146484375f, floor(mad(mad(_3499, Material_Material_PreshaderBuffer[53].z, -_3508), 2097152.0f, _3507)) * (-6.283185482025146484375f)))) * _2846));
    float3 _3523 = _3019 + _3522;
    float _3536 = (abs(Material_Material_PreshaderBuffer[54].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[54].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[54].y : Material_Material_PreshaderBuffer[54].z) : Material_Material_PreshaderBuffer[54].y;
    float _3544 = (abs(_3536 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3536 >= 1.0f) ? Material_Material_PreshaderBuffer[54].w : Material_Material_PreshaderBuffer[54].y) : Material_Material_PreshaderBuffer[54].y;
    float3 _3554 = float3(min(max((abs(_3544) > 9.9999997473787516355514526367188e-06f) ? ((_3544 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[56].x, 0.0f);
    float2 _3560 = float2(min(max(_3554 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3561 = _1701 * _3560;
    float2 _3562 = _3560 * _1702;
    float _3567 = _3561.x + _3561.y;
    float _3568 = _3562.x + _3562.y;
    float _3571 = Material_Material_PreshaderBuffer[57].y * MaterialCollection0_MaterialCollection0_Vectors[0].y;
    float _3574 = Material_Material_PreshaderBuffer[57].z * _3571;
    float _3575 = 2.0f / _3574;
    float _3576 = _3567 * _3575;
    float3 _3582 = Material_Material_PreshaderBuffer[58].x.xxx;
    float3 _3587 = Material_Material_PreshaderBuffer[58].y.xxx;
    float3 _3588 = (View_View_ViewTilePosition * _3582) * _3587;
    float3 _3591 = (1.0f / MaterialCollection0_MaterialCollection0_Vectors[0].y).xxx;
    float3 _3592 = ((_3582 * _647) * _3587) * _3591;
    float2 _3599 = (_1166 * Material_Material_PreshaderBuffer[58].w).xx;
    float3 _3603 = float3(_3592.xy, (_3599 + _3592.z.xx).x);
    float3 _3614 = 0.0f.xxx;
    float _3619 = 0.0f;
    _3614 = ((mad(_3588, _3591, -floor(mad(_3588, _3591, (_3603 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _3603) * 1.0f;
    _3619 = 0.0f;
    float _3617 = 1.0f;
    uint _3621 = 0u;
    [loop]
    for (; _3621 < 6u; )
    {
        float3 _3625 = frac(_3614);
        float _3627 = dot(floor(_3614), float3(19.0f, 47.0f, 101.0f));
        uint3 _3639 = (uint3(int3(int(_3627), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3640 = _3639.y;
        uint _3641 = _3639.z;
        uint _3644 = _3639.x + (_3640 * _3641);
        uint _3646 = _3640 + (_3641 * _3644);
        uint3 _3651 = uint3(0u, 0u, 0u);
        _3651.x = _3644 + (_3646 * (_3641 + (_3644 * _3646)));
        uint3 _3652 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _3665 = (uint3(int3(int(_3627 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3666 = _3665.y;
        uint _3667 = _3665.z;
        uint _3670 = _3665.x + (_3666 * _3667);
        uint _3672 = _3666 + (_3667 * _3670);
        uint3 _3677 = uint3(0u, 0u, 0u);
        _3677.x = _3670 + (_3672 * (_3667 + (_3670 * _3672)));
        uint3 _3690 = (uint3(int3(int(_3627 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3691 = _3690.y;
        uint _3692 = _3690.z;
        uint _3695 = _3690.x + (_3691 * _3692);
        uint _3697 = _3691 + (_3692 * _3695);
        uint3 _3702 = uint3(0u, 0u, 0u);
        _3702.x = _3695 + (_3697 * (_3692 + (_3695 * _3697)));
        uint3 _3715 = (uint3(int3(int(_3627 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3716 = _3715.y;
        uint _3717 = _3715.z;
        uint _3720 = _3715.x + (_3716 * _3717);
        uint _3722 = _3716 + (_3717 * _3720);
        uint3 _3727 = uint3(0u, 0u, 0u);
        _3727.x = _3720 + (_3722 * (_3717 + (_3720 * _3722)));
        uint3 _3740 = (uint3(int3(int(_3627 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3741 = _3740.y;
        uint _3742 = _3740.z;
        uint _3745 = _3740.x + (_3741 * _3742);
        uint _3747 = _3741 + (_3742 * _3745);
        uint3 _3752 = uint3(0u, 0u, 0u);
        _3752.x = _3745 + (_3747 * (_3742 + (_3745 * _3747)));
        uint3 _3765 = (uint3(int3(int(_3627 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3766 = _3765.y;
        uint _3767 = _3765.z;
        uint _3770 = _3765.x + (_3766 * _3767);
        uint _3772 = _3766 + (_3767 * _3770);
        uint3 _3777 = uint3(0u, 0u, 0u);
        _3777.x = _3770 + (_3772 * (_3767 + (_3770 * _3772)));
        uint3 _3790 = (uint3(int3(int(_3627 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3791 = _3790.y;
        uint _3792 = _3790.z;
        uint _3795 = _3790.x + (_3791 * _3792);
        uint _3797 = _3791 + (_3792 * _3795);
        uint3 _3802 = uint3(0u, 0u, 0u);
        _3802.x = _3795 + (_3797 * (_3792 + (_3795 * _3797)));
        uint3 _3815 = (uint3(int3(int(_3627 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3816 = _3815.y;
        uint _3817 = _3815.z;
        uint _3820 = _3815.x + (_3816 * _3817);
        uint _3822 = _3816 + (_3817 * _3820);
        uint3 _3827 = uint3(0u, 0u, 0u);
        _3827.x = _3820 + (_3822 * (_3817 + (_3820 * _3822)));
        float4 _3838 = float4(_3625, 0.0f);
        float4 _3844 = ((_3838 * _3838) * _3838) * mad(_3838, (_3838 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _3845 = _3844.x;
        float _3848 = _3844.y;
        float _3620 = mad(lerp(lerp(lerp(dot(mad(float3((_3651 >> _3652).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3625), dot(mad(float3((_3677 >> _3652).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3625 - float3(1.0f, 0.0f, 0.0f)), _3845), lerp(dot(mad(float3((_3702 >> _3652).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3625 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_3727 >> _3652).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3625 - float3(1.0f, 1.0f, 0.0f)), _3845), _3848), lerp(lerp(dot(mad(float3((_3752 >> _3652).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3625 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_3777 >> _3652).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3625 - float3(1.0f, 0.0f, 1.0f)), _3845), lerp(dot(mad(float3((_3802 >> _3652).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3625 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_3827 >> _3652).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3625 - 1.0f.xxx), _3845), _3848), _3844.z), _3617, _3619);
        _3614 *= 2.0f;
        _3617 *= 0.5f;
        _3619 = _3620;
        _3621++;
        continue;
    }
    float _3858 = lerp(_1166, _1719, clamp(lerp(0.0f, 1.0f, mad(_3619, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _3860 = mad(_3568, _3575, (_3575 * Material_Material_PreshaderBuffer[57].w) * _3858);
    float _3861 = floor(_3576);
    float _3873 = Material_Material_PreshaderBuffer[59].x * MaterialCollection0_MaterialCollection0_Vectors[0].y;
    float _3878 = mad(Material_Material_PreshaderBuffer[59].x, MaterialCollection0_MaterialCollection0_Vectors[0].y, -(Material_Material_PreshaderBuffer[59].y * MaterialCollection0_MaterialCollection0_Vectors[0].y));
    float3 _3881 = Material_Material_PreshaderBuffer[59].z.xxx;
    float3 _3886 = Material_Material_PreshaderBuffer[59].w.xxx;
    float3 _3887 = (View_View_ViewTilePosition * _3881) * _3886;
    float3 _3889 = ((_3881 * _647) * _3886) * _3591;
    float2 _3896 = (_1166 * Material_Material_PreshaderBuffer[60].y).xx;
    float3 _3900 = float3(_3889.xy, (_3896 + _3889.z.xx).x);
    float3 _3911 = 0.0f.xxx;
    float _3916 = 0.0f;
    _3911 = ((mad(_3887, _3591, -floor(mad(_3887, _3591, (_3900 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _3900) * 1.0f;
    _3916 = 0.0f;
    float _3914 = 1.0f;
    uint _3918 = 0u;
    [loop]
    for (; _3918 < 10u; )
    {
        float3 _3922 = frac(_3911);
        float _3924 = dot(floor(_3911), float3(19.0f, 47.0f, 101.0f));
        uint3 _3936 = (uint3(int3(int(_3924), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3937 = _3936.y;
        uint _3938 = _3936.z;
        uint _3941 = _3936.x + (_3937 * _3938);
        uint _3943 = _3937 + (_3938 * _3941);
        uint3 _3948 = uint3(0u, 0u, 0u);
        _3948.x = _3941 + (_3943 * (_3938 + (_3941 * _3943)));
        uint3 _3949 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _3962 = (uint3(int3(int(_3924 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3963 = _3962.y;
        uint _3964 = _3962.z;
        uint _3967 = _3962.x + (_3963 * _3964);
        uint _3969 = _3963 + (_3964 * _3967);
        uint3 _3974 = uint3(0u, 0u, 0u);
        _3974.x = _3967 + (_3969 * (_3964 + (_3967 * _3969)));
        uint3 _3987 = (uint3(int3(int(_3924 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3988 = _3987.y;
        uint _3989 = _3987.z;
        uint _3992 = _3987.x + (_3988 * _3989);
        uint _3994 = _3988 + (_3989 * _3992);
        uint3 _3999 = uint3(0u, 0u, 0u);
        _3999.x = _3992 + (_3994 * (_3989 + (_3992 * _3994)));
        uint3 _4012 = (uint3(int3(int(_3924 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4013 = _4012.y;
        uint _4014 = _4012.z;
        uint _4017 = _4012.x + (_4013 * _4014);
        uint _4019 = _4013 + (_4014 * _4017);
        uint3 _4024 = uint3(0u, 0u, 0u);
        _4024.x = _4017 + (_4019 * (_4014 + (_4017 * _4019)));
        uint3 _4037 = (uint3(int3(int(_3924 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4038 = _4037.y;
        uint _4039 = _4037.z;
        uint _4042 = _4037.x + (_4038 * _4039);
        uint _4044 = _4038 + (_4039 * _4042);
        uint3 _4049 = uint3(0u, 0u, 0u);
        _4049.x = _4042 + (_4044 * (_4039 + (_4042 * _4044)));
        uint3 _4062 = (uint3(int3(int(_3924 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4063 = _4062.y;
        uint _4064 = _4062.z;
        uint _4067 = _4062.x + (_4063 * _4064);
        uint _4069 = _4063 + (_4064 * _4067);
        uint3 _4074 = uint3(0u, 0u, 0u);
        _4074.x = _4067 + (_4069 * (_4064 + (_4067 * _4069)));
        uint3 _4087 = (uint3(int3(int(_3924 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4088 = _4087.y;
        uint _4089 = _4087.z;
        uint _4092 = _4087.x + (_4088 * _4089);
        uint _4094 = _4088 + (_4089 * _4092);
        uint3 _4099 = uint3(0u, 0u, 0u);
        _4099.x = _4092 + (_4094 * (_4089 + (_4092 * _4094)));
        uint3 _4112 = (uint3(int3(int(_3924 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4113 = _4112.y;
        uint _4114 = _4112.z;
        uint _4117 = _4112.x + (_4113 * _4114);
        uint _4119 = _4113 + (_4114 * _4117);
        uint3 _4124 = uint3(0u, 0u, 0u);
        _4124.x = _4117 + (_4119 * (_4114 + (_4117 * _4119)));
        float4 _4135 = float4(_3922, 0.0f);
        float4 _4141 = ((_4135 * _4135) * _4135) * mad(_4135, (_4135 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _4142 = _4141.x;
        float _4145 = _4141.y;
        float _4152 = abs(lerp(lerp(lerp(dot(mad(float3((_3948 >> _3949).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3922), dot(mad(float3((_3974 >> _3949).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3922 - float3(1.0f, 0.0f, 0.0f)), _4142), lerp(dot(mad(float3((_3999 >> _3949).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3922 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_4024 >> _3949).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3922 - float3(1.0f, 1.0f, 0.0f)), _4142), _4145), lerp(lerp(dot(mad(float3((_4049 >> _3949).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3922 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_4074 >> _3949).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3922 - float3(1.0f, 0.0f, 1.0f)), _4142), lerp(dot(mad(float3((_4099 >> _3949).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3922 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_4124 >> _3949).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3922 - 1.0f.xxx), _4142), _4145), _4141.z));
        float _3917 = mad(_4152, _3914, _3916);
        _3911 *= 2.0f;
        _3914 *= 0.5f;
        _3916 = _3917;
        _3918++;
        continue;
    }
    float3 _4156 = Material_Material_PreshaderBuffer[60].z.xxx;
    float3 _4161 = Material_Material_PreshaderBuffer[60].w.xxx;
    float3 _4162 = (View_View_ViewTilePosition * _4156) * _4161;
    float3 _4164 = ((_4156 * _647) * _4161) * _3591;
    float2 _4171 = (_1166 * Material_Material_PreshaderBuffer[61].y).xx;
    float3 _4175 = float3(_4164.xy, (_4171 + _4164.z.xx).x);
    float3 _4186 = 0.0f.xxx;
    float _4191 = 0.0f;
    _4186 = ((mad(_4162, _3591, -floor(mad(_4162, _3591, (_4175 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _4175) * 1.0f;
    _4191 = 0.0f;
    float _4189 = 1.0f;
    uint _4193 = 0u;
    [loop]
    for (; _4193 < 10u; )
    {
        float3 _4197 = frac(_4186);
        float _4199 = dot(floor(_4186), float3(19.0f, 47.0f, 101.0f));
        uint3 _4211 = (uint3(int3(int(_4199), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4212 = _4211.y;
        uint _4213 = _4211.z;
        uint _4216 = _4211.x + (_4212 * _4213);
        uint _4218 = _4212 + (_4213 * _4216);
        uint3 _4223 = uint3(0u, 0u, 0u);
        _4223.x = _4216 + (_4218 * (_4213 + (_4216 * _4218)));
        uint3 _4224 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _4237 = (uint3(int3(int(_4199 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4238 = _4237.y;
        uint _4239 = _4237.z;
        uint _4242 = _4237.x + (_4238 * _4239);
        uint _4244 = _4238 + (_4239 * _4242);
        uint3 _4249 = uint3(0u, 0u, 0u);
        _4249.x = _4242 + (_4244 * (_4239 + (_4242 * _4244)));
        uint3 _4262 = (uint3(int3(int(_4199 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4263 = _4262.y;
        uint _4264 = _4262.z;
        uint _4267 = _4262.x + (_4263 * _4264);
        uint _4269 = _4263 + (_4264 * _4267);
        uint3 _4274 = uint3(0u, 0u, 0u);
        _4274.x = _4267 + (_4269 * (_4264 + (_4267 * _4269)));
        uint3 _4287 = (uint3(int3(int(_4199 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4288 = _4287.y;
        uint _4289 = _4287.z;
        uint _4292 = _4287.x + (_4288 * _4289);
        uint _4294 = _4288 + (_4289 * _4292);
        uint3 _4299 = uint3(0u, 0u, 0u);
        _4299.x = _4292 + (_4294 * (_4289 + (_4292 * _4294)));
        uint3 _4312 = (uint3(int3(int(_4199 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4313 = _4312.y;
        uint _4314 = _4312.z;
        uint _4317 = _4312.x + (_4313 * _4314);
        uint _4319 = _4313 + (_4314 * _4317);
        uint3 _4324 = uint3(0u, 0u, 0u);
        _4324.x = _4317 + (_4319 * (_4314 + (_4317 * _4319)));
        uint3 _4337 = (uint3(int3(int(_4199 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4338 = _4337.y;
        uint _4339 = _4337.z;
        uint _4342 = _4337.x + (_4338 * _4339);
        uint _4344 = _4338 + (_4339 * _4342);
        uint3 _4349 = uint3(0u, 0u, 0u);
        _4349.x = _4342 + (_4344 * (_4339 + (_4342 * _4344)));
        uint3 _4362 = (uint3(int3(int(_4199 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4363 = _4362.y;
        uint _4364 = _4362.z;
        uint _4367 = _4362.x + (_4363 * _4364);
        uint _4369 = _4363 + (_4364 * _4367);
        uint3 _4374 = uint3(0u, 0u, 0u);
        _4374.x = _4367 + (_4369 * (_4364 + (_4367 * _4369)));
        uint3 _4387 = (uint3(int3(int(_4199 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4388 = _4387.y;
        uint _4389 = _4387.z;
        uint _4392 = _4387.x + (_4388 * _4389);
        uint _4394 = _4388 + (_4389 * _4392);
        uint3 _4399 = uint3(0u, 0u, 0u);
        _4399.x = _4392 + (_4394 * (_4389 + (_4392 * _4394)));
        float4 _4410 = float4(_4197, 0.0f);
        float4 _4416 = ((_4410 * _4410) * _4410) * mad(_4410, (_4410 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _4417 = _4416.x;
        float _4420 = _4416.y;
        float _4427 = abs(lerp(lerp(lerp(dot(mad(float3((_4223 >> _4224).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4197), dot(mad(float3((_4249 >> _4224).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4197 - float3(1.0f, 0.0f, 0.0f)), _4417), lerp(dot(mad(float3((_4274 >> _4224).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4197 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_4299 >> _4224).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4197 - float3(1.0f, 1.0f, 0.0f)), _4417), _4420), lerp(lerp(dot(mad(float3((_4324 >> _4224).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4197 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_4349 >> _4224).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4197 - float3(1.0f, 0.0f, 1.0f)), _4417), lerp(dot(mad(float3((_4374 >> _4224).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4197 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_4399 >> _4224).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4197 - 1.0f.xxx), _4417), _4420), _4416.z));
        float _4192 = mad(_4427, _4189, _4191);
        _4186 *= 2.0f;
        _4189 *= 0.5f;
        _4191 = _4192;
        _4193++;
        continue;
    }
    float _4435 = lerp(_3873, _3878, lerp(0.0f, 1.0f, _3916) * mad(lerp(0.0f, 1.0f, _4191), Material_Material_PreshaderBuffer[61].w, Material_Material_PreshaderBuffer[61].z));
    float2 _4443 = float2(min(max(_3554 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4444 = _1701 * _4443;
    float2 _4445 = _4443 * _1702;
    float _4450 = _4444.x + _4444.y;
    float _4451 = _4445.x + _4445.y;
    float _4454 = _3574 * Material_Material_PreshaderBuffer[15].w;
    float _4455 = 2.0f / _4454;
    float _4456 = _4450 * _4455;
    float _4461 = mad(_4451, _4455, (_4455 * Material_Material_PreshaderBuffer[62].y) * _3858);
    float _4462 = floor(_4456);
    float _4472 = _4435 * Material_Material_PreshaderBuffer[17].z;
    float2 _4483 = float2(min(max(_3554 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4484 = _1701 * _4483;
    float2 _4485 = _4483 * _1702;
    float _4490 = _4484.x + _4484.y;
    float _4491 = _4485.x + _4485.y;
    float _4492 = _4454 * Material_Material_PreshaderBuffer[15].w;
    float _4493 = 2.0f / _4492;
    float _4494 = _4490 * _4493;
    float _4499 = mad(_4491, _4493, (_4493 * Material_Material_PreshaderBuffer[62].w) * _3858);
    float _4500 = floor(_4494);
    float _4510 = _4472 * Material_Material_PreshaderBuffer[17].z;
    float2 _4520 = float2(min(max(_3554 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4521 = _1701 * _4520;
    float2 _4522 = _4520 * _1702;
    float _4527 = _4521.x + _4521.y;
    float _4528 = _4522.x + _4522.y;
    float _4530 = 2.0f / (_4492 * Material_Material_PreshaderBuffer[15].w);
    float _4531 = _4527 * _4530;
    float _4536 = mad(_4528, _4530, (_4530 * Material_Material_PreshaderBuffer[63].y) * _3858);
    float _4537 = floor(_4531);
    float _4561 = (abs(Material_Material_PreshaderBuffer[64].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[64].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[64].x : Material_Material_PreshaderBuffer[64].y) : Material_Material_PreshaderBuffer[64].x;
    float _4569 = (abs(_4561 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_4561 >= 1.0f) ? Material_Material_PreshaderBuffer[64].z : Material_Material_PreshaderBuffer[64].x) : Material_Material_PreshaderBuffer[64].x;
    float3 _4579 = float3(min(max((abs(_4569) > 9.9999997473787516355514526367188e-06f) ? ((_4569 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[65].w, 0.0f);
    float2 _4585 = float2(min(max(_4579 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4586 = _1701 * _4585;
    float2 _4587 = _4585 * _1702;
    float _4592 = _4586.x + _4586.y;
    float _4593 = _4587.x + _4587.y;
    float _4596 = _3571 * Material_Material_PreshaderBuffer[23].w;
    float _4599 = Material_Material_PreshaderBuffer[67].x * _4596;
    float _4600 = 2.0f / _4599;
    float _4601 = _4592 * _4600;
    float _4606 = mad(_4593, _4600, (_4600 * Material_Material_PreshaderBuffer[67].y) * _3858);
    float _4607 = floor(_4601);
    float _4617 = _4435 * Material_Material_PreshaderBuffer[25].w;
    float2 _4625 = float2(min(max(_4579 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4626 = _1701 * _4625;
    float2 _4627 = _4625 * _1702;
    float _4632 = _4626.x + _4626.y;
    float _4633 = _4627.x + _4627.y;
    float _4634 = _4599 * Material_Material_PreshaderBuffer[15].w;
    float _4635 = 2.0f / _4634;
    float _4636 = _4632 * _4635;
    float _4641 = mad(_4633, _4635, (_4635 * Material_Material_PreshaderBuffer[67].z) * _3858);
    float _4642 = floor(_4636);
    float _4652 = _4617 * Material_Material_PreshaderBuffer[17].z;
    float2 _4663 = float2(min(max(_4579 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4664 = _1701 * _4663;
    float2 _4665 = _4663 * _1702;
    float _4670 = _4664.x + _4664.y;
    float _4671 = _4665.x + _4665.y;
    float _4672 = _4634 * Material_Material_PreshaderBuffer[15].w;
    float _4673 = 2.0f / _4672;
    float _4674 = _4670 * _4673;
    float _4679 = mad(_4671, _4673, (_4673 * Material_Material_PreshaderBuffer[67].w) * _3858);
    float _4680 = floor(_4674);
    float _4690 = _4652 * Material_Material_PreshaderBuffer[17].z;
    float2 _4700 = float2(min(max(_4579 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4701 = _1701 * _4700;
    float2 _4702 = _4700 * _1702;
    float _4707 = _4701.x + _4701.y;
    float _4708 = _4702.x + _4702.y;
    float _4710 = 2.0f / (_4672 * Material_Material_PreshaderBuffer[15].w);
    float _4711 = _4707 * _4710;
    float _4716 = mad(_4708, _4710, (_4710 * Material_Material_PreshaderBuffer[68].x) * _3858);
    float _4717 = floor(_4711);
    float _4727 = _4690 * Material_Material_PreshaderBuffer[17].z;
    float3 _4732 = (((float3(_551, _551, sin(mad(mad(_3576, 6.283185482025146484375f, _3861 * (-6.283185482025146484375f)), 2097152.0f, mad(_3860, 6.283185482025146484375f, floor(mad(mad(_3567, _3575, -_3861), 2097152.0f, _3860)) * (-6.283185482025146484375f)))) * _4435) + float3(_551, _551, sin(mad(mad(_4456, 6.283185482025146484375f, _4462 * (-6.283185482025146484375f)), 2097152.0f, mad(_4461, 6.283185482025146484375f, floor(mad(mad(_4450, _4455, -_4462), 2097152.0f, _4461)) * (-6.283185482025146484375f)))) * _4472)) + float3(_551, _551, sin(mad(mad(_4494, 6.283185482025146484375f, _4500 * (-6.283185482025146484375f)), 2097152.0f, mad(_4499, 6.283185482025146484375f, floor(mad(mad(_4490, _4493, -_4500), 2097152.0f, _4499)) * (-6.283185482025146484375f)))) * _4510)) + float3(_551, _551, sin(mad(mad(_4531, 6.283185482025146484375f, _4537 * (-6.283185482025146484375f)), 2097152.0f, mad(_4536, 6.283185482025146484375f, floor(mad(mad(_4527, _4530, -_4537), 2097152.0f, _4536)) * (-6.283185482025146484375f)))) * (_4510 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_551, _551, sin(mad(mad(_4601, 6.283185482025146484375f, _4607 * (-6.283185482025146484375f)), 2097152.0f, mad(_4606, 6.283185482025146484375f, floor(mad(mad(_4592, _4600, -_4607), 2097152.0f, _4606)) * (-6.283185482025146484375f)))) * _4617) + float3(_551, _551, sin(mad(mad(_4636, 6.283185482025146484375f, _4642 * (-6.283185482025146484375f)), 2097152.0f, mad(_4641, 6.283185482025146484375f, floor(mad(mad(_4632, _4635, -_4642), 2097152.0f, _4641)) * (-6.283185482025146484375f)))) * _4652)) + float3(_551, _551, sin(mad(mad(_4674, 6.283185482025146484375f, _4680 * (-6.283185482025146484375f)), 2097152.0f, mad(_4679, 6.283185482025146484375f, floor(mad(mad(_4670, _4673, -_4680), 2097152.0f, _4679)) * (-6.283185482025146484375f)))) * _4690)) + float3(_551, _551, sin(mad(mad(_4711, 6.283185482025146484375f, _4717 * (-6.283185482025146484375f)), 2097152.0f, mad(_4716, 6.283185482025146484375f, floor(mad(mad(_4707, _4710, -_4717), 2097152.0f, _4716)) * (-6.283185482025146484375f)))) * _4727));
    float _4742 = (abs(Material_Material_PreshaderBuffer[68].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[68].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[68].y : Material_Material_PreshaderBuffer[68].z) : Material_Material_PreshaderBuffer[68].y;
    float _4750 = (abs(_4742 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_4742 >= 1.0f) ? Material_Material_PreshaderBuffer[68].w : Material_Material_PreshaderBuffer[68].y) : Material_Material_PreshaderBuffer[68].y;
    float3 _4760 = float3(min(max((abs(_4750) > 9.9999997473787516355514526367188e-06f) ? ((_4750 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[70].x, 0.0f);
    float2 _4766 = float2(min(max(_4760 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4767 = _1701 * _4766;
    float2 _4768 = _4766 * _1702;
    float _4773 = _4767.x + _4767.y;
    float _4774 = _4768.x + _4768.y;
    float _4777 = Material_Material_PreshaderBuffer[71].y * _4596;
    float _4778 = 2.0f / _4777;
    float _4779 = _4773 * _4778;
    float _4782 = mad(_4774, _4778, (_4778 * Material_Material_PreshaderBuffer[67].y) * _3858);
    float _4783 = floor(_4779);
    float2 _4800 = float2(min(max(_4760 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4801 = _1701 * _4800;
    float2 _4802 = _4800 * _1702;
    float _4807 = _4801.x + _4801.y;
    float _4808 = _4802.x + _4802.y;
    float _4809 = _4777 * Material_Material_PreshaderBuffer[15].w;
    float _4810 = 2.0f / _4809;
    float _4811 = _4807 * _4810;
    float _4814 = mad(_4808, _4810, (_4810 * Material_Material_PreshaderBuffer[67].z) * _3858);
    float _4815 = floor(_4811);
    float2 _4835 = float2(min(max(_4760 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4836 = _1701 * _4835;
    float2 _4837 = _4835 * _1702;
    float _4842 = _4836.x + _4836.y;
    float _4843 = _4837.x + _4837.y;
    float _4844 = _4809 * Material_Material_PreshaderBuffer[15].w;
    float _4845 = 2.0f / _4844;
    float _4846 = _4842 * _4845;
    float _4849 = mad(_4843, _4845, (_4845 * Material_Material_PreshaderBuffer[67].w) * _3858);
    float _4850 = floor(_4846);
    float2 _4869 = float2(min(max(_4760 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4870 = _1701 * _4869;
    float2 _4871 = _4869 * _1702;
    float _4876 = _4870.x + _4870.y;
    float _4877 = _4871.x + _4871.y;
    float _4879 = 2.0f / (_4844 * Material_Material_PreshaderBuffer[15].w);
    float _4880 = _4876 * _4879;
    float _4883 = mad(_4877, _4879, (_4879 * Material_Material_PreshaderBuffer[68].x) * _3858);
    float _4884 = floor(_4880);
    float3 _4898 = _4732 + (((float3(_551, _551, sin(mad(mad(_4779, 6.283185482025146484375f, _4783 * (-6.283185482025146484375f)), 2097152.0f, mad(_4782, 6.283185482025146484375f, floor(mad(mad(_4773, _4778, -_4783), 2097152.0f, _4782)) * (-6.283185482025146484375f)))) * _4617) + float3(_551, _551, sin(mad(mad(_4811, 6.283185482025146484375f, _4815 * (-6.283185482025146484375f)), 2097152.0f, mad(_4814, 6.283185482025146484375f, floor(mad(mad(_4807, _4810, -_4815), 2097152.0f, _4814)) * (-6.283185482025146484375f)))) * _4652)) + float3(_551, _551, sin(mad(mad(_4846, 6.283185482025146484375f, _4850 * (-6.283185482025146484375f)), 2097152.0f, mad(_4849, 6.283185482025146484375f, floor(mad(mad(_4842, _4845, -_4850), 2097152.0f, _4849)) * (-6.283185482025146484375f)))) * _4690)) + float3(_551, _551, sin(mad(mad(_4880, 6.283185482025146484375f, _4884 * (-6.283185482025146484375f)), 2097152.0f, mad(_4883, 6.283185482025146484375f, floor(mad(mad(_4876, _4879, -_4884), 2097152.0f, _4883)) * (-6.283185482025146484375f)))) * _4727));
    float _4899 = _3571 * 0.800000011920928955078125f;
    float _4900 = Material_Material_PreshaderBuffer[57].z * _4899;
    float _4901 = 2.0f / _4900;
    float _4902 = _3567 * _4901;
    float _4907 = mad(_3568, _4901, (_4901 * Material_Material_PreshaderBuffer[71].z) * _3858);
    float _4908 = floor(_4902);
    float _4918 = _4435 * 0.800000011920928955078125f;
    float _4921 = _4900 * Material_Material_PreshaderBuffer[15].w;
    float _4922 = 2.0f / _4921;
    float _4923 = _4450 * _4922;
    float _4928 = mad(_4451, _4922, (_4922 * Material_Material_PreshaderBuffer[71].w) * _3858);
    float _4929 = floor(_4923);
    float _4939 = _4918 * Material_Material_PreshaderBuffer[17].z;
    float _4945 = _4921 * Material_Material_PreshaderBuffer[15].w;
    float _4946 = 2.0f / _4945;
    float _4947 = _4490 * _4946;
    float _4952 = mad(_4491, _4946, (_4946 * Material_Material_PreshaderBuffer[72].x) * _3858);
    float _4953 = floor(_4947);
    float _4963 = _4939 * Material_Material_PreshaderBuffer[17].z;
    float _4969 = 2.0f / (_4945 * Material_Material_PreshaderBuffer[15].w);
    float _4970 = _4527 * _4969;
    float _4975 = mad(_4528, _4969, (_4969 * Material_Material_PreshaderBuffer[72].y) * _3858);
    float _4976 = floor(_4970);
    float _4986 = _4963 * Material_Material_PreshaderBuffer[17].z;
    float _4991 = _4899 * Material_Material_PreshaderBuffer[23].w;
    float _4992 = Material_Material_PreshaderBuffer[67].x * _4991;
    float _4993 = 2.0f / _4992;
    float _4994 = _4592 * _4993;
    float _4999 = mad(_4593, _4993, (_4993 * Material_Material_PreshaderBuffer[72].z) * _3858);
    float _5000 = floor(_4994);
    float _5010 = _4918 * Material_Material_PreshaderBuffer[25].w;
    float _5013 = _4992 * Material_Material_PreshaderBuffer[15].w;
    float _5014 = 2.0f / _5013;
    float _5015 = _4632 * _5014;
    float _5020 = mad(_4633, _5014, (_5014 * Material_Material_PreshaderBuffer[72].w) * _3858);
    float _5021 = floor(_5015);
    float _5031 = _5010 * Material_Material_PreshaderBuffer[17].z;
    float _5037 = _5013 * Material_Material_PreshaderBuffer[15].w;
    float _5038 = 2.0f / _5037;
    float _5039 = _4670 * _5038;
    float _5044 = mad(_4671, _5038, (_5038 * Material_Material_PreshaderBuffer[73].x) * _3858);
    float _5045 = floor(_5039);
    float _5055 = _5031 * Material_Material_PreshaderBuffer[17].z;
    float _5061 = 2.0f / (_5037 * Material_Material_PreshaderBuffer[15].w);
    float _5062 = _4707 * _5061;
    float _5067 = mad(_4708, _5061, (_5061 * Material_Material_PreshaderBuffer[73].y) * _3858);
    float _5068 = floor(_5062);
    float _5078 = _5055 * Material_Material_PreshaderBuffer[17].z;
    float3 _5083 = (((float3(_551, _551, sin(mad(mad(_4902, 6.283185482025146484375f, _4908 * (-6.283185482025146484375f)), 2097152.0f, mad(_4907, 6.283185482025146484375f, floor(mad(mad(_3567, _4901, -_4908), 2097152.0f, _4907)) * (-6.283185482025146484375f)))) * _4918) + float3(_551, _551, sin(mad(mad(_4923, 6.283185482025146484375f, _4929 * (-6.283185482025146484375f)), 2097152.0f, mad(_4928, 6.283185482025146484375f, floor(mad(mad(_4450, _4922, -_4929), 2097152.0f, _4928)) * (-6.283185482025146484375f)))) * _4939)) + float3(_551, _551, sin(mad(mad(_4947, 6.283185482025146484375f, _4953 * (-6.283185482025146484375f)), 2097152.0f, mad(_4952, 6.283185482025146484375f, floor(mad(mad(_4490, _4946, -_4953), 2097152.0f, _4952)) * (-6.283185482025146484375f)))) * _4963)) + float3(_551, _551, sin(mad(mad(_4970, 6.283185482025146484375f, _4976 * (-6.283185482025146484375f)), 2097152.0f, mad(_4975, 6.283185482025146484375f, floor(mad(mad(_4527, _4969, -_4976), 2097152.0f, _4975)) * (-6.283185482025146484375f)))) * _4986)) + (((float3(_551, _551, sin(mad(mad(_4994, 6.283185482025146484375f, _5000 * (-6.283185482025146484375f)), 2097152.0f, mad(_4999, 6.283185482025146484375f, floor(mad(mad(_4592, _4993, -_5000), 2097152.0f, _4999)) * (-6.283185482025146484375f)))) * _5010) + float3(_551, _551, sin(mad(mad(_5015, 6.283185482025146484375f, _5021 * (-6.283185482025146484375f)), 2097152.0f, mad(_5020, 6.283185482025146484375f, floor(mad(mad(_4632, _5014, -_5021), 2097152.0f, _5020)) * (-6.283185482025146484375f)))) * _5031)) + float3(_551, _551, sin(mad(mad(_5039, 6.283185482025146484375f, _5045 * (-6.283185482025146484375f)), 2097152.0f, mad(_5044, 6.283185482025146484375f, floor(mad(mad(_4670, _5038, -_5045), 2097152.0f, _5044)) * (-6.283185482025146484375f)))) * _5055)) + float3(_551, _551, sin(mad(mad(_5062, 6.283185482025146484375f, _5068 * (-6.283185482025146484375f)), 2097152.0f, mad(_5067, 6.283185482025146484375f, floor(mad(mad(_4707, _5061, -_5068), 2097152.0f, _5067)) * (-6.283185482025146484375f)))) * _5078));
    float _5084 = Material_Material_PreshaderBuffer[71].y * _4991;
    float _5085 = 2.0f / _5084;
    float _5086 = _4773 * _5085;
    float _5089 = mad(_4774, _5085, (_5085 * Material_Material_PreshaderBuffer[72].z) * _3858);
    float _5090 = floor(_5086);
    float _5102 = _5084 * Material_Material_PreshaderBuffer[15].w;
    float _5103 = 2.0f / _5102;
    float _5104 = _4807 * _5103;
    float _5107 = mad(_4808, _5103, (_5103 * Material_Material_PreshaderBuffer[72].w) * _3858);
    float _5108 = floor(_5104);
    float _5123 = _5102 * Material_Material_PreshaderBuffer[15].w;
    float _5124 = 2.0f / _5123;
    float _5125 = _4842 * _5124;
    float _5128 = mad(_4843, _5124, (_5124 * Material_Material_PreshaderBuffer[73].x) * _3858);
    float _5129 = floor(_5125);
    float _5144 = 2.0f / (_5123 * Material_Material_PreshaderBuffer[15].w);
    float _5145 = _4876 * _5144;
    float _5148 = mad(_4877, _5144, (_5144 * Material_Material_PreshaderBuffer[73].y) * _3858);
    float _5149 = floor(_5145);
    float3 _5163 = _5083 + (((float3(_551, _551, sin(mad(mad(_5086, 6.283185482025146484375f, _5090 * (-6.283185482025146484375f)), 2097152.0f, mad(_5089, 6.283185482025146484375f, floor(mad(mad(_4773, _5085, -_5090), 2097152.0f, _5089)) * (-6.283185482025146484375f)))) * _5010) + float3(_551, _551, sin(mad(mad(_5104, 6.283185482025146484375f, _5108 * (-6.283185482025146484375f)), 2097152.0f, mad(_5107, 6.283185482025146484375f, floor(mad(mad(_4807, _5103, -_5108), 2097152.0f, _5107)) * (-6.283185482025146484375f)))) * _5031)) + float3(_551, _551, sin(mad(mad(_5125, 6.283185482025146484375f, _5129 * (-6.283185482025146484375f)), 2097152.0f, mad(_5128, 6.283185482025146484375f, floor(mad(mad(_4842, _5124, -_5129), 2097152.0f, _5128)) * (-6.283185482025146484375f)))) * _5055)) + float3(_551, _551, sin(mad(mad(_5145, 6.283185482025146484375f, _5149 * (-6.283185482025146484375f)), 2097152.0f, mad(_5148, 6.283185482025146484375f, floor(mad(mad(_4876, _5144, -_5149), 2097152.0f, _5148)) * (-6.283185482025146484375f)))) * _5078));
    float _5164 = _3571 * 4.0f;
    float _5165 = Material_Material_PreshaderBuffer[57].z * _5164;
    float _5166 = 2.0f / _5165;
    float _5167 = _3567 * _5166;
    float _5172 = mad(_3568, _5166, (_5166 * Material_Material_PreshaderBuffer[73].z) * _3858);
    float _5173 = floor(_5167);
    float _5185 = _5165 * Material_Material_PreshaderBuffer[15].w;
    float _5186 = 2.0f / _5185;
    float _5187 = _4450 * _5186;
    float _5192 = mad(_4451, _5186, (_5186 * Material_Material_PreshaderBuffer[73].w) * _3858);
    float _5193 = floor(_5187);
    float _5208 = _5185 * Material_Material_PreshaderBuffer[15].w;
    float _5209 = 2.0f / _5208;
    float _5210 = _4490 * _5209;
    float _5215 = mad(_4491, _5209, (_5209 * Material_Material_PreshaderBuffer[74].x) * _3858);
    float _5216 = floor(_5210);
    float _5231 = 2.0f / (_5208 * Material_Material_PreshaderBuffer[15].w);
    float _5232 = _4527 * _5231;
    float _5237 = mad(_4528, _5231, (_5231 * Material_Material_PreshaderBuffer[74].y) * _3858);
    float _5238 = floor(_5232);
    float _5252 = _5164 * Material_Material_PreshaderBuffer[23].w;
    float _5253 = Material_Material_PreshaderBuffer[67].x * _5252;
    float _5254 = 2.0f / _5253;
    float _5255 = _4592 * _5254;
    float _5260 = mad(_4593, _5254, (_5254 * Material_Material_PreshaderBuffer[74].z) * _3858);
    float _5261 = floor(_5255);
    float _5273 = _5253 * Material_Material_PreshaderBuffer[15].w;
    float _5274 = 2.0f / _5273;
    float _5275 = _4632 * _5274;
    float _5280 = mad(_4633, _5274, (_5274 * Material_Material_PreshaderBuffer[74].w) * _3858);
    float _5281 = floor(_5275);
    float _5296 = _5273 * Material_Material_PreshaderBuffer[15].w;
    float _5297 = 2.0f / _5296;
    float _5298 = _4670 * _5297;
    float _5303 = mad(_4671, _5297, (_5297 * Material_Material_PreshaderBuffer[75].x) * _3858);
    float _5304 = floor(_5298);
    float _5319 = 2.0f / (_5296 * Material_Material_PreshaderBuffer[15].w);
    float _5320 = _4707 * _5319;
    float _5325 = mad(_4708, _5319, (_5319 * Material_Material_PreshaderBuffer[75].y) * _3858);
    float _5326 = floor(_5320);
    float3 _5340 = (((float3(_551, _551, sin(mad(mad(_5167, 6.283185482025146484375f, _5173 * (-6.283185482025146484375f)), 2097152.0f, mad(_5172, 6.283185482025146484375f, floor(mad(mad(_3567, _5166, -_5173), 2097152.0f, _5172)) * (-6.283185482025146484375f)))) * _4918) + float3(_551, _551, sin(mad(mad(_5187, 6.283185482025146484375f, _5193 * (-6.283185482025146484375f)), 2097152.0f, mad(_5192, 6.283185482025146484375f, floor(mad(mad(_4450, _5186, -_5193), 2097152.0f, _5192)) * (-6.283185482025146484375f)))) * _4939)) + float3(_551, _551, sin(mad(mad(_5210, 6.283185482025146484375f, _5216 * (-6.283185482025146484375f)), 2097152.0f, mad(_5215, 6.283185482025146484375f, floor(mad(mad(_4490, _5209, -_5216), 2097152.0f, _5215)) * (-6.283185482025146484375f)))) * _4963)) + float3(_551, _551, sin(mad(mad(_5232, 6.283185482025146484375f, _5238 * (-6.283185482025146484375f)), 2097152.0f, mad(_5237, 6.283185482025146484375f, floor(mad(mad(_4527, _5231, -_5238), 2097152.0f, _5237)) * (-6.283185482025146484375f)))) * _4986)) + (((float3(_551, _551, sin(mad(mad(_5255, 6.283185482025146484375f, _5261 * (-6.283185482025146484375f)), 2097152.0f, mad(_5260, 6.283185482025146484375f, floor(mad(mad(_4592, _5254, -_5261), 2097152.0f, _5260)) * (-6.283185482025146484375f)))) * _5010) + float3(_551, _551, sin(mad(mad(_5275, 6.283185482025146484375f, _5281 * (-6.283185482025146484375f)), 2097152.0f, mad(_5280, 6.283185482025146484375f, floor(mad(mad(_4632, _5274, -_5281), 2097152.0f, _5280)) * (-6.283185482025146484375f)))) * _5031)) + float3(_551, _551, sin(mad(mad(_5298, 6.283185482025146484375f, _5304 * (-6.283185482025146484375f)), 2097152.0f, mad(_5303, 6.283185482025146484375f, floor(mad(mad(_4670, _5297, -_5304), 2097152.0f, _5303)) * (-6.283185482025146484375f)))) * _5055)) + float3(_551, _551, sin(mad(mad(_5320, 6.283185482025146484375f, _5326 * (-6.283185482025146484375f)), 2097152.0f, mad(_5325, 6.283185482025146484375f, floor(mad(mad(_4707, _5319, -_5326), 2097152.0f, _5325)) * (-6.283185482025146484375f)))) * _5078));
    float _5341 = Material_Material_PreshaderBuffer[71].y * _5252;
    float _5342 = 2.0f / _5341;
    float _5343 = _4773 * _5342;
    float _5346 = mad(_4774, _5342, (_5342 * Material_Material_PreshaderBuffer[74].z) * _3858);
    float _5347 = floor(_5343);
    float _5359 = _5341 * Material_Material_PreshaderBuffer[15].w;
    float _5360 = 2.0f / _5359;
    float _5361 = _4807 * _5360;
    float _5364 = mad(_4808, _5360, (_5360 * Material_Material_PreshaderBuffer[74].w) * _3858);
    float _5365 = floor(_5361);
    float _5380 = _5359 * Material_Material_PreshaderBuffer[15].w;
    float _5381 = 2.0f / _5380;
    float _5382 = _4842 * _5381;
    float _5385 = mad(_4843, _5381, (_5381 * Material_Material_PreshaderBuffer[75].x) * _3858);
    float _5386 = floor(_5382);
    float _5401 = 2.0f / (_5380 * Material_Material_PreshaderBuffer[15].w);
    float _5402 = _4876 * _5401;
    float _5405 = mad(_4877, _5401, (_5401 * Material_Material_PreshaderBuffer[75].y) * _3858);
    float _5406 = floor(_5402);
    float3 _5420 = _5340 + (((float3(_551, _551, sin(mad(mad(_5343, 6.283185482025146484375f, _5347 * (-6.283185482025146484375f)), 2097152.0f, mad(_5346, 6.283185482025146484375f, floor(mad(mad(_4773, _5342, -_5347), 2097152.0f, _5346)) * (-6.283185482025146484375f)))) * _5010) + float3(_551, _551, sin(mad(mad(_5361, 6.283185482025146484375f, _5365 * (-6.283185482025146484375f)), 2097152.0f, mad(_5364, 6.283185482025146484375f, floor(mad(mad(_4807, _5360, -_5365), 2097152.0f, _5364)) * (-6.283185482025146484375f)))) * _5031)) + float3(_551, _551, sin(mad(mad(_5382, 6.283185482025146484375f, _5386 * (-6.283185482025146484375f)), 2097152.0f, mad(_5385, 6.283185482025146484375f, floor(mad(mad(_4842, _5381, -_5386), 2097152.0f, _5385)) * (-6.283185482025146484375f)))) * _5055)) + float3(_551, _551, sin(mad(mad(_5402, 6.283185482025146484375f, _5406 * (-6.283185482025146484375f)), 2097152.0f, mad(_5405, 6.283185482025146484375f, floor(mad(mad(_4876, _5401, -_5406), 2097152.0f, _5405)) * (-6.283185482025146484375f)))) * _5078));
    float _5421 = _3571 * 0.75f;
    float _5422 = Material_Material_PreshaderBuffer[57].z * _5421;
    float _5423 = 2.0f / _5422;
    float _5424 = _3567 * _5423;
    float _5427 = mad(_3568, _5423, (_5423 * Material_Material_PreshaderBuffer[71].z) * _3858);
    float _5428 = floor(_5424);
    float _5438 = _4435 * 0.5f;
    float _5441 = _5422 * Material_Material_PreshaderBuffer[15].w;
    float _5442 = 2.0f / _5441;
    float _5443 = _4450 * _5442;
    float _5446 = mad(_4451, _5442, (_5442 * Material_Material_PreshaderBuffer[71].w) * _3858);
    float _5447 = floor(_5443);
    float _5457 = _5438 * Material_Material_PreshaderBuffer[17].z;
    float _5463 = _5441 * Material_Material_PreshaderBuffer[15].w;
    float _5464 = 2.0f / _5463;
    float _5465 = _4490 * _5464;
    float _5468 = mad(_4491, _5464, (_5464 * Material_Material_PreshaderBuffer[72].x) * _3858);
    float _5469 = floor(_5465);
    float _5479 = _5457 * Material_Material_PreshaderBuffer[17].z;
    float _5485 = 2.0f / (_5463 * Material_Material_PreshaderBuffer[15].w);
    float _5486 = _4527 * _5485;
    float _5489 = mad(_4528, _5485, (_5485 * Material_Material_PreshaderBuffer[72].y) * _3858);
    float _5490 = floor(_5486);
    float _5505 = _5421 * Material_Material_PreshaderBuffer[23].w;
    float _5506 = Material_Material_PreshaderBuffer[67].x * _5505;
    float _5507 = 2.0f / _5506;
    float _5508 = _4592 * _5507;
    float _5511 = mad(_4593, _5507, (_5507 * Material_Material_PreshaderBuffer[72].z) * _3858);
    float _5512 = floor(_5508);
    float _5522 = _5438 * Material_Material_PreshaderBuffer[25].w;
    float _5525 = _5506 * Material_Material_PreshaderBuffer[15].w;
    float _5526 = 2.0f / _5525;
    float _5527 = _4632 * _5526;
    float _5530 = mad(_4633, _5526, (_5526 * Material_Material_PreshaderBuffer[72].w) * _3858);
    float _5531 = floor(_5527);
    float _5541 = _5522 * Material_Material_PreshaderBuffer[17].z;
    float _5547 = _5525 * Material_Material_PreshaderBuffer[15].w;
    float _5548 = 2.0f / _5547;
    float _5549 = _4670 * _5548;
    float _5552 = mad(_4671, _5548, (_5548 * Material_Material_PreshaderBuffer[73].x) * _3858);
    float _5553 = floor(_5549);
    float _5563 = _5541 * Material_Material_PreshaderBuffer[17].z;
    float _5569 = 2.0f / (_5547 * Material_Material_PreshaderBuffer[15].w);
    float _5570 = _4707 * _5569;
    float _5573 = mad(_4708, _5569, (_5569 * Material_Material_PreshaderBuffer[73].y) * _3858);
    float _5574 = floor(_5570);
    float _5584 = _5563 * Material_Material_PreshaderBuffer[17].z;
    float3 _5589 = (((float3(_551, _551, sin(mad(mad(_5424, 6.283185482025146484375f, _5428 * (-6.283185482025146484375f)), 2097152.0f, mad(_5427, 6.283185482025146484375f, floor(mad(mad(_3567, _5423, -_5428), 2097152.0f, _5427)) * (-6.283185482025146484375f)))) * _5438) + float3(_551, _551, sin(mad(mad(_5443, 6.283185482025146484375f, _5447 * (-6.283185482025146484375f)), 2097152.0f, mad(_5446, 6.283185482025146484375f, floor(mad(mad(_4450, _5442, -_5447), 2097152.0f, _5446)) * (-6.283185482025146484375f)))) * _5457)) + float3(_551, _551, sin(mad(mad(_5465, 6.283185482025146484375f, _5469 * (-6.283185482025146484375f)), 2097152.0f, mad(_5468, 6.283185482025146484375f, floor(mad(mad(_4490, _5464, -_5469), 2097152.0f, _5468)) * (-6.283185482025146484375f)))) * _5479)) + float3(_551, _551, sin(mad(mad(_5486, 6.283185482025146484375f, _5490 * (-6.283185482025146484375f)), 2097152.0f, mad(_5489, 6.283185482025146484375f, floor(mad(mad(_4527, _5485, -_5490), 2097152.0f, _5489)) * (-6.283185482025146484375f)))) * (_5479 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_551, _551, sin(mad(mad(_5508, 6.283185482025146484375f, _5512 * (-6.283185482025146484375f)), 2097152.0f, mad(_5511, 6.283185482025146484375f, floor(mad(mad(_4592, _5507, -_5512), 2097152.0f, _5511)) * (-6.283185482025146484375f)))) * _5522) + float3(_551, _551, sin(mad(mad(_5527, 6.283185482025146484375f, _5531 * (-6.283185482025146484375f)), 2097152.0f, mad(_5530, 6.283185482025146484375f, floor(mad(mad(_4632, _5526, -_5531), 2097152.0f, _5530)) * (-6.283185482025146484375f)))) * _5541)) + float3(_551, _551, sin(mad(mad(_5549, 6.283185482025146484375f, _5553 * (-6.283185482025146484375f)), 2097152.0f, mad(_5552, 6.283185482025146484375f, floor(mad(mad(_4670, _5548, -_5553), 2097152.0f, _5552)) * (-6.283185482025146484375f)))) * _5563)) + float3(_551, _551, sin(mad(mad(_5570, 6.283185482025146484375f, _5574 * (-6.283185482025146484375f)), 2097152.0f, mad(_5573, 6.283185482025146484375f, floor(mad(mad(_4707, _5569, -_5574), 2097152.0f, _5573)) * (-6.283185482025146484375f)))) * _5584));
    float _5590 = Material_Material_PreshaderBuffer[71].y * _5505;
    float _5591 = 2.0f / _5590;
    float _5592 = _4773 * _5591;
    float _5595 = mad(_4774, _5591, (_5591 * Material_Material_PreshaderBuffer[72].z) * _3858);
    float _5596 = floor(_5592);
    float _5608 = _5590 * Material_Material_PreshaderBuffer[15].w;
    float _5609 = 2.0f / _5608;
    float _5610 = _4807 * _5609;
    float _5613 = mad(_4808, _5609, (_5609 * Material_Material_PreshaderBuffer[72].w) * _3858);
    float _5614 = floor(_5610);
    float _5629 = _5608 * Material_Material_PreshaderBuffer[15].w;
    float _5630 = 2.0f / _5629;
    float _5631 = _4842 * _5630;
    float _5634 = mad(_4843, _5630, (_5630 * Material_Material_PreshaderBuffer[73].x) * _3858);
    float _5635 = floor(_5631);
    float _5650 = 2.0f / (_5629 * Material_Material_PreshaderBuffer[15].w);
    float _5651 = _4876 * _5650;
    float _5654 = mad(_4877, _5650, (_5650 * Material_Material_PreshaderBuffer[73].y) * _3858);
    float _5655 = floor(_5651);
    float3 _5669 = _5589 + (((float3(_551, _551, sin(mad(mad(_5592, 6.283185482025146484375f, _5596 * (-6.283185482025146484375f)), 2097152.0f, mad(_5595, 6.283185482025146484375f, floor(mad(mad(_4773, _5591, -_5596), 2097152.0f, _5595)) * (-6.283185482025146484375f)))) * _5522) + float3(_551, _551, sin(mad(mad(_5610, 6.283185482025146484375f, _5614 * (-6.283185482025146484375f)), 2097152.0f, mad(_5613, 6.283185482025146484375f, floor(mad(mad(_4807, _5609, -_5614), 2097152.0f, _5613)) * (-6.283185482025146484375f)))) * _5541)) + float3(_551, _551, sin(mad(mad(_5631, 6.283185482025146484375f, _5635 * (-6.283185482025146484375f)), 2097152.0f, mad(_5634, 6.283185482025146484375f, floor(mad(mad(_4842, _5630, -_5635), 2097152.0f, _5634)) * (-6.283185482025146484375f)))) * _5563)) + float3(_551, _551, sin(mad(mad(_5651, 6.283185482025146484375f, _5655 * (-6.283185482025146484375f)), 2097152.0f, mad(_5654, 6.283185482025146484375f, floor(mad(mad(_4876, _5650, -_5655), 2097152.0f, _5654)) * (-6.283185482025146484375f)))) * _5584));
    float _5682 = (abs(Material_Material_PreshaderBuffer[75].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[75].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[75].z : Material_Material_PreshaderBuffer[75].w) : Material_Material_PreshaderBuffer[75].z;
    float _5690 = (abs(_5682 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_5682 >= 1.0f) ? Material_Material_PreshaderBuffer[76].x : Material_Material_PreshaderBuffer[75].z) : Material_Material_PreshaderBuffer[75].z;
    float3 _5700 = float3(min(max((abs(_5690) > 9.9999997473787516355514526367188e-06f) ? ((_5690 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[77].y, 0.0f);
    float2 _5706 = float2(min(max(_5700 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _5707 = _1701 * _5706;
    float2 _5708 = _5706 * _1702;
    float _5713 = _5707.x + _5707.y;
    float _5714 = _5708.x + _5708.y;
    float _5717 = Material_Material_PreshaderBuffer[78].z * _3571;
    float _5718 = 2.0f / _5717;
    float _5719 = _5713 * _5718;
    float3 _5722 = View_View_ViewTilePosition * _3591;
    float3 _5723 = (_647 + 10000.0f.xxx) * _3591;
    float3 _5724 = _5722 * _3582;
    float3 _5726 = (_3582 * _5723) * _3587;
    float3 _5733 = float3(_5726.xy, (_3599 + _5726.z.xx).x);
    float3 _5744 = 0.0f.xxx;
    float _5749 = 0.0f;
    _5744 = ((mad(_5724, _3587, -floor(mad(_5724, _3587, (_5733 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _5733) * 1.0f;
    _5749 = 0.0f;
    float _5747 = 1.0f;
    uint _5751 = 0u;
    [loop]
    for (; _5751 < 6u; )
    {
        float3 _5755 = frac(_5744);
        float _5757 = dot(floor(_5744), float3(19.0f, 47.0f, 101.0f));
        uint3 _5769 = (uint3(int3(int(_5757), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5770 = _5769.y;
        uint _5771 = _5769.z;
        uint _5774 = _5769.x + (_5770 * _5771);
        uint _5776 = _5770 + (_5771 * _5774);
        uint3 _5781 = uint3(0u, 0u, 0u);
        _5781.x = _5774 + (_5776 * (_5771 + (_5774 * _5776)));
        uint3 _5782 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _5795 = (uint3(int3(int(_5757 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5796 = _5795.y;
        uint _5797 = _5795.z;
        uint _5800 = _5795.x + (_5796 * _5797);
        uint _5802 = _5796 + (_5797 * _5800);
        uint3 _5807 = uint3(0u, 0u, 0u);
        _5807.x = _5800 + (_5802 * (_5797 + (_5800 * _5802)));
        uint3 _5820 = (uint3(int3(int(_5757 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5821 = _5820.y;
        uint _5822 = _5820.z;
        uint _5825 = _5820.x + (_5821 * _5822);
        uint _5827 = _5821 + (_5822 * _5825);
        uint3 _5832 = uint3(0u, 0u, 0u);
        _5832.x = _5825 + (_5827 * (_5822 + (_5825 * _5827)));
        uint3 _5845 = (uint3(int3(int(_5757 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5846 = _5845.y;
        uint _5847 = _5845.z;
        uint _5850 = _5845.x + (_5846 * _5847);
        uint _5852 = _5846 + (_5847 * _5850);
        uint3 _5857 = uint3(0u, 0u, 0u);
        _5857.x = _5850 + (_5852 * (_5847 + (_5850 * _5852)));
        uint3 _5870 = (uint3(int3(int(_5757 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5871 = _5870.y;
        uint _5872 = _5870.z;
        uint _5875 = _5870.x + (_5871 * _5872);
        uint _5877 = _5871 + (_5872 * _5875);
        uint3 _5882 = uint3(0u, 0u, 0u);
        _5882.x = _5875 + (_5877 * (_5872 + (_5875 * _5877)));
        uint3 _5895 = (uint3(int3(int(_5757 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5896 = _5895.y;
        uint _5897 = _5895.z;
        uint _5900 = _5895.x + (_5896 * _5897);
        uint _5902 = _5896 + (_5897 * _5900);
        uint3 _5907 = uint3(0u, 0u, 0u);
        _5907.x = _5900 + (_5902 * (_5897 + (_5900 * _5902)));
        uint3 _5920 = (uint3(int3(int(_5757 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5921 = _5920.y;
        uint _5922 = _5920.z;
        uint _5925 = _5920.x + (_5921 * _5922);
        uint _5927 = _5921 + (_5922 * _5925);
        uint3 _5932 = uint3(0u, 0u, 0u);
        _5932.x = _5925 + (_5927 * (_5922 + (_5925 * _5927)));
        uint3 _5945 = (uint3(int3(int(_5757 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5946 = _5945.y;
        uint _5947 = _5945.z;
        uint _5950 = _5945.x + (_5946 * _5947);
        uint _5952 = _5946 + (_5947 * _5950);
        uint3 _5957 = uint3(0u, 0u, 0u);
        _5957.x = _5950 + (_5952 * (_5947 + (_5950 * _5952)));
        float4 _5968 = float4(_5755, 0.0f);
        float4 _5974 = ((_5968 * _5968) * _5968) * mad(_5968, (_5968 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _5975 = _5974.x;
        float _5978 = _5974.y;
        float _5750 = mad(lerp(lerp(lerp(dot(mad(float3((_5781 >> _5782).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5755), dot(mad(float3((_5807 >> _5782).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5755 - float3(1.0f, 0.0f, 0.0f)), _5975), lerp(dot(mad(float3((_5832 >> _5782).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5755 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_5857 >> _5782).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5755 - float3(1.0f, 1.0f, 0.0f)), _5975), _5978), lerp(lerp(dot(mad(float3((_5882 >> _5782).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5755 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_5907 >> _5782).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5755 - float3(1.0f, 0.0f, 1.0f)), _5975), lerp(dot(mad(float3((_5932 >> _5782).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5755 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_5957 >> _5782).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5755 - 1.0f.xxx), _5975), _5978), _5974.z), _5747, _5749);
        _5744 *= 2.0f;
        _5747 *= 0.5f;
        _5749 = _5750;
        _5751++;
        continue;
    }
    float _5988 = lerp(_1166, _1719, clamp(lerp(0.0f, 1.0f, mad(_5749, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _5990 = mad(_5714, _5718, (_5718 * Material_Material_PreshaderBuffer[57].w) * _5988);
    float _5991 = floor(_5719);
    float3 _6001 = _5722 * _3881;
    float3 _6003 = (_3881 * _5723) * _3886;
    float3 _6010 = float3(_6003.xy, (_3896 + _6003.z.xx).x);
    float3 _6021 = 0.0f.xxx;
    float _6026 = 0.0f;
    _6021 = ((mad(_6001, _3886, -floor(mad(_6001, _3886, (_6010 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _6010) * 1.0f;
    _6026 = 0.0f;
    float _6024 = 1.0f;
    uint _6028 = 0u;
    [loop]
    for (; _6028 < 10u; )
    {
        float3 _6032 = frac(_6021);
        float _6034 = dot(floor(_6021), float3(19.0f, 47.0f, 101.0f));
        uint3 _6046 = (uint3(int3(int(_6034), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6047 = _6046.y;
        uint _6048 = _6046.z;
        uint _6051 = _6046.x + (_6047 * _6048);
        uint _6053 = _6047 + (_6048 * _6051);
        uint3 _6058 = uint3(0u, 0u, 0u);
        _6058.x = _6051 + (_6053 * (_6048 + (_6051 * _6053)));
        uint3 _6059 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _6072 = (uint3(int3(int(_6034 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6073 = _6072.y;
        uint _6074 = _6072.z;
        uint _6077 = _6072.x + (_6073 * _6074);
        uint _6079 = _6073 + (_6074 * _6077);
        uint3 _6084 = uint3(0u, 0u, 0u);
        _6084.x = _6077 + (_6079 * (_6074 + (_6077 * _6079)));
        uint3 _6097 = (uint3(int3(int(_6034 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6098 = _6097.y;
        uint _6099 = _6097.z;
        uint _6102 = _6097.x + (_6098 * _6099);
        uint _6104 = _6098 + (_6099 * _6102);
        uint3 _6109 = uint3(0u, 0u, 0u);
        _6109.x = _6102 + (_6104 * (_6099 + (_6102 * _6104)));
        uint3 _6122 = (uint3(int3(int(_6034 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6123 = _6122.y;
        uint _6124 = _6122.z;
        uint _6127 = _6122.x + (_6123 * _6124);
        uint _6129 = _6123 + (_6124 * _6127);
        uint3 _6134 = uint3(0u, 0u, 0u);
        _6134.x = _6127 + (_6129 * (_6124 + (_6127 * _6129)));
        uint3 _6147 = (uint3(int3(int(_6034 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6148 = _6147.y;
        uint _6149 = _6147.z;
        uint _6152 = _6147.x + (_6148 * _6149);
        uint _6154 = _6148 + (_6149 * _6152);
        uint3 _6159 = uint3(0u, 0u, 0u);
        _6159.x = _6152 + (_6154 * (_6149 + (_6152 * _6154)));
        uint3 _6172 = (uint3(int3(int(_6034 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6173 = _6172.y;
        uint _6174 = _6172.z;
        uint _6177 = _6172.x + (_6173 * _6174);
        uint _6179 = _6173 + (_6174 * _6177);
        uint3 _6184 = uint3(0u, 0u, 0u);
        _6184.x = _6177 + (_6179 * (_6174 + (_6177 * _6179)));
        uint3 _6197 = (uint3(int3(int(_6034 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6198 = _6197.y;
        uint _6199 = _6197.z;
        uint _6202 = _6197.x + (_6198 * _6199);
        uint _6204 = _6198 + (_6199 * _6202);
        uint3 _6209 = uint3(0u, 0u, 0u);
        _6209.x = _6202 + (_6204 * (_6199 + (_6202 * _6204)));
        uint3 _6222 = (uint3(int3(int(_6034 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6223 = _6222.y;
        uint _6224 = _6222.z;
        uint _6227 = _6222.x + (_6223 * _6224);
        uint _6229 = _6223 + (_6224 * _6227);
        uint3 _6234 = uint3(0u, 0u, 0u);
        _6234.x = _6227 + (_6229 * (_6224 + (_6227 * _6229)));
        float4 _6245 = float4(_6032, 0.0f);
        float4 _6251 = ((_6245 * _6245) * _6245) * mad(_6245, (_6245 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _6252 = _6251.x;
        float _6255 = _6251.y;
        float _6262 = abs(lerp(lerp(lerp(dot(mad(float3((_6058 >> _6059).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6032), dot(mad(float3((_6084 >> _6059).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6032 - float3(1.0f, 0.0f, 0.0f)), _6252), lerp(dot(mad(float3((_6109 >> _6059).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6032 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_6134 >> _6059).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6032 - float3(1.0f, 1.0f, 0.0f)), _6252), _6255), lerp(lerp(dot(mad(float3((_6159 >> _6059).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6032 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_6184 >> _6059).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6032 - float3(1.0f, 0.0f, 1.0f)), _6252), lerp(dot(mad(float3((_6209 >> _6059).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6032 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_6234 >> _6059).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6032 - 1.0f.xxx), _6252), _6255), _6251.z));
        float _6027 = mad(_6262, _6024, _6026);
        _6021 *= 2.0f;
        _6024 *= 0.5f;
        _6026 = _6027;
        _6028++;
        continue;
    }
    float3 _6264 = _5722 * _4156;
    float3 _6266 = (_4156 * _5723) * _4161;
    float3 _6273 = float3(_6266.xy, (_4171 + _6266.z.xx).x);
    float3 _6284 = 0.0f.xxx;
    float _6289 = 0.0f;
    _6284 = ((mad(_6264, _4161, -floor(mad(_6264, _4161, (_6273 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _6273) * 1.0f;
    _6289 = 0.0f;
    float _6287 = 1.0f;
    uint _6291 = 0u;
    [loop]
    for (; _6291 < 10u; )
    {
        float3 _6295 = frac(_6284);
        float _6297 = dot(floor(_6284), float3(19.0f, 47.0f, 101.0f));
        uint3 _6309 = (uint3(int3(int(_6297), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6310 = _6309.y;
        uint _6311 = _6309.z;
        uint _6314 = _6309.x + (_6310 * _6311);
        uint _6316 = _6310 + (_6311 * _6314);
        uint3 _6321 = uint3(0u, 0u, 0u);
        _6321.x = _6314 + (_6316 * (_6311 + (_6314 * _6316)));
        uint3 _6322 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _6335 = (uint3(int3(int(_6297 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6336 = _6335.y;
        uint _6337 = _6335.z;
        uint _6340 = _6335.x + (_6336 * _6337);
        uint _6342 = _6336 + (_6337 * _6340);
        uint3 _6347 = uint3(0u, 0u, 0u);
        _6347.x = _6340 + (_6342 * (_6337 + (_6340 * _6342)));
        uint3 _6360 = (uint3(int3(int(_6297 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6361 = _6360.y;
        uint _6362 = _6360.z;
        uint _6365 = _6360.x + (_6361 * _6362);
        uint _6367 = _6361 + (_6362 * _6365);
        uint3 _6372 = uint3(0u, 0u, 0u);
        _6372.x = _6365 + (_6367 * (_6362 + (_6365 * _6367)));
        uint3 _6385 = (uint3(int3(int(_6297 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6386 = _6385.y;
        uint _6387 = _6385.z;
        uint _6390 = _6385.x + (_6386 * _6387);
        uint _6392 = _6386 + (_6387 * _6390);
        uint3 _6397 = uint3(0u, 0u, 0u);
        _6397.x = _6390 + (_6392 * (_6387 + (_6390 * _6392)));
        uint3 _6410 = (uint3(int3(int(_6297 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6411 = _6410.y;
        uint _6412 = _6410.z;
        uint _6415 = _6410.x + (_6411 * _6412);
        uint _6417 = _6411 + (_6412 * _6415);
        uint3 _6422 = uint3(0u, 0u, 0u);
        _6422.x = _6415 + (_6417 * (_6412 + (_6415 * _6417)));
        uint3 _6435 = (uint3(int3(int(_6297 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6436 = _6435.y;
        uint _6437 = _6435.z;
        uint _6440 = _6435.x + (_6436 * _6437);
        uint _6442 = _6436 + (_6437 * _6440);
        uint3 _6447 = uint3(0u, 0u, 0u);
        _6447.x = _6440 + (_6442 * (_6437 + (_6440 * _6442)));
        uint3 _6460 = (uint3(int3(int(_6297 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6461 = _6460.y;
        uint _6462 = _6460.z;
        uint _6465 = _6460.x + (_6461 * _6462);
        uint _6467 = _6461 + (_6462 * _6465);
        uint3 _6472 = uint3(0u, 0u, 0u);
        _6472.x = _6465 + (_6467 * (_6462 + (_6465 * _6467)));
        uint3 _6485 = (uint3(int3(int(_6297 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6486 = _6485.y;
        uint _6487 = _6485.z;
        uint _6490 = _6485.x + (_6486 * _6487);
        uint _6492 = _6486 + (_6487 * _6490);
        uint3 _6497 = uint3(0u, 0u, 0u);
        _6497.x = _6490 + (_6492 * (_6487 + (_6490 * _6492)));
        float4 _6508 = float4(_6295, 0.0f);
        float4 _6514 = ((_6508 * _6508) * _6508) * mad(_6508, (_6508 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _6515 = _6514.x;
        float _6518 = _6514.y;
        float _6525 = abs(lerp(lerp(lerp(dot(mad(float3((_6321 >> _6322).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6295), dot(mad(float3((_6347 >> _6322).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6295 - float3(1.0f, 0.0f, 0.0f)), _6515), lerp(dot(mad(float3((_6372 >> _6322).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6295 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_6397 >> _6322).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6295 - float3(1.0f, 1.0f, 0.0f)), _6515), _6518), lerp(lerp(dot(mad(float3((_6422 >> _6322).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6295 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_6447 >> _6322).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6295 - float3(1.0f, 0.0f, 1.0f)), _6515), lerp(dot(mad(float3((_6472 >> _6322).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6295 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_6497 >> _6322).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6295 - 1.0f.xxx), _6515), _6518), _6514.z));
        float _6290 = mad(_6525, _6287, _6289);
        _6284 *= 2.0f;
        _6287 *= 0.5f;
        _6289 = _6290;
        _6291++;
        continue;
    }
    float _6529 = lerp(_3873, _3878, lerp(0.0f, 1.0f, _6026) * mad(lerp(0.0f, 1.0f, _6289), Material_Material_PreshaderBuffer[61].w, Material_Material_PreshaderBuffer[61].z));
    float2 _6537 = float2(min(max(_5700 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6538 = _1701 * _6537;
    float2 _6539 = _6537 * _1702;
    float _6544 = _6538.x + _6538.y;
    float _6545 = _6539.x + _6539.y;
    float _6546 = _5717 * Material_Material_PreshaderBuffer[15].w;
    float _6547 = 2.0f / _6546;
    float _6548 = _6544 * _6547;
    float _6551 = mad(_6545, _6547, (_6547 * Material_Material_PreshaderBuffer[62].y) * _5988);
    float _6552 = floor(_6548);
    float _6562 = _6529 * Material_Material_PreshaderBuffer[17].z;
    float2 _6573 = float2(min(max(_5700 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6574 = _1701 * _6573;
    float2 _6575 = _6573 * _1702;
    float _6580 = _6574.x + _6574.y;
    float _6581 = _6575.x + _6575.y;
    float _6582 = _6546 * Material_Material_PreshaderBuffer[15].w;
    float _6583 = 2.0f / _6582;
    float _6584 = _6580 * _6583;
    float _6587 = mad(_6581, _6583, (_6583 * Material_Material_PreshaderBuffer[62].w) * _5988);
    float _6588 = floor(_6584);
    float _6598 = _6562 * Material_Material_PreshaderBuffer[17].z;
    float2 _6608 = float2(min(max(_5700 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6609 = _1701 * _6608;
    float2 _6610 = _6608 * _1702;
    float _6615 = _6609.x + _6609.y;
    float _6616 = _6610.x + _6610.y;
    float _6618 = 2.0f / (_6582 * Material_Material_PreshaderBuffer[15].w);
    float _6619 = _6615 * _6618;
    float _6622 = mad(_6616, _6618, (_6618 * Material_Material_PreshaderBuffer[63].y) * _5988);
    float _6623 = floor(_6619);
    float _6647 = (abs(Material_Material_PreshaderBuffer[78].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[78].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[78].w : Material_Material_PreshaderBuffer[79].x) : Material_Material_PreshaderBuffer[78].w;
    float _6655 = (abs(_6647 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_6647 >= 1.0f) ? Material_Material_PreshaderBuffer[79].y : Material_Material_PreshaderBuffer[78].w) : Material_Material_PreshaderBuffer[78].w;
    float3 _6665 = float3(min(max((abs(_6655) > 9.9999997473787516355514526367188e-06f) ? ((_6655 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[80].z, 0.0f);
    float2 _6671 = float2(min(max(_6665 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6672 = _1701 * _6671;
    float2 _6673 = _6671 * _1702;
    float _6678 = _6672.x + _6672.y;
    float _6679 = _6673.x + _6673.y;
    float _6682 = Material_Material_PreshaderBuffer[81].w * _4596;
    float _6683 = 2.0f / _6682;
    float _6684 = _6678 * _6683;
    float _6687 = mad(_6679, _6683, (_6683 * Material_Material_PreshaderBuffer[67].y) * _5988);
    float _6688 = floor(_6684);
    float _6698 = _6529 * Material_Material_PreshaderBuffer[25].w;
    float2 _6706 = float2(min(max(_6665 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6707 = _1701 * _6706;
    float2 _6708 = _6706 * _1702;
    float _6713 = _6707.x + _6707.y;
    float _6714 = _6708.x + _6708.y;
    float _6715 = _6682 * Material_Material_PreshaderBuffer[15].w;
    float _6716 = 2.0f / _6715;
    float _6717 = _6713 * _6716;
    float _6720 = mad(_6714, _6716, (_6716 * Material_Material_PreshaderBuffer[67].z) * _5988);
    float _6721 = floor(_6717);
    float _6731 = _6698 * Material_Material_PreshaderBuffer[17].z;
    float2 _6742 = float2(min(max(_6665 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6743 = _1701 * _6742;
    float2 _6744 = _6742 * _1702;
    float _6749 = _6743.x + _6743.y;
    float _6750 = _6744.x + _6744.y;
    float _6751 = _6715 * Material_Material_PreshaderBuffer[15].w;
    float _6752 = 2.0f / _6751;
    float _6753 = _6749 * _6752;
    float _6756 = mad(_6750, _6752, (_6752 * Material_Material_PreshaderBuffer[67].w) * _5988);
    float _6757 = floor(_6753);
    float _6767 = _6731 * Material_Material_PreshaderBuffer[17].z;
    float2 _6777 = float2(min(max(_6665 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6778 = _1701 * _6777;
    float2 _6779 = _6777 * _1702;
    float _6784 = _6778.x + _6778.y;
    float _6785 = _6779.x + _6779.y;
    float _6787 = 2.0f / (_6751 * Material_Material_PreshaderBuffer[15].w);
    float _6788 = _6784 * _6787;
    float _6791 = mad(_6785, _6787, (_6787 * Material_Material_PreshaderBuffer[68].x) * _5988);
    float _6792 = floor(_6788);
    float _6802 = _6767 * Material_Material_PreshaderBuffer[17].z;
    float3 _6807 = (((float3(_551, _551, sin(mad(mad(_5719, 6.283185482025146484375f, _5991 * (-6.283185482025146484375f)), 2097152.0f, mad(_5990, 6.283185482025146484375f, floor(mad(mad(_5713, _5718, -_5991), 2097152.0f, _5990)) * (-6.283185482025146484375f)))) * _6529) + float3(_551, _551, sin(mad(mad(_6548, 6.283185482025146484375f, _6552 * (-6.283185482025146484375f)), 2097152.0f, mad(_6551, 6.283185482025146484375f, floor(mad(mad(_6544, _6547, -_6552), 2097152.0f, _6551)) * (-6.283185482025146484375f)))) * _6562)) + float3(_551, _551, sin(mad(mad(_6584, 6.283185482025146484375f, _6588 * (-6.283185482025146484375f)), 2097152.0f, mad(_6587, 6.283185482025146484375f, floor(mad(mad(_6580, _6583, -_6588), 2097152.0f, _6587)) * (-6.283185482025146484375f)))) * _6598)) + float3(_551, _551, sin(mad(mad(_6619, 6.283185482025146484375f, _6623 * (-6.283185482025146484375f)), 2097152.0f, mad(_6622, 6.283185482025146484375f, floor(mad(mad(_6615, _6618, -_6623), 2097152.0f, _6622)) * (-6.283185482025146484375f)))) * (_6598 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_551, _551, sin(mad(mad(_6684, 6.283185482025146484375f, _6688 * (-6.283185482025146484375f)), 2097152.0f, mad(_6687, 6.283185482025146484375f, floor(mad(mad(_6678, _6683, -_6688), 2097152.0f, _6687)) * (-6.283185482025146484375f)))) * _6698) + float3(_551, _551, sin(mad(mad(_6717, 6.283185482025146484375f, _6721 * (-6.283185482025146484375f)), 2097152.0f, mad(_6720, 6.283185482025146484375f, floor(mad(mad(_6713, _6716, -_6721), 2097152.0f, _6720)) * (-6.283185482025146484375f)))) * _6731)) + float3(_551, _551, sin(mad(mad(_6753, 6.283185482025146484375f, _6757 * (-6.283185482025146484375f)), 2097152.0f, mad(_6756, 6.283185482025146484375f, floor(mad(mad(_6749, _6752, -_6757), 2097152.0f, _6756)) * (-6.283185482025146484375f)))) * _6767)) + float3(_551, _551, sin(mad(mad(_6788, 6.283185482025146484375f, _6792 * (-6.283185482025146484375f)), 2097152.0f, mad(_6791, 6.283185482025146484375f, floor(mad(mad(_6784, _6787, -_6792), 2097152.0f, _6791)) * (-6.283185482025146484375f)))) * _6802));
    float _6817 = (abs(Material_Material_PreshaderBuffer[82].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[82].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[82].x : Material_Material_PreshaderBuffer[82].y) : Material_Material_PreshaderBuffer[82].x;
    float _6825 = (abs(_6817 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_6817 >= 1.0f) ? Material_Material_PreshaderBuffer[82].z : Material_Material_PreshaderBuffer[82].x) : Material_Material_PreshaderBuffer[82].x;
    float3 _6835 = float3(min(max((abs(_6825) > 9.9999997473787516355514526367188e-06f) ? ((_6825 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[83].w, 0.0f);
    float2 _6841 = float2(min(max(_6835 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6842 = _1701 * _6841;
    float2 _6843 = _6841 * _1702;
    float _6848 = _6842.x + _6842.y;
    float _6849 = _6843.x + _6843.y;
    float _6852 = Material_Material_PreshaderBuffer[85].x * _4596;
    float _6853 = 2.0f / _6852;
    float _6854 = _6848 * _6853;
    float _6857 = mad(_6849, _6853, (_6853 * Material_Material_PreshaderBuffer[67].y) * _5988);
    float _6858 = floor(_6854);
    float2 _6875 = float2(min(max(_6835 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6876 = _1701 * _6875;
    float2 _6877 = _6875 * _1702;
    float _6882 = _6876.x + _6876.y;
    float _6883 = _6877.x + _6877.y;
    float _6884 = _6852 * Material_Material_PreshaderBuffer[15].w;
    float _6885 = 2.0f / _6884;
    float _6886 = _6882 * _6885;
    float _6889 = mad(_6883, _6885, (_6885 * Material_Material_PreshaderBuffer[67].z) * _5988);
    float _6890 = floor(_6886);
    float2 _6910 = float2(min(max(_6835 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6911 = _1701 * _6910;
    float2 _6912 = _6910 * _1702;
    float _6917 = _6911.x + _6911.y;
    float _6918 = _6912.x + _6912.y;
    float _6919 = _6884 * Material_Material_PreshaderBuffer[15].w;
    float _6920 = 2.0f / _6919;
    float _6921 = _6917 * _6920;
    float _6924 = mad(_6918, _6920, (_6920 * Material_Material_PreshaderBuffer[67].w) * _5988);
    float _6925 = floor(_6921);
    float2 _6944 = float2(min(max(_6835 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6945 = _1701 * _6944;
    float2 _6946 = _6944 * _1702;
    float _6951 = _6945.x + _6945.y;
    float _6952 = _6946.x + _6946.y;
    float _6954 = 2.0f / (_6919 * Material_Material_PreshaderBuffer[15].w);
    float _6955 = _6951 * _6954;
    float _6958 = mad(_6952, _6954, (_6954 * Material_Material_PreshaderBuffer[68].x) * _5988);
    float _6959 = floor(_6955);
    float3 _6973 = _6807 + (((float3(_551, _551, sin(mad(mad(_6854, 6.283185482025146484375f, _6858 * (-6.283185482025146484375f)), 2097152.0f, mad(_6857, 6.283185482025146484375f, floor(mad(mad(_6848, _6853, -_6858), 2097152.0f, _6857)) * (-6.283185482025146484375f)))) * _6698) + float3(_551, _551, sin(mad(mad(_6886, 6.283185482025146484375f, _6890 * (-6.283185482025146484375f)), 2097152.0f, mad(_6889, 6.283185482025146484375f, floor(mad(mad(_6882, _6885, -_6890), 2097152.0f, _6889)) * (-6.283185482025146484375f)))) * _6731)) + float3(_551, _551, sin(mad(mad(_6921, 6.283185482025146484375f, _6925 * (-6.283185482025146484375f)), 2097152.0f, mad(_6924, 6.283185482025146484375f, floor(mad(mad(_6917, _6920, -_6925), 2097152.0f, _6924)) * (-6.283185482025146484375f)))) * _6767)) + float3(_551, _551, sin(mad(mad(_6955, 6.283185482025146484375f, _6959 * (-6.283185482025146484375f)), 2097152.0f, mad(_6958, 6.283185482025146484375f, floor(mad(mad(_6951, _6954, -_6959), 2097152.0f, _6958)) * (-6.283185482025146484375f)))) * _6802));
    float _6974 = _3571 * 8.0f;
    float _6975 = Material_Material_PreshaderBuffer[78].z * _6974;
    float _6976 = 2.0f / _6975;
    float _6977 = _5713 * _6976;
    float _6980 = mad(_5714, _6976, (_6976 * Material_Material_PreshaderBuffer[71].z) * _5988);
    float _6981 = floor(_6977);
    float _6991 = _6529 * 8.0f;
    float _6994 = _6975 * Material_Material_PreshaderBuffer[15].w;
    float _6995 = 2.0f / _6994;
    float _6996 = _6544 * _6995;
    float _6999 = mad(_6545, _6995, (_6995 * Material_Material_PreshaderBuffer[71].w) * _5988);
    float _7000 = floor(_6996);
    float _7010 = _6991 * Material_Material_PreshaderBuffer[17].z;
    float _7016 = _6994 * Material_Material_PreshaderBuffer[15].w;
    float _7017 = 2.0f / _7016;
    float _7018 = _6580 * _7017;
    float _7021 = mad(_6581, _7017, (_7017 * Material_Material_PreshaderBuffer[72].x) * _5988);
    float _7022 = floor(_7018);
    float _7032 = _7010 * Material_Material_PreshaderBuffer[17].z;
    float _7038 = 2.0f / (_7016 * Material_Material_PreshaderBuffer[15].w);
    float _7039 = _6615 * _7038;
    float _7042 = mad(_6616, _7038, (_7038 * Material_Material_PreshaderBuffer[72].y) * _5988);
    float _7043 = floor(_7039);
    float _7058 = _6974 * Material_Material_PreshaderBuffer[23].w;
    float _7059 = Material_Material_PreshaderBuffer[81].w * _7058;
    float _7060 = 2.0f / _7059;
    float _7061 = _6678 * _7060;
    float _7064 = mad(_6679, _7060, (_7060 * Material_Material_PreshaderBuffer[72].z) * _5988);
    float _7065 = floor(_7061);
    float _7075 = _6991 * Material_Material_PreshaderBuffer[25].w;
    float _7078 = _7059 * Material_Material_PreshaderBuffer[15].w;
    float _7079 = 2.0f / _7078;
    float _7080 = _6713 * _7079;
    float _7083 = mad(_6714, _7079, (_7079 * Material_Material_PreshaderBuffer[72].w) * _5988);
    float _7084 = floor(_7080);
    float _7094 = _7075 * Material_Material_PreshaderBuffer[17].z;
    float _7100 = _7078 * Material_Material_PreshaderBuffer[15].w;
    float _7101 = 2.0f / _7100;
    float _7102 = _6749 * _7101;
    float _7105 = mad(_6750, _7101, (_7101 * Material_Material_PreshaderBuffer[73].x) * _5988);
    float _7106 = floor(_7102);
    float _7116 = _7094 * Material_Material_PreshaderBuffer[17].z;
    float _7122 = 2.0f / (_7100 * Material_Material_PreshaderBuffer[15].w);
    float _7123 = _6784 * _7122;
    float _7126 = mad(_6785, _7122, (_7122 * Material_Material_PreshaderBuffer[73].y) * _5988);
    float _7127 = floor(_7123);
    float _7137 = _7116 * Material_Material_PreshaderBuffer[17].z;
    float3 _7142 = (((float3(_551, _551, sin(mad(mad(_6977, 6.283185482025146484375f, _6981 * (-6.283185482025146484375f)), 2097152.0f, mad(_6980, 6.283185482025146484375f, floor(mad(mad(_5713, _6976, -_6981), 2097152.0f, _6980)) * (-6.283185482025146484375f)))) * _6991) + float3(_551, _551, sin(mad(mad(_6996, 6.283185482025146484375f, _7000 * (-6.283185482025146484375f)), 2097152.0f, mad(_6999, 6.283185482025146484375f, floor(mad(mad(_6544, _6995, -_7000), 2097152.0f, _6999)) * (-6.283185482025146484375f)))) * _7010)) + float3(_551, _551, sin(mad(mad(_7018, 6.283185482025146484375f, _7022 * (-6.283185482025146484375f)), 2097152.0f, mad(_7021, 6.283185482025146484375f, floor(mad(mad(_6580, _7017, -_7022), 2097152.0f, _7021)) * (-6.283185482025146484375f)))) * _7032)) + float3(_551, _551, sin(mad(mad(_7039, 6.283185482025146484375f, _7043 * (-6.283185482025146484375f)), 2097152.0f, mad(_7042, 6.283185482025146484375f, floor(mad(mad(_6615, _7038, -_7043), 2097152.0f, _7042)) * (-6.283185482025146484375f)))) * (_7032 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_551, _551, sin(mad(mad(_7061, 6.283185482025146484375f, _7065 * (-6.283185482025146484375f)), 2097152.0f, mad(_7064, 6.283185482025146484375f, floor(mad(mad(_6678, _7060, -_7065), 2097152.0f, _7064)) * (-6.283185482025146484375f)))) * _7075) + float3(_551, _551, sin(mad(mad(_7080, 6.283185482025146484375f, _7084 * (-6.283185482025146484375f)), 2097152.0f, mad(_7083, 6.283185482025146484375f, floor(mad(mad(_6713, _7079, -_7084), 2097152.0f, _7083)) * (-6.283185482025146484375f)))) * _7094)) + float3(_551, _551, sin(mad(mad(_7102, 6.283185482025146484375f, _7106 * (-6.283185482025146484375f)), 2097152.0f, mad(_7105, 6.283185482025146484375f, floor(mad(mad(_6749, _7101, -_7106), 2097152.0f, _7105)) * (-6.283185482025146484375f)))) * _7116)) + float3(_551, _551, sin(mad(mad(_7123, 6.283185482025146484375f, _7127 * (-6.283185482025146484375f)), 2097152.0f, mad(_7126, 6.283185482025146484375f, floor(mad(mad(_6784, _7122, -_7127), 2097152.0f, _7126)) * (-6.283185482025146484375f)))) * _7137));
    float _7143 = Material_Material_PreshaderBuffer[85].x * _7058;
    float _7144 = 2.0f / _7143;
    float _7145 = _6848 * _7144;
    float _7148 = mad(_6849, _7144, (_7144 * Material_Material_PreshaderBuffer[72].z) * _5988);
    float _7149 = floor(_7145);
    float _7161 = _7143 * Material_Material_PreshaderBuffer[15].w;
    float _7162 = 2.0f / _7161;
    float _7163 = _6882 * _7162;
    float _7166 = mad(_6883, _7162, (_7162 * Material_Material_PreshaderBuffer[72].w) * _5988);
    float _7167 = floor(_7163);
    float _7182 = _7161 * Material_Material_PreshaderBuffer[15].w;
    float _7183 = 2.0f / _7182;
    float _7184 = _6917 * _7183;
    float _7187 = mad(_6918, _7183, (_7183 * Material_Material_PreshaderBuffer[73].x) * _5988);
    float _7188 = floor(_7184);
    float _7203 = 2.0f / (_7182 * Material_Material_PreshaderBuffer[15].w);
    float _7204 = _6951 * _7203;
    float _7207 = mad(_6952, _7203, (_7203 * Material_Material_PreshaderBuffer[73].y) * _5988);
    float _7208 = floor(_7204);
    float3 _7222 = _7142 + (((float3(_551, _551, sin(mad(mad(_7145, 6.283185482025146484375f, _7149 * (-6.283185482025146484375f)), 2097152.0f, mad(_7148, 6.283185482025146484375f, floor(mad(mad(_6848, _7144, -_7149), 2097152.0f, _7148)) * (-6.283185482025146484375f)))) * _7075) + float3(_551, _551, sin(mad(mad(_7163, 6.283185482025146484375f, _7167 * (-6.283185482025146484375f)), 2097152.0f, mad(_7166, 6.283185482025146484375f, floor(mad(mad(_6882, _7162, -_7167), 2097152.0f, _7166)) * (-6.283185482025146484375f)))) * _7094)) + float3(_551, _551, sin(mad(mad(_7184, 6.283185482025146484375f, _7188 * (-6.283185482025146484375f)), 2097152.0f, mad(_7187, 6.283185482025146484375f, floor(mad(mad(_6917, _7183, -_7188), 2097152.0f, _7187)) * (-6.283185482025146484375f)))) * _7116)) + float3(_551, _551, sin(mad(mad(_7204, 6.283185482025146484375f, _7208 * (-6.283185482025146484375f)), 2097152.0f, mad(_7207, 6.283185482025146484375f, floor(mad(mad(_6951, _7203, -_7208), 2097152.0f, _7207)) * (-6.283185482025146484375f)))) * _7137));
    float _7223 = Material_Material_PreshaderBuffer[78].z * _5164;
    float _7224 = 2.0f / _7223;
    float _7225 = _5713 * _7224;
    float _7228 = mad(_5714, _7224, (_7224 * Material_Material_PreshaderBuffer[73].z) * _5988);
    float _7229 = floor(_7225);
    float _7239 = _6529 * 4.0f;
    float _7242 = _7223 * Material_Material_PreshaderBuffer[15].w;
    float _7243 = 2.0f / _7242;
    float _7244 = _6544 * _7243;
    float _7247 = mad(_6545, _7243, (_7243 * Material_Material_PreshaderBuffer[73].w) * _5988);
    float _7248 = floor(_7244);
    float _7258 = _7239 * Material_Material_PreshaderBuffer[17].z;
    float _7264 = _7242 * Material_Material_PreshaderBuffer[15].w;
    float _7265 = 2.0f / _7264;
    float _7266 = _6580 * _7265;
    float _7269 = mad(_6581, _7265, (_7265 * Material_Material_PreshaderBuffer[74].x) * _5988);
    float _7270 = floor(_7266);
    float _7280 = _7258 * Material_Material_PreshaderBuffer[17].z;
    float _7286 = 2.0f / (_7264 * Material_Material_PreshaderBuffer[15].w);
    float _7287 = _6615 * _7286;
    float _7290 = mad(_6616, _7286, (_7286 * Material_Material_PreshaderBuffer[74].y) * _5988);
    float _7291 = floor(_7287);
    float _7306 = Material_Material_PreshaderBuffer[81].w * _5252;
    float _7307 = 2.0f / _7306;
    float _7308 = _6678 * _7307;
    float _7311 = mad(_6679, _7307, (_7307 * Material_Material_PreshaderBuffer[74].z) * _5988);
    float _7312 = floor(_7308);
    float _7322 = _7239 * Material_Material_PreshaderBuffer[25].w;
    float _7325 = _7306 * Material_Material_PreshaderBuffer[15].w;
    float _7326 = 2.0f / _7325;
    float _7327 = _6713 * _7326;
    float _7330 = mad(_6714, _7326, (_7326 * Material_Material_PreshaderBuffer[74].w) * _5988);
    float _7331 = floor(_7327);
    float _7341 = _7322 * Material_Material_PreshaderBuffer[17].z;
    float _7347 = _7325 * Material_Material_PreshaderBuffer[15].w;
    float _7348 = 2.0f / _7347;
    float _7349 = _6749 * _7348;
    float _7352 = mad(_6750, _7348, (_7348 * Material_Material_PreshaderBuffer[75].x) * _5988);
    float _7353 = floor(_7349);
    float _7363 = _7341 * Material_Material_PreshaderBuffer[17].z;
    float _7369 = 2.0f / (_7347 * Material_Material_PreshaderBuffer[15].w);
    float _7370 = _6784 * _7369;
    float _7373 = mad(_6785, _7369, (_7369 * Material_Material_PreshaderBuffer[75].y) * _5988);
    float _7374 = floor(_7370);
    float _7384 = _7363 * Material_Material_PreshaderBuffer[17].z;
    float3 _7389 = (((float3(_551, _551, sin(mad(mad(_7225, 6.283185482025146484375f, _7229 * (-6.283185482025146484375f)), 2097152.0f, mad(_7228, 6.283185482025146484375f, floor(mad(mad(_5713, _7224, -_7229), 2097152.0f, _7228)) * (-6.283185482025146484375f)))) * _7239) + float3(_551, _551, sin(mad(mad(_7244, 6.283185482025146484375f, _7248 * (-6.283185482025146484375f)), 2097152.0f, mad(_7247, 6.283185482025146484375f, floor(mad(mad(_6544, _7243, -_7248), 2097152.0f, _7247)) * (-6.283185482025146484375f)))) * _7258)) + float3(_551, _551, sin(mad(mad(_7266, 6.283185482025146484375f, _7270 * (-6.283185482025146484375f)), 2097152.0f, mad(_7269, 6.283185482025146484375f, floor(mad(mad(_6580, _7265, -_7270), 2097152.0f, _7269)) * (-6.283185482025146484375f)))) * _7280)) + float3(_551, _551, sin(mad(mad(_7287, 6.283185482025146484375f, _7291 * (-6.283185482025146484375f)), 2097152.0f, mad(_7290, 6.283185482025146484375f, floor(mad(mad(_6615, _7286, -_7291), 2097152.0f, _7290)) * (-6.283185482025146484375f)))) * (_7280 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_551, _551, sin(mad(mad(_7308, 6.283185482025146484375f, _7312 * (-6.283185482025146484375f)), 2097152.0f, mad(_7311, 6.283185482025146484375f, floor(mad(mad(_6678, _7307, -_7312), 2097152.0f, _7311)) * (-6.283185482025146484375f)))) * _7322) + float3(_551, _551, sin(mad(mad(_7327, 6.283185482025146484375f, _7331 * (-6.283185482025146484375f)), 2097152.0f, mad(_7330, 6.283185482025146484375f, floor(mad(mad(_6713, _7326, -_7331), 2097152.0f, _7330)) * (-6.283185482025146484375f)))) * _7341)) + float3(_551, _551, sin(mad(mad(_7349, 6.283185482025146484375f, _7353 * (-6.283185482025146484375f)), 2097152.0f, mad(_7352, 6.283185482025146484375f, floor(mad(mad(_6749, _7348, -_7353), 2097152.0f, _7352)) * (-6.283185482025146484375f)))) * _7363)) + float3(_551, _551, sin(mad(mad(_7370, 6.283185482025146484375f, _7374 * (-6.283185482025146484375f)), 2097152.0f, mad(_7373, 6.283185482025146484375f, floor(mad(mad(_6784, _7369, -_7374), 2097152.0f, _7373)) * (-6.283185482025146484375f)))) * _7384));
    float _7390 = Material_Material_PreshaderBuffer[85].x * _5252;
    float _7391 = 2.0f / _7390;
    float _7392 = _6848 * _7391;
    float _7395 = mad(_6849, _7391, (_7391 * Material_Material_PreshaderBuffer[74].z) * _5988);
    float _7396 = floor(_7392);
    float _7408 = _7390 * Material_Material_PreshaderBuffer[15].w;
    float _7409 = 2.0f / _7408;
    float _7410 = _6882 * _7409;
    float _7413 = mad(_6883, _7409, (_7409 * Material_Material_PreshaderBuffer[74].w) * _5988);
    float _7414 = floor(_7410);
    float _7429 = _7408 * Material_Material_PreshaderBuffer[15].w;
    float _7430 = 2.0f / _7429;
    float _7431 = _6917 * _7430;
    float _7434 = mad(_6918, _7430, (_7430 * Material_Material_PreshaderBuffer[75].x) * _5988);
    float _7435 = floor(_7431);
    float _7450 = 2.0f / (_7429 * Material_Material_PreshaderBuffer[15].w);
    float _7451 = _6951 * _7450;
    float _7454 = mad(_6952, _7450, (_7450 * Material_Material_PreshaderBuffer[75].y) * _5988);
    float _7455 = floor(_7451);
    float3 _7469 = _7389 + (((float3(_551, _551, sin(mad(mad(_7392, 6.283185482025146484375f, _7396 * (-6.283185482025146484375f)), 2097152.0f, mad(_7395, 6.283185482025146484375f, floor(mad(mad(_6848, _7391, -_7396), 2097152.0f, _7395)) * (-6.283185482025146484375f)))) * _7322) + float3(_551, _551, sin(mad(mad(_7410, 6.283185482025146484375f, _7414 * (-6.283185482025146484375f)), 2097152.0f, mad(_7413, 6.283185482025146484375f, floor(mad(mad(_6882, _7409, -_7414), 2097152.0f, _7413)) * (-6.283185482025146484375f)))) * _7341)) + float3(_551, _551, sin(mad(mad(_7431, 6.283185482025146484375f, _7435 * (-6.283185482025146484375f)), 2097152.0f, mad(_7434, 6.283185482025146484375f, floor(mad(mad(_6917, _7430, -_7435), 2097152.0f, _7434)) * (-6.283185482025146484375f)))) * _7363)) + float3(_551, _551, sin(mad(mad(_7451, 6.283185482025146484375f, _7455 * (-6.283185482025146484375f)), 2097152.0f, mad(_7454, 6.283185482025146484375f, floor(mad(mad(_6951, _7450, -_7455), 2097152.0f, _7454)) * (-6.283185482025146484375f)))) * _7384));
    float _7470 = Material_Material_PreshaderBuffer[78].z * _5421;
    float _7471 = 2.0f / _7470;
    float _7472 = _5713 * _7471;
    float _7475 = mad(_5714, _7471, (_7471 * Material_Material_PreshaderBuffer[71].z) * _5988);
    float _7476 = floor(_7472);
    float _7486 = _6529 * 0.5f;
    float _7489 = _7470 * Material_Material_PreshaderBuffer[15].w;
    float _7490 = 2.0f / _7489;
    float _7491 = _6544 * _7490;
    float _7494 = mad(_6545, _7490, (_7490 * Material_Material_PreshaderBuffer[71].w) * _5988);
    float _7495 = floor(_7491);
    float _7505 = _7486 * Material_Material_PreshaderBuffer[17].z;
    float _7511 = _7489 * Material_Material_PreshaderBuffer[15].w;
    float _7512 = 2.0f / _7511;
    float _7513 = _6580 * _7512;
    float _7516 = mad(_6581, _7512, (_7512 * Material_Material_PreshaderBuffer[72].x) * _5988);
    float _7517 = floor(_7513);
    float _7527 = _7505 * Material_Material_PreshaderBuffer[17].z;
    float _7533 = 2.0f / (_7511 * Material_Material_PreshaderBuffer[15].w);
    float _7534 = _6615 * _7533;
    float _7537 = mad(_6616, _7533, (_7533 * Material_Material_PreshaderBuffer[72].y) * _5988);
    float _7538 = floor(_7534);
    float _7553 = Material_Material_PreshaderBuffer[81].w * _5505;
    float _7554 = 2.0f / _7553;
    float _7555 = _6678 * _7554;
    float _7558 = mad(_6679, _7554, (_7554 * Material_Material_PreshaderBuffer[72].z) * _5988);
    float _7559 = floor(_7555);
    float _7569 = _7486 * Material_Material_PreshaderBuffer[25].w;
    float _7572 = _7553 * Material_Material_PreshaderBuffer[15].w;
    float _7573 = 2.0f / _7572;
    float _7574 = _6713 * _7573;
    float _7577 = mad(_6714, _7573, (_7573 * Material_Material_PreshaderBuffer[72].w) * _5988);
    float _7578 = floor(_7574);
    float _7588 = _7569 * Material_Material_PreshaderBuffer[17].z;
    float _7594 = _7572 * Material_Material_PreshaderBuffer[15].w;
    float _7595 = 2.0f / _7594;
    float _7596 = _6749 * _7595;
    float _7599 = mad(_6750, _7595, (_7595 * Material_Material_PreshaderBuffer[73].x) * _5988);
    float _7600 = floor(_7596);
    float _7610 = _7588 * Material_Material_PreshaderBuffer[17].z;
    float _7616 = 2.0f / (_7594 * Material_Material_PreshaderBuffer[15].w);
    float _7617 = _6784 * _7616;
    float _7620 = mad(_6785, _7616, (_7616 * Material_Material_PreshaderBuffer[73].y) * _5988);
    float _7621 = floor(_7617);
    float _7631 = _7610 * Material_Material_PreshaderBuffer[17].z;
    float3 _7636 = (((float3(_551, _551, sin(mad(mad(_7472, 6.283185482025146484375f, _7476 * (-6.283185482025146484375f)), 2097152.0f, mad(_7475, 6.283185482025146484375f, floor(mad(mad(_5713, _7471, -_7476), 2097152.0f, _7475)) * (-6.283185482025146484375f)))) * _7486) + float3(_551, _551, sin(mad(mad(_7491, 6.283185482025146484375f, _7495 * (-6.283185482025146484375f)), 2097152.0f, mad(_7494, 6.283185482025146484375f, floor(mad(mad(_6544, _7490, -_7495), 2097152.0f, _7494)) * (-6.283185482025146484375f)))) * _7505)) + float3(_551, _551, sin(mad(mad(_7513, 6.283185482025146484375f, _7517 * (-6.283185482025146484375f)), 2097152.0f, mad(_7516, 6.283185482025146484375f, floor(mad(mad(_6580, _7512, -_7517), 2097152.0f, _7516)) * (-6.283185482025146484375f)))) * _7527)) + float3(_551, _551, sin(mad(mad(_7534, 6.283185482025146484375f, _7538 * (-6.283185482025146484375f)), 2097152.0f, mad(_7537, 6.283185482025146484375f, floor(mad(mad(_6615, _7533, -_7538), 2097152.0f, _7537)) * (-6.283185482025146484375f)))) * (_7527 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_551, _551, sin(mad(mad(_7555, 6.283185482025146484375f, _7559 * (-6.283185482025146484375f)), 2097152.0f, mad(_7558, 6.283185482025146484375f, floor(mad(mad(_6678, _7554, -_7559), 2097152.0f, _7558)) * (-6.283185482025146484375f)))) * _7569) + float3(_551, _551, sin(mad(mad(_7574, 6.283185482025146484375f, _7578 * (-6.283185482025146484375f)), 2097152.0f, mad(_7577, 6.283185482025146484375f, floor(mad(mad(_6713, _7573, -_7578), 2097152.0f, _7577)) * (-6.283185482025146484375f)))) * _7588)) + float3(_551, _551, sin(mad(mad(_7596, 6.283185482025146484375f, _7600 * (-6.283185482025146484375f)), 2097152.0f, mad(_7599, 6.283185482025146484375f, floor(mad(mad(_6749, _7595, -_7600), 2097152.0f, _7599)) * (-6.283185482025146484375f)))) * _7610)) + float3(_551, _551, sin(mad(mad(_7617, 6.283185482025146484375f, _7621 * (-6.283185482025146484375f)), 2097152.0f, mad(_7620, 6.283185482025146484375f, floor(mad(mad(_6784, _7616, -_7621), 2097152.0f, _7620)) * (-6.283185482025146484375f)))) * _7631));
    float _7637 = Material_Material_PreshaderBuffer[85].x * _5505;
    float _7638 = 2.0f / _7637;
    float _7639 = _6848 * _7638;
    float _7642 = mad(_6849, _7638, (_7638 * Material_Material_PreshaderBuffer[72].z) * _5988);
    float _7643 = floor(_7639);
    float _7655 = _7637 * Material_Material_PreshaderBuffer[15].w;
    float _7656 = 2.0f / _7655;
    float _7657 = _6882 * _7656;
    float _7660 = mad(_6883, _7656, (_7656 * Material_Material_PreshaderBuffer[72].w) * _5988);
    float _7661 = floor(_7657);
    float _7676 = _7655 * Material_Material_PreshaderBuffer[15].w;
    float _7677 = 2.0f / _7676;
    float _7678 = _6917 * _7677;
    float _7681 = mad(_6918, _7677, (_7677 * Material_Material_PreshaderBuffer[73].x) * _5988);
    float _7682 = floor(_7678);
    float _7697 = 2.0f / (_7676 * Material_Material_PreshaderBuffer[15].w);
    float _7698 = _6951 * _7697;
    float _7701 = mad(_6952, _7697, (_7697 * Material_Material_PreshaderBuffer[73].y) * _5988);
    float _7702 = floor(_7698);
    float3 _7716 = _7636 + (((float3(_551, _551, sin(mad(mad(_7639, 6.283185482025146484375f, _7643 * (-6.283185482025146484375f)), 2097152.0f, mad(_7642, 6.283185482025146484375f, floor(mad(mad(_6848, _7638, -_7643), 2097152.0f, _7642)) * (-6.283185482025146484375f)))) * _7569) + float3(_551, _551, sin(mad(mad(_7657, 6.283185482025146484375f, _7661 * (-6.283185482025146484375f)), 2097152.0f, mad(_7660, 6.283185482025146484375f, floor(mad(mad(_6882, _7656, -_7661), 2097152.0f, _7660)) * (-6.283185482025146484375f)))) * _7588)) + float3(_551, _551, sin(mad(mad(_7678, 6.283185482025146484375f, _7682 * (-6.283185482025146484375f)), 2097152.0f, mad(_7681, 6.283185482025146484375f, floor(mad(mad(_6917, _7677, -_7682), 2097152.0f, _7681)) * (-6.283185482025146484375f)))) * _7610)) + float3(_551, _551, sin(mad(mad(_7698, 6.283185482025146484375f, _7702 * (-6.283185482025146484375f)), 2097152.0f, mad(_7701, 6.283185482025146484375f, floor(mad(mad(_6951, _7697, -_7702), 2097152.0f, _7701)) * (-6.283185482025146484375f)))) * _7631));
    float3 _7721 = mad(_3523, Material_Material_PreshaderBuffer[54].x.xxx, (_4898 + (_5163 + (_5420 + _5669))) + (_6973 + (_7222 + (_7469 + _7716))));
    float _7722 = _7721.z;
    float _7740 = clamp(mad(clamp(mad(_7722, MaterialCollection0_MaterialCollection0_Vectors[0].y, -Material_Material_PreshaderBuffer[90].w) * Material_Material_PreshaderBuffer[91].z, 0.0f, 1.0f), Material_Material_PreshaderBuffer[91].w, -Material_Material_PreshaderBuffer[92].x) * Material_Material_PreshaderBuffer[92].w, 0.0f, 1.0f);
    float3 _7742 = mad(_7722.xxx, in_var_TEXCOORD11_centroid.xyz, _646);
    float3 _7743 = ddx(View_View_ViewTilePosition);
    float3 _7745 = ddx(_7742);
    float3 _7747 = ddy(View_View_ViewTilePosition);
    float3 _7749 = ddy(_7742);
    float3 _7753 = ddx(View_View_ViewTilePosition);
    float3 _7755 = ddx(_646);
    float3 _7757 = ddy(View_View_ViewTilePosition);
    float3 _7759 = ddy(_646);
    float3 _7762 = normalize(cross((_7753 * 2097152.0f) + _7755, (_7757 * 2097152.0f) + _7759));
    float3 _7768 = lerp((normalize(cross((_7743 * 2097152.0f) + _7745, (_7747 * 2097152.0f) + _7749)) - _7762) + in_var_TEXCOORD11_centroid.xyz, float3(0.0f, 0.0f, 1.0f), Material_Material_PreshaderBuffer[93].y.xxx);
    float3 _7775 = Material_Material_PreshaderBuffer[93].w.xxx;
    float3 _7788 = float3((View_View_ViewTilePosition * _7775).xy, 0.0f);
    float3 _7789 = float3((mad(_7768, Material_Material_PreshaderBuffer[93].z.xxx, _647) * _7775).xy, ((_1166 * Material_Material_PreshaderBuffer[94].y).xx + float2(1.0f, 0.0f)).x);
    float3 _7799 = 0.0f.xxx;
    float _7804 = 0.0f;
    _7799 = (((_7788 - floor(_7788 + ((_7789 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _7789) * 1.0f;
    _7804 = 0.0f;
    float _7802 = 1.0f;
    uint _7806 = 0u;
    [loop]
    for (; _7806 < 10u; )
    {
        float3 _7810 = frac(_7799);
        float _7812 = dot(floor(_7799), float3(19.0f, 47.0f, 101.0f));
        uint3 _7824 = (uint3(int3(int(_7812), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7825 = _7824.y;
        uint _7826 = _7824.z;
        uint _7829 = _7824.x + (_7825 * _7826);
        uint _7831 = _7825 + (_7826 * _7829);
        uint3 _7836 = uint3(0u, 0u, 0u);
        _7836.x = _7829 + (_7831 * (_7826 + (_7829 * _7831)));
        uint3 _7837 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _7850 = (uint3(int3(int(_7812 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7851 = _7850.y;
        uint _7852 = _7850.z;
        uint _7855 = _7850.x + (_7851 * _7852);
        uint _7857 = _7851 + (_7852 * _7855);
        uint3 _7862 = uint3(0u, 0u, 0u);
        _7862.x = _7855 + (_7857 * (_7852 + (_7855 * _7857)));
        uint3 _7875 = (uint3(int3(int(_7812 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7876 = _7875.y;
        uint _7877 = _7875.z;
        uint _7880 = _7875.x + (_7876 * _7877);
        uint _7882 = _7876 + (_7877 * _7880);
        uint3 _7887 = uint3(0u, 0u, 0u);
        _7887.x = _7880 + (_7882 * (_7877 + (_7880 * _7882)));
        uint3 _7900 = (uint3(int3(int(_7812 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7901 = _7900.y;
        uint _7902 = _7900.z;
        uint _7905 = _7900.x + (_7901 * _7902);
        uint _7907 = _7901 + (_7902 * _7905);
        uint3 _7912 = uint3(0u, 0u, 0u);
        _7912.x = _7905 + (_7907 * (_7902 + (_7905 * _7907)));
        uint3 _7925 = (uint3(int3(int(_7812 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7926 = _7925.y;
        uint _7927 = _7925.z;
        uint _7930 = _7925.x + (_7926 * _7927);
        uint _7932 = _7926 + (_7927 * _7930);
        uint3 _7937 = uint3(0u, 0u, 0u);
        _7937.x = _7930 + (_7932 * (_7927 + (_7930 * _7932)));
        uint3 _7950 = (uint3(int3(int(_7812 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7951 = _7950.y;
        uint _7952 = _7950.z;
        uint _7955 = _7950.x + (_7951 * _7952);
        uint _7957 = _7951 + (_7952 * _7955);
        uint3 _7962 = uint3(0u, 0u, 0u);
        _7962.x = _7955 + (_7957 * (_7952 + (_7955 * _7957)));
        uint3 _7975 = (uint3(int3(int(_7812 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7976 = _7975.y;
        uint _7977 = _7975.z;
        uint _7980 = _7975.x + (_7976 * _7977);
        uint _7982 = _7976 + (_7977 * _7980);
        uint3 _7987 = uint3(0u, 0u, 0u);
        _7987.x = _7980 + (_7982 * (_7977 + (_7980 * _7982)));
        uint3 _8000 = (uint3(int3(int(_7812 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _8001 = _8000.y;
        uint _8002 = _8000.z;
        uint _8005 = _8000.x + (_8001 * _8002);
        uint _8007 = _8001 + (_8002 * _8005);
        uint3 _8012 = uint3(0u, 0u, 0u);
        _8012.x = _8005 + (_8007 * (_8002 + (_8005 * _8007)));
        float4 _8023 = float4(_7810, 0.0f);
        float4 _8029 = ((_8023 * _8023) * _8023) * mad(_8023, (_8023 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _8030 = _8029.x;
        float _8033 = _8029.y;
        float _8040 = abs(lerp(lerp(lerp(dot(mad(float3((_7836 >> _7837).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7810), dot(mad(float3((_7862 >> _7837).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7810 - float3(1.0f, 0.0f, 0.0f)), _8030), lerp(dot(mad(float3((_7887 >> _7837).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7810 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_7912 >> _7837).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7810 - float3(1.0f, 1.0f, 0.0f)), _8030), _8033), lerp(lerp(dot(mad(float3((_7937 >> _7837).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7810 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_7962 >> _7837).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7810 - float3(1.0f, 0.0f, 1.0f)), _8030), lerp(dot(mad(float3((_7987 >> _7837).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7810 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_8012 >> _7837).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7810 - 1.0f.xxx), _8030), _8033), _8029.z));
        float _7805 = mad(_8040, _7802, _7804);
        _7799 *= 2.0f;
        _7802 *= 0.5f;
        _7804 = _7805;
        _7806++;
        continue;
    }
    float _8044 = -_7740;
    float _8050 = clamp(mad(mad(_8044, Material_Material_PreshaderBuffer[94].z, lerp(0.0f, 1.0f, _7804)) / mad(_8044, Material_Material_PreshaderBuffer[94].z, mad(_7740, Material_Material_PreshaderBuffer[94].z, 1.0f)), -1.0f, 1.0f), 0.0f, 1.0f);
    float _8059 = clamp(lerp(Material_Material_PreshaderBuffer[95].x, Material_Material_PreshaderBuffer[94].w, (_8050 <= 0.0f) ? 0.0f : pow(_8050, 2.0f)), 0.0f, 1.0f);
    float _8060 = _7740 * _8059;
    float3 _8063 = Material_Material_PreshaderBuffer[95].y.xxx;
    float3 _8064 = View_View_ViewTilePosition * _8063;
    float3 _8065 = _647 * _8063;
    float3 _8076 = 0.0f.xxx;
    float3 _8079 = 0.0f.xxx;
    float _8083 = 0.0f;
    _8076 = _543;
    _8079 = mad(_647, _8063, mad(View_View_ViewTilePosition, _8063, -floor(mad(View_View_ViewTilePosition, _8063, (_8065 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _8083 = 0.0f;
    float3 _8080 = 0.0f.xxx;
    float _8082 = 0.0f;
    float _8084 = 0.0f;
    float3 _8077 = 0.0f.xxx;
    float _8081 = 1.0f;
    uint _8085 = 0u;
    [loop]
    for (; _8085 < 1u; _8076 = _8077, _8079 = _8080, _8081 = _8082, _8083 = _8084, _8085++)
    {
        float3 _8090 = frac(_8079);
        float3 _8091 = floor(_8079);
        float3 _8092 = _8076;
        _8092.x = 0.0f;
        float4 _8094 = 0.0f.xxxx;
        _8094 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _8077 = _8092;
        float3 _8097 = 0.0f.xxx;
        float4 _8095 = 0.0f.xxxx;
        float3 _8104 = 0.0f.xxx;
        for (; _8077.x <= 1.0f; _8097 = _8104, _8097.x = _8104.x + 1.0f, _8094 = _8095, _8077 = _8097)
        {
            float3 _8102 = _8077;
            _8102.y = 0.0f;
            _8104 = _8102;
            _8095 = _8094;
            float3 _8105 = 0.0f.xxx;
            float4 _8107 = 0.0f.xxxx;
            float3 _8116 = 0.0f.xxx;
            for (; _8104.y <= 1.0f; _8105 = _8116, _8105.y = _8116.y + 1.0f, _8104 = _8105, _8095 = _8107)
            {
                float3 _8112 = _8104;
                _8112.z = 0.0f;
                _8107 = _8095;
                _8116 = _8112;
                for (; _8116.z <= 1.0f; )
                {
                    float3 _8121 = _8091 + _8116;
                    uint3 _8126 = (uint3(int3(float3(_8121.x, _8121.y, _8121.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _8127 = _8126.y;
                    uint _8128 = _8126.z;
                    uint _8131 = _8126.x + (_8127 * _8128);
                    uint _8133 = _8127 + (_8128 * _8131);
                    uint _8135 = _8128 + (_8131 * _8133);
                    uint _8137 = _8131 + (_8133 * _8135);
                    uint3 _8138 = _8126;
                    _8138.x = _8137;
                    uint _8140 = _8133 + (_8135 * _8137);
                    _8138.y = _8140;
                    _8138.z = _8135 + (_8137 * _8140);
                    float3 _8152 = _8090 - (_8116 + (normalize(mad(float3(_8138 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _8117 = _8116;
                    _8117.z = _8116.z + 1.0f;
                    _8107 = float4(0.0f, 0.0f, 0.0f, min(_8107.w, dot(_8152, _8152)));
                    _8116 = _8117;
                    continue;
                }
            }
        }
        _8084 = mad(abs(mad(sqrt(_8094.w), 2.0f, -1.0f)), _8081, _8083);
        _8080 = _8079 * 2.0f;
        _8082 = _8081 * 0.5f;
    }
    float3 _8178 = 0.0f.xxx;
    float3 _8181 = 0.0f.xxx;
    float _8185 = 0.0f;
    _8178 = _543;
    _8181 = mad(_8065, 1.2000000476837158203125f.xxx, mad(_8064, 1.2000000476837158203125f.xxx, -floor(mad(_8064, 1.2000000476837158203125f.xxx, ((_8065 * 1.2000000476837158203125f.xxx) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _8185 = 0.0f;
    float3 _8182 = 0.0f.xxx;
    float _8184 = 0.0f;
    float _8186 = 0.0f;
    float3 _8179 = 0.0f.xxx;
    float _8183 = 1.0f;
    uint _8187 = 0u;
    [loop]
    for (; _8187 < 1u; _8178 = _8179, _8181 = _8182, _8183 = _8184, _8185 = _8186, _8187++)
    {
        float3 _8192 = frac(_8181);
        float3 _8193 = floor(_8181);
        float3 _8194 = _8178;
        _8194.x = 0.0f;
        float4 _8196 = 0.0f.xxxx;
        _8196 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _8179 = _8194;
        float3 _8199 = 0.0f.xxx;
        float4 _8197 = 0.0f.xxxx;
        float3 _8206 = 0.0f.xxx;
        for (; _8179.x <= 1.0f; _8199 = _8206, _8199.x = _8206.x + 1.0f, _8196 = _8197, _8179 = _8199)
        {
            float3 _8204 = _8179;
            _8204.y = 0.0f;
            _8206 = _8204;
            _8197 = _8196;
            float3 _8207 = 0.0f.xxx;
            float4 _8209 = 0.0f.xxxx;
            float3 _8218 = 0.0f.xxx;
            for (; _8206.y <= 1.0f; _8207 = _8218, _8207.y = _8218.y + 1.0f, _8206 = _8207, _8197 = _8209)
            {
                float3 _8214 = _8206;
                _8214.z = 0.0f;
                _8209 = _8197;
                _8218 = _8214;
                for (; _8218.z <= 1.0f; )
                {
                    float3 _8223 = _8193 + _8218;
                    uint3 _8228 = (uint3(int3(float3(_8223.x, _8223.y, _8223.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _8229 = _8228.y;
                    uint _8230 = _8228.z;
                    uint _8233 = _8228.x + (_8229 * _8230);
                    uint _8235 = _8229 + (_8230 * _8233);
                    uint _8237 = _8230 + (_8233 * _8235);
                    uint _8239 = _8233 + (_8235 * _8237);
                    uint3 _8240 = _8228;
                    _8240.x = _8239;
                    uint _8242 = _8235 + (_8237 * _8239);
                    _8240.y = _8242;
                    _8240.z = _8237 + (_8239 * _8242);
                    float3 _8254 = _8192 - (_8218 + (normalize(mad(float3(_8240 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _8219 = _8218;
                    _8219.z = _8218.z + 1.0f;
                    _8209 = float4(0.0f, 0.0f, 0.0f, min(_8209.w, dot(_8254, _8254)));
                    _8218 = _8219;
                    continue;
                }
            }
        }
        _8186 = mad(abs(mad(sqrt(_8196.w), 2.0f, -1.0f)), _8183, _8185);
        _8182 = _8181 * 2.0f;
        _8184 = _8183 * 0.5f;
    }
    float _8269 = clamp(lerp(-1.0f, 1.0f, _8083), 0.0f, 1.0f) + clamp(lerp(-1.0f, 1.0f, _8185), 0.0f, 1.0f);
    float _8274 = clamp(_779 * mad(mad(_892, _1448, -_1658), Material_Material_PreshaderBuffer[90].z, mad(_7740, _8059, -_8269)), 0.0f, 1.0f);
    float3 _8282 = mad(_3523.z.xxx, in_var_TEXCOORD11_centroid.xyz, _646);
    float _8299 = max(abs(1.0f - max(0.0f, dot(_7768, _663))), 9.9999997473787516355514526367188e-05f);
    bool _8302 = _8299 <= 0.0f;
    float3 _8329 = mad((_779 * (mad(_1449, _1658, _1449) + mad(_8060, _8269, _8060))).xxx, in_var_TEXCOORD11_centroid.xyz, _646);
    float3 _8330 = ddx(View_View_ViewTilePosition);
    float3 _8332 = ddx(_8329);
    float3 _8334 = ddy(View_View_ViewTilePosition);
    float3 _8336 = ddy(_8329);
    float3 _8343 = lerp(lerp(lerp((normalize(cross((ddx(View_View_ViewTilePosition) * 2097152.0f) + ddx(_8282), (ddy(View_View_ViewTilePosition) * 2097152.0f) + ddy(_8282))) - _7762) + in_var_TEXCOORD11_centroid.xyz, lerp(_7768, float3(0.0f, 0.0f, 1.0f), lerp(Material_Material_PreshaderBuffer[97].x, Material_Material_PreshaderBuffer[96].w, mad(_8302 ? 0.0f : pow(_8299, Material_Material_PreshaderBuffer[96].x), Material_Material_PreshaderBuffer[96].z, Material_Material_PreshaderBuffer[96].y)).xxx), _778.xxx), float3(0.0f, 0.0f, 1.0f), lerp(Material_Material_PreshaderBuffer[97].y, 0.0f, _778).xxx), (normalize(cross((_8330 * 2097152.0f) + _8332, (_8334 * 2097152.0f) + _8336)) - _7762) + in_var_TEXCOORD11_centroid.xyz, _1449.xxx);
    float3 _8375 = Material_Material_PreshaderBuffer[107].xyz + Material_Material_PreshaderBuffer[106].xyz;
    if ((lerp(1.0f, 0.0f, clamp(mad(sqrt(mad(mad(_684, _684 * 4.76837158203125e-07f, mad(_674, _674 * 4.76837158203125e-07f, _678 * (_678 * 4.76837158203125e-07f))), 4.76837158203125e-07f, mad(_683, mad(_684, 9.5367431640625e-07f, _683), mad(_673, mad(_674, 9.5367431640625e-07f, _673), _677 * mad(_678, 9.5367431640625e-07f, _677))))) * (1.0f / max(9.9999997473787516355514526367188e-06f, MaterialCollection0_MaterialCollection0_Vectors[1].x)), -209715200000.0f, 100000.0f), 0.0f, 1.0f)) - 0.33329999446868896484375f) < 0.0f)
    {
        discard;
    }
    float _8393 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    uint _8394 = in_var_PRIMITIVE_ID * 41u;
    uint _8411 = (((1u | (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8394].x) & 512u) != 0u) ? 32u : 0u)) | (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8394].x) & 256u) != 0u) ? 64u : 0u)) & 4294967288u) | 4u;
    float _8420 = mad(clamp(lerp(lerp(Material_Material_PreshaderBuffer[105].x, Material_Material_PreshaderBuffer[103].w, mad(_8302 ? 0.0f : pow(_8299, Material_Material_PreshaderBuffer[104].y), Material_Material_PreshaderBuffer[104].w, Material_Material_PreshaderBuffer[104].z)), 1.0f, _8274), 0.0f, 1.0f), View_View_SpecularOverrideParameter.w, View_View_SpecularOverrideParameter.x);
    float4 _8421 = 0.0f.xxxx;
    _8421.y = _8420;
    float _8428 = clamp(max(View_View_MinRoughness, mad(lerp(Material_Material_PreshaderBuffer[95].w, Material_Material_PreshaderBuffer[95].z, _8274), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x)), 0.0f, 1.0f);
    _8421.z = _8428;
    float _8430 = clamp(lerp(Material_Material_PreshaderBuffer[97].z, 1.0f, _8274), 0.0f, 1.0f);
    _8421.w = _8430;
    float3 _8433 = clamp((Material_Material_PreshaderBuffer[107].xyz / _8375).xyz, 0.0f.xxx, 1.0f.xxx);
    float4 _8434 = float4(_8433.x, _8433.y, _8433.z, 0.0f.xxxx.w);
    _8434.w = 0.0f;
    float3 _8440 = mad(clamp(lerp(0.0f, Material_Material_PreshaderBuffer[105].y, _8274).xxx.xyz, 0.0f.xxx, 1.0f.xxx), View_View_DiffuseOverrideParameter.www, View_View_DiffuseOverrideParameter.xyz).xyz;
    float3 _8441 = normalize(_8343);
    float3 _8450 = 0.0f.xxx;
    float3 _8451 = 0.0f.xxx;
    [branch]
    if (!((asuint(dot(_8441, _8441)) & 2139095040u) != 2139095040u))
    {
        float3 _8449 = normalize(in_var_TEXCOORD11_centroid.xyz);
        _8450 = _8449;
        _8451 = _8449;
    }
    else
    {
        _8450 = _8343;
        _8451 = _8441;
    }
    float _8452 = 1.0f - _8430;
    bool _8460 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _8466 = 0.0f;
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8394].x) & 2u) != 0u) && _8460)
    {
        _8466 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _8466 = 1.0f;
    }
    float _8516 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8394].x) & 4u) != 0u)
    {
        float3 _8484 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _646, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _8495 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_8484.x), int(_8484.y), int(_8484.z), 0).xyz, 0)));
        _8516 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_8495.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_8484 / _8495.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _8516 = _8466;
    }
    float4 _8517 = float4(_8516, 1.0f, 1.0f, 1.0f);
    bool _8519 = all(bool4(_8517.x == 0.0f.xxxx.x, _8517.y == 0.0f.xxxx.y, _8517.z == 0.0f.xxxx.z, _8517.w == 0.0f.xxxx.w));
    bool _8521 = all(bool4(_8517.x == 1.0f.xxxx.x, _8517.y == 1.0f.xxxx.y, _8517.z == 1.0f.xxxx.z, _8517.w == 1.0f.xxxx.w));
    uint _8540 = 0u;
    if ((!_8519) && (!_8521))
    {
        _8540 = _8411 | 8u;
    }
    else
    {
        uint _8538 = 0u;
        if (_8519)
        {
            _8538 = (_8411 | 0u) | 16u;
        }
        else
        {
            uint _8535 = 0u;
            if (_8521)
            {
                _8535 = (_8411 | 0u) | 0u;
            }
            else
            {
                _8535 = _8411;
            }
            _8538 = _8535;
        }
        _8540 = _8538;
    }
    float _8541 = 0.07999999821186065673828125f * _8420;
    float3 _8546 = (_8440 * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _8551 = (_8541.xxx * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _8554 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _8559 = 0.0f.xxx;
    if (_8554)
    {
        _8559 = _8546 + (_8551 * 0.449999988079071044921875f);
    }
    else
    {
        _8559 = _8546;
    }
    bool3 _8560 = _8554.xxx;
    float3 _8561 = float3(_8560.x ? 0.0f.xxx.x : _8551.x, _8560.y ? 0.0f.xxx.y : _8551.y, _8560.z ? 0.0f.xxx.z : _8551.z);
    float3 _8630 = 0.0f.xxx;
    if (_8460)
    {
        float4 _8584 = 0.0f.xxxx;
        _8584.y = (-0.48860299587249755859375f) * _8451.y;
        _8584.z = 0.48860299587249755859375f * _8451.z;
        _8584.w = (-0.48860299587249755859375f) * _8451.x;
        float3 _8591 = _8451 * _8451;
        float4 _8594 = 0.0f.xxxx;
        _8594.x = (1.09254801273345947265625f * _8451.x) * _8451.y;
        _8594.y = ((-1.09254801273345947265625f) * _8451.y) * _8451.z;
        _8594.z = 0.3153919875621795654296875f * mad(3.0f, _8591.z, -1.0f);
        _8594.w = ((-1.09254801273345947265625f) * _8451.x) * _8451.z;
        _8584.x = 0.886227548122406005859375f;
        float3 _8610 = _8584.yzw * 2.094395160675048828125f;
        float4 _8611 = float4(_8584.x, _8610.x, _8610.y, _8610.z);
        float4 _8612 = _8594 * 0.785398185253143310546875f;
        float _8613 = (_8591.x - _8591.y) * 0.4290426075458526611328125f;
        float3 _8618 = 0.0f.xxx;
        _8618.x = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x, _8613, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _8611) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _8612));
        _8618.y = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y, _8613, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _8611) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _8612));
        _8618.z = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z, _8613, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _8611) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _8612));
        _8630 = max(0.0f.xxx, _8618);
    }
    else
    {
        _8630 = 0.0f.xxx;
    }
    bool _8635 = OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u;
    float3 _8708 = 0.0f.xxx;
    if (_8635)
    {
        float _8660 = 0.0f;
        float _8661 = 0.0f;
        float3 _8662 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _8650 = 0.0f.xxx;
            float _8651 = 0.0f;
            if (_8460)
            {
                _8650 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _8651 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _8650 = _8451;
                _8651 = 1.0f;
            }
            float _8654 = mad(_8651 - 1.0f, 1.0f - _8651, 1.0f);
            _8660 = lerp(clamp(dot(_8650, _8451), 0.0f, 1.0f), 1.0f, _8654);
            _8661 = _8651;
            _8662 = lerp(_8650, _8451, _8654.xxx);
        }
        else
        {
            _8660 = 1.0f;
            _8661 = 1.0f;
            _8662 = _8451;
        }
        float4 _8666 = float4(_8662, 1.0f);
        float3 _8670 = 0.0f.xxx;
        _8670.x = dot(View_SkyIrradianceEnvironmentMap[0u], _8666);
        _8670.y = dot(View_SkyIrradianceEnvironmentMap[1u], _8666);
        _8670.z = dot(View_SkyIrradianceEnvironmentMap[2u], _8666);
        float4 _8681 = _8666.xyzz * _8666.yzzx;
        float3 _8685 = 0.0f.xxx;
        _8685.x = dot(View_SkyIrradianceEnvironmentMap[3u], _8681);
        _8685.y = dot(View_SkyIrradianceEnvironmentMap[4u], _8681);
        _8685.z = dot(View_SkyIrradianceEnvironmentMap[5u], _8681);
        _8708 = (max(0.0f.xxx, (_8670 + _8685) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_8662.x, _8662.x, -(_8662.y * _8662.y)))) * View_View_SkyLightColor.xyz) * (_8661 * _8660);
    }
    else
    {
        _8708 = 0.0f.xxx;
    }
    float3 _8709 = mad(_8630, View_View_PrecomputedIndirectLightingColorScale, _8708);
    float3 _8724 = _8559 * _8430;
    uint2 _8751 = uint2(_629 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    bool _8768 = true && (SingleLayerWater_SingleLayerWater_bSeparateMainDirLightLuminance != 0u);
    float4 _8782 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _8782 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(0.0f.xx)), 0).xy, 0));
    }
    else
    {
        _8782 = 1.0f.xxxx;
    }
    float4 _8783 = _8782 * _8782;
    uint _8786 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8394].x);
    uint _8799 = (uint((_8786 & 2048u) != 0u) | (uint((_8786 & 4096u) != 0u) << 1u)) | (uint((_8786 & 8192u) != 0u) << 2u);
    float4 _9907 = 0.0f.xxxx;
    float3 _9908 = 0.0f.xxx;
    float _9909 = 0.0f;
    float4 _9910 = 0.0f.xxxx;
    float4 _9911 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        float4 _8824 = float4(_551, float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 2u) >> 1u), float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 4u) >> 2u), float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 8u) >> 3u));
        _8824.x = 1.0f;
        float4 _8828 = _8517;
        _8828.x = 1.0f;
        float _8907 = 0.0f;
        if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _8836 = _649.xxxx;
            float4 _8838 = float4(bool4(_8836.x >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.x, _8836.y >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.y, _8836.z >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.z, _8836.w >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _8846 = uint(((_8838.x + _8838.y) + _8838.z) + _8838.w);
            float _8906 = 0.0f;
            if (_8846 < OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _8856 = mul(float4(_645, 1.0f), OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_8846]);
                float2 _8860 = _8856.xy / _8856.w.xx;
                bool2 _8864 = bool2(_8860.x >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8846].xy.x, _8860.y >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8846].xy.y);
                bool2 _8866 = bool2(_8860.x <= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8846].zw.x, _8860.y <= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8846].zw.y);
                float _8905 = 0.0f;
                if (all(bool2(_8864.x && _8866.x, _8864.y && _8866.y)))
                {
                    float2 _8884 = mad(_8860, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy, (-0.5f).xx);
                    float2 _8885 = frac(_8884);
                    float4 _8896 = clamp((OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(OpaqueBasePass_Shared_Forward_ShadowmapSampler, (floor(_8884) + 1.0f.xx) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - mad(1.0f - _8856.z, 4000.0f, -1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _8900 = lerp(_8896.wx, _8896.zy, _8885.xx);
                    _8905 = lerp(_8900.x, _8900.y, _8885.y);
                }
                else
                {
                    _8905 = 1.0f;
                }
                _8906 = _8905;
            }
            else
            {
                _8906 = 1.0f;
            }
            _8907 = _8906;
        }
        else
        {
            _8907 = 1.0f;
        }
        float _9594 = 0.0f;
        [branch]
        if ((!(SingleLayerWater_SingleLayerWater_bMainDirectionalLightVSMFiltering != 0u)) && (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM != (-1)))
        {
            float _9592 = 0.0f;
            do
            {
                float _8917 = max(0.0f, 0.0f);
                uint _8918 = uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM);
                uint _8919 = _8918 * 336u;
                uint _8921 = (_8919 + 96u) >> 2u;
                float4x4 _8935 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                _8935[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8921 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8921 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8921 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8921 + 3u) * 4 + 0)));
                uint _8937 = (_8919 + 128u) >> 2u;
                float4x4 _8951 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                _8951[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8937 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8937 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8937 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8937 + 3u) * 4 + 0)));
                uint _8953 = (_8919 + 144u) >> 2u;
                _8951[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8953 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8953 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8953 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8953 + 3u) * 4 + 0)));
                uint _8969 = (_8919 + 160u) >> 2u;
                _8951[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8969 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8969 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8969 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8969 + 3u) * 4 + 0)));
                uint _8985 = (_8919 + 176u) >> 2u;
                _8951[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8985 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8985 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8985 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8985 + 3u) * 4 + 0)));
                uint _9001 = (_8919 + 256u) >> 2u;
                float3 _9011 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9001 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9001 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9001 + 2u) * 4 + 0)));
                uint _9013 = (_8919 + 268u) >> 2u;
                uint _9017 = (_8919 + 272u) >> 2u;
                uint _9029 = (_8919 + 288u) >> 2u;
                if (VirtualShadowMap_ProjectionData.Load(_9013 * 4 + 0) == 0u)
                {
                    int _9264 = max(0, (int(floor(log2(length(((View_View_ViewTilePosition - (-_9011)) * 2097152.0f) + (_646 - (-asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9029 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9029 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9029 + 2u) * 4 + 0))))))) + asfloat(VirtualShadowMap_ProjectionData.Load(((_8919 + 300u) >> 2u) * 4 + 0)))) - int(VirtualShadowMap_ProjectionData.Load(((_8919 + 312u) >> 2u) * 4 + 0))));
                    if (_9264 < int(VirtualShadowMap_ProjectionData.Load(((_8919 + 316u) >> 2u) * 4 + 0)))
                    {
                        int _9268 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM + _9264;
                        uint _9269 = uint(_9268);
                        uint _9270 = _9269 * 336u;
                        uint _9272 = (_9270 + 96u) >> 2u;
                        uint _9287 = (_9270 + 112u) >> 2u;
                        uint _9296 = (_9270 + 128u) >> 2u;
                        float4x4 _9310 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9310[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9296 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9296 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9296 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9296 + 3u) * 4 + 0)));
                        uint _9312 = (_9270 + 144u) >> 2u;
                        _9310[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9312 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9312 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9312 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9312 + 3u) * 4 + 0)));
                        uint _9328 = (_9270 + 160u) >> 2u;
                        _9310[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9328 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9328 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9328 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9328 + 3u) * 4 + 0)));
                        uint _9344 = (_9270 + 176u) >> 2u;
                        _9310[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9344 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9344 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9344 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9344 + 3u) * 4 + 0)));
                        uint _9360 = (_9270 + 256u) >> 2u;
                        uint _9372 = (_9270 + 272u) >> 2u;
                        float4 _9391 = mul(float4(((View_View_ViewTilePosition + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9360 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9360 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9360 + 2u) * 4 + 0)))) * 2097152.0f) + (_646 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9372 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9372 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9372 + 2u) * 4 + 0)))), 1.0f), _9310);
                        float2 _9392 = _9391.xy;
                        uint2 _9394 = uint2(_9392 * 128.0f);
                        uint _9410 = 0u;
                        do
                        {
                            if (uint(int(_9269)) < 8192u)
                            {
                                _9410 = _9269;
                                break;
                            }
                            _9410 = (8192u + ((_9269 - 8192u) * 21845u)) + (_9394.x + (_9394.y << 7u));
                            break;
                        } while(false);
                        uint _9418 = (VirtualShadowMap_PageTable[_9410] >> 20u) & 63u;
                        bool _9420 = (VirtualShadowMap_PageTable[_9410] & 134217728u) != 0u;
                        float _9583 = 0.0f;
                        bool _9584 = false;
                        if (_9420)
                        {
                            float _9559 = 0.0f;
                            float _9560 = 0.0f;
                            uint2 _9561 = uint2(0u, 0u);
                            uint2 _9562 = uint2(0u, 0u);
                            bool _9563 = false;
                            if (_9418 > 0u)
                            {
                                uint _9433 = (_9270 + 304u) >> 2u;
                                uint _9436 = _9433 + 1u;
                                uint _9441 = uint(int(_9269 + _9418));
                                uint _9444 = ((_9441 * 336u) + 304u) >> 2u;
                                int _9456 = int(_9418);
                                uint2 _9464 = ((_9394 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_9433 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_9436 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_9444 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9444 + 1u) * 4 + 0)))) << (_9456.xx & int2(31, 31)))) >> (_9418.xx & uint2(31u, 31u));
                                uint2 _9465 = _9464 * uint2(128u, 128u);
                                uint _9479 = uint(_9268 + _9456) * 336u;
                                uint _9481 = (_9479 + 112u) >> 2u;
                                uint _9496 = (_9479 + 304u) >> 2u;
                                float _9517 = (_9456 >= 0) ? (1.0f / float(1u << (uint(_9456) & 31u))) : float(1u << (uint(-_9456) & 31u));
                                uint _9546 = 0u;
                                do
                                {
                                    if (uint(int(_9441)) < 8192u)
                                    {
                                        _9546 = _9441;
                                        break;
                                    }
                                    _9546 = (8192u + ((_9441 - 8192u) * 21845u)) + (_9464.x + (_9464.y << 7u));
                                    break;
                                } while(false);
                                _9559 = _9517;
                                _9560 = mad(-_9517, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9287 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9287 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9287 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9287 + 3u) * 4 + 0))).z, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9481 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9481 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9481 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9481 + 3u) * 4 + 0))).z);
                                _9561 = clamp(uint2(((_9392 * _9517) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_9496 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9496 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_9433 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_9436 * 4 + 0)))) * _9517)) * 0.25f).xy) * 16384.0f), _9465, _9465 + uint2(127u, 127u));
                                _9562 = uint2(VirtualShadowMap_PageTable[_9546] & 1023u, (VirtualShadowMap_PageTable[_9546] >> 10u) & 1023u);
                                _9563 = ((VirtualShadowMap_PageTable[_9546] & 134217728u) != 0u) && (((VirtualShadowMap_PageTable[_9546] >> 20u) & 63u) == 0u);
                            }
                            else
                            {
                                _9559 = 1.0f;
                                _9560 = 0.0f;
                                _9561 = uint2(_9392 * 16384.0f);
                                _9562 = uint2(VirtualShadowMap_PageTable[_9410] & 1023u, (VirtualShadowMap_PageTable[_9410] >> 10u) & 1023u);
                                _9563 = _9420 && (_9418 == 0u);
                            }
                            float _9581 = 0.0f;
                            if (_9563)
                            {
                                int4 _9572 = int4(uint4((_9562 * uint2(128u, 128u)) + (_9561 & uint2(127u, 127u)), 0u, 0u));
                                _9581 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_9572.xyz, _9572.w)).x) - _9560) / _9559;
                            }
                            else
                            {
                                _9581 = 0.0f;
                            }
                            _9583 = _9581;
                            _9584 = _9563 ? true : false;
                        }
                        else
                        {
                            _9583 = 0.0f;
                            _9584 = false;
                        }
                        if (_9584)
                        {
                            _9592 = (mad(_8917, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9272 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9272 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9272 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9272 + 3u) * 4 + 0))).z, _9583) > _9391.z) ? 0.0f : 1.0f;
                            break;
                        }
                    }
                }
                else
                {
                    float3 _9064 = ((View_View_ViewTilePosition + _9011) * 2097152.0f) + (_646 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9017 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9017 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9017 + 2u) * 4 + 0))));
                    float4x4 _9177 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    int _9178 = 0;
                    float4x4 _9179 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    if (VirtualShadowMap_ProjectionData.Load(_9013 * 4 + 0) != 2u)
                    {
                        uint _9092 = 0u;
                        do
                        {
                            float _9070 = _9064.x;
                            float _9071 = abs(_9070);
                            float _9072 = _9064.y;
                            float _9073 = abs(_9072);
                            float _9075 = _9064.z;
                            float _9076 = abs(_9075);
                            if ((_9071 >= _9073) && (_9071 >= _9076))
                            {
                                _9092 = (_9070 > 0.0f) ? 0u : 1u;
                                break;
                            }
                            else
                            {
                                if (_9073 > _9076)
                                {
                                    _9092 = (_9072 > 0.0f) ? 2u : 3u;
                                    break;
                                }
                                else
                                {
                                    _9092 = (_9075 > 0.0f) ? 4u : 5u;
                                    break;
                                }
                                break; // unreachable workaround
                            }
                            break; // unreachable workaround
                        } while(false);
                        int _9094 = int(_8918 + _9092);
                        uint _9096 = uint(_9094) * 336u;
                        uint _9098 = (_9096 + 96u) >> 2u;
                        float4x4 _9112 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9112[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9098 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9098 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9098 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9098 + 3u) * 4 + 0)));
                        uint _9114 = (_9096 + 128u) >> 2u;
                        float4x4 _9128 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9128[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9114 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9114 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9114 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9114 + 3u) * 4 + 0)));
                        uint _9130 = (_9096 + 144u) >> 2u;
                        _9128[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9130 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9130 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9130 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9130 + 3u) * 4 + 0)));
                        uint _9146 = (_9096 + 160u) >> 2u;
                        _9128[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9146 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9146 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9146 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9146 + 3u) * 4 + 0)));
                        uint _9162 = (_9096 + 176u) >> 2u;
                        _9128[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9162 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9162 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9162 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9162 + 3u) * 4 + 0)));
                        _9177 = _9112;
                        _9178 = _9094;
                        _9179 = _9128;
                    }
                    else
                    {
                        _9177 = _8935;
                        _9178 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM;
                        _9179 = _8951;
                    }
                    float4 _9184 = mul(float4(_9064, 1.0f), _9179);
                    float _9185 = _9184.w;
                    float3 _9188 = _9184.xyz / _9185.xxx;
                    float2 _9189 = _9188.xy;
                    float _9242 = 0.0f;
                    bool _9243 = false;
                    do
                    {
                        bool _9199 = false;
                        uint _9192 = uint(_9178);
                        uint2 _9194 = uint2(_9189 * 128.0f);
                        uint _9210 = 0u;
                        do
                        {
                            _9199 = uint(int(_9192)) < 8192u;
                            if (_9199)
                            {
                                _9210 = _9192;
                                break;
                            }
                            _9210 = (8192u + ((_9192 - 8192u) * 21845u)) + (_9194.x + (_9194.y << 7u));
                            break;
                        } while(false);
                        if ((VirtualShadowMap_PageTable[_9210] & 134217728u) != 0u)
                        {
                            int4 _9235 = int4(uint4((uint2(VirtualShadowMap_PageTable[_9210] & 1023u, (VirtualShadowMap_PageTable[_9210] >> 10u) & 1023u) * uint2(128u, 128u)) + (uint2(_9189 * float(16384u >> ((_9199 ? 7u : ((VirtualShadowMap_PageTable[_9210] >> 20u) & 63u)) & 31u))) & uint2(127u, 127u)), 0u, 0u));
                            _9242 = asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_9235.xyz, _9235.w)).x);
                            _9243 = true;
                            break;
                        }
                        _9242 = 0.0f;
                        _9243 = false;
                        break;
                    } while(false);
                    if (_9243)
                    {
                        _9592 = ((_9242 - (((-_8917) * _9177[2].z) / _9185)) > _9188.z) ? 0.0f : 1.0f;
                        break;
                    }
                }
                _9592 = 1.0f;
                break;
            } while(false);
            _9594 = _8907 * _9592;
        }
        else
        {
            _9594 = _8907;
        }
        float _9601 = clamp(mad(_649, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
        float _9603 = lerp(_9594, lerp(1.0f, dot(_8828, _8824), dot(_8824, 1.0f.xxxx)), _9601 * _9601);
        float3 _9878 = 0.0f.xxx;
        float3 _9879 = 0.0f.xxx;
        [branch]
        if ((_9603 + min(_9603, 1.0f)) > 0.0f)
        {
            float _9609 = max(_8428, View_View_MinRoughness);
            float _9610 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _9613 = rsqrt(_9610);
            float3 _9614 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _9613;
            float _9615 = dot(_8451, _9614);
            float _9633 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _9622 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_9610 + 1.0f)), 0.0f, 1.0f));
                float _9632 = 0.0f;
                if (_9615 < _9622)
                {
                    float _9628 = _9622 + max(_9615, -_9622);
                    _9632 = (_9628 * _9628) / (4.0f * _9622);
                }
                else
                {
                    _9632 = _9615;
                }
                _9633 = _9632;
            }
            else
            {
                _9633 = _9615;
            }
            float _9634 = clamp(_9633, 0.0f, 1.0f);
            float _9635 = max(_9609, View_View_MinRoughness);
            float _9640 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _9613) * mad(-_9635, _9635, 1.0f), 0.0f, 1.0f);
            uint _9647 = 0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u);
            float _9648 = dot(_8451, _663);
            float _9649 = dot(_663, _9614);
            float _9651 = rsqrt(mad(2.0f, _9649, 2.0f));
            float _9654 = clamp((_9615 + _9648) * _9651, 0.0f, 1.0f);
            float _9656 = clamp(mad(_9651, _9649, _9651), 0.0f, 1.0f);
            bool _9657 = _9640 > 0.0f;
            float _9736 = 0.0f;
            float _9737 = 0.0f;
            if (_9657)
            {
                float _9662 = sqrt(mad(-_9640, _9640, 1.0f));
                float _9663 = 2.0f * _9615;
                float _9664 = -_9649;
                float _9665 = mad(_9663, _9648, _9664);
                float _9734 = 0.0f;
                float _9735 = 0.0f;
                if (_9665 >= _9662)
                {
                    _9734 = 1.0f;
                    _9735 = abs(_9648);
                }
                else
                {
                    float _9670 = -_9665;
                    float _9673 = _9640 * rsqrt(mad(_9670, _9665, 1.0f));
                    float _9674 = mad(_9670, _9615, _9648);
                    float _9678 = mad(_9670, _9649, mad(2.0f * _9648, _9648, -1.0f));
                    float _9689 = _9673 * sqrt(clamp(mad(_9663 * _9648, _9649, mad(_9664, _9649, mad(-_9648, _9648, mad(-_9615, _9615, 1.0f)))), 0.0f, 1.0f));
                    float _9691 = (_9689 * 2.0f) * _9648;
                    float _9692 = mad(_9615, _9662, _9648);
                    float _9693 = mad(_9673, _9674, _9692);
                    float _9695 = mad(_9673, _9678, mad(_9649, _9662, 1.0f));
                    float _9696 = _9689 * _9695;
                    float _9697 = _9693 * _9695;
                    float _9702 = _9697 * mad(-0.5f, _9696, (0.25f * _9691) * _9693);
                    float _9712 = mad(_9693, mad(_9692, _9695 * _9695, _9697 * mad(-0.5f, mad(_9649, _9662, _9695), -0.5f)), mad(_9696, _9696, (_9691 * _9693) * mad(_9691, _9693, _9696 * (-2.0f))));
                    float _9716 = (2.0f * _9702) / mad(_9712, _9712, _9702 * _9702);
                    float _9717 = _9716 * _9712;
                    float _9719 = mad(-_9716, _9702, 1.0f);
                    float _9725 = mad(_9649, _9662, mad(_9719, _9673 * _9678, _9717 * _9691));
                    float _9727 = rsqrt(mad(2.0f, _9725, 2.0f));
                    _9734 = clamp((mad(_9615, _9662, mad(_9719, _9673 * _9674, _9717 * _9689)) + _9648) * _9727, 0.0f, 1.0f);
                    _9735 = clamp(mad(_9727, _9725, _9727), 0.0f, 1.0f);
                }
                _9736 = _9734;
                _9737 = _9735;
            }
            else
            {
                _9736 = _9654;
                _9737 = _9656;
            }
            float _9740 = clamp(abs(_9648) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float _9741 = _9609 * _9609;
            float _9742 = _9741 * _9741;
            float _9747 = clamp(_9656, 0.0f, 1.0f);
            int _9749 = asint(_9742);
            float _9755 = clamp(0.0555555559694766998291015625f * log2(mad(2.0f, asfloat(2129859010 - _9749), -1.0f)), 0.0f, 1.0f);
            float _9756 = 1.0f - _9747;
            float _9757 = _9756 * _9756;
            float _9760 = 1.0f - clamp(_9648, 0.0f, 1.0f);
            float _9761 = _9760 * _9760;
            float _9765 = 1.0f - clamp(_9634, 0.0f, 1.0f);
            float _9766 = _9765 * _9765;
            float3 _9790 = 1.0f.xxx * _9634;
            float3 _9840 = 0.0f.xxx;
            if ((_9647 & 1u) == 1u)
            {
                _9840 = 0.0f.xxx;
            }
            else
            {
                float _9809 = 0.0f;
                if (_9657)
                {
                    _9809 = _9742 / mad(_9741, _9741, ((0.25f * _9640) * mad(3.0f, asfloat(532487669 + (_9749 >> 1)), _9640)) / (_9737 + 0.001000000047497451305389404296875f));
                }
                else
                {
                    _9809 = 1.0f;
                }
                float _9812 = mad(mad(_9736, _9742, -_9736), _9736, 1.0f);
                float _9817 = sqrt(_9742);
                float _9818 = 1.0f - _9817;
                float _9824 = 1.0f - _9737;
                float _9825 = _9824 * _9824;
                float _9826 = _9825 * _9825;
                _9840 = _9790 * (((clamp(50.0f * _8561.y, 0.0f, 1.0f) * (_9826 * _9824)).xxx + (_8561 * mad(-_9826, _9824, 1.0f))) * (((_9742 / ((3.1415927410125732421875f * _9812) * _9812)) * _9809) * (0.5f / mad(_9634, mad(_9740, _9818, _9817), _9740 * mad(_9634, _9818, _9817)))));
            }
            float4 _9849 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_9740, _9609), 0.0f);
            bool3 _9853 = (View_View_bShadingEnergyConservation != 0u).xxx;
            float _9854 = _9849.x;
            float3 _9858 = 1.0f.xxx + (_8561 * ((1.0f - _9854) / _9854));
            float3 _9859 = float3(_9853.x ? _9858.x : 1.0f.xxx.x, _9853.y ? _9858.y : 1.0f.xxx.y, _9853.z ? _9858.z : 1.0f.xxx.z);
            float3 _9875 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _9603;
            float3 _9877 = mad(((_8724 * (0.3183098733425140380859375f * mad((mad(mad(34.5f, _9755, -59.0f), _9755, 24.5f) * _9747) * exp2((-max(mad(73.1999969482421875f, _9755, -21.200000762939453125f), 8.8999996185302734375f)) * asfloat(532487669 + (asint(clamp(_9654, 0.0f, 1.0f)) >> 1))), asfloat(_9647 >> 1u), lerp(mad(_9757 * _9757, _9756, _9747), mad(-0.75f, (_9761 * _9761) * _9760, 1.0f) * mad(-0.75f, (_9766 * _9766) * _9765, 1.0f), clamp(mad(2.2000000476837158203125f, _9755, -0.5f), 0.0f, 1.0f))))) * _9790) * ((View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(_9859 * ((_8561 * _9854) + ((clamp(50.0f * _8561.y, 0.0f, 1.0f).xxx - _8561) * _9849.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f), _9875, 0.0f.xxx);
            _9878 = _9877;
            _9879 = ((_9840 * _9859) * 1.0f) * _9875;
        }
        else
        {
            _9878 = 0.0f.xxx;
            _9879 = 0.0f.xxx;
        }
        float4 _9883 = float4(_9878, 0.0f);
        float4 _9887 = float4(_9879, 0.0f);
        float3 _9904 = 0.0f.xxx;
        float4 _9905 = 0.0f.xxxx;
        float4 _9906 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _8799) != 0u)
        {
            float4 _9892 = float4(_9883.x, _9883.y, _9883.z, _9883.w);
            float4 _9893 = float4(_9887.x, _9887.y, _9887.z, _9887.w);
            float3 _9900 = 0.0f.xxx;
            if (_8768)
            {
                _9900 = _9883.xyz + _9887.xyz;
            }
            else
            {
                _9900 = 0.0f.xxx;
            }
            bool4 _9901 = _8768.xxxx;
            _9904 = _9900;
            _9905 = float4(_9901.x ? 0.0f.xxxx.x : _9892.x, _9901.y ? 0.0f.xxxx.y : _9892.y, _9901.z ? 0.0f.xxxx.z : _9892.z, _9901.w ? 0.0f.xxxx.w : _9892.w);
            _9906 = float4(_9901.x ? 0.0f.xxxx.x : _9893.x, _9901.y ? 0.0f.xxxx.y : _9893.y, _9901.z ? 0.0f.xxxx.z : _9893.z, _9901.w ? 0.0f.xxxx.w : _9893.w);
        }
        else
        {
            _9904 = 0.0f.xxx;
            _9905 = 0.0f.xxxx;
            _9906 = 0.0f.xxxx;
        }
        _9907 = _8828;
        _9908 = _9904;
        _9909 = _9603;
        _9910 = _9905;
        _9911 = _9906;
    }
    else
    {
        _9907 = _8517;
        _9908 = 0.0f.xxx;
        _9909 = 1.0f;
        _9910 = 0.0f.xxxx;
        _9911 = 0.0f.xxxx;
    }
    uint _9912 = ((((min(uint(max(0.0f, log2(mad(_588, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _8751.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _8751.x) * 2u;
    uint _9918 = _9912 + 1u;
    uint _9921 = min(min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_9912], OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
    float4 _9923 = 0.0f.xxxx;
    float4 _9926 = 0.0f.xxxx;
    _9923 = _9910;
    _9926 = _9911;
    float4 _9924 = 0.0f.xxxx;
    float4 _9927 = 0.0f.xxxx;
    [loop]
    for (uint _9928 = 0u; _9928 < _9921; _9923 = _9924, _9926 = _9927, _9928++)
    {
        uint _9937 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_9918] + _9928).x * 6u;
        uint _9940 = _9937 + 1u;
        uint _9943 = _9937 + 2u;
        uint _9946 = _9937 + 3u;
        uint _9949 = _9937 + 4u;
        uint _9953 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9943].w);
        uint _9959 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9940].y);
        uint _9975 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9946].z);
        float2 _9977 = spvUnpackHalf2x16(_9975 & 65535u);
        float _9978 = _9977.x;
        float2 _9981 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9946].w));
        float _9982 = _9981.x;
        bool _9987 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9940].w == 0.0f;
        float4 _10008 = float4(float(_9953 & 1u), float((_9953 & 2u) >> 1u), float((_9953 & 4u) >> 2u), float((_9953 & 8u) >> 3u));
        uint _10009 = _9953 >> 4u;
        float3 _10025 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9937].xyz - _645;
        float _10026 = dot(_10025, _10025);
        float _10043 = 0.0f;
        if (_9987)
        {
            float _10038 = _10026 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9937].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9937].w);
            float _10041 = clamp(mad(-_10038, _10038, 1.0f), 0.0f, 1.0f);
            _10043 = _10041 * _10041;
        }
        else
        {
            float3 _10032 = _10025 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9937].w;
            _10043 = pow(1.0f - clamp(dot(_10032, _10032), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9940].w);
        }
        float _10054 = 0.0f;
        if (((_9953 >> 16u) & 3u) == 2u)
        {
            float _10051 = clamp((dot(_10025 * rsqrt(_10026), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9943].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9946].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9946].y, 0.0f, 1.0f);
            _10054 = _10043 * (_10051 * _10051);
        }
        else
        {
            _10054 = _10043;
        }
        float3 _10425 = 0.0f.xxx;
        float3 _10426 = 0.0f.xxx;
        [branch]
        if (_10054 > 0.0f)
        {
            float _10066 = 0.0f;
            [branch]
            if (uint((_9953 & 255u) != 0u) != 0u)
            {
                _10066 = dot(float4(float(_10009 & 1u), float((_10009 & 2u) >> 1u), float((_10009 & 4u) >> 2u), float((_10009 & 8u) >> 3u)), _8783) * lerp(1.0f, dot(_9907, _10008), dot(_10008, 1.0f.xxxx));
            }
            else
            {
                _10066 = 1.0f;
            }
            float3 _10423 = 0.0f.xxx;
            float3 _10424 = 0.0f.xxx;
            [branch]
            if ((_10066 + _10066) > 0.0f)
            {
                float3 _10072 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9949].xyz * (0.5f * _9982);
                float3 _10073 = _10025 - _10072;
                float3 _10074 = _10025 + _10072;
                float _10075 = max(_8428, View_View_MinRoughness);
                bool _10076 = _9982 > 0.0f;
                float _10101 = 0.0f;
                float _10102 = 0.0f;
                float _10103 = 0.0f;
                [branch]
                if (_10076)
                {
                    float _10088 = rsqrt(dot(_10073, _10073));
                    float _10089 = rsqrt(dot(_10074, _10074));
                    float _10090 = _10088 * _10089;
                    float _10092 = dot(_10073, _10074) * _10090;
                    _10101 = _10092;
                    _10102 = 0.5f * mad(dot(_8451, _10073), _10088, dot(_8451, _10074) * _10089);
                    _10103 = _10090 / mad(_10088, _10089, mad(_10092, 0.5f, 0.5f));
                }
                else
                {
                    float _10080 = dot(_10073, _10073);
                    _10101 = 1.0f;
                    _10102 = dot(_8451, _10073 * rsqrt(_10080));
                    _10103 = 1.0f / (_10080 + 1.0f);
                }
                float _10121 = 0.0f;
                if (_9978 > 0.0f)
                {
                    float _10110 = sqrt(clamp((_9978 * _9978) * _10103, 0.0f, 1.0f));
                    float _10120 = 0.0f;
                    if (_10102 < _10110)
                    {
                        float _10116 = _10110 + max(_10102, -_10110);
                        _10120 = (_10116 * _10116) / (4.0f * _10110);
                    }
                    else
                    {
                        _10120 = _10102;
                    }
                    _10121 = _10120;
                }
                else
                {
                    _10121 = _10102;
                }
                float _10122 = clamp(_10121, 0.0f, 1.0f);
                float3 _10140 = 0.0f.xxx;
                if (_10076)
                {
                    float3 _10127 = reflect(-_663, _8451);
                    float3 _10128 = _10074 - _10073;
                    float _10129 = dot(_10127, _10128);
                    _10140 = _10073 + (_10128 * clamp(dot(_10073, (_10127 * _10129) - _10128) / mad(_9982, _9982, -(_10129 * _10129)), 0.0f, 1.0f));
                }
                else
                {
                    _10140 = _10073;
                }
                float _10142 = rsqrt(dot(_10140, _10140));
                float3 _10143 = _10140 * _10142;
                float _10144 = max(_10075, View_View_MinRoughness);
                float _10149 = clamp((_9978 * _10142) * mad(-_10144, _10144, 1.0f), 0.0f, 1.0f);
                float _10151 = clamp(spvUnpackHalf2x16(_9975 >> 16u).x * _10142, 0.0f, 1.0f);
                uint _10158 = 0u | (asuint(clamp(mad(-max(_9982, _9978), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u);
                float _10159 = dot(_8451, _10143);
                float _10160 = dot(_8451, _663);
                float _10161 = dot(_663, _10143);
                float _10163 = rsqrt(mad(2.0f, _10161, 2.0f));
                float _10166 = clamp((_10159 + _10160) * _10163, 0.0f, 1.0f);
                float _10168 = clamp(mad(_10163, _10161, _10163), 0.0f, 1.0f);
                bool _10169 = _10149 > 0.0f;
                float _10248 = 0.0f;
                float _10249 = 0.0f;
                if (_10169)
                {
                    float _10174 = sqrt(mad(-_10149, _10149, 1.0f));
                    float _10175 = 2.0f * _10159;
                    float _10176 = -_10161;
                    float _10177 = mad(_10175, _10160, _10176);
                    float _10246 = 0.0f;
                    float _10247 = 0.0f;
                    if (_10177 >= _10174)
                    {
                        _10246 = 1.0f;
                        _10247 = abs(_10160);
                    }
                    else
                    {
                        float _10182 = -_10177;
                        float _10185 = _10149 * rsqrt(mad(_10182, _10177, 1.0f));
                        float _10186 = mad(_10182, _10159, _10160);
                        float _10190 = mad(_10182, _10161, mad(2.0f * _10160, _10160, -1.0f));
                        float _10201 = _10185 * sqrt(clamp(mad(_10175 * _10160, _10161, mad(_10176, _10161, mad(-_10160, _10160, mad(-_10159, _10159, 1.0f)))), 0.0f, 1.0f));
                        float _10203 = (_10201 * 2.0f) * _10160;
                        float _10204 = mad(_10159, _10174, _10160);
                        float _10205 = mad(_10185, _10186, _10204);
                        float _10207 = mad(_10185, _10190, mad(_10161, _10174, 1.0f));
                        float _10208 = _10201 * _10207;
                        float _10209 = _10205 * _10207;
                        float _10214 = _10209 * mad(-0.5f, _10208, (0.25f * _10203) * _10205);
                        float _10224 = mad(_10205, mad(_10204, _10207 * _10207, _10209 * mad(-0.5f, mad(_10161, _10174, _10207), -0.5f)), mad(_10208, _10208, (_10203 * _10205) * mad(_10203, _10205, _10208 * (-2.0f))));
                        float _10228 = (2.0f * _10214) / mad(_10224, _10224, _10214 * _10214);
                        float _10229 = _10228 * _10224;
                        float _10231 = mad(-_10228, _10214, 1.0f);
                        float _10237 = mad(_10161, _10174, mad(_10231, _10185 * _10190, _10229 * _10203));
                        float _10239 = rsqrt(mad(2.0f, _10237, 2.0f));
                        _10246 = clamp((mad(_10159, _10174, mad(_10231, _10185 * _10186, _10229 * _10201)) + _10160) * _10239, 0.0f, 1.0f);
                        _10247 = clamp(mad(_10239, _10237, _10239), 0.0f, 1.0f);
                    }
                    _10248 = _10246;
                    _10249 = _10247;
                }
                else
                {
                    _10248 = _10166;
                    _10249 = _10168;
                }
                float _10252 = clamp(abs(_10160) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float _10253 = _10075 * _10075;
                float _10254 = _10253 * _10253;
                float _10259 = clamp(_10168, 0.0f, 1.0f);
                float _10267 = clamp(0.0555555559694766998291015625f * log2(mad(2.0f, asfloat(2129859010 - asint(_10254)), -1.0f)), 0.0f, 1.0f);
                float _10268 = 1.0f - _10259;
                float _10269 = _10268 * _10268;
                float _10272 = 1.0f - clamp(_10160, 0.0f, 1.0f);
                float _10273 = _10272 * _10272;
                float _10277 = 1.0f - clamp(_10122, 0.0f, 1.0f);
                float _10278 = _10277 * _10277;
                float3 _10303 = 1.0f.xxx * ((_9987 ? _10103 : 1.0f) * _10122);
                float3 _10385 = 0.0f.xxx;
                if ((_10158 & 1u) == 1u)
                {
                    _10385 = 0.0f.xxx;
                }
                else
                {
                    float _10318 = 0.0f;
                    if (_10151 > 0.0f)
                    {
                        _10318 = clamp(mad(_10253, _10253, (_10151 * _10151) / mad(_10249, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _10318 = _10254;
                    }
                    float _10332 = 0.0f;
                    float _10333 = 0.0f;
                    if (_10169)
                    {
                        float _10330 = _10318 + (((0.25f * _10149) * mad(3.0f, asfloat(532487669 + (asint(_10318) >> 1)), _10149)) / (_10249 + 0.001000000047497451305389404296875f));
                        _10332 = _10318 / _10330;
                        _10333 = _10330;
                    }
                    else
                    {
                        _10332 = 1.0f;
                        _10333 = _10318;
                    }
                    float _10354 = 0.0f;
                    if (_10101 < 1.0f)
                    {
                        float _10340 = sqrt((1.00010001659393310546875f - _10101) / (1.0f + _10101));
                        _10354 = _10332 * sqrt(_10333 / (_10333 + (((0.25f * _10340) * mad(3.0f, asfloat(532487669 + (asint(_10333) >> 1)), _10340)) / (_10249 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _10354 = _10332;
                    }
                    float _10357 = mad(mad(_10248, _10318, -_10248), _10248, 1.0f);
                    float _10362 = sqrt(_10318);
                    float _10363 = 1.0f - _10362;
                    float _10369 = 1.0f - _10249;
                    float _10370 = _10369 * _10369;
                    float _10371 = _10370 * _10370;
                    _10385 = _10303 * (((clamp(50.0f * _8561.y, 0.0f, 1.0f) * (_10371 * _10369)).xxx + (_8561 * mad(-_10371, _10369, 1.0f))) * (((_10318 / ((3.1415927410125732421875f * _10357) * _10357)) * _10354) * (0.5f / mad(_10122, mad(_10252, _10363, _10362), _10252 * mad(_10122, _10363, _10362)))));
                }
                float4 _10394 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_10252, _10075), 0.0f);
                bool3 _10398 = (View_View_bShadingEnergyConservation != 0u).xxx;
                float _10399 = _10394.x;
                float3 _10403 = 1.0f.xxx + (_8561 * ((1.0f - _10399) / _10399));
                float3 _10404 = float3(_10398.x ? _10403.x : 1.0f.xxx.x, _10398.y ? _10403.y : 1.0f.xxx.y, _10398.z ? _10403.z : 1.0f.xxx.z);
                float3 _10420 = ((float3(float((_9959 >> 0u) & 1023u), float((_9959 >> 10u) & 1023u), float((_9959 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9940].x) * _10054) * _10066;
                float3 _10422 = mad(((_8724 * (0.3183098733425140380859375f * mad((mad(mad(34.5f, _10267, -59.0f), _10267, 24.5f) * _10259) * exp2((-max(mad(73.1999969482421875f, _10267, -21.200000762939453125f), 8.8999996185302734375f)) * asfloat(532487669 + (asint(clamp(_10166, 0.0f, 1.0f)) >> 1))), asfloat(_10158 >> 1u), lerp(mad(_10269 * _10269, _10268, _10259), mad(-0.75f, (_10273 * _10273) * _10272, 1.0f) * mad(-0.75f, (_10278 * _10278) * _10277, 1.0f), clamp(mad(2.2000000476837158203125f, _10267, -0.5f), 0.0f, 1.0f))))) * _10303) * ((View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(_10404 * ((_8561 * _10399) + ((clamp(50.0f * _8561.y, 0.0f, 1.0f).xxx - _8561) * _10394.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f), _10420, 0.0f.xxx);
                _10423 = _10422;
                _10424 = ((_10385 * _10404) * spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9949].w) & 65535u).x) * _10420;
            }
            else
            {
                _10423 = 0.0f.xxx;
                _10424 = 0.0f.xxx;
            }
            _10425 = _10423;
            _10426 = _10424;
        }
        else
        {
            _10425 = 0.0f.xxx;
            _10426 = 0.0f.xxx;
        }
        [flatten]
        if ((((_9953 >> 8u) & 7u) & _8799) != 0u)
        {
            _9924 = _9923 + float4(_10425, 0.0f);
            _9927 = _9926 + float4(_10426, 0.0f);
        }
        else
        {
            _9924 = _9923;
            _9927 = _9926;
        }
    }
    bool4 _10444 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    float3 _10530 = 0.0f.xxx;
    float3 _10531 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _10475 = _8394 + 31u;
        float3 _10484 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_8394 + 1u].xyz) * 2097152.0f) + (_646 - Scene_GPUScene_GPUScenePrimitiveSceneData[_8394 + 18u].xyz));
        float3 _10485 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_8394 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_8394 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_8394 + 25u].w) + 1.0f.xxx;
        float3 _10528 = 0.0f.xxx;
        float3 _10529 = 0.0f.xxx;
        if (any(bool3(_10484.x > _10485.x, _10484.y > _10485.y, _10484.z > _10485.z)))
        {
            float3 _10508 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _10509 = _646 * 0.57700002193450927734375f.xxx;
            float3 _10524 = frac(mad((_10509.x + _10509.y) + _10509.z, 0.00200000009499490261077880859375f, frac(((_10508.x + _10508.y) + _10508.z) * 4194.30419921875f))).xxx;
            float3 _10527 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_10524.x > 0.5f.xxx.x, _10524.y > 0.5f.xxx.y, _10524.z > 0.5f.xxx.z)));
            _10528 = _10527;
            _10529 = _10527;
        }
        else
        {
            float3 _10507 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_10475].x > 0.0f)
            {
                float3 _10495 = abs(_645 - in_var_TEXCOORD9);
                _10507 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_10495.x, max(_10495.y, _10495.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_10475].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _10507 = 0.0f.xxx;
            }
            _10528 = 0.0f.xxx;
            _10529 = _10507;
        }
        _10530 = _10528;
        _10531 = _10529;
    }
    else
    {
        _10530 = 0.0f.xxx;
        _10531 = 0.0f.xxx;
    }
    float4 _10543 = OpaqueBasePass_PreIntegratedGFTexture.SampleLevel(View_SharedBilinearClampedSampler, float2(max(0.0f, dot(_8451, _663)), _8428), 0.0f);
    float3 _10781 = 0.0f.xxx;
    float3 _10782 = 0.0f.xxx;
    if (_8452 > 0.0f)
    {
        float2 _10571 = clamp(mad(_636.xy / _649.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz), SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.xy, SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.zw);
        float4 _10573 = SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture.SampleLevel(View_SharedBilinearClampedSampler, _10571, 0.0f);
        float _10574 = _10573.x;
        float _10584 = -View_View_InvDeviceZToWorldZTransform.w;
        float _10587 = mad(_10574, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10574, View_View_InvDeviceZToWorldZTransform.z, _10584));
        float _10618 = _10587 - _649;
        float2 _10627 = clamp(_10571 + (((((((normalize(mul(_8451, float3x3(View_View_TranslatedWorldToView[0].xyz, View_View_TranslatedWorldToView[1].xyz, View_View_TranslatedWorldToView[2].xyz))).xy * (Material_Material_PreshaderBuffer[107].w - 1.0f)) * View_View_ViewSizeAndInvSize.xy) * View_View_BufferSizeAndInvSize.zw) * ((SingleLayerWater_SingleLayerWater_DistortionParams.zw * float2(0.000230000005103647708892822265625f, -0.000230000005103647708892822265625f)) * float2(SingleLayerWater_SingleLayerWater_DistortionParams.x, SingleLayerWater_SingleLayerWater_DistortionParams.y * SingleLayerWater_SingleLayerWater_DistortionParams.x))) * clamp(mad(_10618, 1.0f / max(1.0f, clamp(abs(Material_Material_PreshaderBuffer[108].x * (-0.5f)), 0.0f, 50.0f)), -Material_Material_PreshaderBuffer[108].x), 0.0f, 1.0f)) * 4.0f) * clamp(_10618 * 0.0333333350718021392822265625f, 0.0f, 1.0f)), SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.xy, SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.zw);
        float4 _10629 = SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture.GatherRed(View_SharedBilinearClampedSampler, _10627);
        float _10630 = _10629.x;
        float _10635 = _10629.y;
        float _10640 = _10629.z;
        float _10645 = _10629.w;
        float4 _10650 = float4(mad(_10630, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10630, View_View_InvDeviceZToWorldZTransform.z, _10584)), mad(_10635, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10635, View_View_InvDeviceZToWorldZTransform.z, _10584)), mad(_10640, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10640, View_View_InvDeviceZToWorldZTransform.z, _10584)), mad(_10645, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10645, View_View_InvDeviceZToWorldZTransform.z, _10584)));
        float4 _10651 = _649.xxxx;
        bool _10653 = any(bool4(_10650.x < _10651.x, _10650.y < _10651.y, _10650.z < _10651.z, _10650.w < _10651.w));
        float _10679 = 0.0f;
        float _10680 = 0.0f;
        if (_10653)
        {
            _10679 = _10587;
            _10680 = _10574;
        }
        else
        {
            float2 _10660 = frac(((_10627 * SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterTextureSize) * 1.0f) - 0.5f.xx);
            float _10662 = _10660.x;
            float _10663 = 1.0f - _10662;
            float _10664 = _10660.y;
            float _10665 = 1.0f - _10664;
            float4 _10667 = 0.0f.xxxx;
            _10667.x = _10663 * _10665;
            _10667.y = _10662 * _10665;
            _10667.z = _10663 * _10664;
            _10667.w = _10662 * _10664;
            float _10674 = dot(_10629.wzxy, _10667);
            _10679 = mad(_10674, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10674, View_View_InvDeviceZToWorldZTransform.z, _10584));
            _10680 = _10674;
        }
        bool2 _10681 = _10653.xx;
        float _10685 = max(0.0f, _10679 - _649);
        float3 _10687 = clamp(_8375.xyz, 0.0f.xxx, 64512.0f.xxx).xyz;
        float _10695 = 1.0f / ((2.0f / (1.0f - sqrt(min(_8541, 0.9900000095367431640625f)))) - 1.0f);
        float3 _10718 = 0.0f.xxx;
        bool _10719 = false;
        do
        {
            float _10698 = dot(_663, _8451);
            float _10703 = mad(-(_10695 * _10695), mad(-_10698, _10698, 1.0f), 1.0f);
            if (_10703 < 0.0f)
            {
                _10718 = reflect(-_663, _8451);
                _10719 = false;
                break;
            }
            _10718 = (_8451 * mad(_10695, _10698, (-((_10698 >= 0.0f) ? 1.0f : (-1.0f))) * sqrt(_10703))) - (_663 * _10695);
            _10719 = true;
            break;
        } while(false);
        float _10731 = 0.0f;
        if (_10719)
        {
            float _10724 = mad(1.5499999523162841796875f, 0.0f, -0.0f);
            float _10725 = mad(_10724, dot(-View_View_DirectionalLightDirection, _10718), 1.0f);
            _10731 = mad(-_10724, _10724, 1.0f) / ((12.56637096405029296875f * _10725) * _10725);
        }
        else
        {
            _10731 = 0.0f;
        }
        float4 _10733 = mul(float4(gl_FragCoord.xy, max(9.9999999600419720025001879548654e-13f, _10680), 1.0f), View_View_SVPositionToTranslatedWorld);
        float3 _10759 = exp(-(_10687 * _10685));
        float3 _10760 = ((View_View_DirectionalLightColor.xyz * 3.1415927410125732421875f) * _10731) * _9909;
        float3 _10766 = clamp(((_8434.xyz * _10687) * (1.0f.xxx - _10759)) / max(_10687, 9.9999997473787516355514526367188e-06f.xxx), 0.0f.xxx, 1.0f.xxx);
        float3 _10770 = 1.0f.xxx - ((_8561 * _10543.x) + (clamp(50.0f * _8561.y, 0.0f, 1.0f) * _10543.y).xxx);
        float3 _10771 = float3(_10770.x, _10770.y, _10770.z);
        _10781 = _9908 + ((((_10760 * float(_8768)) * _10766) * _10771) * _8452);
        _10782 = mad((((_8709 * 3.1415927410125732421875f) * 0.079577468335628509521484375f) + (_10760 * (_8768 ? 0.0f : 1.0f))) * _10766, _10771, (_10759 * float3(1.0f.xxx.x, 1.0f.xxx.y, 1.0f.xxx.z)) * (((exp(_10687 * (-max(0.0f, (((View_View_ViewTilePosition - View_View_ViewTilePosition) * 2097152.0f) + (_646 - ((_10733.xyz / _10733.w.xxx) - View_View_RelativePreViewTranslation))).z))) * View_View_OneOverPreExposure) * SingleLayerWater_SceneColorWithoutSingleLayerWaterTexture.SampleLevel(View_SharedBilinearClampedSampler, float2(_10681.x ? _10571.x : _10627.x, _10681.y ? _10571.y : _10627.y), 0.0f).xyz) * lerp(1.0f.xxx, clamp(Material_Material_PreshaderBuffer[105].z.xxx.xyz, 0.0f.xxx, 64512.0f.xxx).xyz, clamp(_10685 * 0.0199999995529651641845703125f, 0.0f, 1.0f).xxx))) * _8452;
    }
    else
    {
        _10781 = _9908;
        _10782 = 0.0f.xxx;
    }
    float3 _10784 = normalize(_8450);
    uint2 _10785 = uint2(gl_FragCoord.xy);
    float3 _10788 = mad(clamp(_8440, 0.0f.xxx, 1.0f.xxx), View_View_DiffuseOverrideParameter.www, View_View_DiffuseOverrideParameter.xyz);
    _8421.x = 0.0f;
    float _10791 = mad(clamp(_8420, 0.0f, 1.0f), View_View_SpecularOverrideParameter.w, View_View_SpecularOverrideParameter.x);
    _8421.y = _10791;
    float _10795 = clamp(max(View_View_MinRoughness, mad(_8428, View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x)), 0.0f, 1.0f);
    _8421.z = _10795;
    float _10797 = clamp(_8430, 0.0f, 1.0f);
    _8421.w = _10797;
    bool3 _10804 = (View_View_bShadingEnergyConservation != 0u).xxx;
    bool _10805 = any(bool3(true, true, true));
    uint _10928 = 0u;
    float3 _10929 = 0.0f.xxx;
    uint _10930 = 0u;
    uint _10931 = 0u;
    bool _10932 = false;
    bool _10933 = false;
    float3 _10934 = 0.0f.xxx;
    float _10935 = 0.0f;
    float3 _10936 = 0.0f.xxx;
    float _10937 = 0.0f;
    if (_10805)
    {
        float3 _10916 = 0.0f.xxx;
        uint _10917 = 0u;
        bool _10918 = false;
        bool _10919 = false;
        float3 _10920 = 0.0f.xxx;
        float _10921 = 0.0f;
        float _10922 = 0.0f;
        uint _10923 = 0u;
        switch (4u)
        {
            case 0u:
            {
                float3 _10897 = 0.0f.xxx;
                do
                {
                    float3 _10894 = 0.0f.xxx;
                    bool _10895 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10894 = lerp(_10788.xyz, _8421.xyz, clamp((max(0.0f, max(_10791, _10795)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10895 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10894 = _10788.xyz;
                            _10895 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10894 = _10788.xyz;
                            _10895 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10894 = _10788.xyz;
                            _10895 = true;
                            break;
                        }
                        default:
                        {
                            _10894 = _457;
                            _10895 = false;
                            break;
                        }
                    }
                    if (_10895)
                    {
                        _10897 = _10894;
                        break;
                    }
                    _10897 = 0.0f.xxx;
                    break;
                } while(false);
                float3 _10898 = _10897 * 1.0f;
                float3 _10912 = 0.0f.xxx;
                float _10913 = 0.0f;
                if (false)
                {
                    float3 _10910 = 0.0f.xxx;
                    float _10911 = 0.0f;
                    if (false)
                    {
                        _10910 = lerp(0.0f, 0.039999999105930328369140625f, clamp((max(0.039999999105930328369140625f, max(0.039999999105930328369140625f, 0.039999999105930328369140625f)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f)).xxx;
                        _10911 = 0.0f;
                    }
                    else
                    {
                        _10910 = _10898;
                        _10911 = 0.0f;
                    }
                    _10912 = _10910;
                    _10913 = _10911;
                }
                else
                {
                    _10912 = _10898;
                    _10913 = 0.0f;
                }
                _10916 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10917 = 1u;
                _10918 = (true && all(bool3(true, true, true))) && true;
                _10919 = true;
                _10920 = _10912;
                _10921 = _10913;
                _10922 = 1.0f;
                _10923 = (_8540 | 0u) | 0u;
                break;
            }
            case 3u:
            {
                float3 _10867 = 0.0f.xxx;
                do
                {
                    float3 _10864 = 0.0f.xxx;
                    bool _10865 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10864 = lerp(_10788.xyz, _8421.xyz, clamp((max(0.0f, max(_10791, _10795)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10865 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10864 = _10788.xyz;
                            _10865 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10864 = _10788.xyz;
                            _10865 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10864 = _10788.xyz;
                            _10865 = true;
                            break;
                        }
                        default:
                        {
                            _10864 = _457;
                            _10865 = false;
                            break;
                        }
                    }
                    if (_10865)
                    {
                        _10867 = _10864;
                        break;
                    }
                    _10867 = 0.0f.xxx;
                    break;
                } while(false);
                _10916 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10917 = 1u;
                _10918 = false;
                _10919 = false;
                _10920 = _10867 * 1.0f;
                _10921 = 1.0f;
                _10922 = 1.0f;
                _10923 = (_8540 & 4294967288u) | 5u;
                break;
            }
            case 5u:
            {
                _10916 = 0.0f.xxx;
                _10917 = 1u;
                _10918 = false;
                _10919 = false;
                _10920 = 0.0f.xxx;
                _10921 = 1.0f;
                _10922 = 1.0f;
                _10923 = ((_8540 | 0u) & 4294967288u) | 6u;
                break;
            }
            case 4u:
            {
                float3 _10837 = 0.0f.xxx;
                do
                {
                    float3 _10834 = 0.0f.xxx;
                    bool _10835 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10834 = lerp(_10788.xyz, _8421.xyz, clamp((max(0.0f, max(_10791, _10795)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10835 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10834 = _10788.xyz;
                            _10835 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10834 = _10788.xyz;
                            _10835 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10834 = _10788.xyz;
                            _10835 = true;
                            break;
                        }
                        default:
                        {
                            _10834 = _457;
                            _10835 = false;
                            break;
                        }
                    }
                    if (_10835)
                    {
                        _10837 = _10834;
                        break;
                    }
                    _10837 = 0.0f.xxx;
                    break;
                } while(false);
                _10916 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10917 = 2u;
                _10918 = false;
                _10919 = false;
                _10920 = _10837 * 1.0f;
                _10921 = mad(1.0f, _10795, 0.0f);
                _10922 = 1.0f;
                _10923 = (_8540 & 4294967288u) | 4u;
                break;
            }
            default:
            {
                _10916 = 0.0f.xxx;
                _10917 = 0u;
                _10918 = true;
                _10919 = true;
                _10920 = 0.0f.xxx;
                _10921 = 0.0f;
                _10922 = 0.0f;
                _10923 = _8540;
                break;
            }
        }
        float3 _10924[4] = { _10784, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx };
        float3 _581[4] = _10924;
        _10928 = 8194u;
        _10929 = _10916;
        _10930 = _10917;
        _10931 = _10923;
        _10932 = _10918;
        _10933 = _10919;
        _10934 = _10920;
        _10935 = _10921;
        _10936 = _581[0u] * 1.0f;
        _10937 = _10922;
    }
    else
    {
        _10928 = 8192u;
        _10929 = 0.0f.xxx;
        _10930 = 0u;
        _10931 = _8540;
        _10932 = true;
        _10933 = true;
        _10934 = 0.0f.xxx;
        _10935 = 0.0f;
        _10936 = 0.0f.xxx;
        _10937 = 0.0f;
    }
    uint _10938 = uint(_10805);
    bool _10939 = _10937 > 0.0f;
    bool3 _10940 = _10939.xxx;
    float3 _10941 = normalize(_10936);
    float3 _10942 = float3(_10940.x ? _10941.x : 0.0f.xxx.x, _10940.y ? _10941.y : 0.0f.xxx.y, _10940.z ? _10941.z : 0.0f.xxx.z);
    float3 _10946 = _10934 / _10937.xxx;
    uint _11033 = 0u;
    uint _11034 = 0u;
    uint _11035 = 0u;
    if (_10933)
    {
        bool _10951 = _10932 && (_10938 == 1u);
        uint _11031 = 0u;
        uint _11032 = 0u;
        if (_10951)
        {
            uint _10964 = 0u;
            if (((_10928 >> 6u) & 1u) != 0u)
            {
                _10964 = 1u;
            }
            else
            {
                _10964 = 0u;
            }
            uint _10972 = 0u;
            if ((((_10928 >> 9u) & 1u) != 0u) && true)
            {
                _10972 = _10964 | 4u;
            }
            else
            {
                _10972 = _10964;
            }
            uint _10979 = 0u;
            if (((_10928 >> 10u) & 1u) != 0u)
            {
                _10979 = _10972 | 8u;
            }
            else
            {
                _10979 = _10972;
            }
            uint _10981 = (_10928 >> 2u) & 7u;
            uint _10986 = 0u;
            if (_10981 == 4u)
            {
                _10986 = _10979 | 16u;
            }
            else
            {
                _10986 = _10979;
            }
            uint _10991 = 0u;
            if (_10981 == 1u)
            {
                _10991 = _10986 | 32u;
            }
            else
            {
                _10991 = _10986;
            }
            uint _10996 = 0u;
            if (_10981 == 3u)
            {
                _10996 = _10991 | 64u;
            }
            else
            {
                _10996 = _10991;
            }
            uint _10997 = _10996 & 2u;
            uint _11029 = 0u;
            uint _11030 = 0u;
            if ((_10997 == 2u) || (_10997 == 3u))
            {
                _11029 = 1u;
                _11030 = 0u;
            }
            else
            {
                uint _11027 = 0u;
                uint _11028 = 0u;
                if ((_10996 & 4u) == 4u)
                {
                    _11027 = 2u;
                    _11028 = 0u;
                }
                else
                {
                    uint _11025 = 0u;
                    uint _11026 = 0u;
                    if ((_10996 & 40u) == 40u)
                    {
                        _11025 = 5u;
                        _11026 = 0u;
                    }
                    else
                    {
                        uint _11023 = 0u;
                        uint _11024 = 0u;
                        if ((_10996 & 32u) == 32u)
                        {
                            _11023 = 3u;
                            _11024 = 0u;
                        }
                        else
                        {
                            bool _11020 = (_10996 & 72u) == 64u;
                            _11023 = _11020 ? 4u : 0u;
                            _11024 = _11020 ? 0u : 0u;
                        }
                        _11025 = _11023;
                        _11026 = _11024;
                    }
                    _11027 = _11025;
                    _11028 = _11026;
                }
                _11029 = _11027;
                _11030 = _11028;
            }
            _11031 = _11029;
            _11032 = _11030;
        }
        else
        {
            _11031 = 0u;
            _11032 = 0u;
        }
        _11033 = _11031;
        _11034 = _11032;
        _11035 = (_10931 & 4294967288u) | ((_10951 ? 1u : (_10951 ? 2u : 3u)) & 7u);
    }
    else
    {
        _11033 = 0u;
        _11034 = 0u;
        _11035 = _10931;
    }
    float3 _11585 = 0.0f.xxx;
    float _11586 = 0.0f;
    float2 _11587 = 0.0f.xx;
    [branch]
    if (_10805)
    {
        float3 _11038[4] = { _10784, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx };
        float3 _582[4] = _11038;
        uint _11040 = (_10928 >> 14u) & 3u;
        float _11043 = dot(_582[_11040], _663);
        float3 _11321 = 0.0f.xxx;
        float3 _11322 = 0.0f.xxx;
        float3 _11323 = 0.0f.xxx;
        float3 _11324 = 0.0f.xxx;
        switch ((_10928 >> 11u) & 7u)
        {
            case 0u:
            {
                float3 _11212 = _10788.xyz;
                float4 _11216 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_11043, 0.001000000047497451305389404296875f), 0.0f);
                float _11217 = _11216.x;
                float3 _11221 = 1.0f.xxx + (_8421.xyz * ((1.0f - _11217) / _11217));
                float _11234 = (View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(float3(_10804.x ? _11221.x : 1.0f.xxx.x, _10804.y ? _11221.y : 1.0f.xxx.y, _10804.z ? _11221.z : 1.0f.xxx.z) * ((_8421.xyz * _11217) + ((-_8421.xyz) * _11216.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f;
                float3 _11235 = _11212 * _11234;
                uint _11237 = (_10928 >> 2u) & 7u;
                float3 _11298 = 0.0f.xxx;
                [branch]
                if (_11237 == 4u)
                {
                    float _11246 = clamp(max(0.0f, max(0.0f, max(0.0f, 0.0f)) - 0.039999999105930328369140625f) * 3.0f, 0.0f, 1.0f);
                    float _11250 = abs(clamp(_11043, 0.0f, 1.0f));
                    float _11256 = clamp((mad(-0.15658299624919891357421875f, _11250, 1.57079637050628662109375f) * sqrt(1.0f - _11250)) * 0.636619746685028076171875f, 0.0f, 1.0f);
                    float _11265 = clamp(mad(10.0f, 0.001587301609106361865997314453125f, 1.0f), 0.0f, 1.0f);
                    float _11266 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10788.x, _11256), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11265;
                    float _11273 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10788.y, _11256), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11265;
                    float _11280 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10788.z, _11256), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11265;
                    float3 _11281 = float3(_11266, _11273, _11280);
                    float _11286 = max(_11235.x, max(_11235.y, _11235.z));
                    float _11288 = max(_11266, max(_11273, _11280));
                    float3 _11294 = 0.0f.xxx;
                    if (_11286 < _11288)
                    {
                        _11294 = _11281 * (_11286 / _11288);
                    }
                    else
                    {
                        _11294 = _11281;
                    }
                    _11298 = lerp(_11235, _11294 * _11234, (_11246 * _11246).xxx);
                }
                else
                {
                    _11298 = _11235;
                }
                float3 _11313 = 0.0f.xxx;
                [branch]
                if (_11237 == 1u)
                {
                    _11313 = (0.3183098733425140380859375f.xxx * exp((-max(9.9999999747524270787835121154785e-07f.xxx, 1.0f.xxx / max(9.9999999600419720025001879548654e-13f.xxx, 0.0f.xxx))) * (1.0f / max(9.9999997473787516355514526367188e-05f, abs(1.0f))))) * _11234;
                }
                else
                {
                    _11313 = 0.0f.xxx;
                }
                [branch]
                if (((_10928 >> 9u) & 1u) != 0u)
                {
                    _11321 = _11298 * 1.0f;
                    _11322 = _582[_11040];
                    _11323 = _11313;
                    _11324 = _11212 * 1.0f;
                    break;
                }
                _11321 = _11298;
                _11322 = _582[_11040];
                _11323 = _11313;
                _11324 = _11212;
                break;
            }
            case 3u:
            {
                float3 _11056 = normalize(_663 - (_582[_11040] * dot(_663, _582[_11040])));
                float _11057 = min(0.0f, 1.0f);
                float _11058 = dot(_663, _11056);
                float _11060 = clamp(dot(_582[_11040], _11056), -1.0f, 1.0f);
                float _11061 = clamp(_11043, -1.0f, 1.0f);
                float _11062 = abs(_11061);
                float _11063 = mad(-0.15658299624919891357421875f, _11062, 1.57079637050628662109375f);
                float _11065 = sqrt(1.0f - _11062);
                float _11072 = abs(_11060);
                float _11073 = mad(-0.15658299624919891357421875f, _11072, 1.57079637050628662109375f);
                float _11075 = sqrt(1.0f - _11072);
                float _11085 = cos(0.5f * abs((1.57079637050628662109375f - ((_11061 >= 0.0f) ? (_11063 * _11065) : mad(-_11063, _11065, 3.1415927410125732421875f))) - (1.57079637050628662109375f - ((_11060 >= 0.0f) ? (_11073 * _11075) : mad(-_11073, _11075, 3.1415927410125732421875f)))));
                float3 _11087 = _11056 - (_582[_11040] * _11060);
                float3 _11089 = _663 - (_582[_11040] * _11061);
                float _11095 = dot(_11087, _11089) * rsqrt(mad(dot(_11087, _11087), dot(_11089, _11089), 9.9999997473787516355514526367188e-05f));
                float _11098 = sqrt(clamp(mad(0.5f, _11095, 0.5f), 0.0f, 1.0f));
                float _11102 = mad(1.5378702300949953496456146240234e-05f, 0.5f, 0.20000000298023223876953125f);
                float _11103 = mad(1.5378702300949953496456146240234e-05f, 2.0f, 0.20000000298023223876953125f);
                float _11111 = mad(0.0039215688593685626983642578125f, 0.0039215688593685626983642578125f, 0.20000000298023223876953125f) * (1.41421353816986083984375f * _11098);
                float _11112 = _11060 + _11061;
                float _11113 = mad(0.1398856937885284423828125f, mad(0.997551023960113525390625f * _11098, sqrt(mad(-_11061, _11061, 1.0f)), (-0.06994284689426422119140625f) * _11061), _11112);
                float _11125 = 1.0f - sqrt(clamp(mad(0.5f, _11058, 0.5f), 0.0f, 1.0f));
                float _11126 = _11125 * _11125;
                float _11139 = _11112 - 0.0350000001490116119384765625f;
                float _11147 = 1.0f / mad(0.36000001430511474609375f, _11085, 1.190000057220458984375f / _11085);
                float _11150 = _11098 * mad(_11147, mad(-0.800000011920928955078125f, _11095, 0.60000002384185791015625f), 1.0f);
                float _11155 = -_11085;
                float _11156 = mad(_11155, sqrt(clamp(mad(-_11150, _11150, 1.0f), 0.0f, 1.0f)), 1.0f);
                float _11157 = _11156 * _11156;
                float _11161 = 1.0f - mad(0.95347940921783447265625f, (_11157 * _11157) * _11156, 0.0465205647051334381103515625f);
                float3 _11163 = abs(_10788.xyz);
                float _11164 = _11150 * _11147;
                float _11179 = _11112 - 0.14000000059604644775390625f;
                float _11187 = mad(_11155, 0.5f, 1.0f);
                float _11188 = _11187 * _11187;
                float _11191 = mad(0.95347940921783447265625f, (_11188 * _11188) * _11187, 0.0465205647051334381103515625f);
                float _11192 = 1.0f - _11191;
                float3 _11204 = (((((((exp(((-0.5f) * (_11113 * _11113)) / (_11111 * _11111)) / (2.5066282749176025390625f * _11111)) * (0.25f * _11098)) * mad(0.95347940921783447265625f, (_11126 * _11126) * _11125, 0.0465205647051334381103515625f)) * (_10791 * 2.0f)) * lerp(1.0f, _11057, clamp(-_11058, 0.0f, 1.0f))).xxx + ((pow(_11163, ((0.5f * sqrt(mad(-_11164, _11164, 1.0f))) / _11085).xxx) * (((exp(((-0.5f) * (_11139 * _11139)) / (_11102 * _11102)) / (2.5066282749176025390625f * _11102)) * exp(mad(-3.650000095367431640625f, _11095, -3.980000019073486328125f))) * (_11161 * _11161))) * _11057)) + (pow(_11163, (0.800000011920928955078125f / _11085).xxx) * (((exp(((-0.5f) * (_11179 * _11179)) / (_11103 * _11103)) / (2.5066282749176025390625f * _11103)) * exp(mad(17.0f, _11095, -16.7800006866455078125f))) * ((_11192 * _11192) * _11191)))) * 1.0f;
                _11321 = min(1.0f.xxx, (-min(-mad(0.0f.xxx, float3(1.0f.xxx.x, 1.0f.xxx.y, 1.0f.xxx.z), _11204), 0.0f.xxx)) * 6.283185482025146484375f);
                _11322 = _11056;
                _11323 = 0.0f.xxx;
                _11324 = 0.0f.xxx;
                break;
            }
            case 5u:
            {
                float3 _11050 = _10788.xyz;
                _11321 = _11050 * 1.0f;
                _11322 = _582[_11040];
                _11323 = 0.0f.xxx;
                _11324 = _11050;
                break;
            }
            default:
            {
                _11321 = 0.0f.xxx;
                _11322 = 0.0f.xxx;
                _11323 = 0.0f.xxx;
                _11324 = 0.0f.xxx;
                break;
            }
        }
        bool _11326 = any(bool3(_11323.x > 0.0f.xxx.x, _11323.y > 0.0f.xxx.y, _11323.z > 0.0f.xxx.z));
        float3 _11447 = 0.0f.xxx;
        float3 _11448 = 0.0f.xxx;
        if (_8460)
        {
            float4 _11349 = 0.0f.xxxx;
            _11349.y = (-0.48860299587249755859375f) * _11322.y;
            _11349.z = 0.48860299587249755859375f * _11322.z;
            _11349.w = (-0.48860299587249755859375f) * _11322.x;
            float3 _11356 = _11322 * _11322;
            float4 _11359 = 0.0f.xxxx;
            _11359.x = (1.09254801273345947265625f * _11322.x) * _11322.y;
            _11359.y = ((-1.09254801273345947265625f) * _11322.y) * _11322.z;
            _11359.z = 0.3153919875621795654296875f * mad(3.0f, _11356.z, -1.0f);
            _11359.w = ((-1.09254801273345947265625f) * _11322.x) * _11322.z;
            _11349.x = 0.886227548122406005859375f;
            float3 _11375 = _11349.yzw * 2.094395160675048828125f;
            float4 _11376 = float4(_11349.x, _11375.x, _11375.y, _11375.z);
            float4 _11377 = _11359 * 0.785398185253143310546875f;
            float _11378 = (_11356.x - _11356.y) * 0.4290426075458526611328125f;
            float3 _11383 = 0.0f.xxx;
            _11383.x = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x, _11378, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _11376) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _11377));
            _11383.y = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y, _11378, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _11376) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _11377));
            _11383.z = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z, _11378, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _11376) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _11377));
            float3 _11446 = 0.0f.xxx;
            if (_11326)
            {
                float3 _11397 = -_11322;
                float _11398 = _11397.y;
                float4 _11400 = 0.0f.xxxx;
                _11400.y = (-0.48860299587249755859375f) * _11398;
                float _11401 = _11397.z;
                _11400.z = 0.48860299587249755859375f * _11401;
                float _11404 = _11397.x;
                _11400.w = (-0.48860299587249755859375f) * _11404;
                float3 _11407 = _11397 * _11397;
                float4 _11410 = 0.0f.xxxx;
                _11410.x = (1.09254801273345947265625f * _11404) * _11398;
                _11410.y = ((-1.09254801273345947265625f) * _11398) * _11401;
                _11410.z = 0.3153919875621795654296875f * mad(3.0f, _11407.z, -1.0f);
                _11410.w = ((-1.09254801273345947265625f) * _11404) * _11401;
                _11400.x = 0.886227548122406005859375f;
                float3 _11426 = _11400.yzw * 2.094395160675048828125f;
                float4 _11427 = float4(_11400.x, _11426.x, _11426.y, _11426.z);
                float4 _11428 = _11410 * 0.785398185253143310546875f;
                float _11429 = (_11407.x - _11407.y) * 0.4290426075458526611328125f;
                float3 _11434 = 0.0f.xxx;
                _11434.x = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x, _11429, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _11427) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _11428));
                _11434.y = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y, _11429, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _11427) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _11428));
                _11434.z = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z, _11429, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _11427) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _11428));
                _11446 = max(0.0f.xxx, _11434);
            }
            else
            {
                _11446 = 0.0f.xxx;
            }
            _11447 = _11446;
            _11448 = max(0.0f.xxx, _11383);
        }
        else
        {
            _11447 = 0.0f.xxx;
            _11448 = 0.0f.xxx;
        }
        float3 _11561 = 0.0f.xxx;
        float3 _11562 = 0.0f.xxx;
        if (_8635)
        {
            float _11473 = 0.0f;
            float _11474 = 0.0f;
            float3 _11475 = 0.0f.xxx;
            [branch]
            if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
            {
                float3 _11463 = 0.0f.xxx;
                float _11464 = 0.0f;
                if (_8460)
                {
                    _11463 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                    _11464 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
                }
                else
                {
                    _11463 = _11322;
                    _11464 = 1.0f;
                }
                float _11467 = mad(_11464 - 1.0f, 1.0f - _11464, 1.0f);
                _11473 = lerp(clamp(dot(_11463, _11322), 0.0f, 1.0f), 1.0f, _11467);
                _11474 = _11464;
                _11475 = lerp(_11463, _11322, _11467.xxx);
            }
            else
            {
                _11473 = 1.0f;
                _11474 = 1.0f;
                _11475 = _11322;
            }
            float4 _11479 = float4(_11475, 1.0f);
            float3 _11483 = 0.0f.xxx;
            _11483.x = dot(View_SkyIrradianceEnvironmentMap[0u], _11479);
            _11483.y = dot(View_SkyIrradianceEnvironmentMap[1u], _11479);
            _11483.z = dot(View_SkyIrradianceEnvironmentMap[2u], _11479);
            float4 _11494 = _11479.xyzz * _11479.yzzx;
            float3 _11498 = 0.0f.xxx;
            _11498.x = dot(View_SkyIrradianceEnvironmentMap[3u], _11494);
            _11498.y = dot(View_SkyIrradianceEnvironmentMap[4u], _11494);
            _11498.z = dot(View_SkyIrradianceEnvironmentMap[5u], _11494);
            float3 _11560 = 0.0f.xxx;
            if (_11326)
            {
                float3 _11523 = -_11322;
                float _11524 = _11523.x;
                float _11525 = _11523.y;
                float4 _11527 = float4(_11524, _11525, _11523.z, 1.0f);
                float3 _11530 = 0.0f.xxx;
                _11530.x = dot(View_SkyIrradianceEnvironmentMap[0u], _11527);
                _11530.y = dot(View_SkyIrradianceEnvironmentMap[1u], _11527);
                _11530.z = dot(View_SkyIrradianceEnvironmentMap[2u], _11527);
                float4 _11539 = _11527.xyzz * _11527.yzzx;
                float3 _11542 = 0.0f.xxx;
                _11542.x = dot(View_SkyIrradianceEnvironmentMap[3u], _11539);
                _11542.y = dot(View_SkyIrradianceEnvironmentMap[4u], _11539);
                _11542.z = dot(View_SkyIrradianceEnvironmentMap[5u], _11539);
                _11560 = (max(0.0f.xxx, (_11530 + _11542) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_11524, _11524, -(_11525 * _11525)))) * View_View_SkyLightColor.xyz) * _11474;
            }
            else
            {
                _11560 = 0.0f.xxx;
            }
            _11561 = (max(0.0f.xxx, (_11483 + _11498) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_11475.x, _11475.x, -(_11475.y * _11475.y)))) * View_View_SkyLightColor.xyz) * (_11474 * _11473);
            _11562 = _11560;
        }
        else
        {
            _11561 = 0.0f.xxx;
            _11562 = 0.0f.xxx;
        }
        float3 _11564 = mad(_11448, View_View_PrecomputedIndirectLightingColorScale, _11561);
        float2 _11580 = 0.0f.xx;
        _11580.x = max(1.0f.xxx, 0.99960005283355712890625f.xxx).y;
        _11580.y = dot(_11564, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f));
        _11585 = mad(mad(_11564, _11321, mad(_11447, View_View_PrecomputedIndirectLightingColorScale, _11562) * _11323), max(1.0f.xxx, ((((((_11324 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_11324 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_11324 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), _10929);
        _11586 = 1.0f;
        _11587 = _11580;
    }
    else
    {
        _11585 = _10929;
        _11586 = 0.0f;
        _11587 = 0.0f.xx;
    }
    float2 _11590 = _11587 * (1.0f / max(1.0f, _11586));
    uint _11605 = (_11035 & 4294902015u) | ((uint(min(255.0f, mad(log2(mad(_11590.y * _11590.x, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f) * 255.0f)) & 255u) << 8u);
    uint _11606 = _11605 & 7u;
    bool _11608 = (_11606 == 1u) || false;
    bool _11609 = _11606 == 4u;
    bool _11611 = (_11606 == 2u) || false;
    bool _11612 = _11606 == 5u;
    bool _11613 = _11606 == 6u;
    bool _11620 = !_11609;
    bool _11621 = (((!_11608) && (!_11611)) && (!(_11612 || _11613))) && _11620;
    uint _11668 = 0u;
    uint _11669 = 0u;
    if (_11621)
    {
        float2 _11641 = _10784.xy / dot(1.0f.xxx, abs(_10784)).xx;
        float3 _11659 = 0.0f.xxx;
        if (_10784.z <= 0.0f)
        {
            float2 _11650 = _11641.xy;
            bool2 _11651 = bool2(_11650.x >= 0.0f.xx.x, _11650.y >= 0.0f.xx.y);
            float2 _11657 = (1.0f.xx - abs(_11641.yx)) * float2(_11651.x ? 1.0f : (-1.0f), _11651.y ? 1.0f : (-1.0f));
            _11659 = float3(_11657.x, _11657.y, _10784.z);
        }
        else
        {
            _11659 = float3(_11641.x, _11641.y, _10784.z);
        }
        _11668 = spvPackHalf2x16(float2(_11659.x, 0.0f)) | (spvPackHalf2x16(float2(_11659.y, 0.0f)) << 16u);
        _11669 = (((((((0u | ((_10938 & 15u) << 16u)) & 4287627263u) | 1048576u) & 4169138175u) | 0u) | (_11605 & 134217728u)) & 4294901760u) | ((_11605 & 65535u) << 0u);
    }
    else
    {
        _11668 = 0u;
        _11669 = 0u;
    }
    uint _11670 = _11621 ? 2u : 0u;
    uint _13678 = 0u;
    uint _13679 = 0u;
    uint _13680 = 0u;
    uint _13681 = 0u;
    uint _13682 = 0u;
    [branch]
    if (_10805)
    {
        uint _11680 = (((_10928 & 4294967263u) | 32u) & 4294901759u) | ((uint(any(bool3(false, false, false))) & 1u) << 16u);
        bool _11681 = _11608 && true;
        uint _12855 = 0u;
        uint _12856 = 0u;
        uint _12857 = 0u;
        uint _12858 = 0u;
        uint _12859 = 0u;
        if (_11681)
        {
            float _12697 = _8393 - 0.5f;
            float _12698 = _12697 * 0.0078740157186985015869140625f;
            float3 _12700 = float3(_12698, _12698, _12697 * 0.01587301678955554962158203125f);
            float3 _12701 = clamp(_10788.xyz, 0.0f.xxx, 1.0f.xxx);
            float _12702 = _12701.x;
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
            float _12712 = _12701.y;
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
            float _12722 = _12701.z;
            float _12731 = 0.0f;
            do
            {
                if (_12722 < 0.00313066993840038776397705078125f)
                {
                    _12731 = _12722 * 12.9200000762939453125f;
                    break;
                }
                _12731 = mad(pow(_12722, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float3 _12732 = float3(_12711, _12721, _12731);
            float3 _12738 = clamp(mad(_12700, float3(min((asuint(_12732) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12732), 0.0f.xxx, 1.0f.xxx);
            uint _12752 = ((uint(_12738.x * 127.0f) << 0u) | (uint(_12738.y * 127.0f) << 7u)) | (uint(_12738.z * 63.0f) << 14u);
            float3 _12757 = clamp(_8421.xyz, 0.0f.xxx, 1.0f.xxx);
            float _12758 = _12757.x;
            float _12767 = 0.0f;
            do
            {
                if (_12758 < 0.00313066993840038776397705078125f)
                {
                    _12767 = _12758 * 12.9200000762939453125f;
                    break;
                }
                _12767 = mad(pow(_12758, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12768 = _12757.y;
            float _12777 = 0.0f;
            do
            {
                if (_12768 < 0.00313066993840038776397705078125f)
                {
                    _12777 = _12768 * 12.9200000762939453125f;
                    break;
                }
                _12777 = mad(pow(_12768, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12778 = _12757.z;
            float _12787 = 0.0f;
            do
            {
                if (_12778 < 0.00313066993840038776397705078125f)
                {
                    _12787 = _12778 * 12.9200000762939453125f;
                    break;
                }
                _12787 = mad(pow(_12778, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float3 _12788 = float3(_12767, _12777, _12787);
            float3 _12794 = clamp(mad(_12700, float3(min((asuint(_12788) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12788), 0.0f.xxx, 1.0f.xxx);
            uint _12816 = ((0u | ((_11605 & 65535u) << 0u)) & 65535u) | (((((_12752 >> 12u) & 255u) << 8u) | 0u) << 16u);
            uint _12831 = 0u;
            uint _12832 = 0u;
            uint _12833 = 0u;
            if (_11670 < 3u)
            {
                _12831 = (_11670 == 2u) ? _12816 : 0u;
                _12832 = (_11670 == 1u) ? _12816 : _11668;
                _12833 = (_11670 == 0u) ? _12816 : _11669;
            }
            else
            {
                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 - 3u)] = _12816;
                _12831 = 0u;
                _12832 = _11668;
                _12833 = _11669;
            }
            uint _12834 = _11670 + 1u;
            uint _12836 = (((uint(_12794.x * 127.0f) << 0u) | (uint(_12794.y * 127.0f) << 7u)) | (uint(_12794.z * 63.0f) << 14u)) | ((_12752 & 4095u) << 20u);
            uint _12851 = 0u;
            uint _12852 = 0u;
            uint _12853 = 0u;
            if (_12834 < 3u)
            {
                _12851 = (_12834 == 2u) ? _12836 : _12831;
                _12852 = (_12834 == 1u) ? _12836 : _12832;
                _12853 = (_12834 == 0u) ? _12836 : _12833;
            }
            else
            {
                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 + 4294967294u)] = _12836;
                _12851 = _12831;
                _12852 = _12832;
                _12853 = _12833;
            }
            _12855 = 0u;
            _12856 = _12851;
            _12857 = _12852;
            _12858 = _12853;
            _12859 = _11670 + 2u;
        }
        else
        {
            uint _12691 = 0u;
            uint _12692 = 0u;
            uint _12693 = 0u;
            uint _12694 = 0u;
            uint _12695 = 0u;
            if (_11611 && true)
            {
                uint _11921 = (_11680 & 4294967293u) | 2u;
                uint _11928 = ((0u | ((_11605 & 65535u) << 0u)) & 65535u) | ((_11033 & 7u) << 16u);
                uint _12686 = 0u;
                uint _12687 = 0u;
                uint _12688 = 0u;
                uint _12689 = 0u;
                uint _12690 = 0u;
                [branch]
                if (_11033 == 0u)
                {
                    uint _12667 = _11928 | ((_11921 & 2047u) << 19u);
                    uint _12682 = 0u;
                    uint _12683 = 0u;
                    uint _12684 = 0u;
                    if (_11670 < 3u)
                    {
                        _12682 = (_11670 == 2u) ? _12667 : 0u;
                        _12683 = (_11670 == 1u) ? _12667 : _11668;
                        _12684 = (_11670 == 0u) ? _12667 : _11669;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 - 3u)] = _12667;
                        _12682 = 0u;
                        _12683 = _11668;
                        _12684 = _11669;
                    }
                    _12686 = _11921;
                    _12687 = _12682;
                    _12688 = _12683;
                    _12689 = _12684;
                    _12690 = _11670 + 1u;
                }
                else
                {
                    uint _12660 = 0u;
                    uint _12661 = 0u;
                    uint _12662 = 0u;
                    uint _12663 = 0u;
                    uint _12664 = 0u;
                    if (_11033 == 1u)
                    {
                        float _12536 = _8393 - 0.5f;
                        float _12537 = _12536 * 0.0078740157186985015869140625f;
                        float3 _12540 = clamp(_10788.xyz, 0.0f.xxx, 1.0f.xxx);
                        float _12541 = _12540.x;
                        float _12550 = 0.0f;
                        do
                        {
                            if (_12541 < 0.00313066993840038776397705078125f)
                            {
                                _12550 = _12541 * 12.9200000762939453125f;
                                break;
                            }
                            _12550 = mad(pow(_12541, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12551 = _12540.y;
                        float _12560 = 0.0f;
                        do
                        {
                            if (_12551 < 0.00313066993840038776397705078125f)
                            {
                                _12560 = _12551 * 12.9200000762939453125f;
                                break;
                            }
                            _12560 = mad(pow(_12551, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12561 = _12540.z;
                        float _12570 = 0.0f;
                        do
                        {
                            if (_12561 < 0.00313066993840038776397705078125f)
                            {
                                _12570 = _12561 * 12.9200000762939453125f;
                                break;
                            }
                            _12570 = mad(pow(_12561, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float3 _12571 = float3(_12550, _12560, _12570);
                        float3 _12577 = clamp(mad(float3(_12537, _12537, _12536 * 0.01587301678955554962158203125f), float3(min((asuint(_12571) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12571), 0.0f.xxx, 1.0f.xxx);
                        uint _12603 = _11928 | 0u;
                        uint _12618 = 0u;
                        uint _12619 = 0u;
                        uint _12620 = 0u;
                        if (_11670 < 3u)
                        {
                            _12618 = (_11670 == 2u) ? _12603 : 0u;
                            _12619 = (_11670 == 1u) ? _12603 : _11668;
                            _12620 = (_11670 == 0u) ? _12603 : _11669;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 - 3u)] = _12603;
                            _12618 = 0u;
                            _12619 = _11668;
                            _12620 = _11669;
                        }
                        uint _12621 = _11670 + 1u;
                        uint _12622 = (((uint(_12577.x * 127.0f) << 0u) | (uint(_12577.y * 127.0f) << 7u)) | (uint(_12577.z * 63.0f) << 14u)) | 0u;
                        uint _12637 = 0u;
                        uint _12638 = 0u;
                        uint _12639 = 0u;
                        if (_12621 < 3u)
                        {
                            _12637 = (_12621 == 2u) ? _12622 : _12618;
                            _12638 = (_12621 == 1u) ? _12622 : _12619;
                            _12639 = (_12621 == 0u) ? _12622 : _12620;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 + 4294967294u)] = _12622;
                            _12637 = _12618;
                            _12638 = _12619;
                            _12639 = _12620;
                        }
                        uint _12640 = _11670 + 2u;
                        uint _12641 = (((0u | (uint(clamp(_10791, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_10795, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u) | 0u;
                        uint _12656 = 0u;
                        uint _12657 = 0u;
                        uint _12658 = 0u;
                        if (_12640 < 3u)
                        {
                            _12656 = (_12640 == 2u) ? _12641 : _12637;
                            _12657 = (_12640 == 1u) ? _12641 : _12638;
                            _12658 = (_12640 == 0u) ? _12641 : _12639;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 + 4294967295u)] = _12641;
                            _12656 = _12637;
                            _12657 = _12638;
                            _12658 = _12639;
                        }
                        _12660 = 0u;
                        _12661 = _12656;
                        _12662 = _12657;
                        _12663 = _12658;
                        _12664 = _11670 + 3u;
                    }
                    else
                    {
                        uint _12530 = 0u;
                        uint _12531 = 0u;
                        uint _12532 = 0u;
                        uint _12533 = 0u;
                        uint _12534 = 0u;
                        if (_11033 == 2u)
                        {
                            float _12321 = _8393 - 0.5f;
                            float _12322 = _12321 * 0.0078740157186985015869140625f;
                            float3 _12324 = float3(_12322, _12322, _12321 * 0.01587301678955554962158203125f);
                            float3 _12325 = clamp(_10788.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _12326 = _12325.x;
                            float _12335 = 0.0f;
                            do
                            {
                                if (_12326 < 0.00313066993840038776397705078125f)
                                {
                                    _12335 = _12326 * 12.9200000762939453125f;
                                    break;
                                }
                                _12335 = mad(pow(_12326, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12336 = _12325.y;
                            float _12345 = 0.0f;
                            do
                            {
                                if (_12336 < 0.00313066993840038776397705078125f)
                                {
                                    _12345 = _12336 * 12.9200000762939453125f;
                                    break;
                                }
                                _12345 = mad(pow(_12336, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12346 = _12325.z;
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
                            float3 _12356 = float3(_12335, _12345, _12355);
                            float3 _12362 = clamp(mad(_12324, float3(min((asuint(_12356) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12356), 0.0f.xxx, 1.0f.xxx);
                            float3 _12378 = clamp(_8421.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _12379 = _12378.x;
                            float _12388 = 0.0f;
                            do
                            {
                                if (_12379 < 0.00313066993840038776397705078125f)
                                {
                                    _12388 = _12379 * 12.9200000762939453125f;
                                    break;
                                }
                                _12388 = mad(pow(_12379, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12389 = _12378.y;
                            float _12398 = 0.0f;
                            do
                            {
                                if (_12389 < 0.00313066993840038776397705078125f)
                                {
                                    _12398 = _12389 * 12.9200000762939453125f;
                                    break;
                                }
                                _12398 = mad(pow(_12389, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12399 = _12378.z;
                            float _12408 = 0.0f;
                            do
                            {
                                if (_12399 < 0.00313066993840038776397705078125f)
                                {
                                    _12408 = _12399 * 12.9200000762939453125f;
                                    break;
                                }
                                _12408 = mad(pow(_12399, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12409 = float3(_12388, _12398, _12408);
                            float3 _12415 = clamp(mad(_12324, float3(min((asuint(_12409) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12409), 0.0f.xxx, 1.0f.xxx);
                            float _12435 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12435 = 0.0f;
                                    break;
                                }
                                _12435 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12441 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12441 = 0.0f;
                                    break;
                                }
                                _12441 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12447 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12447 = 0.0f;
                                    break;
                                }
                                _12447 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12448 = float3(_12435, _12441, _12447);
                            float3 _12454 = clamp(mad(_12324, float3(min((asuint(_12448) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12448), 0.0f.xxx, 1.0f.xxx);
                            uint _12468 = ((uint(_12454.x * 127.0f) << 0u) | (uint(_12454.y * 127.0f) << 7u)) | (uint(_12454.z * 63.0f) << 14u);
                            uint _12469 = _11928 | 0u;
                            uint _12484 = 0u;
                            uint _12485 = 0u;
                            uint _12486 = 0u;
                            if (_11670 < 3u)
                            {
                                _12484 = (_11670 == 2u) ? _12469 : 0u;
                                _12485 = (_11670 == 1u) ? _12469 : _11668;
                                _12486 = (_11670 == 0u) ? _12469 : _11669;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 - 3u)] = _12469;
                                _12484 = 0u;
                                _12485 = _11668;
                                _12486 = _11669;
                            }
                            uint _12487 = _11670 + 1u;
                            uint _12490 = (((uint(_12362.x * 127.0f) << 0u) | (uint(_12362.y * 127.0f) << 7u)) | (uint(_12362.z * 63.0f) << 14u)) | ((_12468 & 1047552u) << 10u);
                            uint _12505 = 0u;
                            uint _12506 = 0u;
                            uint _12507 = 0u;
                            if (_12487 < 3u)
                            {
                                _12505 = (_12487 == 2u) ? _12490 : _12484;
                                _12506 = (_12487 == 1u) ? _12490 : _12485;
                                _12507 = (_12487 == 0u) ? _12490 : _12486;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 + 4294967294u)] = _12490;
                                _12505 = _12484;
                                _12506 = _12485;
                                _12507 = _12486;
                            }
                            uint _12508 = _11670 + 2u;
                            uint _12511 = (((uint(_12415.x * 127.0f) << 0u) | (uint(_12415.y * 127.0f) << 7u)) | (uint(_12415.z * 63.0f) << 14u)) | ((_12468 & 1023u) << 20u);
                            uint _12526 = 0u;
                            uint _12527 = 0u;
                            uint _12528 = 0u;
                            if (_12508 < 3u)
                            {
                                _12526 = (_12508 == 2u) ? _12511 : _12505;
                                _12527 = (_12508 == 1u) ? _12511 : _12506;
                                _12528 = (_12508 == 0u) ? _12511 : _12507;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 + 4294967295u)] = _12511;
                                _12526 = _12505;
                                _12527 = _12506;
                                _12528 = _12507;
                            }
                            _12530 = 0u;
                            _12531 = _12526;
                            _12532 = _12527;
                            _12533 = _12528;
                            _12534 = _11670 + 3u;
                        }
                        else
                        {
                            uint _12315 = 0u;
                            uint _12316 = 0u;
                            uint _12317 = 0u;
                            uint _12318 = 0u;
                            uint _12319 = 0u;
                            if ((_11033 == 3u) || (_11033 == 5u))
                            {
                                float _12125 = _8393 - 0.5f;
                                float _12126 = _12125 * 0.0078740157186985015869140625f;
                                float3 _12128 = float3(_12126, _12126, _12125 * 0.01587301678955554962158203125f);
                                float3 _12129 = clamp(_10788.xyz, 0.0f.xxx, 1.0f.xxx);
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
                                float3 _12182 = clamp(_8421.xyz, 0.0f.xxx, 1.0f.xxx);
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
                                uint _12238 = spvPackHalf2x16(0.0f.xx);
                                uint _12246 = (((_12238 << 15u) & 1072693248u) | ((_12238 << 5u) & 1047552u)) | ((_12238 >> 5u) & 1023u);
                                uint _12256 = (_11928 | ((uint(clamp(clamp(1.0f - abs(0.0f), 0.0f, 1.0f), 0.0f, 1.0f) * 127.0f) & 127u) << 19u)) | (((_12246 >> 24u) & 63u) << 26u);
                                uint _12271 = 0u;
                                uint _12272 = 0u;
                                uint _12273 = 0u;
                                if (_11670 < 3u)
                                {
                                    _12271 = (_11670 == 2u) ? _12256 : 0u;
                                    _12272 = (_11670 == 1u) ? _12256 : _11668;
                                    _12273 = (_11670 == 0u) ? _12256 : _11669;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 - 3u)] = _12256;
                                    _12271 = 0u;
                                    _12272 = _11668;
                                    _12273 = _11669;
                                }
                                uint _12274 = _11670 + 1u;
                                uint _12276 = (((uint(_12166.x * 127.0f) << 0u) | (uint(_12166.y * 127.0f) << 7u)) | (uint(_12166.z * 63.0f) << 14u)) | ((_12246 & 4095u) << 20u);
                                uint _12291 = 0u;
                                uint _12292 = 0u;
                                uint _12293 = 0u;
                                if (_12274 < 3u)
                                {
                                    _12291 = (_12274 == 2u) ? _12276 : _12271;
                                    _12292 = (_12274 == 1u) ? _12276 : _12272;
                                    _12293 = (_12274 == 0u) ? _12276 : _12273;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 + 4294967294u)] = _12276;
                                    _12291 = _12271;
                                    _12292 = _12272;
                                    _12293 = _12273;
                                }
                                uint _12294 = _11670 + 2u;
                                uint _12296 = (((uint(_12219.x * 127.0f) << 0u) | (uint(_12219.y * 127.0f) << 7u)) | (uint(_12219.z * 63.0f) << 14u)) | (((_12246 >> 12u) & 4095u) << 20u);
                                uint _12311 = 0u;
                                uint _12312 = 0u;
                                uint _12313 = 0u;
                                if (_12294 < 3u)
                                {
                                    _12311 = (_12294 == 2u) ? _12296 : _12291;
                                    _12312 = (_12294 == 1u) ? _12296 : _12292;
                                    _12313 = (_12294 == 0u) ? _12296 : _12293;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 + 4294967295u)] = _12296;
                                    _12311 = _12291;
                                    _12312 = _12292;
                                    _12313 = _12293;
                                }
                                _12315 = 0u;
                                _12316 = _12311;
                                _12317 = _12312;
                                _12318 = _12313;
                                _12319 = _11670 + 3u;
                            }
                            else
                            {
                                bool _11947 = _11033 == 4u;
                                uint _12117 = 0u;
                                uint _12118 = 0u;
                                uint _12119 = 0u;
                                uint _12120 = 0u;
                                if (_11947)
                                {
                                    float _11951 = _8393 - 0.5f;
                                    float _11952 = _11951 * 0.0078740157186985015869140625f;
                                    float3 _11954 = float3(_11952, _11952, _11951 * 0.01587301678955554962158203125f);
                                    float3 _11955 = clamp(_10788.xyz, 0.0f.xxx, 1.0f.xxx);
                                    float _11956 = _11955.x;
                                    float _11965 = 0.0f;
                                    do
                                    {
                                        if (_11956 < 0.00313066993840038776397705078125f)
                                        {
                                            _11965 = _11956 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11965 = mad(pow(_11956, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11966 = _11955.y;
                                    float _11975 = 0.0f;
                                    do
                                    {
                                        if (_11966 < 0.00313066993840038776397705078125f)
                                        {
                                            _11975 = _11966 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11975 = mad(pow(_11966, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11976 = _11955.z;
                                    float _11985 = 0.0f;
                                    do
                                    {
                                        if (_11976 < 0.00313066993840038776397705078125f)
                                        {
                                            _11985 = _11976 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11985 = mad(pow(_11976, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float3 _11986 = float3(_11965, _11975, _11985);
                                    float3 _11992 = clamp(mad(_11954, float3(min((asuint(_11986) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11986), 0.0f.xxx, 1.0f.xxx);
                                    float3 _12008 = clamp(_8421.xyz, 0.0f.xxx, 1.0f.xxx);
                                    float _12009 = _12008.x;
                                    float _12018 = 0.0f;
                                    do
                                    {
                                        if (_12009 < 0.00313066993840038776397705078125f)
                                        {
                                            _12018 = _12009 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _12018 = mad(pow(_12009, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _12019 = _12008.y;
                                    float _12028 = 0.0f;
                                    do
                                    {
                                        if (_12019 < 0.00313066993840038776397705078125f)
                                        {
                                            _12028 = _12019 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _12028 = mad(pow(_12019, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _12029 = _12008.z;
                                    float _12038 = 0.0f;
                                    do
                                    {
                                        if (_12029 < 0.00313066993840038776397705078125f)
                                        {
                                            _12038 = _12029 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _12038 = mad(pow(_12029, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float3 _12039 = float3(_12018, _12028, _12038);
                                    float3 _12045 = clamp(mad(_11954, float3(min((asuint(_12039) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12039), 0.0f.xxx, 1.0f.xxx);
                                    uint _12060 = _11928 | 0u;
                                    uint _12075 = 0u;
                                    uint _12076 = 0u;
                                    uint _12077 = 0u;
                                    if (_11670 < 3u)
                                    {
                                        _12075 = (_11670 == 2u) ? _12060 : 0u;
                                        _12076 = (_11670 == 1u) ? _12060 : _11668;
                                        _12077 = (_11670 == 0u) ? _12060 : _11669;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 - 3u)] = _12060;
                                        _12075 = 0u;
                                        _12076 = _11668;
                                        _12077 = _11669;
                                    }
                                    uint _12078 = _11670 + 1u;
                                    uint _12079 = (((uint(_11992.x * 127.0f) << 0u) | (uint(_11992.y * 127.0f) << 7u)) | (uint(_11992.z * 63.0f) << 14u)) | 0u;
                                    uint _12094 = 0u;
                                    uint _12095 = 0u;
                                    uint _12096 = 0u;
                                    if (_12078 < 3u)
                                    {
                                        _12094 = (_12078 == 2u) ? _12079 : _12075;
                                        _12095 = (_12078 == 1u) ? _12079 : _12076;
                                        _12096 = (_12078 == 0u) ? _12079 : _12077;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 + 4294967294u)] = _12079;
                                        _12094 = _12075;
                                        _12095 = _12076;
                                        _12096 = _12077;
                                    }
                                    uint _12097 = _11670 + 2u;
                                    uint _12098 = (((uint(_12045.x * 127.0f) << 0u) | (uint(_12045.y * 127.0f) << 7u)) | (uint(_12045.z * 63.0f) << 14u)) | 0u;
                                    uint _12113 = 0u;
                                    uint _12114 = 0u;
                                    uint _12115 = 0u;
                                    if (_12097 < 3u)
                                    {
                                        _12113 = (_12097 == 2u) ? _12098 : _12094;
                                        _12114 = (_12097 == 1u) ? _12098 : _12095;
                                        _12115 = (_12097 == 0u) ? _12098 : _12096;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 + 4294967295u)] = _12098;
                                        _12113 = _12094;
                                        _12114 = _12095;
                                        _12115 = _12096;
                                    }
                                    _12117 = _12113;
                                    _12118 = _12114;
                                    _12119 = _12115;
                                    _12120 = _11670 + 3u;
                                }
                                else
                                {
                                    _12117 = 0u;
                                    _12118 = _11668;
                                    _12119 = _11669;
                                    _12120 = _11670;
                                }
                                _12315 = _11947 ? 0u : _11921;
                                _12316 = _12117;
                                _12317 = _12118;
                                _12318 = _12119;
                                _12319 = _12120;
                            }
                            _12530 = _12315;
                            _12531 = _12316;
                            _12532 = _12317;
                            _12533 = _12318;
                            _12534 = _12319;
                        }
                        _12660 = _12530;
                        _12661 = _12531;
                        _12662 = _12532;
                        _12663 = _12533;
                        _12664 = _12534;
                    }
                    _12686 = _12660;
                    _12687 = _12661;
                    _12688 = _12662;
                    _12689 = _12663;
                    _12690 = _12664;
                }
                _12691 = _12686;
                _12692 = _12687;
                _12693 = _12688;
                _12694 = _12689;
                _12695 = _12690;
            }
            else
            {
                uint _11915 = 0u;
                uint _11916 = 0u;
                uint _11917 = 0u;
                uint _11918 = 0u;
                uint _11919 = 0u;
                if (_11613)
                {
                    uint _11896 = ((0u | ((_11605 & 65535u) << 0u)) & 65535u) | ((0u | (uint(clamp(_10791, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u);
                    uint _11911 = 0u;
                    uint _11912 = 0u;
                    uint _11913 = 0u;
                    if (_11670 < 3u)
                    {
                        _11911 = (_11670 == 2u) ? _11896 : 0u;
                        _11912 = (_11670 == 1u) ? _11896 : _11668;
                        _11913 = (_11670 == 0u) ? _11896 : _11669;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 - 3u)] = _11896;
                        _11911 = 0u;
                        _11912 = _11668;
                        _11913 = _11669;
                    }
                    _11915 = _11680;
                    _11916 = _11911;
                    _11917 = _11912;
                    _11918 = _11913;
                    _11919 = _11670 + 1u;
                }
                else
                {
                    uint _11881 = 0u;
                    uint _11882 = 0u;
                    uint _11883 = 0u;
                    uint _11884 = 0u;
                    uint _11885 = 0u;
                    if (_11612)
                    {
                        uint _11862 = (0u | ((_11605 & 65535u) << 0u)) & 65535u;
                        uint _11877 = 0u;
                        uint _11878 = 0u;
                        uint _11879 = 0u;
                        if (_11670 < 3u)
                        {
                            _11877 = (_11670 == 2u) ? _11862 : 0u;
                            _11878 = (_11670 == 1u) ? _11862 : _11668;
                            _11879 = (_11670 == 0u) ? _11862 : _11669;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 - 3u)] = _11862;
                            _11877 = 0u;
                            _11878 = _11668;
                            _11879 = _11669;
                        }
                        _11881 = _11680;
                        _11882 = _11877;
                        _11883 = _11878;
                        _11884 = _11879;
                        _11885 = _11670 + 1u;
                    }
                    else
                    {
                        uint _11854 = 0u;
                        uint _11855 = 0u;
                        uint _11856 = 0u;
                        uint _11857 = 0u;
                        uint _11858 = 0u;
                        if (_11609)
                        {
                            float _11724 = _8393 - 0.5f;
                            float _11725 = _11724 * 0.0078740157186985015869140625f;
                            float3 _11727 = float3(_11725, _11725, _11724 * 0.01587301678955554962158203125f);
                            float3 _11728 = clamp(_10788.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _11729 = _11728.x;
                            float _11738 = 0.0f;
                            do
                            {
                                if (_11729 < 0.00313066993840038776397705078125f)
                                {
                                    _11738 = _11729 * 12.9200000762939453125f;
                                    break;
                                }
                                _11738 = mad(pow(_11729, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _11739 = _11728.y;
                            float _11748 = 0.0f;
                            do
                            {
                                if (_11739 < 0.00313066993840038776397705078125f)
                                {
                                    _11748 = _11739 * 12.9200000762939453125f;
                                    break;
                                }
                                _11748 = mad(pow(_11739, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _11749 = _11728.z;
                            float _11758 = 0.0f;
                            do
                            {
                                if (_11749 < 0.00313066993840038776397705078125f)
                                {
                                    _11758 = _11749 * 12.9200000762939453125f;
                                    break;
                                }
                                _11758 = mad(pow(_11749, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _11759 = float3(_11738, _11748, _11758);
                            float3 _11765 = clamp(mad(_11727, float3(min((asuint(_11759) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11759), 0.0f.xxx, 1.0f.xxx);
                            uint _11779 = ((uint(_11765.x * 127.0f) << 0u) | (uint(_11765.y * 127.0f) << 7u)) | (uint(_11765.z * 63.0f) << 14u);
                            float3 _11787 = clamp(float3(_10797, 0.0f, _10791), 0.0f.xxx, 1.0f.xxx);
                            float3 _11793 = clamp(mad(_11727, float3(min((asuint(_11787) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11787), 0.0f.xxx, 1.0f.xxx);
                            uint _11815 = ((0u | ((_11605 & 65535u) << 0u)) & 65535u) | (((((_11779 >> 12u) & 255u) << 8u) | uint(clamp(_10795, 0.0f, 1.0f) * 255.0f)) << 16u);
                            uint _11830 = 0u;
                            uint _11831 = 0u;
                            uint _11832 = 0u;
                            if (_11670 < 3u)
                            {
                                _11830 = (_11670 == 2u) ? _11815 : 0u;
                                _11831 = (_11670 == 1u) ? _11815 : _11668;
                                _11832 = (_11670 == 0u) ? _11815 : _11669;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 - 3u)] = _11815;
                                _11830 = 0u;
                                _11831 = _11668;
                                _11832 = _11669;
                            }
                            uint _11833 = _11670 + 1u;
                            uint _11835 = ((_11779 & 4095u) << 20u) | (((uint(_11793.x * 127.0f) << 0u) | (uint(_11793.y * 127.0f) << 7u)) | (uint(_11793.z * 63.0f) << 14u));
                            uint _11850 = 0u;
                            uint _11851 = 0u;
                            uint _11852 = 0u;
                            if (_11833 < 3u)
                            {
                                _11850 = (_11833 == 2u) ? _11835 : _11830;
                                _11851 = (_11833 == 1u) ? _11835 : _11831;
                                _11852 = (_11833 == 0u) ? _11835 : _11832;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 + 4294967294u)] = _11835;
                                _11850 = _11830;
                                _11851 = _11831;
                                _11852 = _11832;
                            }
                            _11854 = 0u;
                            _11855 = _11850;
                            _11856 = _11851;
                            _11857 = _11852;
                            _11858 = _11670 + 2u;
                        }
                        else
                        {
                            uint _11704 = (_11680 & 4194303u) | ((((spvPackHalf2x16(float2(1.0f, 0.0f)) >> 5u) & 1023u) & 1023u) << 22u);
                            uint _11719 = 0u;
                            uint _11720 = 0u;
                            uint _11721 = 0u;
                            if (_11670 < 3u)
                            {
                                _11719 = (_11670 == 2u) ? _11704 : 0u;
                                _11720 = (_11670 == 1u) ? _11704 : _11668;
                                _11721 = (_11670 == 0u) ? _11704 : _11669;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _11670 - 3u)] = _11704;
                                _11719 = 0u;
                                _11720 = _11668;
                                _11721 = _11669;
                            }
                            _11854 = _11704;
                            _11855 = _11719;
                            _11856 = _11720;
                            _11857 = _11721;
                            _11858 = _11670 + 1u;
                        }
                        _11881 = _11854;
                        _11882 = _11855;
                        _11883 = _11856;
                        _11884 = _11857;
                        _11885 = _11858;
                    }
                    _11915 = _11881;
                    _11916 = _11882;
                    _11917 = _11883;
                    _11918 = _11884;
                    _11919 = _11885;
                }
                _12691 = _11915;
                _12692 = _11916;
                _12693 = _11917;
                _12694 = _11918;
                _12695 = _11919;
            }
            _12855 = _12691;
            _12856 = _12692;
            _12857 = _12693;
            _12858 = _12694;
            _12859 = _12695;
        }
        uint _13673 = 0u;
        uint _13674 = 0u;
        uint _13675 = 0u;
        uint _13676 = 0u;
        uint _13677 = 0u;
        if (((!_11681) && _11620) && (_11033 == 0u))
        {
            uint _13668 = 0u;
            uint _13669 = 0u;
            uint _13670 = 0u;
            uint _13671 = 0u;
            uint _13672 = 0u;
            switch ((_12855 >> 11u) & 7u)
            {
                case 0u:
                {
                    float _13163 = _8393 - 0.5f;
                    float _13164 = _13163 * 0.0078740157186985015869140625f;
                    float _13165 = _13163 * 0.01587301678955554962158203125f;
                    float3 _13166 = float3(_13164, _13164, _13165);
                    float3 _13167 = clamp(_10788.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _13168 = _13167.x;
                    float _13177 = 0.0f;
                    do
                    {
                        if (_13168 < 0.00313066993840038776397705078125f)
                        {
                            _13177 = _13168 * 12.9200000762939453125f;
                            break;
                        }
                        _13177 = mad(pow(_13168, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13178 = _13167.y;
                    float _13187 = 0.0f;
                    do
                    {
                        if (_13178 < 0.00313066993840038776397705078125f)
                        {
                            _13187 = _13178 * 12.9200000762939453125f;
                            break;
                        }
                        _13187 = mad(pow(_13178, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13188 = _13167.z;
                    float _13197 = 0.0f;
                    do
                    {
                        if (_13188 < 0.00313066993840038776397705078125f)
                        {
                            _13197 = _13188 * 12.9200000762939453125f;
                            break;
                        }
                        _13197 = mad(pow(_13188, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float3 _13198 = float3(_13177, _13187, _13197);
                    float3 _13204 = clamp(mad(_13166, float3(min((asuint(_13198) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13198), 0.0f.xxx, 1.0f.xxx);
                    float3 _13220 = clamp(_8421.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _13221 = _13220.x;
                    float _13230 = 0.0f;
                    do
                    {
                        if (_13221 < 0.00313066993840038776397705078125f)
                        {
                            _13230 = _13221 * 12.9200000762939453125f;
                            break;
                        }
                        _13230 = mad(pow(_13221, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13231 = _13220.y;
                    float _13240 = 0.0f;
                    do
                    {
                        if (_13231 < 0.00313066993840038776397705078125f)
                        {
                            _13240 = _13231 * 12.9200000762939453125f;
                            break;
                        }
                        _13240 = mad(pow(_13231, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13241 = _13220.z;
                    float _13250 = 0.0f;
                    do
                    {
                        if (_13241 < 0.00313066993840038776397705078125f)
                        {
                            _13250 = _13241 * 12.9200000762939453125f;
                            break;
                        }
                        _13250 = mad(pow(_13241, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float3 _13251 = float3(_13230, _13240, _13250);
                    float3 _13257 = clamp(mad(_13166, float3(min((asuint(_13251) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13251), 0.0f.xxx, 1.0f.xxx);
                    uint _13271 = ((uint(_13257.x * 127.0f) << 0u) | (uint(_13257.y * 127.0f) << 7u)) | (uint(_13257.z * 63.0f) << 14u);
                    uint _13275 = (((((uint(_13204.x * 127.0f) << 0u) | (uint(_13204.y * 127.0f) << 7u)) | (uint(_13204.z * 63.0f) << 14u)) << 12u) & 4294963200u) | (_13271 & 4095u);
                    uint _13292 = 0u;
                    uint _13293 = 0u;
                    uint _13294 = 0u;
                    if (_12859 < 3u)
                    {
                        _13292 = (_12859 == 2u) ? _13275 : _12856;
                        _13293 = (_12859 == 1u) ? _13275 : _12857;
                        _13294 = (_12859 == 0u) ? _13275 : _12858;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _12859 - 3u)] = _13275;
                        _13292 = _12856;
                        _13293 = _12857;
                        _13294 = _12858;
                    }
                    uint _13295 = _12859 + 1u;
                    uint _13304 = ((_13271 >> 12u) & 255u) | ((0u | (uint(clamp((_10797 + 1.0f) * 0.5f, 0.0f, 1.0f) * 255.0f) << 16u)) | 2130706432u);
                    uint _13319 = 0u;
                    uint _13320 = 0u;
                    uint _13321 = 0u;
                    if (_13295 < 3u)
                    {
                        _13319 = (_13295 == 2u) ? _13304 : _13292;
                        _13320 = (_13295 == 1u) ? _13304 : _13293;
                        _13321 = (_13295 == 0u) ? _13304 : _13294;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _12859 + 4294967294u)] = _13304;
                        _13319 = _13292;
                        _13320 = _13293;
                        _13321 = _13294;
                    }
                    uint _13322 = _12859 + 2u;
                    uint _13373 = 0u;
                    uint _13374 = 0u;
                    uint _13375 = 0u;
                    uint _13376 = 0u;
                    if ((((_12855 >> 7u) & 1u) != 0u) || (((_12855 >> 6u) & 1u) != 0u))
                    {
                        bool3 _13335 = (max(0.0f, max(0.0f, 0.0f)) > 0.0f).xxx;
                        float3 _13336 = float3(_13335.x ? 0.0f.xxx.x : 1.0f.xxx.x, _13335.y ? 0.0f.xxx.y : 1.0f.xxx.y, _13335.z ? 0.0f.xxx.z : 1.0f.xxx.z);
                        float3 _13340 = mad(float3(_551, dot(_13336, float3(2.0f, 0.0f, -2.0f)), dot(_13336, float3(-1.0f, 2.0f, -1.0f))), 0.25f.xxx, float3(0.0f, 0.5f, 0.5f));
                        uint _13354 = 0u | ((((uint(clamp(_13340.y, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13340.z, 0.0f, 1.0f) * 255.0f) << 8u)) | 0u) | 0u);
                        uint _13369 = 0u;
                        uint _13370 = 0u;
                        uint _13371 = 0u;
                        if (_13322 < 3u)
                        {
                            _13369 = (_13322 == 2u) ? _13354 : _13319;
                            _13370 = (_13322 == 1u) ? _13354 : _13320;
                            _13371 = (_13322 == 0u) ? _13354 : _13321;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _12859 + 4294967295u)] = _13354;
                            _13369 = _13319;
                            _13370 = _13320;
                            _13371 = _13321;
                        }
                        _13373 = _13369;
                        _13374 = _13370;
                        _13375 = _13371;
                        _13376 = _12859 + 3u;
                    }
                    else
                    {
                        _13373 = _13319;
                        _13374 = _13320;
                        _13375 = _13321;
                        _13376 = _13322;
                    }
                    uint _13378 = (_12855 >> 2u) & 7u;
                    uint _13549 = 0u;
                    uint _13550 = 0u;
                    uint _13551 = 0u;
                    uint _13552 = 0u;
                    uint _13553 = 0u;
                    uint _13554 = 0u;
                    if (_13378 != 0u)
                    {
                        uint _13473 = 0u;
                        uint _13474 = 0u;
                        if (_13378 != 4u)
                        {
                            uint _13387 = (_11034 & 4294967292u) | (_13378 & 3u);
                            uint _13421 = 0u;
                            if (_13378 == 1u)
                            {
                                _13421 = (_13387 & 3u) | (uint(clamp(1.0f - abs(0.0f), 0.0f, 1.0f) * 255.0f) << 2u);
                            }
                            else
                            {
                                uint _13412 = 0u;
                                if (_13378 == 3u)
                                {
                                    _13412 = ((_13387 & 3u) | (uint(mad(0.0f, 255.0f, 0.5f)) << 24u)) | 0u;
                                }
                                else
                                {
                                    uint _13399 = (spvPackHalf2x16(0.0f.xx) >> 5u) & 1023u;
                                    _13412 = (_13387 & 3u) | (((_13399 << 22u) | (_13399 << 12u)) | (_13399 << 2u));
                                }
                                _13421 = _13412;
                            }
                            float3 _13427 = clamp(float4(_10788, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                            float _13428 = _13427.x;
                            float _13437 = 0.0f;
                            do
                            {
                                if (_13428 < 0.00313066993840038776397705078125f)
                                {
                                    _13437 = _13428 * 12.9200000762939453125f;
                                    break;
                                }
                                _13437 = mad(pow(_13428, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _13438 = _13427.y;
                            float _13447 = 0.0f;
                            do
                            {
                                if (_13438 < 0.00313066993840038776397705078125f)
                                {
                                    _13447 = _13438 * 12.9200000762939453125f;
                                    break;
                                }
                                _13447 = mad(pow(_13438, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _13448 = _13427.z;
                            float _13457 = 0.0f;
                            do
                            {
                                if (_13448 < 0.00313066993840038776397705078125f)
                                {
                                    _13457 = _13448 * 12.9200000762939453125f;
                                    break;
                                }
                                _13457 = mad(pow(_13448, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            _13473 = (((uint(clamp(_13437, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13447, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_13457, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                            _13474 = _13421;
                        }
                        else
                        {
                            _13473 = 0u;
                            _13474 = _11034;
                        }
                        uint _13546 = 0u;
                        uint _13547 = 0u;
                        uint _13548 = 0u;
                        if (_13378 == 3u)
                        {
                            uint _13528 = 0u | (((spvPackHalf2x16(0.0f.xx) >> 5u) & 1023u) << 16u);
                            uint _13543 = 0u;
                            uint _13544 = 0u;
                            uint _13545 = 0u;
                            if (_13376 < 3u)
                            {
                                _13543 = (_13376 == 2u) ? _13528 : _13373;
                                _13544 = (_13376 == 1u) ? _13528 : _13374;
                                _13545 = (_13376 == 0u) ? _13528 : _13375;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _13376 - 3u)] = _13528;
                                _13543 = _13373;
                                _13544 = _13374;
                                _13545 = _13375;
                            }
                            _13546 = _13543;
                            _13547 = _13544;
                            _13548 = _13545;
                        }
                        else
                        {
                            float4 _13489 = 0.0f.xxxx;
                            if ((((_12855 >> 10u) & 1u) != 0u) && (_13378 == 2u))
                            {
                                float3 _13487 = max(0.0f.xxx, 0.0f.xxx);
                                _13489 = float4(_13487.x, _13487.y, _13487.z, 0.0f.xxxx.w);
                            }
                            else
                            {
                                _13489 = 0.0f.xxxx;
                            }
                            uint _13506 = (((spvPackHalf2x16(float2(_13489.x, 0.0f)) << 17u) & 4292870144u) | ((spvPackHalf2x16(float2(_13489.y, 0.0f)) << 6u) & 2096128u)) | ((spvPackHalf2x16(float2(_13489.z, 0.0f)) >> 5u) & 1023u);
                            uint _13521 = 0u;
                            uint _13522 = 0u;
                            uint _13523 = 0u;
                            if (_13376 < 3u)
                            {
                                _13521 = (_13376 == 2u) ? _13506 : _13373;
                                _13522 = (_13376 == 1u) ? _13506 : _13374;
                                _13523 = (_13376 == 0u) ? _13506 : _13375;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _13376 - 3u)] = _13506;
                                _13521 = _13373;
                                _13522 = _13374;
                                _13523 = _13375;
                            }
                            _13546 = _13521;
                            _13547 = _13522;
                            _13548 = _13523;
                        }
                        _13549 = _13473;
                        _13550 = _13474;
                        _13551 = _13546;
                        _13552 = _13547;
                        _13553 = _13548;
                        _13554 = _13376 + 1u;
                    }
                    else
                    {
                        _13549 = 0u;
                        _13550 = _11034;
                        _13551 = _13373;
                        _13552 = _13374;
                        _13553 = _13375;
                        _13554 = _13376;
                    }
                    uint _13625 = 0u;
                    uint _13626 = 0u;
                    uint _13627 = 0u;
                    uint _13628 = 0u;
                    if (((_12855 >> 9u) & 1u) != 0u)
                    {
                        float _13565 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13565 = 0.0f;
                                break;
                            }
                            _13565 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13571 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13571 = 0.0f;
                                break;
                            }
                            _13571 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13577 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13577 = 0.0f;
                                break;
                            }
                            _13577 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float3 _13578 = float3(_13565, _13571, _13577);
                        float3 _13584 = clamp(mad(_13166, float3(min((asuint(_13578) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13578), 0.0f.xxx, 1.0f.xxx);
                        uint _13602 = uint(clamp(mad(_13165, 0.0f, 0.0f), 0.0f, 1.0f) * 63.0f);
                        uint _13606 = ((((uint(_13584.x * 127.0f) << 0u) | (uint(_13584.y * 127.0f) << 7u)) | (uint(_13584.z * 63.0f) << 14u)) | (_13602 << 20u)) | (_13602 << 26u);
                        uint _13621 = 0u;
                        uint _13622 = 0u;
                        uint _13623 = 0u;
                        if (_13554 < 3u)
                        {
                            _13621 = (_13554 == 2u) ? _13606 : _13551;
                            _13622 = (_13554 == 1u) ? _13606 : _13552;
                            _13623 = (_13554 == 0u) ? _13606 : _13553;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _13554 - 3u)] = _13606;
                            _13621 = _13551;
                            _13622 = _13552;
                            _13623 = _13553;
                        }
                        _13625 = _13621;
                        _13626 = _13622;
                        _13627 = _13623;
                        _13628 = _13554 + 1u;
                    }
                    else
                    {
                        _13625 = _13551;
                        _13626 = _13552;
                        _13627 = _13553;
                        _13628 = _13554;
                    }
                    uint _13665 = 0u;
                    uint _13666 = 0u;
                    uint _13667 = 0u;
                    if (((_12855 >> 16u) & 1u) != 0u)
                    {
                        float _13636 = 0.0f;
                        do
                        {
                            _13636 = mad(1.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        uint _13641 = uint(clamp(_13636, 0.0f, 1.0f) * 255.0f);
                        uint _13647 = (((_13641 << 0u) | (_13641 << 8u)) | (_13641 << 16u)) | 0u;
                        uint _13662 = 0u;
                        uint _13663 = 0u;
                        uint _13664 = 0u;
                        if (_13628 < 3u)
                        {
                            _13662 = (_13628 == 2u) ? _13647 : _13625;
                            _13663 = (_13628 == 1u) ? _13647 : _13626;
                            _13664 = (_13628 == 0u) ? _13647 : _13627;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _13628 - 3u)] = _13647;
                            _13662 = _13625;
                            _13663 = _13626;
                            _13664 = _13627;
                        }
                        _13665 = _13662;
                        _13666 = _13663;
                        _13667 = _13664;
                    }
                    else
                    {
                        _13665 = _13625;
                        _13666 = _13626;
                        _13667 = _13627;
                    }
                    _13668 = _13549;
                    _13669 = _13550;
                    _13670 = _13665;
                    _13671 = _13666;
                    _13672 = _13667;
                    break;
                }
                case 3u:
                {
                    float3 _13066 = clamp(float4(_10788, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                    float _13067 = _13066.x;
                    float _13076 = 0.0f;
                    do
                    {
                        if (_13067 < 0.00313066993840038776397705078125f)
                        {
                            _13076 = _13067 * 12.9200000762939453125f;
                            break;
                        }
                        _13076 = mad(pow(_13067, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13077 = _13066.y;
                    float _13086 = 0.0f;
                    do
                    {
                        if (_13077 < 0.00313066993840038776397705078125f)
                        {
                            _13086 = _13077 * 12.9200000762939453125f;
                            break;
                        }
                        _13086 = mad(pow(_13077, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _13087 = _13066.z;
                    float _13096 = 0.0f;
                    do
                    {
                        if (_13087 < 0.00313066993840038776397705078125f)
                        {
                            _13096 = _13087 * 12.9200000762939453125f;
                            break;
                        }
                        _13096 = mad(pow(_13087, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    uint _13111 = (((uint(clamp(_13076, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13086, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_13096, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                    uint _13126 = 0u;
                    uint _13127 = 0u;
                    uint _13128 = 0u;
                    if (_12859 < 3u)
                    {
                        _13126 = (_12859 == 2u) ? _13111 : _12856;
                        _13127 = (_12859 == 1u) ? _13111 : _12857;
                        _13128 = (_12859 == 0u) ? _13111 : _12858;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _12859 - 3u)] = _13111;
                        _13126 = _12856;
                        _13127 = _12857;
                        _13128 = _12858;
                    }
                    uint _13129 = _12859 + 1u;
                    uint _13144 = ((0u | (uint(clamp(_10791, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_10795, 0.0f, 1.0f) * 255.0f) << 16u)) | (uint(clamp(_10797, 0.0f, 1.0f) * 255.0f) << 24u);
                    uint _13159 = 0u;
                    uint _13160 = 0u;
                    uint _13161 = 0u;
                    if (_13129 < 3u)
                    {
                        _13159 = (_13129 == 2u) ? _13144 : _13126;
                        _13160 = (_13129 == 1u) ? _13144 : _13127;
                        _13161 = (_13129 == 0u) ? _13144 : _13128;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _12859 + 4294967294u)] = _13144;
                        _13159 = _13126;
                        _13160 = _13127;
                        _13161 = _13128;
                    }
                    _13668 = 0u;
                    _13669 = _11034;
                    _13670 = _13159;
                    _13671 = _13160;
                    _13672 = _13161;
                    break;
                }
                case 5u:
                {
                    float3 _12877 = 0.0f.xxx;
                    if (true)
                    {
                        float2 _12875 = 1.0f.xx - abs(0.0f.xx);
                        _12877 = float3(_12875.x, _12875.y, 0.0f.xxxx.z);
                    }
                    else
                    {
                        _12877 = 0.0f.xxx;
                    }
                    float3 _12884 = 0.0f.xxx;
                    if (true)
                    {
                        float2 _12882 = 1.0f.xx - abs(0.0f.xx);
                        _12884 = float3(_12882.x, _12882.y, 0.0f.xxxx.z);
                    }
                    else
                    {
                        _12884 = 0.0f.xxx;
                    }
                    float3 _12887 = clamp(_10788.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12888 = _12887.x;
                    float _12897 = 0.0f;
                    do
                    {
                        if (_12888 < 0.00313066993840038776397705078125f)
                        {
                            _12897 = _12888 * 12.9200000762939453125f;
                            break;
                        }
                        _12897 = mad(pow(_12888, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12898 = _12887.y;
                    float _12907 = 0.0f;
                    do
                    {
                        if (_12898 < 0.00313066993840038776397705078125f)
                        {
                            _12907 = _12898 * 12.9200000762939453125f;
                            break;
                        }
                        _12907 = mad(pow(_12898, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12908 = _12887.z;
                    float _12917 = 0.0f;
                    do
                    {
                        if (_12908 < 0.00313066993840038776397705078125f)
                        {
                            _12917 = _12908 * 12.9200000762939453125f;
                            break;
                        }
                        _12917 = mad(pow(_12908, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    uint _12932 = (((uint(clamp(_12897, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12907, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12917, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                    uint _12947 = 0u;
                    uint _12948 = 0u;
                    uint _12949 = 0u;
                    if (_12859 < 3u)
                    {
                        _12947 = (_12859 == 2u) ? _12932 : _12856;
                        _12948 = (_12859 == 1u) ? _12932 : _12857;
                        _12949 = (_12859 == 0u) ? _12932 : _12858;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _12859 - 3u)] = _12932;
                        _12947 = _12856;
                        _12948 = _12857;
                        _12949 = _12858;
                    }
                    uint _12950 = _12859 + 1u;
                    float2 _12952 = (_12877.xy * 0.5f) + 0.5f.xx;
                    float2 _12954 = (_12884.xy * 0.5f) + 0.5f.xx;
                    uint _12977 = (((uint(clamp(_12952.x, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12952.y, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12954.x, 0.0f, 1.0f) * 255.0f) << 16u)) | (uint(clamp(_12954.y, 0.0f, 1.0f) * 255.0f) << 24u);
                    uint _12992 = 0u;
                    uint _12993 = 0u;
                    uint _12994 = 0u;
                    if (_12950 < 3u)
                    {
                        _12992 = (_12950 == 2u) ? _12977 : _12947;
                        _12993 = (_12950 == 1u) ? _12977 : _12948;
                        _12994 = (_12950 == 0u) ? _12977 : _12949;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10785, _12859 + 4294967294u)] = _12977;
                        _12992 = _12947;
                        _12993 = _12948;
                        _12994 = _12949;
                    }
                    uint _13059 = 0u;
                    uint _13060 = 0u;
                    if (((_12855 >> 2u) & 7u) == 3u)
                    {
                        float3 _13013 = clamp(float4(_10788, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                        float _13014 = _13013.x;
                        float _13023 = 0.0f;
                        do
                        {
                            if (_13014 < 0.00313066993840038776397705078125f)
                            {
                                _13023 = _13014 * 12.9200000762939453125f;
                                break;
                            }
                            _13023 = mad(pow(_13014, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13024 = _13013.y;
                        float _13033 = 0.0f;
                        do
                        {
                            if (_13024 < 0.00313066993840038776397705078125f)
                            {
                                _13033 = _13024 * 12.9200000762939453125f;
                                break;
                            }
                            _13033 = mad(pow(_13024, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13034 = _13013.z;
                        float _13043 = 0.0f;
                        do
                        {
                            if (_13034 < 0.00313066993840038776397705078125f)
                            {
                                _13043 = _13034 * 12.9200000762939453125f;
                                break;
                            }
                            _13043 = mad(pow(_13034, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        _13059 = (((uint(clamp(_13023, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13033, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_13043, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                        _13060 = ((((_11034 & 4294967292u) | 3u) & 3u) | (uint(mad(_10795, 255.0f, 0.5f)) << 24u)) | 16711680u;
                    }
                    else
                    {
                        _13059 = 0u;
                        _13060 = _11034;
                    }
                    _13668 = _13059;
                    _13669 = _13060;
                    _13670 = _12992;
                    _13671 = _12993;
                    _13672 = _12994;
                    break;
                }
                default:
                {
                    _13668 = 0u;
                    _13669 = _11034;
                    _13670 = _12856;
                    _13671 = _12857;
                    _13672 = _12858;
                    break;
                }
            }
            _13673 = _13668;
            _13674 = _13669;
            _13675 = _13670;
            _13676 = _13671;
            _13677 = _13672;
        }
        else
        {
            _13673 = 0u;
            _13674 = _11034;
            _13675 = _12856;
            _13676 = _12857;
            _13677 = _12858;
        }
        _13678 = _13673;
        _13679 = _13674;
        _13680 = _13675;
        _13681 = _13676;
        _13682 = _13677;
    }
    else
    {
        _13678 = 0u;
        _13679 = _11034;
        _13680 = 0u;
        _13681 = _11668;
        _13682 = _11669;
    }
    float2 _13687 = _10942.xy / dot(1.0f.xxx, abs(_10942)).xx;
    float3 _13705 = 0.0f.xxx;
    if (_10942.z <= 0.0f)
    {
        float2 _13696 = _13687.xy;
        bool2 _13697 = bool2(_13696.x >= 0.0f.xx.x, _13696.y >= 0.0f.xx.y);
        float2 _13703 = (1.0f.xx - abs(_13687.yx)) * float2(_13697.x ? 1.0f : (-1.0f), _13697.y ? 1.0f : (-1.0f));
        _13705 = float3(_13703.x, _13703.y, _10942.z);
    }
    else
    {
        _13705 = float3(_13687.x, _13687.y, _10942.z);
    }
    uint2 _13710 = uint2(clamp((_13705.xy * 1023.0f) + 1024.0f.xx, 0.0f.xx, 2047.0f.xx));
    uint _13722 = _13679 & 3u;
    [branch]
    if (_13722 != 0u)
    {
        uint _13729 = uint(OpaqueBasePass_OpaqueBasePass_Strata_FirstSliceStoringStrataSSSDataWithoutMRT);
        uint _13730 = _10785.x;
        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_13730, _10785.y, _13729)] = _13679;
        if ((_13722 == 2u) || (_13722 == 3u))
        {
            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_13730, _10785.y, _13729 + 1u)] = _13678;
        }
    }
    float4 _13751 = float4((lerp((((float4(_10444.x ? 0.0f.xxxx.x : _9923.x, _10444.y ? 0.0f.xxxx.y : _9923.y, _10444.z ? 0.0f.xxxx.z : _9923.z, _10444.w ? 0.0f.xxxx.w : _9923.w).xyz + float4(_10444.x ? 0.0f.xxxx.x : _9926.x, _10444.y ? 0.0f.xxxx.y : _9926.y, _10444.z ? 0.0f.xxxx.z : _9926.z, _10444.w ? 0.0f.xxxx.w : _9926.w).xyz) + (((_8709 * _8559) * max(1.0f.xxx, ((((((_8440 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_8440 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_8440 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)) * _8430)) + _10531) + _10782, float3(_10940.x ? _10946.x : 0.0f.xxx.x, _10940.y ? _10946.y : 0.0f.xxx.y, _10940.z ? _10946.z : 0.0f.xxx.z), View_View_UnlitViewmodeMask.xxx) + (_11585 + _10530)) * 1.0f, 0.0f);
    float4 _13758 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _13757 = _13751;
        _13757.w = 0.0f;
        _13758 = _13757;
    }
    else
    {
        _13758 = _13751;
    }
    float4 _13759 = 0.0f.xxxx;
    _13759.x = _8516;
    _13759.y = 1.0f;
    _13759.z = 1.0f;
    _13759.w = 1.0f;
    float4 _13768 = _13758 * View_View_PreExposure;
    float3 _13770 = min(_13768.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_13770.x, _13770.y, _13770.z, _13768.w);
    out_var_SV_Target1 = _13759;
    out_var_SV_Target2 = float4(_10781 * View_View_PreExposure, 1.0f);
    out_var_SV_Target3 = _13682;
    out_var_SV_Target4 = _13681;
    out_var_SV_Target5 = _13680;
    out_var_SV_Target6 = (((_13710.x | (_13710.y << 11u)) << 10u) | (uint(clamp(_10939 ? (_10935 / _10937) : 0.0f, 0.0f, 1.0f) * 255.0f) << 2u)) | _10930;
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
