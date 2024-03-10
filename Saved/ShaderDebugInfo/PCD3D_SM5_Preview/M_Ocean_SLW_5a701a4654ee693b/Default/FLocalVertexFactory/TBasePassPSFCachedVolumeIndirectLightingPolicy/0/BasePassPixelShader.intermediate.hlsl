#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _457 = 0.0f.xxx;
static float3 _537 = 0.0f.xxx;
static uint3 _538 = uint3(0u, 0u, 0u);
static float4 _539 = 0.0f.xxxx;
static float4x4 _540 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
static float3 _541 = 0.0f.xxx;
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
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
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
    float _583 = 1.0f / gl_FragCoord.w;
    float2 _622 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _629 = float4(mad(_622, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _548, 1.0f) * _583;
    float4 _634 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _638 = _634.xyz / _634.w.xxx;
    float3 _639 = _638 - View_View_RelativePreViewTranslation;
    float3 _640 = in_var_TEXCOORD9 - View_View_RelativePreViewTranslation;
    float _642 = _629.w;
    float3 _656 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _656 = -View_View_ViewForward;
    }
    else
    {
        _656 = normalize(-_638);
    }
    float3 _663 = View_View_ViewTilePosition * float3(-1.0f, -1.0f, -0.0f);
    float3 _665 = mad(-_639, float3(1.0f, 1.0f, 0.0f), float3(MaterialCollection0_MaterialCollection0_Vectors[4].xyz));
    float _666 = _663.x;
    float _667 = _665.x;
    float _670 = _663.y;
    float _671 = _665.y;
    float _676 = _663.z;
    float _677 = _665.z;
    float3 _697 = Material_Material_PreshaderBuffer[86].z.xxx;
    float3 _709 = 0.0f.xxx;
    float _714 = 0.0f;
    _709 = mad(_639, _697, mad(View_View_ViewTilePosition, _697, -floor(mad(View_View_ViewTilePosition, _697, ((_639 * _697) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _714 = 0.0f;
    float _712 = 1.0f;
    uint _716 = 0u;
    [loop]
    for (; _716 < 6u; )
    {
        float3 _720 = _709 * 0.066666670143604278564453125f.xxx;
        float3 _722 = frac(_720) * 15.0f;
        float3 _723 = frac(_722);
        float4 _728 = float4(_723, 0.0f);
        float4 _741 = View_PerlinNoise3DTexture.SampleLevel(View_PerlinNoise3DTextureSampler, mad((_722 - _723) + (((_728 * _728) * _728) * mad(_728, (_728 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx)).xyz, 0.0625f.xxx, 0.03125f.xxx), 0.0f);
        float _715 = mad(abs(dot(_722, mad(_741.xyz * 255.0f, 0.0078740157186985015869140625f.xxx, (-1.0f).xxx)) - mad(_741.w, 255.0f, -127.0f)), _712, _714);
        _709 *= 2.0f;
        _712 *= 0.5f;
        _714 = _715;
        _716++;
        continue;
    }
    float _771 = clamp(mad(-length((mad(View_View_ViewTilePosition, float3(1.0f, 1.0f, 0.0f), _663) * 2097152.0f) + mad(View_View_RelativeWorldCameraOrigin, float3(1.0f, 1.0f, 0.0f), _639 * float3(-1.0f, -1.0f, -0.0f))), 1.0f / max(9.9999997473787516355514526367188e-06f, MaterialCollection0_MaterialCollection0_Vectors[0].x * Material_Material_PreshaderBuffer[85].y), 1.0f) * Material_Material_PreshaderBuffer[86].y, 0.0f, 1.0f);
    float _772 = lerp(clamp(lerp(-1.0f, 1.0f, _714), 0.0f, 1.0f), 1.0f, _771);
    float3 _775 = ((View_View_ViewTilePosition + (-View_View_ViewTilePosition)) * 2097152.0f) + _638;
    uint3 _777 = uint3(0u, 0u, 0u);
    _777 = _538;
    float _783 = 0.0f;
    uint3 _778 = uint3(0u, 0u, 0u);
    float _874 = 0.0f;
    uint _780 = 0u;
    float _782 = 0.0f;
    uint _785 = 0u;
    for (;;)
    {
        _785 = View_View_NumGlobalSDFClipmaps;
        if (_780 < _785)
        {
            float3 _799 = min(max((_775 - View_View_GlobalVolumeTranslatedCenterAndExtent[_780].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_780].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_780].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_780].www) - _775, 0.0f.xxx));
            float _809 = View_View_GlobalVolumeTranslatedCenterAndExtent[_780].w * View_View_GlobalVolumeTexelSize;
            _783 = 8.0f * _809;
            if (min(_799.x, min(_799.y, _799.z)) > _809)
            {
                float3 _819 = frac(frac(mad(_775, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_780].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_780].xyz)));
                float _823 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _830 = (clamp(_819, 0.0f.xxx, 1.0f.xxx) * _823) + float3(int3(0, 0, int(_780 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                uint4 _840 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_830.x), int(_830.y), int(_830.z), 0).xyz, 0));
                uint _841 = _840.x;
                uint _842 = _841 & 16777215u;
                uint3 _873 = uint3(0u, 0u, 0u);
                if (_841 < 4294967295u)
                {
                    uint3 _847 = _777;
                    _847.x = _842 & 127u;
                    _847.y = (_842 >> 7u) & 127u;
                    _847.z = _842 >> 14u;
                    float4 _866 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_847 * uint3(8u, 8u, 8u)) + (frac(_819 * _823) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f);
                    float _867 = _866.x;
                    if (_867 < 1.0f)
                    {
                        _874 = mad(_867, 2.0f, -1.0f) * _783;
                        break;
                    }
                    _873 = _847;
                }
                else
                {
                    _873 = _777;
                }
                _778 = _873;
            }
            else
            {
                _778 = _777;
            }
            _777 = _778;
            _780++;
            _782 = _783;
            continue;
        }
        else
        {
            _874 = _782;
            break;
        }
    }
    float _885 = clamp(mad(mad(_874, Material_Material_PreshaderBuffer[87].x, -Material_Material_PreshaderBuffer[87].y) * Material_Material_PreshaderBuffer[88].x, -1.0f, 1.0f), 0.0f, 1.0f);
    uint3 _887 = uint3(0u, 0u, 0u);
    _887 = _538;
    uint3 _888 = uint3(0u, 0u, 0u);
    float3 _1145 = 0.0f.xxx;
    uint _890 = 0u;
    for (;;)
    {
        if (_890 < _785)
        {
            float _900 = View_View_GlobalVolumeTranslatedCenterAndExtent[_890].w * View_View_GlobalVolumeTexelSize;
            float3 _910 = min(max((_775 - View_View_GlobalVolumeTranslatedCenterAndExtent[_890].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_890].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_890].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_890].www) - _775, 0.0f.xxx));
            if (min(_910.x, min(_910.y, _910.z)) >= _900)
            {
                float3 _925 = frac(frac(mad(_775, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_890].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_890].xyz)));
                float _929 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _935 = float3(int3(0, 0, int(_890 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                float3 _936 = (clamp(_925, 0.0f.xxx, 1.0f.xxx) * _929) + _935;
                uint4 _946 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_936.x), int(_936.y), int(_936.z), 0).xyz, 0));
                uint _947 = _946.x;
                uint _948 = _947 & 16777215u;
                uint3 _1144 = uint3(0u, 0u, 0u);
                if (_947 < 4294967295u)
                {
                    uint3 _953 = _887;
                    _953.x = _948 & 127u;
                    _953.y = (_948 >> 7u) & 127u;
                    _953.z = _948 >> 14u;
                    if (View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_953 * uint3(8u, 8u, 8u)) + (frac(_925 * _929) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x < 0.89999997615814208984375f)
                    {
                        float _977 = 0.5f * View_View_GlobalVolumeTexelSize;
                        float3 _980 = frac(_925 + float3(_977, 0.0f, 0.0f));
                        float3 _983 = (clamp(_980, 0.0f.xxx, 1.0f.xxx) * _929) + _935;
                        uint4 _992 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_983.x), int(_983.y), int(_983.z), 0).xyz, 0));
                        uint _993 = _992.x;
                        uint _994 = _993 & 16777215u;
                        float _1016 = 0.0f;
                        if (_993 < 4294967295u)
                        {
                            uint3 _999 = uint3(0u, 0u, 0u);
                            _999.x = _994 & 127u;
                            _999.y = (_994 >> 7u) & 127u;
                            _999.z = _994 >> 14u;
                            _1016 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_999 * uint3(8u, 8u, 8u)) + (frac(_980 * _929) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1016 = 1.0f;
                        }
                        float _1017 = View_View_GlobalVolumeTexelSize * (-0.5f);
                        float3 _1020 = frac(_925 + float3(_1017, 0.0f, 0.0f));
                        float3 _1023 = (clamp(_1020, 0.0f.xxx, 1.0f.xxx) * _929) + _935;
                        uint4 _1032 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1023.x), int(_1023.y), int(_1023.z), 0).xyz, 0));
                        uint _1033 = _1032.x;
                        uint _1034 = _1033 & 16777215u;
                        float _1056 = 0.0f;
                        if (_1033 < 4294967295u)
                        {
                            uint3 _1039 = uint3(0u, 0u, 0u);
                            _1039.x = _1034 & 127u;
                            _1039.y = (_1034 >> 7u) & 127u;
                            _1039.z = _1034 >> 14u;
                            _1056 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1039 * uint3(8u, 8u, 8u)) + (frac(_1020 * _929) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1056 = 1.0f;
                        }
                        float3 _1059 = frac(_925 + float3(0.0f, _977, 0.0f));
                        float3 _1062 = (clamp(_1059, 0.0f.xxx, 1.0f.xxx) * _929) + _935;
                        uint4 _1071 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1062.x), int(_1062.y), int(_1062.z), 0).xyz, 0));
                        uint _1072 = _1071.x;
                        uint _1073 = _1072 & 16777215u;
                        float _1095 = 0.0f;
                        if (_1072 < 4294967295u)
                        {
                            uint3 _1078 = uint3(0u, 0u, 0u);
                            _1078.x = _1073 & 127u;
                            _1078.y = (_1073 >> 7u) & 127u;
                            _1078.z = _1073 >> 14u;
                            _1095 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1078 * uint3(8u, 8u, 8u)) + (frac(_1059 * _929) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1095 = 1.0f;
                        }
                        float3 _1098 = frac(_925 + float3(0.0f, _1017, 0.0f));
                        float3 _1101 = (clamp(_1098, 0.0f.xxx, 1.0f.xxx) * _929) + _935;
                        uint4 _1110 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1101.x), int(_1101.y), int(_1101.z), 0).xyz, 0));
                        uint _1111 = _1110.x;
                        uint _1112 = _1111 & 16777215u;
                        float _1134 = 0.0f;
                        if (_1111 < 4294967295u)
                        {
                            uint3 _1117 = uint3(0u, 0u, 0u);
                            _1117.x = _1112 & 127u;
                            _1117.y = (_1112 >> 7u) & 127u;
                            _1117.z = _1112 >> 14u;
                            _1134 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1117 * uint3(8u, 8u, 8u)) + (frac(_1098 * _929) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1134 = 1.0f;
                        }
                        _1145 = (float3(_1016 - _1056, _1095 - _1134, _548) * (_900 * 16.0f)) / (View_View_GlobalVolumeTranslatedCenterAndExtent[_890].w * (128.0f * View_View_GlobalVolumeTexelSize)).xxx;
                        break;
                    }
                    _1144 = _953;
                }
                else
                {
                    _1144 = _887;
                }
                _888 = _1144;
            }
            else
            {
                _888 = _887;
            }
            _887 = _888;
            _890++;
            continue;
        }
        else
        {
            _1145 = float3(0.0f, 0.0f, 0.001000000047497451305389404296875f);
            break;
        }
    }
    float3 _1152 = Material_Material_PreshaderBuffer[88].w.xxx;
    float _1159 = lerp(View_View_GameTime, MaterialCollection0_MaterialCollection0_Vectors[0].z, MaterialCollection0_MaterialCollection0_Vectors[0].w);
    float3 _1170 = float3((View_View_ViewTilePosition * _1152).xy, 0.0f);
    float3 _1171 = float3((mad(_1145, Material_Material_PreshaderBuffer[88].z.xxx, _640) * _1152).xy, ((_1159 * Material_Material_PreshaderBuffer[89].y).xx + float2(1.0f, 0.0f)).x);
    float3 _1181 = 0.0f.xxx;
    float _1186 = 0.0f;
    _1181 = (((_1170 - floor(_1170 + ((_1171 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _1171) * 1.0f;
    _1186 = 0.0f;
    float _1184 = 1.0f;
    uint _1188 = 0u;
    [loop]
    for (; _1188 < 10u; )
    {
        float3 _1192 = frac(_1181);
        float _1194 = dot(floor(_1181), float3(19.0f, 47.0f, 101.0f));
        uint3 _1206 = (uint3(int3(int(_1194), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1207 = _1206.y;
        uint _1208 = _1206.z;
        uint _1211 = _1206.x + (_1207 * _1208);
        uint _1213 = _1207 + (_1208 * _1211);
        uint3 _1218 = uint3(0u, 0u, 0u);
        _1218.x = _1211 + (_1213 * (_1208 + (_1211 * _1213)));
        uint3 _1219 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _1232 = (uint3(int3(int(_1194 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1233 = _1232.y;
        uint _1234 = _1232.z;
        uint _1237 = _1232.x + (_1233 * _1234);
        uint _1239 = _1233 + (_1234 * _1237);
        uint3 _1244 = uint3(0u, 0u, 0u);
        _1244.x = _1237 + (_1239 * (_1234 + (_1237 * _1239)));
        uint3 _1257 = (uint3(int3(int(_1194 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1258 = _1257.y;
        uint _1259 = _1257.z;
        uint _1262 = _1257.x + (_1258 * _1259);
        uint _1264 = _1258 + (_1259 * _1262);
        uint3 _1269 = uint3(0u, 0u, 0u);
        _1269.x = _1262 + (_1264 * (_1259 + (_1262 * _1264)));
        uint3 _1282 = (uint3(int3(int(_1194 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1283 = _1282.y;
        uint _1284 = _1282.z;
        uint _1287 = _1282.x + (_1283 * _1284);
        uint _1289 = _1283 + (_1284 * _1287);
        uint3 _1294 = uint3(0u, 0u, 0u);
        _1294.x = _1287 + (_1289 * (_1284 + (_1287 * _1289)));
        uint3 _1307 = (uint3(int3(int(_1194 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1308 = _1307.y;
        uint _1309 = _1307.z;
        uint _1312 = _1307.x + (_1308 * _1309);
        uint _1314 = _1308 + (_1309 * _1312);
        uint3 _1319 = uint3(0u, 0u, 0u);
        _1319.x = _1312 + (_1314 * (_1309 + (_1312 * _1314)));
        uint3 _1332 = (uint3(int3(int(_1194 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1333 = _1332.y;
        uint _1334 = _1332.z;
        uint _1337 = _1332.x + (_1333 * _1334);
        uint _1339 = _1333 + (_1334 * _1337);
        uint3 _1344 = uint3(0u, 0u, 0u);
        _1344.x = _1337 + (_1339 * (_1334 + (_1337 * _1339)));
        uint3 _1357 = (uint3(int3(int(_1194 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1358 = _1357.y;
        uint _1359 = _1357.z;
        uint _1362 = _1357.x + (_1358 * _1359);
        uint _1364 = _1358 + (_1359 * _1362);
        uint3 _1369 = uint3(0u, 0u, 0u);
        _1369.x = _1362 + (_1364 * (_1359 + (_1362 * _1364)));
        uint3 _1382 = (uint3(int3(int(_1194 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1383 = _1382.y;
        uint _1384 = _1382.z;
        uint _1387 = _1382.x + (_1383 * _1384);
        uint _1389 = _1383 + (_1384 * _1387);
        uint3 _1394 = uint3(0u, 0u, 0u);
        _1394.x = _1387 + (_1389 * (_1384 + (_1387 * _1389)));
        float4 _1405 = float4(_1192, 0.0f);
        float4 _1411 = ((_1405 * _1405) * _1405) * mad(_1405, (_1405 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _1412 = _1411.x;
        float _1415 = _1411.y;
        float _1422 = abs(lerp(lerp(lerp(dot(mad(float3((_1218 >> _1219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1192), dot(mad(float3((_1244 >> _1219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1192 - float3(1.0f, 0.0f, 0.0f)), _1412), lerp(dot(mad(float3((_1269 >> _1219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1192 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_1294 >> _1219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1192 - float3(1.0f, 1.0f, 0.0f)), _1412), _1415), lerp(lerp(dot(mad(float3((_1319 >> _1219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1192 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_1344 >> _1219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1192 - float3(1.0f, 0.0f, 1.0f)), _1412), lerp(dot(mad(float3((_1369 >> _1219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1192 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_1394 >> _1219).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1192 - 1.0f.xxx), _1412), _1415), _1411.z));
        float _1187 = mad(_1422, _1184, _1186);
        _1181 *= 2.0f;
        _1184 *= 0.5f;
        _1186 = _1187;
        _1188++;
        continue;
    }
    float _1426 = -_885;
    float _1432 = clamp(mad(mad(_1426, Material_Material_PreshaderBuffer[89].z, lerp(0.0f, 1.0f, _1186)) / mad(_1426, Material_Material_PreshaderBuffer[89].z, mad(_885, Material_Material_PreshaderBuffer[89].z, 1.0f)), -1.0f, 1.0f), 0.0f, 1.0f);
    float _1441 = clamp(lerp(Material_Material_PreshaderBuffer[90].x, Material_Material_PreshaderBuffer[89].w, (_1432 <= 0.0f) ? 0.0f : pow(_1432, 2.0f)), 0.0f, 1.0f);
    float _1442 = _885 * _1441;
    float3 _1445 = Material_Material_PreshaderBuffer[90].y.xxx;
    float3 _1446 = View_View_ViewTilePosition * _1445;
    float3 _1447 = _640 * _1445;
    float3 _1458 = 0.0f.xxx;
    float3 _1461 = 0.0f.xxx;
    float _1465 = 0.0f;
    _1458 = _541;
    _1461 = mad(_640, _1445, mad(View_View_ViewTilePosition, _1445, -floor(mad(View_View_ViewTilePosition, _1445, (_1447 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _1465 = 0.0f;
    float3 _1462 = 0.0f.xxx;
    float _1464 = 0.0f;
    float _1466 = 0.0f;
    float3 _1459 = 0.0f.xxx;
    float _1463 = 1.0f;
    uint _1467 = 0u;
    [loop]
    for (; _1467 < 1u; _1458 = _1459, _1461 = _1462, _1463 = _1464, _1465 = _1466, _1467++)
    {
        float3 _1472 = frac(_1461);
        float3 _1473 = floor(_1461);
        float3 _1474 = _1458;
        _1474.x = 0.0f;
        float4 _1476 = 0.0f.xxxx;
        _1476 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _1459 = _1474;
        float3 _1479 = 0.0f.xxx;
        float4 _1477 = 0.0f.xxxx;
        float3 _1486 = 0.0f.xxx;
        for (; _1459.x <= 1.0f; _1479 = _1486, _1479.x = _1486.x + 1.0f, _1476 = _1477, _1459 = _1479)
        {
            float3 _1484 = _1459;
            _1484.y = 0.0f;
            _1486 = _1484;
            _1477 = _1476;
            float3 _1487 = 0.0f.xxx;
            float4 _1489 = 0.0f.xxxx;
            float3 _1498 = 0.0f.xxx;
            for (; _1486.y <= 1.0f; _1487 = _1498, _1487.y = _1498.y + 1.0f, _1486 = _1487, _1477 = _1489)
            {
                float3 _1494 = _1486;
                _1494.z = 0.0f;
                _1489 = _1477;
                _1498 = _1494;
                for (; _1498.z <= 1.0f; )
                {
                    float3 _1503 = _1473 + _1498;
                    uint3 _1508 = (uint3(int3(float3(_1503.x, _1503.y, _1503.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _1509 = _1508.y;
                    uint _1510 = _1508.z;
                    uint _1513 = _1508.x + (_1509 * _1510);
                    uint _1515 = _1509 + (_1510 * _1513);
                    uint _1517 = _1510 + (_1513 * _1515);
                    uint _1519 = _1513 + (_1515 * _1517);
                    uint3 _1520 = _1508;
                    _1520.x = _1519;
                    uint _1522 = _1515 + (_1517 * _1519);
                    _1520.y = _1522;
                    _1520.z = _1517 + (_1519 * _1522);
                    float3 _1534 = _1472 - (_1498 + (normalize(mad(float3(_1520 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _1499 = _1498;
                    _1499.z = _1498.z + 1.0f;
                    _1489 = float4(0.0f, 0.0f, 0.0f, min(_1489.w, dot(_1534, _1534)));
                    _1498 = _1499;
                    continue;
                }
            }
        }
        _1466 = mad(abs(mad(sqrt(_1476.w), 2.0f, -1.0f)), _1463, _1465);
        _1462 = _1461 * 2.0f;
        _1464 = _1463 * 0.5f;
    }
    float3 _1560 = 0.0f.xxx;
    float3 _1563 = 0.0f.xxx;
    float _1567 = 0.0f;
    _1560 = _541;
    _1563 = mad(_1447, 1.2000000476837158203125f.xxx, mad(_1446, 1.2000000476837158203125f.xxx, -floor(mad(_1446, 1.2000000476837158203125f.xxx, ((_1447 * 1.2000000476837158203125f.xxx) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _1567 = 0.0f;
    float3 _1564 = 0.0f.xxx;
    float _1566 = 0.0f;
    float _1568 = 0.0f;
    float3 _1561 = 0.0f.xxx;
    float _1565 = 1.0f;
    uint _1569 = 0u;
    [loop]
    for (; _1569 < 1u; _1560 = _1561, _1563 = _1564, _1565 = _1566, _1567 = _1568, _1569++)
    {
        float3 _1574 = frac(_1563);
        float3 _1575 = floor(_1563);
        float3 _1576 = _1560;
        _1576.x = 0.0f;
        float4 _1578 = 0.0f.xxxx;
        _1578 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _1561 = _1576;
        float3 _1581 = 0.0f.xxx;
        float4 _1579 = 0.0f.xxxx;
        float3 _1588 = 0.0f.xxx;
        for (; _1561.x <= 1.0f; _1581 = _1588, _1581.x = _1588.x + 1.0f, _1578 = _1579, _1561 = _1581)
        {
            float3 _1586 = _1561;
            _1586.y = 0.0f;
            _1588 = _1586;
            _1579 = _1578;
            float3 _1589 = 0.0f.xxx;
            float4 _1591 = 0.0f.xxxx;
            float3 _1600 = 0.0f.xxx;
            for (; _1588.y <= 1.0f; _1589 = _1600, _1589.y = _1600.y + 1.0f, _1588 = _1589, _1579 = _1591)
            {
                float3 _1596 = _1588;
                _1596.z = 0.0f;
                _1591 = _1579;
                _1600 = _1596;
                for (; _1600.z <= 1.0f; )
                {
                    float3 _1605 = _1575 + _1600;
                    uint3 _1610 = (uint3(int3(float3(_1605.x, _1605.y, _1605.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _1611 = _1610.y;
                    uint _1612 = _1610.z;
                    uint _1615 = _1610.x + (_1611 * _1612);
                    uint _1617 = _1611 + (_1612 * _1615);
                    uint _1619 = _1612 + (_1615 * _1617);
                    uint _1621 = _1615 + (_1617 * _1619);
                    uint3 _1622 = _1610;
                    _1622.x = _1621;
                    uint _1624 = _1617 + (_1619 * _1621);
                    _1622.y = _1624;
                    _1622.z = _1619 + (_1621 * _1624);
                    float3 _1636 = _1574 - (_1600 + (normalize(mad(float3(_1622 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _1601 = _1600;
                    _1601.z = _1600.z + 1.0f;
                    _1591 = float4(0.0f, 0.0f, 0.0f, min(_1591.w, dot(_1636, _1636)));
                    _1600 = _1601;
                    continue;
                }
            }
        }
        _1568 = mad(abs(mad(sqrt(_1578.w), 2.0f, -1.0f)), _1565, _1567);
        _1564 = _1563 * 2.0f;
        _1566 = _1565 * 0.5f;
    }
    float _1651 = clamp(lerp(-1.0f, 1.0f, _1465), 0.0f, 1.0f) + clamp(lerp(-1.0f, 1.0f, _1567), 0.0f, 1.0f);
    float _1665 = (abs(Material_Material_PreshaderBuffer[2].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[2].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[2].x : Material_Material_PreshaderBuffer[2].y) : Material_Material_PreshaderBuffer[2].x;
    float _1673 = (abs(_1665 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_1665 >= 1.0f) ? Material_Material_PreshaderBuffer[2].z : Material_Material_PreshaderBuffer[2].x) : Material_Material_PreshaderBuffer[2].x;
    float3 _1683 = float3(min(max((abs(_1673) > 9.9999997473787516355514526367188e-06f) ? ((_1673 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[4].w, 0.0f);
    float2 _1694 = float2(View_View_ViewTilePosition.xy);
    float2 _1695 = float2(_640.xy);
    float2 _1698 = float2(min(max(_1683 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _1699 = _1694 * _1698;
    float2 _1700 = _1698 * _1695;
    float _1705 = _1699.x + _1699.y;
    float _1709 = _1705 * Material_Material_PreshaderBuffer[9].x;
    float _1712 = _1159 - Material_Material_PreshaderBuffer[9].z;
    float3 _1715 = Material_Material_PreshaderBuffer[9].w.xxx;
    float3 _1720 = Material_Material_PreshaderBuffer[10].x.xxx;
    float3 _1724 = MaterialCollection0_MaterialCollection0_Vectors[0].y.xxx;
    float3 _1725 = ((View_View_ViewTilePosition * _1715) * _1720) * _1724;
    float3 _1727 = (((_1715 * _640) * _1720) * _1724) * 0.100000001490116119384765625f.xxx;
    float3 _1738 = float3(_1727.xy, ((_1159 * Material_Material_PreshaderBuffer[10].z).xx + _1727.z.xx).x);
    float3 _1749 = 0.0f.xxx;
    float _1754 = 0.0f;
    _1749 = ((mad(_1725, 0.100000001490116119384765625f.xxx, -floor(mad(_1725, 0.100000001490116119384765625f.xxx, (_1738 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _1738) * 1.0f;
    _1754 = 0.0f;
    float _1752 = 1.0f;
    uint _1756 = 0u;
    [loop]
    for (; _1756 < 6u; )
    {
        float3 _1760 = frac(_1749);
        float _1762 = dot(floor(_1749), float3(19.0f, 47.0f, 101.0f));
        uint3 _1774 = (uint3(int3(int(_1762), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1775 = _1774.y;
        uint _1776 = _1774.z;
        uint _1779 = _1774.x + (_1775 * _1776);
        uint _1781 = _1775 + (_1776 * _1779);
        uint3 _1786 = uint3(0u, 0u, 0u);
        _1786.x = _1779 + (_1781 * (_1776 + (_1779 * _1781)));
        uint3 _1787 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _1800 = (uint3(int3(int(_1762 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1801 = _1800.y;
        uint _1802 = _1800.z;
        uint _1805 = _1800.x + (_1801 * _1802);
        uint _1807 = _1801 + (_1802 * _1805);
        uint3 _1812 = uint3(0u, 0u, 0u);
        _1812.x = _1805 + (_1807 * (_1802 + (_1805 * _1807)));
        uint3 _1825 = (uint3(int3(int(_1762 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1826 = _1825.y;
        uint _1827 = _1825.z;
        uint _1830 = _1825.x + (_1826 * _1827);
        uint _1832 = _1826 + (_1827 * _1830);
        uint3 _1837 = uint3(0u, 0u, 0u);
        _1837.x = _1830 + (_1832 * (_1827 + (_1830 * _1832)));
        uint3 _1850 = (uint3(int3(int(_1762 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1851 = _1850.y;
        uint _1852 = _1850.z;
        uint _1855 = _1850.x + (_1851 * _1852);
        uint _1857 = _1851 + (_1852 * _1855);
        uint3 _1862 = uint3(0u, 0u, 0u);
        _1862.x = _1855 + (_1857 * (_1852 + (_1855 * _1857)));
        uint3 _1875 = (uint3(int3(int(_1762 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1876 = _1875.y;
        uint _1877 = _1875.z;
        uint _1880 = _1875.x + (_1876 * _1877);
        uint _1882 = _1876 + (_1877 * _1880);
        uint3 _1887 = uint3(0u, 0u, 0u);
        _1887.x = _1880 + (_1882 * (_1877 + (_1880 * _1882)));
        uint3 _1900 = (uint3(int3(int(_1762 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1901 = _1900.y;
        uint _1902 = _1900.z;
        uint _1905 = _1900.x + (_1901 * _1902);
        uint _1907 = _1901 + (_1902 * _1905);
        uint3 _1912 = uint3(0u, 0u, 0u);
        _1912.x = _1905 + (_1907 * (_1902 + (_1905 * _1907)));
        uint3 _1925 = (uint3(int3(int(_1762 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1926 = _1925.y;
        uint _1927 = _1925.z;
        uint _1930 = _1925.x + (_1926 * _1927);
        uint _1932 = _1926 + (_1927 * _1930);
        uint3 _1937 = uint3(0u, 0u, 0u);
        _1937.x = _1930 + (_1932 * (_1927 + (_1930 * _1932)));
        uint3 _1950 = (uint3(int3(int(_1762 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1951 = _1950.y;
        uint _1952 = _1950.z;
        uint _1955 = _1950.x + (_1951 * _1952);
        uint _1957 = _1951 + (_1952 * _1955);
        uint3 _1962 = uint3(0u, 0u, 0u);
        _1962.x = _1955 + (_1957 * (_1952 + (_1955 * _1957)));
        float4 _1973 = float4(_1760, 0.0f);
        float4 _1979 = ((_1973 * _1973) * _1973) * mad(_1973, (_1973 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _1980 = _1979.x;
        float _1983 = _1979.y;
        float _1755 = mad(lerp(lerp(lerp(dot(mad(float3((_1786 >> _1787).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1760), dot(mad(float3((_1812 >> _1787).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1760 - float3(1.0f, 0.0f, 0.0f)), _1980), lerp(dot(mad(float3((_1837 >> _1787).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1760 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_1862 >> _1787).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1760 - float3(1.0f, 1.0f, 0.0f)), _1980), _1983), lerp(lerp(dot(mad(float3((_1887 >> _1787).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1760 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_1912 >> _1787).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1760 - float3(1.0f, 0.0f, 1.0f)), _1980), lerp(dot(mad(float3((_1937 >> _1787).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1760 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_1962 >> _1787).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1760 - 1.0f.xxx), _1980), _1983), _1979.z), _1752, _1754);
        _1749 *= 2.0f;
        _1752 *= 0.5f;
        _1754 = _1755;
        _1756++;
        continue;
    }
    float _1993 = lerp(_1159, _1712, clamp(lerp(0.0f, 1.0f, mad(_1754, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _1997 = mad(_1700.x + _1700.y, Material_Material_PreshaderBuffer[9].x, Material_Material_PreshaderBuffer[10].w * _1993);
    float _1998 = floor(_1709);
    float3 _2010 = Material_Material_PreshaderBuffer[12].x.xxx;
    float3 _2015 = Material_Material_PreshaderBuffer[12].y.xxx;
    float3 _2016 = (View_View_ViewTilePosition * _2010) * _2015;
    float3 _2017 = (_2010 * _640) * _2015;
    float3 _2018 = _2017 * 0.0001000000047497451305389404296875f.xxx;
    float2 _2025 = (_1159 * Material_Material_PreshaderBuffer[12].w).xx;
    float3 _2029 = float3(_2018.xy, (_2025 + _2018.z.xx).x);
    float3 _2040 = 0.0f.xxx;
    float _2045 = 0.0f;
    _2040 = ((mad(_2016, 0.0001000000047497451305389404296875f.xxx, -floor(mad(_2016, 0.0001000000047497451305389404296875f.xxx, (_2029 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _2029) * 1.0f;
    _2045 = 0.0f;
    float _2043 = 1.0f;
    uint _2047 = 0u;
    [loop]
    for (; _2047 < 10u; )
    {
        float3 _2051 = frac(_2040);
        float _2053 = dot(floor(_2040), float3(19.0f, 47.0f, 101.0f));
        uint3 _2065 = (uint3(int3(int(_2053), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2066 = _2065.y;
        uint _2067 = _2065.z;
        uint _2070 = _2065.x + (_2066 * _2067);
        uint _2072 = _2066 + (_2067 * _2070);
        uint3 _2077 = uint3(0u, 0u, 0u);
        _2077.x = _2070 + (_2072 * (_2067 + (_2070 * _2072)));
        uint3 _2078 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _2091 = (uint3(int3(int(_2053 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2092 = _2091.y;
        uint _2093 = _2091.z;
        uint _2096 = _2091.x + (_2092 * _2093);
        uint _2098 = _2092 + (_2093 * _2096);
        uint3 _2103 = uint3(0u, 0u, 0u);
        _2103.x = _2096 + (_2098 * (_2093 + (_2096 * _2098)));
        uint3 _2116 = (uint3(int3(int(_2053 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2117 = _2116.y;
        uint _2118 = _2116.z;
        uint _2121 = _2116.x + (_2117 * _2118);
        uint _2123 = _2117 + (_2118 * _2121);
        uint3 _2128 = uint3(0u, 0u, 0u);
        _2128.x = _2121 + (_2123 * (_2118 + (_2121 * _2123)));
        uint3 _2141 = (uint3(int3(int(_2053 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2142 = _2141.y;
        uint _2143 = _2141.z;
        uint _2146 = _2141.x + (_2142 * _2143);
        uint _2148 = _2142 + (_2143 * _2146);
        uint3 _2153 = uint3(0u, 0u, 0u);
        _2153.x = _2146 + (_2148 * (_2143 + (_2146 * _2148)));
        uint3 _2166 = (uint3(int3(int(_2053 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2167 = _2166.y;
        uint _2168 = _2166.z;
        uint _2171 = _2166.x + (_2167 * _2168);
        uint _2173 = _2167 + (_2168 * _2171);
        uint3 _2178 = uint3(0u, 0u, 0u);
        _2178.x = _2171 + (_2173 * (_2168 + (_2171 * _2173)));
        uint3 _2191 = (uint3(int3(int(_2053 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2192 = _2191.y;
        uint _2193 = _2191.z;
        uint _2196 = _2191.x + (_2192 * _2193);
        uint _2198 = _2192 + (_2193 * _2196);
        uint3 _2203 = uint3(0u, 0u, 0u);
        _2203.x = _2196 + (_2198 * (_2193 + (_2196 * _2198)));
        uint3 _2216 = (uint3(int3(int(_2053 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2217 = _2216.y;
        uint _2218 = _2216.z;
        uint _2221 = _2216.x + (_2217 * _2218);
        uint _2223 = _2217 + (_2218 * _2221);
        uint3 _2228 = uint3(0u, 0u, 0u);
        _2228.x = _2221 + (_2223 * (_2218 + (_2221 * _2223)));
        uint3 _2241 = (uint3(int3(int(_2053 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2242 = _2241.y;
        uint _2243 = _2241.z;
        uint _2246 = _2241.x + (_2242 * _2243);
        uint _2248 = _2242 + (_2243 * _2246);
        uint3 _2253 = uint3(0u, 0u, 0u);
        _2253.x = _2246 + (_2248 * (_2243 + (_2246 * _2248)));
        float4 _2264 = float4(_2051, 0.0f);
        float4 _2270 = ((_2264 * _2264) * _2264) * mad(_2264, (_2264 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _2271 = _2270.x;
        float _2274 = _2270.y;
        float _2281 = abs(lerp(lerp(lerp(dot(mad(float3((_2077 >> _2078).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2051), dot(mad(float3((_2103 >> _2078).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2051 - float3(1.0f, 0.0f, 0.0f)), _2271), lerp(dot(mad(float3((_2128 >> _2078).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2051 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_2153 >> _2078).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2051 - float3(1.0f, 1.0f, 0.0f)), _2271), _2274), lerp(lerp(dot(mad(float3((_2178 >> _2078).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2051 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_2203 >> _2078).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2051 - float3(1.0f, 0.0f, 1.0f)), _2271), lerp(dot(mad(float3((_2228 >> _2078).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2051 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_2253 >> _2078).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2051 - 1.0f.xxx), _2271), _2274), _2270.z));
        float _2046 = mad(_2281, _2043, _2045);
        _2040 *= 2.0f;
        _2043 *= 0.5f;
        _2045 = _2046;
        _2047++;
        continue;
    }
    float3 _2283 = _2017 * 0.000200000009499490261077880859375f.xxx;
    float3 _2290 = float3(_2283.xy, (_2025 + _2283.z.xx).x);
    float3 _2301 = 0.0f.xxx;
    float _2306 = 0.0f;
    _2301 = ((mad(_2016, 0.000200000009499490261077880859375f.xxx, -floor(mad(_2016, 0.000200000009499490261077880859375f.xxx, (_2290 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _2290) * 1.0f;
    _2306 = 0.0f;
    float _2304 = 1.0f;
    uint _2308 = 0u;
    [loop]
    for (; _2308 < 10u; )
    {
        float3 _2312 = frac(_2301);
        float _2314 = dot(floor(_2301), float3(19.0f, 47.0f, 101.0f));
        uint3 _2326 = (uint3(int3(int(_2314), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2327 = _2326.y;
        uint _2328 = _2326.z;
        uint _2331 = _2326.x + (_2327 * _2328);
        uint _2333 = _2327 + (_2328 * _2331);
        uint3 _2338 = uint3(0u, 0u, 0u);
        _2338.x = _2331 + (_2333 * (_2328 + (_2331 * _2333)));
        uint3 _2339 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _2352 = (uint3(int3(int(_2314 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2353 = _2352.y;
        uint _2354 = _2352.z;
        uint _2357 = _2352.x + (_2353 * _2354);
        uint _2359 = _2353 + (_2354 * _2357);
        uint3 _2364 = uint3(0u, 0u, 0u);
        _2364.x = _2357 + (_2359 * (_2354 + (_2357 * _2359)));
        uint3 _2377 = (uint3(int3(int(_2314 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2378 = _2377.y;
        uint _2379 = _2377.z;
        uint _2382 = _2377.x + (_2378 * _2379);
        uint _2384 = _2378 + (_2379 * _2382);
        uint3 _2389 = uint3(0u, 0u, 0u);
        _2389.x = _2382 + (_2384 * (_2379 + (_2382 * _2384)));
        uint3 _2402 = (uint3(int3(int(_2314 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2403 = _2402.y;
        uint _2404 = _2402.z;
        uint _2407 = _2402.x + (_2403 * _2404);
        uint _2409 = _2403 + (_2404 * _2407);
        uint3 _2414 = uint3(0u, 0u, 0u);
        _2414.x = _2407 + (_2409 * (_2404 + (_2407 * _2409)));
        uint3 _2427 = (uint3(int3(int(_2314 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2428 = _2427.y;
        uint _2429 = _2427.z;
        uint _2432 = _2427.x + (_2428 * _2429);
        uint _2434 = _2428 + (_2429 * _2432);
        uint3 _2439 = uint3(0u, 0u, 0u);
        _2439.x = _2432 + (_2434 * (_2429 + (_2432 * _2434)));
        uint3 _2452 = (uint3(int3(int(_2314 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2453 = _2452.y;
        uint _2454 = _2452.z;
        uint _2457 = _2452.x + (_2453 * _2454);
        uint _2459 = _2453 + (_2454 * _2457);
        uint3 _2464 = uint3(0u, 0u, 0u);
        _2464.x = _2457 + (_2459 * (_2454 + (_2457 * _2459)));
        uint3 _2477 = (uint3(int3(int(_2314 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2478 = _2477.y;
        uint _2479 = _2477.z;
        uint _2482 = _2477.x + (_2478 * _2479);
        uint _2484 = _2478 + (_2479 * _2482);
        uint3 _2489 = uint3(0u, 0u, 0u);
        _2489.x = _2482 + (_2484 * (_2479 + (_2482 * _2484)));
        uint3 _2502 = (uint3(int3(int(_2314 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2503 = _2502.y;
        uint _2504 = _2502.z;
        uint _2507 = _2502.x + (_2503 * _2504);
        uint _2509 = _2503 + (_2504 * _2507);
        uint3 _2514 = uint3(0u, 0u, 0u);
        _2514.x = _2507 + (_2509 * (_2504 + (_2507 * _2509)));
        float4 _2525 = float4(_2312, 0.0f);
        float4 _2531 = ((_2525 * _2525) * _2525) * mad(_2525, (_2525 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _2532 = _2531.x;
        float _2535 = _2531.y;
        float _2542 = abs(lerp(lerp(lerp(dot(mad(float3((_2338 >> _2339).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2312), dot(mad(float3((_2364 >> _2339).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2312 - float3(1.0f, 0.0f, 0.0f)), _2532), lerp(dot(mad(float3((_2389 >> _2339).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2312 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_2414 >> _2339).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2312 - float3(1.0f, 1.0f, 0.0f)), _2532), _2535), lerp(lerp(dot(mad(float3((_2439 >> _2339).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2312 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_2464 >> _2339).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2312 - float3(1.0f, 0.0f, 1.0f)), _2532), lerp(dot(mad(float3((_2489 >> _2339).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2312 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_2514 >> _2339).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2312 - 1.0f.xxx), _2532), _2535), _2531.z));
        float _2307 = mad(_2542, _2304, _2306);
        _2301 *= 2.0f;
        _2304 *= 0.5f;
        _2306 = _2307;
        _2308++;
        continue;
    }
    float _2554 = lerp(Material_Material_PreshaderBuffer[11].w, Material_Material_PreshaderBuffer[13].z, lerp(0.0f, 1.0f, _2045) * mad(lerp(0.0f, 1.0f, _2306), Material_Material_PreshaderBuffer[13].y, Material_Material_PreshaderBuffer[13].x));
    float2 _2565 = float2(min(max(_1683 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2566 = _1694 * _2565;
    float2 _2567 = _2565 * _1695;
    float _2572 = _2566.x + _2566.y;
    float _2576 = _2572 * Material_Material_PreshaderBuffer[16].y;
    float _2580 = mad(_2567.x + _2567.y, Material_Material_PreshaderBuffer[16].y, Material_Material_PreshaderBuffer[17].x * _1993);
    float _2581 = floor(_2576);
    float _2593 = _2554 * Material_Material_PreshaderBuffer[17].z;
    float2 _2604 = float2(min(max(_1683 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2605 = _1694 * _2604;
    float2 _2606 = _2604 * _1695;
    float _2611 = _2605.x + _2605.y;
    float _2615 = _2611 * Material_Material_PreshaderBuffer[18].y;
    float _2619 = mad(_2606.x + _2606.y, Material_Material_PreshaderBuffer[18].y, Material_Material_PreshaderBuffer[18].w * _1993);
    float _2620 = floor(_2615);
    float _2630 = _2593 * Material_Material_PreshaderBuffer[17].z;
    float2 _2640 = float2(min(max(_1683 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2641 = _1694 * _2640;
    float2 _2642 = _2640 * _1695;
    float _2647 = _2641.x + _2641.y;
    float _2651 = _2647 * Material_Material_PreshaderBuffer[19].z;
    float _2655 = mad(_2642.x + _2642.y, Material_Material_PreshaderBuffer[19].z, Material_Material_PreshaderBuffer[20].x * _1993);
    float _2656 = floor(_2651);
    float _2666 = _2630 * Material_Material_PreshaderBuffer[17].z;
    float _2680 = (abs(Material_Material_PreshaderBuffer[20].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[20].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[20].w : Material_Material_PreshaderBuffer[21].x) : Material_Material_PreshaderBuffer[20].w;
    float _2688 = (abs(_2680 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_2680 >= 1.0f) ? Material_Material_PreshaderBuffer[21].y : Material_Material_PreshaderBuffer[20].w) : Material_Material_PreshaderBuffer[20].w;
    float3 _2698 = float3(min(max((abs(_2688) > 9.9999997473787516355514526367188e-06f) ? ((_2688 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[22].z, 0.0f);
    float2 _2704 = float2(min(max(_2698 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2705 = _1694 * _2704;
    float2 _2706 = _2704 * _1695;
    float _2711 = _2705.x + _2705.y;
    float _2715 = _2711 * Material_Material_PreshaderBuffer[24].w;
    float _2719 = mad(_2706.x + _2706.y, Material_Material_PreshaderBuffer[24].w, Material_Material_PreshaderBuffer[25].z * _1993);
    float _2720 = floor(_2715);
    float _2732 = _2554 * Material_Material_PreshaderBuffer[25].w;
    float2 _2740 = float2(min(max(_2698 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2741 = _1694 * _2740;
    float2 _2742 = _2740 * _1695;
    float _2747 = _2741.x + _2741.y;
    float _2751 = _2747 * Material_Material_PreshaderBuffer[26].y;
    float _2755 = mad(_2742.x + _2742.y, Material_Material_PreshaderBuffer[26].y, Material_Material_PreshaderBuffer[26].w * _1993);
    float _2756 = floor(_2751);
    float _2766 = _2732 * Material_Material_PreshaderBuffer[17].z;
    float2 _2777 = float2(min(max(_2698 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2778 = _1694 * _2777;
    float2 _2779 = _2777 * _1695;
    float _2784 = _2778.x + _2778.y;
    float _2788 = _2784 * Material_Material_PreshaderBuffer[27].y;
    float _2792 = mad(_2779.x + _2779.y, Material_Material_PreshaderBuffer[27].y, Material_Material_PreshaderBuffer[27].w * _1993);
    float _2793 = floor(_2788);
    float _2803 = _2766 * Material_Material_PreshaderBuffer[17].z;
    float2 _2813 = float2(min(max(_2698 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2814 = _1694 * _2813;
    float2 _2815 = _2813 * _1695;
    float _2820 = _2814.x + _2814.y;
    float _2824 = _2820 * Material_Material_PreshaderBuffer[28].y;
    float _2828 = mad(_2815.x + _2815.y, Material_Material_PreshaderBuffer[28].y, Material_Material_PreshaderBuffer[28].w * _1993);
    float _2829 = floor(_2824);
    float _2839 = _2803 * Material_Material_PreshaderBuffer[17].z;
    float3 _2844 = (((float3(_548, _548, sin(mad(mad(_1709, 6.283185482025146484375f, _1998 * (-6.283185482025146484375f)), 2097152.0f, mad(_1997, 6.283185482025146484375f, floor(mad(mad(_1705, Material_Material_PreshaderBuffer[9].x, -_1998), 2097152.0f, _1997)) * (-6.283185482025146484375f)))) * _2554) + float3(_548, _548, sin(mad(mad(_2576, 6.283185482025146484375f, _2581 * (-6.283185482025146484375f)), 2097152.0f, mad(_2580, 6.283185482025146484375f, floor(mad(mad(_2572, Material_Material_PreshaderBuffer[16].y, -_2581), 2097152.0f, _2580)) * (-6.283185482025146484375f)))) * _2593)) + float3(_548, _548, sin(mad(mad(_2615, 6.283185482025146484375f, _2620 * (-6.283185482025146484375f)), 2097152.0f, mad(_2619, 6.283185482025146484375f, floor(mad(mad(_2611, Material_Material_PreshaderBuffer[18].y, -_2620), 2097152.0f, _2619)) * (-6.283185482025146484375f)))) * _2630)) + float3(_548, _548, sin(mad(mad(_2651, 6.283185482025146484375f, _2656 * (-6.283185482025146484375f)), 2097152.0f, mad(_2655, 6.283185482025146484375f, floor(mad(mad(_2647, Material_Material_PreshaderBuffer[19].z, -_2656), 2097152.0f, _2655)) * (-6.283185482025146484375f)))) * _2666)) + (((float3(_548, _548, sin(mad(mad(_2715, 6.283185482025146484375f, _2720 * (-6.283185482025146484375f)), 2097152.0f, mad(_2719, 6.283185482025146484375f, floor(mad(mad(_2711, Material_Material_PreshaderBuffer[24].w, -_2720), 2097152.0f, _2719)) * (-6.283185482025146484375f)))) * _2732) + float3(_548, _548, sin(mad(mad(_2751, 6.283185482025146484375f, _2756 * (-6.283185482025146484375f)), 2097152.0f, mad(_2755, 6.283185482025146484375f, floor(mad(mad(_2747, Material_Material_PreshaderBuffer[26].y, -_2756), 2097152.0f, _2755)) * (-6.283185482025146484375f)))) * _2766)) + float3(_548, _548, sin(mad(mad(_2788, 6.283185482025146484375f, _2793 * (-6.283185482025146484375f)), 2097152.0f, mad(_2792, 6.283185482025146484375f, floor(mad(mad(_2784, Material_Material_PreshaderBuffer[27].y, -_2793), 2097152.0f, _2792)) * (-6.283185482025146484375f)))) * _2803)) + float3(_548, _548, sin(mad(mad(_2824, 6.283185482025146484375f, _2829 * (-6.283185482025146484375f)), 2097152.0f, mad(_2828, 6.283185482025146484375f, floor(mad(mad(_2820, Material_Material_PreshaderBuffer[28].y, -_2829), 2097152.0f, _2828)) * (-6.283185482025146484375f)))) * _2839));
    float _2854 = (abs(Material_Material_PreshaderBuffer[29].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[29].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[29].x : Material_Material_PreshaderBuffer[29].y) : Material_Material_PreshaderBuffer[29].x;
    float _2862 = (abs(_2854 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_2854 >= 1.0f) ? Material_Material_PreshaderBuffer[29].z : Material_Material_PreshaderBuffer[29].x) : Material_Material_PreshaderBuffer[29].x;
    float3 _2872 = float3(min(max((abs(_2862) > 9.9999997473787516355514526367188e-06f) ? ((_2862 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[30].w, 0.0f);
    float2 _2878 = float2(min(max(_2872 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2879 = _1694 * _2878;
    float2 _2880 = _2878 * _1695;
    float _2885 = _2879.x + _2879.y;
    float _2889 = _2885 * Material_Material_PreshaderBuffer[32].z;
    float _2893 = mad(_2880.x + _2880.y, Material_Material_PreshaderBuffer[32].z, Material_Material_PreshaderBuffer[32].w * _1993);
    float _2894 = floor(_2889);
    float2 _2911 = float2(min(max(_2872 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2912 = _1694 * _2911;
    float2 _2913 = _2911 * _1695;
    float _2918 = _2912.x + _2912.y;
    float _2922 = _2918 * Material_Material_PreshaderBuffer[33].y;
    float _2926 = mad(_2913.x + _2913.y, Material_Material_PreshaderBuffer[33].y, Material_Material_PreshaderBuffer[33].z * _1993);
    float _2927 = floor(_2922);
    float2 _2947 = float2(min(max(_2872 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2948 = _1694 * _2947;
    float2 _2949 = _2947 * _1695;
    float _2954 = _2948.x + _2948.y;
    float _2958 = _2954 * Material_Material_PreshaderBuffer[34].x;
    float _2962 = mad(_2949.x + _2949.y, Material_Material_PreshaderBuffer[34].x, Material_Material_PreshaderBuffer[34].y * _1993);
    float _2963 = floor(_2958);
    float2 _2982 = float2(min(max(_2872 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2983 = _1694 * _2982;
    float2 _2984 = _2982 * _1695;
    float _2989 = _2983.x + _2983.y;
    float _2993 = _2989 * Material_Material_PreshaderBuffer[34].w;
    float _2997 = mad(_2984.x + _2984.y, Material_Material_PreshaderBuffer[34].w, Material_Material_PreshaderBuffer[35].x * _1993);
    float _2998 = floor(_2993);
    float3 _3012 = _2844 + (((float3(_548, _548, sin(mad(mad(_2889, 6.283185482025146484375f, _2894 * (-6.283185482025146484375f)), 2097152.0f, mad(_2893, 6.283185482025146484375f, floor(mad(mad(_2885, Material_Material_PreshaderBuffer[32].z, -_2894), 2097152.0f, _2893)) * (-6.283185482025146484375f)))) * _2732) + float3(_548, _548, sin(mad(mad(_2922, 6.283185482025146484375f, _2927 * (-6.283185482025146484375f)), 2097152.0f, mad(_2926, 6.283185482025146484375f, floor(mad(mad(_2918, Material_Material_PreshaderBuffer[33].y, -_2927), 2097152.0f, _2926)) * (-6.283185482025146484375f)))) * _2766)) + float3(_548, _548, sin(mad(mad(_2958, 6.283185482025146484375f, _2963 * (-6.283185482025146484375f)), 2097152.0f, mad(_2962, 6.283185482025146484375f, floor(mad(mad(_2954, Material_Material_PreshaderBuffer[34].x, -_2963), 2097152.0f, _2962)) * (-6.283185482025146484375f)))) * _2803)) + float3(_548, _548, sin(mad(mad(_2993, 6.283185482025146484375f, _2998 * (-6.283185482025146484375f)), 2097152.0f, mad(_2997, 6.283185482025146484375f, floor(mad(mad(_2989, Material_Material_PreshaderBuffer[34].w, -_2998), 2097152.0f, _2997)) * (-6.283185482025146484375f)))) * _2839));
    float _3022 = (abs(Material_Material_PreshaderBuffer[35].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[35].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[35].y : Material_Material_PreshaderBuffer[35].z) : Material_Material_PreshaderBuffer[35].y;
    float _3030 = (abs(_3022 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3022 >= 1.0f) ? Material_Material_PreshaderBuffer[35].w : Material_Material_PreshaderBuffer[35].y) : Material_Material_PreshaderBuffer[35].y;
    float3 _3040 = float3(min(max((abs(_3030) > 9.9999997473787516355514526367188e-06f) ? ((_3030 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[37].x, 0.0f);
    float2 _3046 = float2(min(max(_3040 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3047 = _1694 * _3046;
    float2 _3048 = _3046 * _1695;
    float _3053 = _3047.x + _3047.y;
    float _3057 = _3053 * Material_Material_PreshaderBuffer[38].w;
    float _3061 = mad(_3048.x + _3048.y, Material_Material_PreshaderBuffer[38].w, Material_Material_PreshaderBuffer[39].x * _1993);
    float _3062 = floor(_3057);
    float2 _3079 = float2(min(max(_3040 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3080 = _1694 * _3079;
    float2 _3081 = _3079 * _1695;
    float _3086 = _3080.x + _3080.y;
    float _3090 = _3086 * Material_Material_PreshaderBuffer[39].z;
    float _3094 = mad(_3081.x + _3081.y, Material_Material_PreshaderBuffer[39].z, Material_Material_PreshaderBuffer[39].w * _1993);
    float _3095 = floor(_3090);
    float2 _3115 = float2(min(max(_3040 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3116 = _1694 * _3115;
    float2 _3117 = _3115 * _1695;
    float _3122 = _3116.x + _3116.y;
    float _3126 = _3122 * Material_Material_PreshaderBuffer[40].y;
    float _3130 = mad(_3117.x + _3117.y, Material_Material_PreshaderBuffer[40].y, Material_Material_PreshaderBuffer[40].z * _1993);
    float _3131 = floor(_3126);
    float2 _3150 = float2(min(max(_3040 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3151 = _1694 * _3150;
    float2 _3152 = _3150 * _1695;
    float _3157 = _3151.x + _3151.y;
    float _3161 = _3157 * Material_Material_PreshaderBuffer[41].x;
    float _3165 = mad(_3152.x + _3152.y, Material_Material_PreshaderBuffer[41].x, Material_Material_PreshaderBuffer[41].y * _1993);
    float _3166 = floor(_3161);
    float _3189 = (abs(Material_Material_PreshaderBuffer[41].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[41].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[41].z : Material_Material_PreshaderBuffer[41].w) : Material_Material_PreshaderBuffer[41].z;
    float _3197 = (abs(_3189 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3189 >= 1.0f) ? Material_Material_PreshaderBuffer[42].x : Material_Material_PreshaderBuffer[41].z) : Material_Material_PreshaderBuffer[41].z;
    float3 _3207 = float3(min(max((abs(_3197) > 9.9999997473787516355514526367188e-06f) ? ((_3197 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[43].y, 0.0f);
    float2 _3213 = float2(min(max(_3207 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3214 = _1694 * _3213;
    float2 _3215 = _3213 * _1695;
    float _3220 = _3214.x + _3214.y;
    float _3224 = _3220 * Material_Material_PreshaderBuffer[45].x;
    float _3228 = mad(_3215.x + _3215.y, Material_Material_PreshaderBuffer[45].x, Material_Material_PreshaderBuffer[45].y * _1993);
    float _3229 = floor(_3224);
    float2 _3246 = float2(min(max(_3207 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3247 = _1694 * _3246;
    float2 _3248 = _3246 * _1695;
    float _3253 = _3247.x + _3247.y;
    float _3257 = _3253 * Material_Material_PreshaderBuffer[45].w;
    float _3261 = mad(_3248.x + _3248.y, Material_Material_PreshaderBuffer[45].w, Material_Material_PreshaderBuffer[46].x * _1993);
    float _3262 = floor(_3257);
    float2 _3282 = float2(min(max(_3207 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3283 = _1694 * _3282;
    float2 _3284 = _3282 * _1695;
    float _3289 = _3283.x + _3283.y;
    float _3293 = _3289 * Material_Material_PreshaderBuffer[46].z;
    float _3297 = mad(_3284.x + _3284.y, Material_Material_PreshaderBuffer[46].z, Material_Material_PreshaderBuffer[46].w * _1993);
    float _3298 = floor(_3293);
    float2 _3317 = float2(min(max(_3207 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3318 = _1694 * _3317;
    float2 _3319 = _3317 * _1695;
    float _3324 = _3318.x + _3318.y;
    float _3328 = _3324 * Material_Material_PreshaderBuffer[47].y;
    float _3332 = mad(_3319.x + _3319.y, Material_Material_PreshaderBuffer[47].y, Material_Material_PreshaderBuffer[47].z * _1993);
    float _3333 = floor(_3328);
    float3 _3347 = (((float3(_548, _548, sin(mad(mad(_3057, 6.283185482025146484375f, _3062 * (-6.283185482025146484375f)), 2097152.0f, mad(_3061, 6.283185482025146484375f, floor(mad(mad(_3053, Material_Material_PreshaderBuffer[38].w, -_3062), 2097152.0f, _3061)) * (-6.283185482025146484375f)))) * _2554) + float3(_548, _548, sin(mad(mad(_3090, 6.283185482025146484375f, _3095 * (-6.283185482025146484375f)), 2097152.0f, mad(_3094, 6.283185482025146484375f, floor(mad(mad(_3086, Material_Material_PreshaderBuffer[39].z, -_3095), 2097152.0f, _3094)) * (-6.283185482025146484375f)))) * _2593)) + float3(_548, _548, sin(mad(mad(_3126, 6.283185482025146484375f, _3131 * (-6.283185482025146484375f)), 2097152.0f, mad(_3130, 6.283185482025146484375f, floor(mad(mad(_3122, Material_Material_PreshaderBuffer[40].y, -_3131), 2097152.0f, _3130)) * (-6.283185482025146484375f)))) * _2630)) + float3(_548, _548, sin(mad(mad(_3161, 6.283185482025146484375f, _3166 * (-6.283185482025146484375f)), 2097152.0f, mad(_3165, 6.283185482025146484375f, floor(mad(mad(_3157, Material_Material_PreshaderBuffer[41].x, -_3166), 2097152.0f, _3165)) * (-6.283185482025146484375f)))) * _2666)) + (((float3(_548, _548, sin(mad(mad(_3224, 6.283185482025146484375f, _3229 * (-6.283185482025146484375f)), 2097152.0f, mad(_3228, 6.283185482025146484375f, floor(mad(mad(_3220, Material_Material_PreshaderBuffer[45].x, -_3229), 2097152.0f, _3228)) * (-6.283185482025146484375f)))) * _2732) + float3(_548, _548, sin(mad(mad(_3257, 6.283185482025146484375f, _3262 * (-6.283185482025146484375f)), 2097152.0f, mad(_3261, 6.283185482025146484375f, floor(mad(mad(_3253, Material_Material_PreshaderBuffer[45].w, -_3262), 2097152.0f, _3261)) * (-6.283185482025146484375f)))) * _2766)) + float3(_548, _548, sin(mad(mad(_3293, 6.283185482025146484375f, _3298 * (-6.283185482025146484375f)), 2097152.0f, mad(_3297, 6.283185482025146484375f, floor(mad(mad(_3289, Material_Material_PreshaderBuffer[46].z, -_3298), 2097152.0f, _3297)) * (-6.283185482025146484375f)))) * _2803)) + float3(_548, _548, sin(mad(mad(_3328, 6.283185482025146484375f, _3333 * (-6.283185482025146484375f)), 2097152.0f, mad(_3332, 6.283185482025146484375f, floor(mad(mad(_3324, Material_Material_PreshaderBuffer[47].y, -_3333), 2097152.0f, _3332)) * (-6.283185482025146484375f)))) * _2839));
    float _3357 = (abs(Material_Material_PreshaderBuffer[47].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[47].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[47].w : Material_Material_PreshaderBuffer[48].x) : Material_Material_PreshaderBuffer[47].w;
    float _3365 = (abs(_3357 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3357 >= 1.0f) ? Material_Material_PreshaderBuffer[48].y : Material_Material_PreshaderBuffer[47].w) : Material_Material_PreshaderBuffer[47].w;
    float3 _3375 = float3(min(max((abs(_3365) > 9.9999997473787516355514526367188e-06f) ? ((_3365 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[49].z, 0.0f);
    float2 _3381 = float2(min(max(_3375 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3382 = _1694 * _3381;
    float2 _3383 = _3381 * _1695;
    float _3388 = _3382.x + _3382.y;
    float _3392 = _3388 * Material_Material_PreshaderBuffer[51].y;
    float _3396 = mad(_3383.x + _3383.y, Material_Material_PreshaderBuffer[51].y, Material_Material_PreshaderBuffer[51].z * _1993);
    float _3397 = floor(_3392);
    float2 _3414 = float2(min(max(_3375 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3415 = _1694 * _3414;
    float2 _3416 = _3414 * _1695;
    float _3421 = _3415.x + _3415.y;
    float _3425 = _3421 * Material_Material_PreshaderBuffer[52].x;
    float _3429 = mad(_3416.x + _3416.y, Material_Material_PreshaderBuffer[52].x, Material_Material_PreshaderBuffer[52].y * _1993);
    float _3430 = floor(_3425);
    float2 _3450 = float2(min(max(_3375 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3451 = _1694 * _3450;
    float2 _3452 = _3450 * _1695;
    float _3457 = _3451.x + _3451.y;
    float _3461 = _3457 * Material_Material_PreshaderBuffer[52].w;
    float _3465 = mad(_3452.x + _3452.y, Material_Material_PreshaderBuffer[52].w, Material_Material_PreshaderBuffer[53].x * _1993);
    float _3466 = floor(_3461);
    float2 _3485 = float2(min(max(_3375 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3486 = _1694 * _3485;
    float2 _3487 = _3485 * _1695;
    float _3492 = _3486.x + _3486.y;
    float _3496 = _3492 * Material_Material_PreshaderBuffer[53].z;
    float _3500 = mad(_3487.x + _3487.y, Material_Material_PreshaderBuffer[53].z, Material_Material_PreshaderBuffer[53].w * _1993);
    float _3501 = floor(_3496);
    float3 _3515 = _3347 + (((float3(_548, _548, sin(mad(mad(_3392, 6.283185482025146484375f, _3397 * (-6.283185482025146484375f)), 2097152.0f, mad(_3396, 6.283185482025146484375f, floor(mad(mad(_3388, Material_Material_PreshaderBuffer[51].y, -_3397), 2097152.0f, _3396)) * (-6.283185482025146484375f)))) * _2732) + float3(_548, _548, sin(mad(mad(_3425, 6.283185482025146484375f, _3430 * (-6.283185482025146484375f)), 2097152.0f, mad(_3429, 6.283185482025146484375f, floor(mad(mad(_3421, Material_Material_PreshaderBuffer[52].x, -_3430), 2097152.0f, _3429)) * (-6.283185482025146484375f)))) * _2766)) + float3(_548, _548, sin(mad(mad(_3461, 6.283185482025146484375f, _3466 * (-6.283185482025146484375f)), 2097152.0f, mad(_3465, 6.283185482025146484375f, floor(mad(mad(_3457, Material_Material_PreshaderBuffer[52].w, -_3466), 2097152.0f, _3465)) * (-6.283185482025146484375f)))) * _2803)) + float3(_548, _548, sin(mad(mad(_3496, 6.283185482025146484375f, _3501 * (-6.283185482025146484375f)), 2097152.0f, mad(_3500, 6.283185482025146484375f, floor(mad(mad(_3492, Material_Material_PreshaderBuffer[53].z, -_3501), 2097152.0f, _3500)) * (-6.283185482025146484375f)))) * _2839));
    float3 _3516 = _3012 + _3515;
    float _3529 = (abs(Material_Material_PreshaderBuffer[54].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[54].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[54].y : Material_Material_PreshaderBuffer[54].z) : Material_Material_PreshaderBuffer[54].y;
    float _3537 = (abs(_3529 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3529 >= 1.0f) ? Material_Material_PreshaderBuffer[54].w : Material_Material_PreshaderBuffer[54].y) : Material_Material_PreshaderBuffer[54].y;
    float3 _3547 = float3(min(max((abs(_3537) > 9.9999997473787516355514526367188e-06f) ? ((_3537 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[56].x, 0.0f);
    float2 _3553 = float2(min(max(_3547 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3554 = _1694 * _3553;
    float2 _3555 = _3553 * _1695;
    float _3560 = _3554.x + _3554.y;
    float _3561 = _3555.x + _3555.y;
    float _3564 = Material_Material_PreshaderBuffer[57].y * MaterialCollection0_MaterialCollection0_Vectors[0].y;
    float _3567 = Material_Material_PreshaderBuffer[57].z * _3564;
    float _3568 = 2.0f / _3567;
    float _3569 = _3560 * _3568;
    float3 _3575 = Material_Material_PreshaderBuffer[58].x.xxx;
    float3 _3580 = Material_Material_PreshaderBuffer[58].y.xxx;
    float3 _3581 = (View_View_ViewTilePosition * _3575) * _3580;
    float3 _3584 = (1.0f / MaterialCollection0_MaterialCollection0_Vectors[0].y).xxx;
    float3 _3585 = ((_3575 * _640) * _3580) * _3584;
    float2 _3592 = (_1159 * Material_Material_PreshaderBuffer[58].w).xx;
    float3 _3596 = float3(_3585.xy, (_3592 + _3585.z.xx).x);
    float3 _3607 = 0.0f.xxx;
    float _3612 = 0.0f;
    _3607 = ((mad(_3581, _3584, -floor(mad(_3581, _3584, (_3596 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _3596) * 1.0f;
    _3612 = 0.0f;
    float _3610 = 1.0f;
    uint _3614 = 0u;
    [loop]
    for (; _3614 < 6u; )
    {
        float3 _3618 = frac(_3607);
        float _3620 = dot(floor(_3607), float3(19.0f, 47.0f, 101.0f));
        uint3 _3632 = (uint3(int3(int(_3620), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3633 = _3632.y;
        uint _3634 = _3632.z;
        uint _3637 = _3632.x + (_3633 * _3634);
        uint _3639 = _3633 + (_3634 * _3637);
        uint3 _3644 = uint3(0u, 0u, 0u);
        _3644.x = _3637 + (_3639 * (_3634 + (_3637 * _3639)));
        uint3 _3645 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _3658 = (uint3(int3(int(_3620 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3659 = _3658.y;
        uint _3660 = _3658.z;
        uint _3663 = _3658.x + (_3659 * _3660);
        uint _3665 = _3659 + (_3660 * _3663);
        uint3 _3670 = uint3(0u, 0u, 0u);
        _3670.x = _3663 + (_3665 * (_3660 + (_3663 * _3665)));
        uint3 _3683 = (uint3(int3(int(_3620 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3684 = _3683.y;
        uint _3685 = _3683.z;
        uint _3688 = _3683.x + (_3684 * _3685);
        uint _3690 = _3684 + (_3685 * _3688);
        uint3 _3695 = uint3(0u, 0u, 0u);
        _3695.x = _3688 + (_3690 * (_3685 + (_3688 * _3690)));
        uint3 _3708 = (uint3(int3(int(_3620 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3709 = _3708.y;
        uint _3710 = _3708.z;
        uint _3713 = _3708.x + (_3709 * _3710);
        uint _3715 = _3709 + (_3710 * _3713);
        uint3 _3720 = uint3(0u, 0u, 0u);
        _3720.x = _3713 + (_3715 * (_3710 + (_3713 * _3715)));
        uint3 _3733 = (uint3(int3(int(_3620 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3734 = _3733.y;
        uint _3735 = _3733.z;
        uint _3738 = _3733.x + (_3734 * _3735);
        uint _3740 = _3734 + (_3735 * _3738);
        uint3 _3745 = uint3(0u, 0u, 0u);
        _3745.x = _3738 + (_3740 * (_3735 + (_3738 * _3740)));
        uint3 _3758 = (uint3(int3(int(_3620 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3759 = _3758.y;
        uint _3760 = _3758.z;
        uint _3763 = _3758.x + (_3759 * _3760);
        uint _3765 = _3759 + (_3760 * _3763);
        uint3 _3770 = uint3(0u, 0u, 0u);
        _3770.x = _3763 + (_3765 * (_3760 + (_3763 * _3765)));
        uint3 _3783 = (uint3(int3(int(_3620 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3784 = _3783.y;
        uint _3785 = _3783.z;
        uint _3788 = _3783.x + (_3784 * _3785);
        uint _3790 = _3784 + (_3785 * _3788);
        uint3 _3795 = uint3(0u, 0u, 0u);
        _3795.x = _3788 + (_3790 * (_3785 + (_3788 * _3790)));
        uint3 _3808 = (uint3(int3(int(_3620 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3809 = _3808.y;
        uint _3810 = _3808.z;
        uint _3813 = _3808.x + (_3809 * _3810);
        uint _3815 = _3809 + (_3810 * _3813);
        uint3 _3820 = uint3(0u, 0u, 0u);
        _3820.x = _3813 + (_3815 * (_3810 + (_3813 * _3815)));
        float4 _3831 = float4(_3618, 0.0f);
        float4 _3837 = ((_3831 * _3831) * _3831) * mad(_3831, (_3831 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _3838 = _3837.x;
        float _3841 = _3837.y;
        float _3613 = mad(lerp(lerp(lerp(dot(mad(float3((_3644 >> _3645).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3618), dot(mad(float3((_3670 >> _3645).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3618 - float3(1.0f, 0.0f, 0.0f)), _3838), lerp(dot(mad(float3((_3695 >> _3645).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3618 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_3720 >> _3645).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3618 - float3(1.0f, 1.0f, 0.0f)), _3838), _3841), lerp(lerp(dot(mad(float3((_3745 >> _3645).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3618 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_3770 >> _3645).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3618 - float3(1.0f, 0.0f, 1.0f)), _3838), lerp(dot(mad(float3((_3795 >> _3645).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3618 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_3820 >> _3645).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3618 - 1.0f.xxx), _3838), _3841), _3837.z), _3610, _3612);
        _3607 *= 2.0f;
        _3610 *= 0.5f;
        _3612 = _3613;
        _3614++;
        continue;
    }
    float _3851 = lerp(_1159, _1712, clamp(lerp(0.0f, 1.0f, mad(_3612, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _3853 = mad(_3561, _3568, (_3568 * Material_Material_PreshaderBuffer[57].w) * _3851);
    float _3854 = floor(_3569);
    float _3866 = Material_Material_PreshaderBuffer[59].x * MaterialCollection0_MaterialCollection0_Vectors[0].y;
    float _3871 = mad(Material_Material_PreshaderBuffer[59].x, MaterialCollection0_MaterialCollection0_Vectors[0].y, -(Material_Material_PreshaderBuffer[59].y * MaterialCollection0_MaterialCollection0_Vectors[0].y));
    float3 _3874 = Material_Material_PreshaderBuffer[59].z.xxx;
    float3 _3879 = Material_Material_PreshaderBuffer[59].w.xxx;
    float3 _3880 = (View_View_ViewTilePosition * _3874) * _3879;
    float3 _3882 = ((_3874 * _640) * _3879) * _3584;
    float2 _3889 = (_1159 * Material_Material_PreshaderBuffer[60].y).xx;
    float3 _3893 = float3(_3882.xy, (_3889 + _3882.z.xx).x);
    float3 _3904 = 0.0f.xxx;
    float _3909 = 0.0f;
    _3904 = ((mad(_3880, _3584, -floor(mad(_3880, _3584, (_3893 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _3893) * 1.0f;
    _3909 = 0.0f;
    float _3907 = 1.0f;
    uint _3911 = 0u;
    [loop]
    for (; _3911 < 10u; )
    {
        float3 _3915 = frac(_3904);
        float _3917 = dot(floor(_3904), float3(19.0f, 47.0f, 101.0f));
        uint3 _3929 = (uint3(int3(int(_3917), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3930 = _3929.y;
        uint _3931 = _3929.z;
        uint _3934 = _3929.x + (_3930 * _3931);
        uint _3936 = _3930 + (_3931 * _3934);
        uint3 _3941 = uint3(0u, 0u, 0u);
        _3941.x = _3934 + (_3936 * (_3931 + (_3934 * _3936)));
        uint3 _3942 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _3955 = (uint3(int3(int(_3917 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3956 = _3955.y;
        uint _3957 = _3955.z;
        uint _3960 = _3955.x + (_3956 * _3957);
        uint _3962 = _3956 + (_3957 * _3960);
        uint3 _3967 = uint3(0u, 0u, 0u);
        _3967.x = _3960 + (_3962 * (_3957 + (_3960 * _3962)));
        uint3 _3980 = (uint3(int3(int(_3917 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3981 = _3980.y;
        uint _3982 = _3980.z;
        uint _3985 = _3980.x + (_3981 * _3982);
        uint _3987 = _3981 + (_3982 * _3985);
        uint3 _3992 = uint3(0u, 0u, 0u);
        _3992.x = _3985 + (_3987 * (_3982 + (_3985 * _3987)));
        uint3 _4005 = (uint3(int3(int(_3917 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4006 = _4005.y;
        uint _4007 = _4005.z;
        uint _4010 = _4005.x + (_4006 * _4007);
        uint _4012 = _4006 + (_4007 * _4010);
        uint3 _4017 = uint3(0u, 0u, 0u);
        _4017.x = _4010 + (_4012 * (_4007 + (_4010 * _4012)));
        uint3 _4030 = (uint3(int3(int(_3917 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4031 = _4030.y;
        uint _4032 = _4030.z;
        uint _4035 = _4030.x + (_4031 * _4032);
        uint _4037 = _4031 + (_4032 * _4035);
        uint3 _4042 = uint3(0u, 0u, 0u);
        _4042.x = _4035 + (_4037 * (_4032 + (_4035 * _4037)));
        uint3 _4055 = (uint3(int3(int(_3917 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4056 = _4055.y;
        uint _4057 = _4055.z;
        uint _4060 = _4055.x + (_4056 * _4057);
        uint _4062 = _4056 + (_4057 * _4060);
        uint3 _4067 = uint3(0u, 0u, 0u);
        _4067.x = _4060 + (_4062 * (_4057 + (_4060 * _4062)));
        uint3 _4080 = (uint3(int3(int(_3917 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4081 = _4080.y;
        uint _4082 = _4080.z;
        uint _4085 = _4080.x + (_4081 * _4082);
        uint _4087 = _4081 + (_4082 * _4085);
        uint3 _4092 = uint3(0u, 0u, 0u);
        _4092.x = _4085 + (_4087 * (_4082 + (_4085 * _4087)));
        uint3 _4105 = (uint3(int3(int(_3917 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4106 = _4105.y;
        uint _4107 = _4105.z;
        uint _4110 = _4105.x + (_4106 * _4107);
        uint _4112 = _4106 + (_4107 * _4110);
        uint3 _4117 = uint3(0u, 0u, 0u);
        _4117.x = _4110 + (_4112 * (_4107 + (_4110 * _4112)));
        float4 _4128 = float4(_3915, 0.0f);
        float4 _4134 = ((_4128 * _4128) * _4128) * mad(_4128, (_4128 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _4135 = _4134.x;
        float _4138 = _4134.y;
        float _4145 = abs(lerp(lerp(lerp(dot(mad(float3((_3941 >> _3942).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3915), dot(mad(float3((_3967 >> _3942).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3915 - float3(1.0f, 0.0f, 0.0f)), _4135), lerp(dot(mad(float3((_3992 >> _3942).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3915 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_4017 >> _3942).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3915 - float3(1.0f, 1.0f, 0.0f)), _4135), _4138), lerp(lerp(dot(mad(float3((_4042 >> _3942).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3915 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_4067 >> _3942).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3915 - float3(1.0f, 0.0f, 1.0f)), _4135), lerp(dot(mad(float3((_4092 >> _3942).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3915 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_4117 >> _3942).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3915 - 1.0f.xxx), _4135), _4138), _4134.z));
        float _3910 = mad(_4145, _3907, _3909);
        _3904 *= 2.0f;
        _3907 *= 0.5f;
        _3909 = _3910;
        _3911++;
        continue;
    }
    float3 _4149 = Material_Material_PreshaderBuffer[60].z.xxx;
    float3 _4154 = Material_Material_PreshaderBuffer[60].w.xxx;
    float3 _4155 = (View_View_ViewTilePosition * _4149) * _4154;
    float3 _4157 = ((_4149 * _640) * _4154) * _3584;
    float2 _4164 = (_1159 * Material_Material_PreshaderBuffer[61].y).xx;
    float3 _4168 = float3(_4157.xy, (_4164 + _4157.z.xx).x);
    float3 _4179 = 0.0f.xxx;
    float _4184 = 0.0f;
    _4179 = ((mad(_4155, _3584, -floor(mad(_4155, _3584, (_4168 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _4168) * 1.0f;
    _4184 = 0.0f;
    float _4182 = 1.0f;
    uint _4186 = 0u;
    [loop]
    for (; _4186 < 10u; )
    {
        float3 _4190 = frac(_4179);
        float _4192 = dot(floor(_4179), float3(19.0f, 47.0f, 101.0f));
        uint3 _4204 = (uint3(int3(int(_4192), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4205 = _4204.y;
        uint _4206 = _4204.z;
        uint _4209 = _4204.x + (_4205 * _4206);
        uint _4211 = _4205 + (_4206 * _4209);
        uint3 _4216 = uint3(0u, 0u, 0u);
        _4216.x = _4209 + (_4211 * (_4206 + (_4209 * _4211)));
        uint3 _4217 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _4230 = (uint3(int3(int(_4192 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4231 = _4230.y;
        uint _4232 = _4230.z;
        uint _4235 = _4230.x + (_4231 * _4232);
        uint _4237 = _4231 + (_4232 * _4235);
        uint3 _4242 = uint3(0u, 0u, 0u);
        _4242.x = _4235 + (_4237 * (_4232 + (_4235 * _4237)));
        uint3 _4255 = (uint3(int3(int(_4192 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4256 = _4255.y;
        uint _4257 = _4255.z;
        uint _4260 = _4255.x + (_4256 * _4257);
        uint _4262 = _4256 + (_4257 * _4260);
        uint3 _4267 = uint3(0u, 0u, 0u);
        _4267.x = _4260 + (_4262 * (_4257 + (_4260 * _4262)));
        uint3 _4280 = (uint3(int3(int(_4192 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4281 = _4280.y;
        uint _4282 = _4280.z;
        uint _4285 = _4280.x + (_4281 * _4282);
        uint _4287 = _4281 + (_4282 * _4285);
        uint3 _4292 = uint3(0u, 0u, 0u);
        _4292.x = _4285 + (_4287 * (_4282 + (_4285 * _4287)));
        uint3 _4305 = (uint3(int3(int(_4192 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4306 = _4305.y;
        uint _4307 = _4305.z;
        uint _4310 = _4305.x + (_4306 * _4307);
        uint _4312 = _4306 + (_4307 * _4310);
        uint3 _4317 = uint3(0u, 0u, 0u);
        _4317.x = _4310 + (_4312 * (_4307 + (_4310 * _4312)));
        uint3 _4330 = (uint3(int3(int(_4192 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4331 = _4330.y;
        uint _4332 = _4330.z;
        uint _4335 = _4330.x + (_4331 * _4332);
        uint _4337 = _4331 + (_4332 * _4335);
        uint3 _4342 = uint3(0u, 0u, 0u);
        _4342.x = _4335 + (_4337 * (_4332 + (_4335 * _4337)));
        uint3 _4355 = (uint3(int3(int(_4192 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4356 = _4355.y;
        uint _4357 = _4355.z;
        uint _4360 = _4355.x + (_4356 * _4357);
        uint _4362 = _4356 + (_4357 * _4360);
        uint3 _4367 = uint3(0u, 0u, 0u);
        _4367.x = _4360 + (_4362 * (_4357 + (_4360 * _4362)));
        uint3 _4380 = (uint3(int3(int(_4192 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4381 = _4380.y;
        uint _4382 = _4380.z;
        uint _4385 = _4380.x + (_4381 * _4382);
        uint _4387 = _4381 + (_4382 * _4385);
        uint3 _4392 = uint3(0u, 0u, 0u);
        _4392.x = _4385 + (_4387 * (_4382 + (_4385 * _4387)));
        float4 _4403 = float4(_4190, 0.0f);
        float4 _4409 = ((_4403 * _4403) * _4403) * mad(_4403, (_4403 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _4410 = _4409.x;
        float _4413 = _4409.y;
        float _4420 = abs(lerp(lerp(lerp(dot(mad(float3((_4216 >> _4217).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4190), dot(mad(float3((_4242 >> _4217).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4190 - float3(1.0f, 0.0f, 0.0f)), _4410), lerp(dot(mad(float3((_4267 >> _4217).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4190 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_4292 >> _4217).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4190 - float3(1.0f, 1.0f, 0.0f)), _4410), _4413), lerp(lerp(dot(mad(float3((_4317 >> _4217).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4190 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_4342 >> _4217).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4190 - float3(1.0f, 0.0f, 1.0f)), _4410), lerp(dot(mad(float3((_4367 >> _4217).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4190 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_4392 >> _4217).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4190 - 1.0f.xxx), _4410), _4413), _4409.z));
        float _4185 = mad(_4420, _4182, _4184);
        _4179 *= 2.0f;
        _4182 *= 0.5f;
        _4184 = _4185;
        _4186++;
        continue;
    }
    float _4428 = lerp(_3866, _3871, lerp(0.0f, 1.0f, _3909) * mad(lerp(0.0f, 1.0f, _4184), Material_Material_PreshaderBuffer[61].w, Material_Material_PreshaderBuffer[61].z));
    float2 _4436 = float2(min(max(_3547 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4437 = _1694 * _4436;
    float2 _4438 = _4436 * _1695;
    float _4443 = _4437.x + _4437.y;
    float _4444 = _4438.x + _4438.y;
    float _4447 = _3567 * Material_Material_PreshaderBuffer[15].w;
    float _4448 = 2.0f / _4447;
    float _4449 = _4443 * _4448;
    float _4454 = mad(_4444, _4448, (_4448 * Material_Material_PreshaderBuffer[62].y) * _3851);
    float _4455 = floor(_4449);
    float _4465 = _4428 * Material_Material_PreshaderBuffer[17].z;
    float2 _4476 = float2(min(max(_3547 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4477 = _1694 * _4476;
    float2 _4478 = _4476 * _1695;
    float _4483 = _4477.x + _4477.y;
    float _4484 = _4478.x + _4478.y;
    float _4485 = _4447 * Material_Material_PreshaderBuffer[15].w;
    float _4486 = 2.0f / _4485;
    float _4487 = _4483 * _4486;
    float _4492 = mad(_4484, _4486, (_4486 * Material_Material_PreshaderBuffer[62].w) * _3851);
    float _4493 = floor(_4487);
    float _4503 = _4465 * Material_Material_PreshaderBuffer[17].z;
    float2 _4513 = float2(min(max(_3547 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4514 = _1694 * _4513;
    float2 _4515 = _4513 * _1695;
    float _4520 = _4514.x + _4514.y;
    float _4521 = _4515.x + _4515.y;
    float _4523 = 2.0f / (_4485 * Material_Material_PreshaderBuffer[15].w);
    float _4524 = _4520 * _4523;
    float _4529 = mad(_4521, _4523, (_4523 * Material_Material_PreshaderBuffer[63].y) * _3851);
    float _4530 = floor(_4524);
    float _4554 = (abs(Material_Material_PreshaderBuffer[64].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[64].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[64].x : Material_Material_PreshaderBuffer[64].y) : Material_Material_PreshaderBuffer[64].x;
    float _4562 = (abs(_4554 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_4554 >= 1.0f) ? Material_Material_PreshaderBuffer[64].z : Material_Material_PreshaderBuffer[64].x) : Material_Material_PreshaderBuffer[64].x;
    float3 _4572 = float3(min(max((abs(_4562) > 9.9999997473787516355514526367188e-06f) ? ((_4562 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[65].w, 0.0f);
    float2 _4578 = float2(min(max(_4572 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4579 = _1694 * _4578;
    float2 _4580 = _4578 * _1695;
    float _4585 = _4579.x + _4579.y;
    float _4586 = _4580.x + _4580.y;
    float _4589 = _3564 * Material_Material_PreshaderBuffer[23].w;
    float _4592 = Material_Material_PreshaderBuffer[67].x * _4589;
    float _4593 = 2.0f / _4592;
    float _4594 = _4585 * _4593;
    float _4599 = mad(_4586, _4593, (_4593 * Material_Material_PreshaderBuffer[67].y) * _3851);
    float _4600 = floor(_4594);
    float _4610 = _4428 * Material_Material_PreshaderBuffer[25].w;
    float2 _4618 = float2(min(max(_4572 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4619 = _1694 * _4618;
    float2 _4620 = _4618 * _1695;
    float _4625 = _4619.x + _4619.y;
    float _4626 = _4620.x + _4620.y;
    float _4627 = _4592 * Material_Material_PreshaderBuffer[15].w;
    float _4628 = 2.0f / _4627;
    float _4629 = _4625 * _4628;
    float _4634 = mad(_4626, _4628, (_4628 * Material_Material_PreshaderBuffer[67].z) * _3851);
    float _4635 = floor(_4629);
    float _4645 = _4610 * Material_Material_PreshaderBuffer[17].z;
    float2 _4656 = float2(min(max(_4572 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4657 = _1694 * _4656;
    float2 _4658 = _4656 * _1695;
    float _4663 = _4657.x + _4657.y;
    float _4664 = _4658.x + _4658.y;
    float _4665 = _4627 * Material_Material_PreshaderBuffer[15].w;
    float _4666 = 2.0f / _4665;
    float _4667 = _4663 * _4666;
    float _4672 = mad(_4664, _4666, (_4666 * Material_Material_PreshaderBuffer[67].w) * _3851);
    float _4673 = floor(_4667);
    float _4683 = _4645 * Material_Material_PreshaderBuffer[17].z;
    float2 _4693 = float2(min(max(_4572 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4694 = _1694 * _4693;
    float2 _4695 = _4693 * _1695;
    float _4700 = _4694.x + _4694.y;
    float _4701 = _4695.x + _4695.y;
    float _4703 = 2.0f / (_4665 * Material_Material_PreshaderBuffer[15].w);
    float _4704 = _4700 * _4703;
    float _4709 = mad(_4701, _4703, (_4703 * Material_Material_PreshaderBuffer[68].x) * _3851);
    float _4710 = floor(_4704);
    float _4720 = _4683 * Material_Material_PreshaderBuffer[17].z;
    float3 _4725 = (((float3(_548, _548, sin(mad(mad(_3569, 6.283185482025146484375f, _3854 * (-6.283185482025146484375f)), 2097152.0f, mad(_3853, 6.283185482025146484375f, floor(mad(mad(_3560, _3568, -_3854), 2097152.0f, _3853)) * (-6.283185482025146484375f)))) * _4428) + float3(_548, _548, sin(mad(mad(_4449, 6.283185482025146484375f, _4455 * (-6.283185482025146484375f)), 2097152.0f, mad(_4454, 6.283185482025146484375f, floor(mad(mad(_4443, _4448, -_4455), 2097152.0f, _4454)) * (-6.283185482025146484375f)))) * _4465)) + float3(_548, _548, sin(mad(mad(_4487, 6.283185482025146484375f, _4493 * (-6.283185482025146484375f)), 2097152.0f, mad(_4492, 6.283185482025146484375f, floor(mad(mad(_4483, _4486, -_4493), 2097152.0f, _4492)) * (-6.283185482025146484375f)))) * _4503)) + float3(_548, _548, sin(mad(mad(_4524, 6.283185482025146484375f, _4530 * (-6.283185482025146484375f)), 2097152.0f, mad(_4529, 6.283185482025146484375f, floor(mad(mad(_4520, _4523, -_4530), 2097152.0f, _4529)) * (-6.283185482025146484375f)))) * (_4503 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_548, _548, sin(mad(mad(_4594, 6.283185482025146484375f, _4600 * (-6.283185482025146484375f)), 2097152.0f, mad(_4599, 6.283185482025146484375f, floor(mad(mad(_4585, _4593, -_4600), 2097152.0f, _4599)) * (-6.283185482025146484375f)))) * _4610) + float3(_548, _548, sin(mad(mad(_4629, 6.283185482025146484375f, _4635 * (-6.283185482025146484375f)), 2097152.0f, mad(_4634, 6.283185482025146484375f, floor(mad(mad(_4625, _4628, -_4635), 2097152.0f, _4634)) * (-6.283185482025146484375f)))) * _4645)) + float3(_548, _548, sin(mad(mad(_4667, 6.283185482025146484375f, _4673 * (-6.283185482025146484375f)), 2097152.0f, mad(_4672, 6.283185482025146484375f, floor(mad(mad(_4663, _4666, -_4673), 2097152.0f, _4672)) * (-6.283185482025146484375f)))) * _4683)) + float3(_548, _548, sin(mad(mad(_4704, 6.283185482025146484375f, _4710 * (-6.283185482025146484375f)), 2097152.0f, mad(_4709, 6.283185482025146484375f, floor(mad(mad(_4700, _4703, -_4710), 2097152.0f, _4709)) * (-6.283185482025146484375f)))) * _4720));
    float _4735 = (abs(Material_Material_PreshaderBuffer[68].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[68].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[68].y : Material_Material_PreshaderBuffer[68].z) : Material_Material_PreshaderBuffer[68].y;
    float _4743 = (abs(_4735 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_4735 >= 1.0f) ? Material_Material_PreshaderBuffer[68].w : Material_Material_PreshaderBuffer[68].y) : Material_Material_PreshaderBuffer[68].y;
    float3 _4753 = float3(min(max((abs(_4743) > 9.9999997473787516355514526367188e-06f) ? ((_4743 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[70].x, 0.0f);
    float2 _4759 = float2(min(max(_4753 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4760 = _1694 * _4759;
    float2 _4761 = _4759 * _1695;
    float _4766 = _4760.x + _4760.y;
    float _4767 = _4761.x + _4761.y;
    float _4770 = Material_Material_PreshaderBuffer[71].y * _4589;
    float _4771 = 2.0f / _4770;
    float _4772 = _4766 * _4771;
    float _4775 = mad(_4767, _4771, (_4771 * Material_Material_PreshaderBuffer[67].y) * _3851);
    float _4776 = floor(_4772);
    float2 _4793 = float2(min(max(_4753 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4794 = _1694 * _4793;
    float2 _4795 = _4793 * _1695;
    float _4800 = _4794.x + _4794.y;
    float _4801 = _4795.x + _4795.y;
    float _4802 = _4770 * Material_Material_PreshaderBuffer[15].w;
    float _4803 = 2.0f / _4802;
    float _4804 = _4800 * _4803;
    float _4807 = mad(_4801, _4803, (_4803 * Material_Material_PreshaderBuffer[67].z) * _3851);
    float _4808 = floor(_4804);
    float2 _4828 = float2(min(max(_4753 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4829 = _1694 * _4828;
    float2 _4830 = _4828 * _1695;
    float _4835 = _4829.x + _4829.y;
    float _4836 = _4830.x + _4830.y;
    float _4837 = _4802 * Material_Material_PreshaderBuffer[15].w;
    float _4838 = 2.0f / _4837;
    float _4839 = _4835 * _4838;
    float _4842 = mad(_4836, _4838, (_4838 * Material_Material_PreshaderBuffer[67].w) * _3851);
    float _4843 = floor(_4839);
    float2 _4862 = float2(min(max(_4753 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4863 = _1694 * _4862;
    float2 _4864 = _4862 * _1695;
    float _4869 = _4863.x + _4863.y;
    float _4870 = _4864.x + _4864.y;
    float _4872 = 2.0f / (_4837 * Material_Material_PreshaderBuffer[15].w);
    float _4873 = _4869 * _4872;
    float _4876 = mad(_4870, _4872, (_4872 * Material_Material_PreshaderBuffer[68].x) * _3851);
    float _4877 = floor(_4873);
    float3 _4891 = _4725 + (((float3(_548, _548, sin(mad(mad(_4772, 6.283185482025146484375f, _4776 * (-6.283185482025146484375f)), 2097152.0f, mad(_4775, 6.283185482025146484375f, floor(mad(mad(_4766, _4771, -_4776), 2097152.0f, _4775)) * (-6.283185482025146484375f)))) * _4610) + float3(_548, _548, sin(mad(mad(_4804, 6.283185482025146484375f, _4808 * (-6.283185482025146484375f)), 2097152.0f, mad(_4807, 6.283185482025146484375f, floor(mad(mad(_4800, _4803, -_4808), 2097152.0f, _4807)) * (-6.283185482025146484375f)))) * _4645)) + float3(_548, _548, sin(mad(mad(_4839, 6.283185482025146484375f, _4843 * (-6.283185482025146484375f)), 2097152.0f, mad(_4842, 6.283185482025146484375f, floor(mad(mad(_4835, _4838, -_4843), 2097152.0f, _4842)) * (-6.283185482025146484375f)))) * _4683)) + float3(_548, _548, sin(mad(mad(_4873, 6.283185482025146484375f, _4877 * (-6.283185482025146484375f)), 2097152.0f, mad(_4876, 6.283185482025146484375f, floor(mad(mad(_4869, _4872, -_4877), 2097152.0f, _4876)) * (-6.283185482025146484375f)))) * _4720));
    float _4892 = _3564 * 0.800000011920928955078125f;
    float _4893 = Material_Material_PreshaderBuffer[57].z * _4892;
    float _4894 = 2.0f / _4893;
    float _4895 = _3560 * _4894;
    float _4900 = mad(_3561, _4894, (_4894 * Material_Material_PreshaderBuffer[71].z) * _3851);
    float _4901 = floor(_4895);
    float _4911 = _4428 * 0.800000011920928955078125f;
    float _4914 = _4893 * Material_Material_PreshaderBuffer[15].w;
    float _4915 = 2.0f / _4914;
    float _4916 = _4443 * _4915;
    float _4921 = mad(_4444, _4915, (_4915 * Material_Material_PreshaderBuffer[71].w) * _3851);
    float _4922 = floor(_4916);
    float _4932 = _4911 * Material_Material_PreshaderBuffer[17].z;
    float _4938 = _4914 * Material_Material_PreshaderBuffer[15].w;
    float _4939 = 2.0f / _4938;
    float _4940 = _4483 * _4939;
    float _4945 = mad(_4484, _4939, (_4939 * Material_Material_PreshaderBuffer[72].x) * _3851);
    float _4946 = floor(_4940);
    float _4956 = _4932 * Material_Material_PreshaderBuffer[17].z;
    float _4962 = 2.0f / (_4938 * Material_Material_PreshaderBuffer[15].w);
    float _4963 = _4520 * _4962;
    float _4968 = mad(_4521, _4962, (_4962 * Material_Material_PreshaderBuffer[72].y) * _3851);
    float _4969 = floor(_4963);
    float _4979 = _4956 * Material_Material_PreshaderBuffer[17].z;
    float _4984 = _4892 * Material_Material_PreshaderBuffer[23].w;
    float _4985 = Material_Material_PreshaderBuffer[67].x * _4984;
    float _4986 = 2.0f / _4985;
    float _4987 = _4585 * _4986;
    float _4992 = mad(_4586, _4986, (_4986 * Material_Material_PreshaderBuffer[72].z) * _3851);
    float _4993 = floor(_4987);
    float _5003 = _4911 * Material_Material_PreshaderBuffer[25].w;
    float _5006 = _4985 * Material_Material_PreshaderBuffer[15].w;
    float _5007 = 2.0f / _5006;
    float _5008 = _4625 * _5007;
    float _5013 = mad(_4626, _5007, (_5007 * Material_Material_PreshaderBuffer[72].w) * _3851);
    float _5014 = floor(_5008);
    float _5024 = _5003 * Material_Material_PreshaderBuffer[17].z;
    float _5030 = _5006 * Material_Material_PreshaderBuffer[15].w;
    float _5031 = 2.0f / _5030;
    float _5032 = _4663 * _5031;
    float _5037 = mad(_4664, _5031, (_5031 * Material_Material_PreshaderBuffer[73].x) * _3851);
    float _5038 = floor(_5032);
    float _5048 = _5024 * Material_Material_PreshaderBuffer[17].z;
    float _5054 = 2.0f / (_5030 * Material_Material_PreshaderBuffer[15].w);
    float _5055 = _4700 * _5054;
    float _5060 = mad(_4701, _5054, (_5054 * Material_Material_PreshaderBuffer[73].y) * _3851);
    float _5061 = floor(_5055);
    float _5071 = _5048 * Material_Material_PreshaderBuffer[17].z;
    float3 _5076 = (((float3(_548, _548, sin(mad(mad(_4895, 6.283185482025146484375f, _4901 * (-6.283185482025146484375f)), 2097152.0f, mad(_4900, 6.283185482025146484375f, floor(mad(mad(_3560, _4894, -_4901), 2097152.0f, _4900)) * (-6.283185482025146484375f)))) * _4911) + float3(_548, _548, sin(mad(mad(_4916, 6.283185482025146484375f, _4922 * (-6.283185482025146484375f)), 2097152.0f, mad(_4921, 6.283185482025146484375f, floor(mad(mad(_4443, _4915, -_4922), 2097152.0f, _4921)) * (-6.283185482025146484375f)))) * _4932)) + float3(_548, _548, sin(mad(mad(_4940, 6.283185482025146484375f, _4946 * (-6.283185482025146484375f)), 2097152.0f, mad(_4945, 6.283185482025146484375f, floor(mad(mad(_4483, _4939, -_4946), 2097152.0f, _4945)) * (-6.283185482025146484375f)))) * _4956)) + float3(_548, _548, sin(mad(mad(_4963, 6.283185482025146484375f, _4969 * (-6.283185482025146484375f)), 2097152.0f, mad(_4968, 6.283185482025146484375f, floor(mad(mad(_4520, _4962, -_4969), 2097152.0f, _4968)) * (-6.283185482025146484375f)))) * _4979)) + (((float3(_548, _548, sin(mad(mad(_4987, 6.283185482025146484375f, _4993 * (-6.283185482025146484375f)), 2097152.0f, mad(_4992, 6.283185482025146484375f, floor(mad(mad(_4585, _4986, -_4993), 2097152.0f, _4992)) * (-6.283185482025146484375f)))) * _5003) + float3(_548, _548, sin(mad(mad(_5008, 6.283185482025146484375f, _5014 * (-6.283185482025146484375f)), 2097152.0f, mad(_5013, 6.283185482025146484375f, floor(mad(mad(_4625, _5007, -_5014), 2097152.0f, _5013)) * (-6.283185482025146484375f)))) * _5024)) + float3(_548, _548, sin(mad(mad(_5032, 6.283185482025146484375f, _5038 * (-6.283185482025146484375f)), 2097152.0f, mad(_5037, 6.283185482025146484375f, floor(mad(mad(_4663, _5031, -_5038), 2097152.0f, _5037)) * (-6.283185482025146484375f)))) * _5048)) + float3(_548, _548, sin(mad(mad(_5055, 6.283185482025146484375f, _5061 * (-6.283185482025146484375f)), 2097152.0f, mad(_5060, 6.283185482025146484375f, floor(mad(mad(_4700, _5054, -_5061), 2097152.0f, _5060)) * (-6.283185482025146484375f)))) * _5071));
    float _5077 = Material_Material_PreshaderBuffer[71].y * _4984;
    float _5078 = 2.0f / _5077;
    float _5079 = _4766 * _5078;
    float _5082 = mad(_4767, _5078, (_5078 * Material_Material_PreshaderBuffer[72].z) * _3851);
    float _5083 = floor(_5079);
    float _5095 = _5077 * Material_Material_PreshaderBuffer[15].w;
    float _5096 = 2.0f / _5095;
    float _5097 = _4800 * _5096;
    float _5100 = mad(_4801, _5096, (_5096 * Material_Material_PreshaderBuffer[72].w) * _3851);
    float _5101 = floor(_5097);
    float _5116 = _5095 * Material_Material_PreshaderBuffer[15].w;
    float _5117 = 2.0f / _5116;
    float _5118 = _4835 * _5117;
    float _5121 = mad(_4836, _5117, (_5117 * Material_Material_PreshaderBuffer[73].x) * _3851);
    float _5122 = floor(_5118);
    float _5137 = 2.0f / (_5116 * Material_Material_PreshaderBuffer[15].w);
    float _5138 = _4869 * _5137;
    float _5141 = mad(_4870, _5137, (_5137 * Material_Material_PreshaderBuffer[73].y) * _3851);
    float _5142 = floor(_5138);
    float3 _5156 = _5076 + (((float3(_548, _548, sin(mad(mad(_5079, 6.283185482025146484375f, _5083 * (-6.283185482025146484375f)), 2097152.0f, mad(_5082, 6.283185482025146484375f, floor(mad(mad(_4766, _5078, -_5083), 2097152.0f, _5082)) * (-6.283185482025146484375f)))) * _5003) + float3(_548, _548, sin(mad(mad(_5097, 6.283185482025146484375f, _5101 * (-6.283185482025146484375f)), 2097152.0f, mad(_5100, 6.283185482025146484375f, floor(mad(mad(_4800, _5096, -_5101), 2097152.0f, _5100)) * (-6.283185482025146484375f)))) * _5024)) + float3(_548, _548, sin(mad(mad(_5118, 6.283185482025146484375f, _5122 * (-6.283185482025146484375f)), 2097152.0f, mad(_5121, 6.283185482025146484375f, floor(mad(mad(_4835, _5117, -_5122), 2097152.0f, _5121)) * (-6.283185482025146484375f)))) * _5048)) + float3(_548, _548, sin(mad(mad(_5138, 6.283185482025146484375f, _5142 * (-6.283185482025146484375f)), 2097152.0f, mad(_5141, 6.283185482025146484375f, floor(mad(mad(_4869, _5137, -_5142), 2097152.0f, _5141)) * (-6.283185482025146484375f)))) * _5071));
    float _5157 = _3564 * 4.0f;
    float _5158 = Material_Material_PreshaderBuffer[57].z * _5157;
    float _5159 = 2.0f / _5158;
    float _5160 = _3560 * _5159;
    float _5165 = mad(_3561, _5159, (_5159 * Material_Material_PreshaderBuffer[73].z) * _3851);
    float _5166 = floor(_5160);
    float _5178 = _5158 * Material_Material_PreshaderBuffer[15].w;
    float _5179 = 2.0f / _5178;
    float _5180 = _4443 * _5179;
    float _5185 = mad(_4444, _5179, (_5179 * Material_Material_PreshaderBuffer[73].w) * _3851);
    float _5186 = floor(_5180);
    float _5201 = _5178 * Material_Material_PreshaderBuffer[15].w;
    float _5202 = 2.0f / _5201;
    float _5203 = _4483 * _5202;
    float _5208 = mad(_4484, _5202, (_5202 * Material_Material_PreshaderBuffer[74].x) * _3851);
    float _5209 = floor(_5203);
    float _5224 = 2.0f / (_5201 * Material_Material_PreshaderBuffer[15].w);
    float _5225 = _4520 * _5224;
    float _5230 = mad(_4521, _5224, (_5224 * Material_Material_PreshaderBuffer[74].y) * _3851);
    float _5231 = floor(_5225);
    float _5245 = _5157 * Material_Material_PreshaderBuffer[23].w;
    float _5246 = Material_Material_PreshaderBuffer[67].x * _5245;
    float _5247 = 2.0f / _5246;
    float _5248 = _4585 * _5247;
    float _5253 = mad(_4586, _5247, (_5247 * Material_Material_PreshaderBuffer[74].z) * _3851);
    float _5254 = floor(_5248);
    float _5266 = _5246 * Material_Material_PreshaderBuffer[15].w;
    float _5267 = 2.0f / _5266;
    float _5268 = _4625 * _5267;
    float _5273 = mad(_4626, _5267, (_5267 * Material_Material_PreshaderBuffer[74].w) * _3851);
    float _5274 = floor(_5268);
    float _5289 = _5266 * Material_Material_PreshaderBuffer[15].w;
    float _5290 = 2.0f / _5289;
    float _5291 = _4663 * _5290;
    float _5296 = mad(_4664, _5290, (_5290 * Material_Material_PreshaderBuffer[75].x) * _3851);
    float _5297 = floor(_5291);
    float _5312 = 2.0f / (_5289 * Material_Material_PreshaderBuffer[15].w);
    float _5313 = _4700 * _5312;
    float _5318 = mad(_4701, _5312, (_5312 * Material_Material_PreshaderBuffer[75].y) * _3851);
    float _5319 = floor(_5313);
    float3 _5333 = (((float3(_548, _548, sin(mad(mad(_5160, 6.283185482025146484375f, _5166 * (-6.283185482025146484375f)), 2097152.0f, mad(_5165, 6.283185482025146484375f, floor(mad(mad(_3560, _5159, -_5166), 2097152.0f, _5165)) * (-6.283185482025146484375f)))) * _4911) + float3(_548, _548, sin(mad(mad(_5180, 6.283185482025146484375f, _5186 * (-6.283185482025146484375f)), 2097152.0f, mad(_5185, 6.283185482025146484375f, floor(mad(mad(_4443, _5179, -_5186), 2097152.0f, _5185)) * (-6.283185482025146484375f)))) * _4932)) + float3(_548, _548, sin(mad(mad(_5203, 6.283185482025146484375f, _5209 * (-6.283185482025146484375f)), 2097152.0f, mad(_5208, 6.283185482025146484375f, floor(mad(mad(_4483, _5202, -_5209), 2097152.0f, _5208)) * (-6.283185482025146484375f)))) * _4956)) + float3(_548, _548, sin(mad(mad(_5225, 6.283185482025146484375f, _5231 * (-6.283185482025146484375f)), 2097152.0f, mad(_5230, 6.283185482025146484375f, floor(mad(mad(_4520, _5224, -_5231), 2097152.0f, _5230)) * (-6.283185482025146484375f)))) * _4979)) + (((float3(_548, _548, sin(mad(mad(_5248, 6.283185482025146484375f, _5254 * (-6.283185482025146484375f)), 2097152.0f, mad(_5253, 6.283185482025146484375f, floor(mad(mad(_4585, _5247, -_5254), 2097152.0f, _5253)) * (-6.283185482025146484375f)))) * _5003) + float3(_548, _548, sin(mad(mad(_5268, 6.283185482025146484375f, _5274 * (-6.283185482025146484375f)), 2097152.0f, mad(_5273, 6.283185482025146484375f, floor(mad(mad(_4625, _5267, -_5274), 2097152.0f, _5273)) * (-6.283185482025146484375f)))) * _5024)) + float3(_548, _548, sin(mad(mad(_5291, 6.283185482025146484375f, _5297 * (-6.283185482025146484375f)), 2097152.0f, mad(_5296, 6.283185482025146484375f, floor(mad(mad(_4663, _5290, -_5297), 2097152.0f, _5296)) * (-6.283185482025146484375f)))) * _5048)) + float3(_548, _548, sin(mad(mad(_5313, 6.283185482025146484375f, _5319 * (-6.283185482025146484375f)), 2097152.0f, mad(_5318, 6.283185482025146484375f, floor(mad(mad(_4700, _5312, -_5319), 2097152.0f, _5318)) * (-6.283185482025146484375f)))) * _5071));
    float _5334 = Material_Material_PreshaderBuffer[71].y * _5245;
    float _5335 = 2.0f / _5334;
    float _5336 = _4766 * _5335;
    float _5339 = mad(_4767, _5335, (_5335 * Material_Material_PreshaderBuffer[74].z) * _3851);
    float _5340 = floor(_5336);
    float _5352 = _5334 * Material_Material_PreshaderBuffer[15].w;
    float _5353 = 2.0f / _5352;
    float _5354 = _4800 * _5353;
    float _5357 = mad(_4801, _5353, (_5353 * Material_Material_PreshaderBuffer[74].w) * _3851);
    float _5358 = floor(_5354);
    float _5373 = _5352 * Material_Material_PreshaderBuffer[15].w;
    float _5374 = 2.0f / _5373;
    float _5375 = _4835 * _5374;
    float _5378 = mad(_4836, _5374, (_5374 * Material_Material_PreshaderBuffer[75].x) * _3851);
    float _5379 = floor(_5375);
    float _5394 = 2.0f / (_5373 * Material_Material_PreshaderBuffer[15].w);
    float _5395 = _4869 * _5394;
    float _5398 = mad(_4870, _5394, (_5394 * Material_Material_PreshaderBuffer[75].y) * _3851);
    float _5399 = floor(_5395);
    float3 _5413 = _5333 + (((float3(_548, _548, sin(mad(mad(_5336, 6.283185482025146484375f, _5340 * (-6.283185482025146484375f)), 2097152.0f, mad(_5339, 6.283185482025146484375f, floor(mad(mad(_4766, _5335, -_5340), 2097152.0f, _5339)) * (-6.283185482025146484375f)))) * _5003) + float3(_548, _548, sin(mad(mad(_5354, 6.283185482025146484375f, _5358 * (-6.283185482025146484375f)), 2097152.0f, mad(_5357, 6.283185482025146484375f, floor(mad(mad(_4800, _5353, -_5358), 2097152.0f, _5357)) * (-6.283185482025146484375f)))) * _5024)) + float3(_548, _548, sin(mad(mad(_5375, 6.283185482025146484375f, _5379 * (-6.283185482025146484375f)), 2097152.0f, mad(_5378, 6.283185482025146484375f, floor(mad(mad(_4835, _5374, -_5379), 2097152.0f, _5378)) * (-6.283185482025146484375f)))) * _5048)) + float3(_548, _548, sin(mad(mad(_5395, 6.283185482025146484375f, _5399 * (-6.283185482025146484375f)), 2097152.0f, mad(_5398, 6.283185482025146484375f, floor(mad(mad(_4869, _5394, -_5399), 2097152.0f, _5398)) * (-6.283185482025146484375f)))) * _5071));
    float _5414 = _3564 * 0.75f;
    float _5415 = Material_Material_PreshaderBuffer[57].z * _5414;
    float _5416 = 2.0f / _5415;
    float _5417 = _3560 * _5416;
    float _5420 = mad(_3561, _5416, (_5416 * Material_Material_PreshaderBuffer[71].z) * _3851);
    float _5421 = floor(_5417);
    float _5431 = _4428 * 0.5f;
    float _5434 = _5415 * Material_Material_PreshaderBuffer[15].w;
    float _5435 = 2.0f / _5434;
    float _5436 = _4443 * _5435;
    float _5439 = mad(_4444, _5435, (_5435 * Material_Material_PreshaderBuffer[71].w) * _3851);
    float _5440 = floor(_5436);
    float _5450 = _5431 * Material_Material_PreshaderBuffer[17].z;
    float _5456 = _5434 * Material_Material_PreshaderBuffer[15].w;
    float _5457 = 2.0f / _5456;
    float _5458 = _4483 * _5457;
    float _5461 = mad(_4484, _5457, (_5457 * Material_Material_PreshaderBuffer[72].x) * _3851);
    float _5462 = floor(_5458);
    float _5472 = _5450 * Material_Material_PreshaderBuffer[17].z;
    float _5478 = 2.0f / (_5456 * Material_Material_PreshaderBuffer[15].w);
    float _5479 = _4520 * _5478;
    float _5482 = mad(_4521, _5478, (_5478 * Material_Material_PreshaderBuffer[72].y) * _3851);
    float _5483 = floor(_5479);
    float _5498 = _5414 * Material_Material_PreshaderBuffer[23].w;
    float _5499 = Material_Material_PreshaderBuffer[67].x * _5498;
    float _5500 = 2.0f / _5499;
    float _5501 = _4585 * _5500;
    float _5504 = mad(_4586, _5500, (_5500 * Material_Material_PreshaderBuffer[72].z) * _3851);
    float _5505 = floor(_5501);
    float _5515 = _5431 * Material_Material_PreshaderBuffer[25].w;
    float _5518 = _5499 * Material_Material_PreshaderBuffer[15].w;
    float _5519 = 2.0f / _5518;
    float _5520 = _4625 * _5519;
    float _5523 = mad(_4626, _5519, (_5519 * Material_Material_PreshaderBuffer[72].w) * _3851);
    float _5524 = floor(_5520);
    float _5534 = _5515 * Material_Material_PreshaderBuffer[17].z;
    float _5540 = _5518 * Material_Material_PreshaderBuffer[15].w;
    float _5541 = 2.0f / _5540;
    float _5542 = _4663 * _5541;
    float _5545 = mad(_4664, _5541, (_5541 * Material_Material_PreshaderBuffer[73].x) * _3851);
    float _5546 = floor(_5542);
    float _5556 = _5534 * Material_Material_PreshaderBuffer[17].z;
    float _5562 = 2.0f / (_5540 * Material_Material_PreshaderBuffer[15].w);
    float _5563 = _4700 * _5562;
    float _5566 = mad(_4701, _5562, (_5562 * Material_Material_PreshaderBuffer[73].y) * _3851);
    float _5567 = floor(_5563);
    float _5577 = _5556 * Material_Material_PreshaderBuffer[17].z;
    float3 _5582 = (((float3(_548, _548, sin(mad(mad(_5417, 6.283185482025146484375f, _5421 * (-6.283185482025146484375f)), 2097152.0f, mad(_5420, 6.283185482025146484375f, floor(mad(mad(_3560, _5416, -_5421), 2097152.0f, _5420)) * (-6.283185482025146484375f)))) * _5431) + float3(_548, _548, sin(mad(mad(_5436, 6.283185482025146484375f, _5440 * (-6.283185482025146484375f)), 2097152.0f, mad(_5439, 6.283185482025146484375f, floor(mad(mad(_4443, _5435, -_5440), 2097152.0f, _5439)) * (-6.283185482025146484375f)))) * _5450)) + float3(_548, _548, sin(mad(mad(_5458, 6.283185482025146484375f, _5462 * (-6.283185482025146484375f)), 2097152.0f, mad(_5461, 6.283185482025146484375f, floor(mad(mad(_4483, _5457, -_5462), 2097152.0f, _5461)) * (-6.283185482025146484375f)))) * _5472)) + float3(_548, _548, sin(mad(mad(_5479, 6.283185482025146484375f, _5483 * (-6.283185482025146484375f)), 2097152.0f, mad(_5482, 6.283185482025146484375f, floor(mad(mad(_4520, _5478, -_5483), 2097152.0f, _5482)) * (-6.283185482025146484375f)))) * (_5472 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_548, _548, sin(mad(mad(_5501, 6.283185482025146484375f, _5505 * (-6.283185482025146484375f)), 2097152.0f, mad(_5504, 6.283185482025146484375f, floor(mad(mad(_4585, _5500, -_5505), 2097152.0f, _5504)) * (-6.283185482025146484375f)))) * _5515) + float3(_548, _548, sin(mad(mad(_5520, 6.283185482025146484375f, _5524 * (-6.283185482025146484375f)), 2097152.0f, mad(_5523, 6.283185482025146484375f, floor(mad(mad(_4625, _5519, -_5524), 2097152.0f, _5523)) * (-6.283185482025146484375f)))) * _5534)) + float3(_548, _548, sin(mad(mad(_5542, 6.283185482025146484375f, _5546 * (-6.283185482025146484375f)), 2097152.0f, mad(_5545, 6.283185482025146484375f, floor(mad(mad(_4663, _5541, -_5546), 2097152.0f, _5545)) * (-6.283185482025146484375f)))) * _5556)) + float3(_548, _548, sin(mad(mad(_5563, 6.283185482025146484375f, _5567 * (-6.283185482025146484375f)), 2097152.0f, mad(_5566, 6.283185482025146484375f, floor(mad(mad(_4700, _5562, -_5567), 2097152.0f, _5566)) * (-6.283185482025146484375f)))) * _5577));
    float _5583 = Material_Material_PreshaderBuffer[71].y * _5498;
    float _5584 = 2.0f / _5583;
    float _5585 = _4766 * _5584;
    float _5588 = mad(_4767, _5584, (_5584 * Material_Material_PreshaderBuffer[72].z) * _3851);
    float _5589 = floor(_5585);
    float _5601 = _5583 * Material_Material_PreshaderBuffer[15].w;
    float _5602 = 2.0f / _5601;
    float _5603 = _4800 * _5602;
    float _5606 = mad(_4801, _5602, (_5602 * Material_Material_PreshaderBuffer[72].w) * _3851);
    float _5607 = floor(_5603);
    float _5622 = _5601 * Material_Material_PreshaderBuffer[15].w;
    float _5623 = 2.0f / _5622;
    float _5624 = _4835 * _5623;
    float _5627 = mad(_4836, _5623, (_5623 * Material_Material_PreshaderBuffer[73].x) * _3851);
    float _5628 = floor(_5624);
    float _5643 = 2.0f / (_5622 * Material_Material_PreshaderBuffer[15].w);
    float _5644 = _4869 * _5643;
    float _5647 = mad(_4870, _5643, (_5643 * Material_Material_PreshaderBuffer[73].y) * _3851);
    float _5648 = floor(_5644);
    float3 _5662 = _5582 + (((float3(_548, _548, sin(mad(mad(_5585, 6.283185482025146484375f, _5589 * (-6.283185482025146484375f)), 2097152.0f, mad(_5588, 6.283185482025146484375f, floor(mad(mad(_4766, _5584, -_5589), 2097152.0f, _5588)) * (-6.283185482025146484375f)))) * _5515) + float3(_548, _548, sin(mad(mad(_5603, 6.283185482025146484375f, _5607 * (-6.283185482025146484375f)), 2097152.0f, mad(_5606, 6.283185482025146484375f, floor(mad(mad(_4800, _5602, -_5607), 2097152.0f, _5606)) * (-6.283185482025146484375f)))) * _5534)) + float3(_548, _548, sin(mad(mad(_5624, 6.283185482025146484375f, _5628 * (-6.283185482025146484375f)), 2097152.0f, mad(_5627, 6.283185482025146484375f, floor(mad(mad(_4835, _5623, -_5628), 2097152.0f, _5627)) * (-6.283185482025146484375f)))) * _5556)) + float3(_548, _548, sin(mad(mad(_5644, 6.283185482025146484375f, _5648 * (-6.283185482025146484375f)), 2097152.0f, mad(_5647, 6.283185482025146484375f, floor(mad(mad(_4869, _5643, -_5648), 2097152.0f, _5647)) * (-6.283185482025146484375f)))) * _5577));
    float _5675 = (abs(Material_Material_PreshaderBuffer[75].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[75].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[75].z : Material_Material_PreshaderBuffer[75].w) : Material_Material_PreshaderBuffer[75].z;
    float _5683 = (abs(_5675 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_5675 >= 1.0f) ? Material_Material_PreshaderBuffer[76].x : Material_Material_PreshaderBuffer[75].z) : Material_Material_PreshaderBuffer[75].z;
    float3 _5693 = float3(min(max((abs(_5683) > 9.9999997473787516355514526367188e-06f) ? ((_5683 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[77].y, 0.0f);
    float2 _5699 = float2(min(max(_5693 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _5700 = _1694 * _5699;
    float2 _5701 = _5699 * _1695;
    float _5706 = _5700.x + _5700.y;
    float _5707 = _5701.x + _5701.y;
    float _5710 = Material_Material_PreshaderBuffer[78].z * _3564;
    float _5711 = 2.0f / _5710;
    float _5712 = _5706 * _5711;
    float3 _5715 = View_View_ViewTilePosition * _3584;
    float3 _5716 = (_640 + 10000.0f.xxx) * _3584;
    float3 _5717 = _5715 * _3575;
    float3 _5719 = (_3575 * _5716) * _3580;
    float3 _5726 = float3(_5719.xy, (_3592 + _5719.z.xx).x);
    float3 _5737 = 0.0f.xxx;
    float _5742 = 0.0f;
    _5737 = ((mad(_5717, _3580, -floor(mad(_5717, _3580, (_5726 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _5726) * 1.0f;
    _5742 = 0.0f;
    float _5740 = 1.0f;
    uint _5744 = 0u;
    [loop]
    for (; _5744 < 6u; )
    {
        float3 _5748 = frac(_5737);
        float _5750 = dot(floor(_5737), float3(19.0f, 47.0f, 101.0f));
        uint3 _5762 = (uint3(int3(int(_5750), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5763 = _5762.y;
        uint _5764 = _5762.z;
        uint _5767 = _5762.x + (_5763 * _5764);
        uint _5769 = _5763 + (_5764 * _5767);
        uint3 _5774 = uint3(0u, 0u, 0u);
        _5774.x = _5767 + (_5769 * (_5764 + (_5767 * _5769)));
        uint3 _5775 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _5788 = (uint3(int3(int(_5750 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5789 = _5788.y;
        uint _5790 = _5788.z;
        uint _5793 = _5788.x + (_5789 * _5790);
        uint _5795 = _5789 + (_5790 * _5793);
        uint3 _5800 = uint3(0u, 0u, 0u);
        _5800.x = _5793 + (_5795 * (_5790 + (_5793 * _5795)));
        uint3 _5813 = (uint3(int3(int(_5750 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5814 = _5813.y;
        uint _5815 = _5813.z;
        uint _5818 = _5813.x + (_5814 * _5815);
        uint _5820 = _5814 + (_5815 * _5818);
        uint3 _5825 = uint3(0u, 0u, 0u);
        _5825.x = _5818 + (_5820 * (_5815 + (_5818 * _5820)));
        uint3 _5838 = (uint3(int3(int(_5750 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5839 = _5838.y;
        uint _5840 = _5838.z;
        uint _5843 = _5838.x + (_5839 * _5840);
        uint _5845 = _5839 + (_5840 * _5843);
        uint3 _5850 = uint3(0u, 0u, 0u);
        _5850.x = _5843 + (_5845 * (_5840 + (_5843 * _5845)));
        uint3 _5863 = (uint3(int3(int(_5750 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5864 = _5863.y;
        uint _5865 = _5863.z;
        uint _5868 = _5863.x + (_5864 * _5865);
        uint _5870 = _5864 + (_5865 * _5868);
        uint3 _5875 = uint3(0u, 0u, 0u);
        _5875.x = _5868 + (_5870 * (_5865 + (_5868 * _5870)));
        uint3 _5888 = (uint3(int3(int(_5750 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5889 = _5888.y;
        uint _5890 = _5888.z;
        uint _5893 = _5888.x + (_5889 * _5890);
        uint _5895 = _5889 + (_5890 * _5893);
        uint3 _5900 = uint3(0u, 0u, 0u);
        _5900.x = _5893 + (_5895 * (_5890 + (_5893 * _5895)));
        uint3 _5913 = (uint3(int3(int(_5750 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5914 = _5913.y;
        uint _5915 = _5913.z;
        uint _5918 = _5913.x + (_5914 * _5915);
        uint _5920 = _5914 + (_5915 * _5918);
        uint3 _5925 = uint3(0u, 0u, 0u);
        _5925.x = _5918 + (_5920 * (_5915 + (_5918 * _5920)));
        uint3 _5938 = (uint3(int3(int(_5750 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5939 = _5938.y;
        uint _5940 = _5938.z;
        uint _5943 = _5938.x + (_5939 * _5940);
        uint _5945 = _5939 + (_5940 * _5943);
        uint3 _5950 = uint3(0u, 0u, 0u);
        _5950.x = _5943 + (_5945 * (_5940 + (_5943 * _5945)));
        float4 _5961 = float4(_5748, 0.0f);
        float4 _5967 = ((_5961 * _5961) * _5961) * mad(_5961, (_5961 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _5968 = _5967.x;
        float _5971 = _5967.y;
        float _5743 = mad(lerp(lerp(lerp(dot(mad(float3((_5774 >> _5775).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5748), dot(mad(float3((_5800 >> _5775).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5748 - float3(1.0f, 0.0f, 0.0f)), _5968), lerp(dot(mad(float3((_5825 >> _5775).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5748 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_5850 >> _5775).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5748 - float3(1.0f, 1.0f, 0.0f)), _5968), _5971), lerp(lerp(dot(mad(float3((_5875 >> _5775).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5748 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_5900 >> _5775).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5748 - float3(1.0f, 0.0f, 1.0f)), _5968), lerp(dot(mad(float3((_5925 >> _5775).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5748 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_5950 >> _5775).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5748 - 1.0f.xxx), _5968), _5971), _5967.z), _5740, _5742);
        _5737 *= 2.0f;
        _5740 *= 0.5f;
        _5742 = _5743;
        _5744++;
        continue;
    }
    float _5981 = lerp(_1159, _1712, clamp(lerp(0.0f, 1.0f, mad(_5742, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _5983 = mad(_5707, _5711, (_5711 * Material_Material_PreshaderBuffer[57].w) * _5981);
    float _5984 = floor(_5712);
    float3 _5994 = _5715 * _3874;
    float3 _5996 = (_3874 * _5716) * _3879;
    float3 _6003 = float3(_5996.xy, (_3889 + _5996.z.xx).x);
    float3 _6014 = 0.0f.xxx;
    float _6019 = 0.0f;
    _6014 = ((mad(_5994, _3879, -floor(mad(_5994, _3879, (_6003 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _6003) * 1.0f;
    _6019 = 0.0f;
    float _6017 = 1.0f;
    uint _6021 = 0u;
    [loop]
    for (; _6021 < 10u; )
    {
        float3 _6025 = frac(_6014);
        float _6027 = dot(floor(_6014), float3(19.0f, 47.0f, 101.0f));
        uint3 _6039 = (uint3(int3(int(_6027), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6040 = _6039.y;
        uint _6041 = _6039.z;
        uint _6044 = _6039.x + (_6040 * _6041);
        uint _6046 = _6040 + (_6041 * _6044);
        uint3 _6051 = uint3(0u, 0u, 0u);
        _6051.x = _6044 + (_6046 * (_6041 + (_6044 * _6046)));
        uint3 _6052 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _6065 = (uint3(int3(int(_6027 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6066 = _6065.y;
        uint _6067 = _6065.z;
        uint _6070 = _6065.x + (_6066 * _6067);
        uint _6072 = _6066 + (_6067 * _6070);
        uint3 _6077 = uint3(0u, 0u, 0u);
        _6077.x = _6070 + (_6072 * (_6067 + (_6070 * _6072)));
        uint3 _6090 = (uint3(int3(int(_6027 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6091 = _6090.y;
        uint _6092 = _6090.z;
        uint _6095 = _6090.x + (_6091 * _6092);
        uint _6097 = _6091 + (_6092 * _6095);
        uint3 _6102 = uint3(0u, 0u, 0u);
        _6102.x = _6095 + (_6097 * (_6092 + (_6095 * _6097)));
        uint3 _6115 = (uint3(int3(int(_6027 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6116 = _6115.y;
        uint _6117 = _6115.z;
        uint _6120 = _6115.x + (_6116 * _6117);
        uint _6122 = _6116 + (_6117 * _6120);
        uint3 _6127 = uint3(0u, 0u, 0u);
        _6127.x = _6120 + (_6122 * (_6117 + (_6120 * _6122)));
        uint3 _6140 = (uint3(int3(int(_6027 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6141 = _6140.y;
        uint _6142 = _6140.z;
        uint _6145 = _6140.x + (_6141 * _6142);
        uint _6147 = _6141 + (_6142 * _6145);
        uint3 _6152 = uint3(0u, 0u, 0u);
        _6152.x = _6145 + (_6147 * (_6142 + (_6145 * _6147)));
        uint3 _6165 = (uint3(int3(int(_6027 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6166 = _6165.y;
        uint _6167 = _6165.z;
        uint _6170 = _6165.x + (_6166 * _6167);
        uint _6172 = _6166 + (_6167 * _6170);
        uint3 _6177 = uint3(0u, 0u, 0u);
        _6177.x = _6170 + (_6172 * (_6167 + (_6170 * _6172)));
        uint3 _6190 = (uint3(int3(int(_6027 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6191 = _6190.y;
        uint _6192 = _6190.z;
        uint _6195 = _6190.x + (_6191 * _6192);
        uint _6197 = _6191 + (_6192 * _6195);
        uint3 _6202 = uint3(0u, 0u, 0u);
        _6202.x = _6195 + (_6197 * (_6192 + (_6195 * _6197)));
        uint3 _6215 = (uint3(int3(int(_6027 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6216 = _6215.y;
        uint _6217 = _6215.z;
        uint _6220 = _6215.x + (_6216 * _6217);
        uint _6222 = _6216 + (_6217 * _6220);
        uint3 _6227 = uint3(0u, 0u, 0u);
        _6227.x = _6220 + (_6222 * (_6217 + (_6220 * _6222)));
        float4 _6238 = float4(_6025, 0.0f);
        float4 _6244 = ((_6238 * _6238) * _6238) * mad(_6238, (_6238 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _6245 = _6244.x;
        float _6248 = _6244.y;
        float _6255 = abs(lerp(lerp(lerp(dot(mad(float3((_6051 >> _6052).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6025), dot(mad(float3((_6077 >> _6052).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6025 - float3(1.0f, 0.0f, 0.0f)), _6245), lerp(dot(mad(float3((_6102 >> _6052).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6025 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_6127 >> _6052).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6025 - float3(1.0f, 1.0f, 0.0f)), _6245), _6248), lerp(lerp(dot(mad(float3((_6152 >> _6052).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6025 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_6177 >> _6052).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6025 - float3(1.0f, 0.0f, 1.0f)), _6245), lerp(dot(mad(float3((_6202 >> _6052).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6025 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_6227 >> _6052).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6025 - 1.0f.xxx), _6245), _6248), _6244.z));
        float _6020 = mad(_6255, _6017, _6019);
        _6014 *= 2.0f;
        _6017 *= 0.5f;
        _6019 = _6020;
        _6021++;
        continue;
    }
    float3 _6257 = _5715 * _4149;
    float3 _6259 = (_4149 * _5716) * _4154;
    float3 _6266 = float3(_6259.xy, (_4164 + _6259.z.xx).x);
    float3 _6277 = 0.0f.xxx;
    float _6282 = 0.0f;
    _6277 = ((mad(_6257, _4154, -floor(mad(_6257, _4154, (_6266 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _6266) * 1.0f;
    _6282 = 0.0f;
    float _6280 = 1.0f;
    uint _6284 = 0u;
    [loop]
    for (; _6284 < 10u; )
    {
        float3 _6288 = frac(_6277);
        float _6290 = dot(floor(_6277), float3(19.0f, 47.0f, 101.0f));
        uint3 _6302 = (uint3(int3(int(_6290), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6303 = _6302.y;
        uint _6304 = _6302.z;
        uint _6307 = _6302.x + (_6303 * _6304);
        uint _6309 = _6303 + (_6304 * _6307);
        uint3 _6314 = uint3(0u, 0u, 0u);
        _6314.x = _6307 + (_6309 * (_6304 + (_6307 * _6309)));
        uint3 _6315 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _6328 = (uint3(int3(int(_6290 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6329 = _6328.y;
        uint _6330 = _6328.z;
        uint _6333 = _6328.x + (_6329 * _6330);
        uint _6335 = _6329 + (_6330 * _6333);
        uint3 _6340 = uint3(0u, 0u, 0u);
        _6340.x = _6333 + (_6335 * (_6330 + (_6333 * _6335)));
        uint3 _6353 = (uint3(int3(int(_6290 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6354 = _6353.y;
        uint _6355 = _6353.z;
        uint _6358 = _6353.x + (_6354 * _6355);
        uint _6360 = _6354 + (_6355 * _6358);
        uint3 _6365 = uint3(0u, 0u, 0u);
        _6365.x = _6358 + (_6360 * (_6355 + (_6358 * _6360)));
        uint3 _6378 = (uint3(int3(int(_6290 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6379 = _6378.y;
        uint _6380 = _6378.z;
        uint _6383 = _6378.x + (_6379 * _6380);
        uint _6385 = _6379 + (_6380 * _6383);
        uint3 _6390 = uint3(0u, 0u, 0u);
        _6390.x = _6383 + (_6385 * (_6380 + (_6383 * _6385)));
        uint3 _6403 = (uint3(int3(int(_6290 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6404 = _6403.y;
        uint _6405 = _6403.z;
        uint _6408 = _6403.x + (_6404 * _6405);
        uint _6410 = _6404 + (_6405 * _6408);
        uint3 _6415 = uint3(0u, 0u, 0u);
        _6415.x = _6408 + (_6410 * (_6405 + (_6408 * _6410)));
        uint3 _6428 = (uint3(int3(int(_6290 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6429 = _6428.y;
        uint _6430 = _6428.z;
        uint _6433 = _6428.x + (_6429 * _6430);
        uint _6435 = _6429 + (_6430 * _6433);
        uint3 _6440 = uint3(0u, 0u, 0u);
        _6440.x = _6433 + (_6435 * (_6430 + (_6433 * _6435)));
        uint3 _6453 = (uint3(int3(int(_6290 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6454 = _6453.y;
        uint _6455 = _6453.z;
        uint _6458 = _6453.x + (_6454 * _6455);
        uint _6460 = _6454 + (_6455 * _6458);
        uint3 _6465 = uint3(0u, 0u, 0u);
        _6465.x = _6458 + (_6460 * (_6455 + (_6458 * _6460)));
        uint3 _6478 = (uint3(int3(int(_6290 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6479 = _6478.y;
        uint _6480 = _6478.z;
        uint _6483 = _6478.x + (_6479 * _6480);
        uint _6485 = _6479 + (_6480 * _6483);
        uint3 _6490 = uint3(0u, 0u, 0u);
        _6490.x = _6483 + (_6485 * (_6480 + (_6483 * _6485)));
        float4 _6501 = float4(_6288, 0.0f);
        float4 _6507 = ((_6501 * _6501) * _6501) * mad(_6501, (_6501 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _6508 = _6507.x;
        float _6511 = _6507.y;
        float _6518 = abs(lerp(lerp(lerp(dot(mad(float3((_6314 >> _6315).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6288), dot(mad(float3((_6340 >> _6315).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6288 - float3(1.0f, 0.0f, 0.0f)), _6508), lerp(dot(mad(float3((_6365 >> _6315).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6288 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_6390 >> _6315).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6288 - float3(1.0f, 1.0f, 0.0f)), _6508), _6511), lerp(lerp(dot(mad(float3((_6415 >> _6315).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6288 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_6440 >> _6315).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6288 - float3(1.0f, 0.0f, 1.0f)), _6508), lerp(dot(mad(float3((_6465 >> _6315).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6288 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_6490 >> _6315).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6288 - 1.0f.xxx), _6508), _6511), _6507.z));
        float _6283 = mad(_6518, _6280, _6282);
        _6277 *= 2.0f;
        _6280 *= 0.5f;
        _6282 = _6283;
        _6284++;
        continue;
    }
    float _6522 = lerp(_3866, _3871, lerp(0.0f, 1.0f, _6019) * mad(lerp(0.0f, 1.0f, _6282), Material_Material_PreshaderBuffer[61].w, Material_Material_PreshaderBuffer[61].z));
    float2 _6530 = float2(min(max(_5693 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6531 = _1694 * _6530;
    float2 _6532 = _6530 * _1695;
    float _6537 = _6531.x + _6531.y;
    float _6538 = _6532.x + _6532.y;
    float _6539 = _5710 * Material_Material_PreshaderBuffer[15].w;
    float _6540 = 2.0f / _6539;
    float _6541 = _6537 * _6540;
    float _6544 = mad(_6538, _6540, (_6540 * Material_Material_PreshaderBuffer[62].y) * _5981);
    float _6545 = floor(_6541);
    float _6555 = _6522 * Material_Material_PreshaderBuffer[17].z;
    float2 _6566 = float2(min(max(_5693 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6567 = _1694 * _6566;
    float2 _6568 = _6566 * _1695;
    float _6573 = _6567.x + _6567.y;
    float _6574 = _6568.x + _6568.y;
    float _6575 = _6539 * Material_Material_PreshaderBuffer[15].w;
    float _6576 = 2.0f / _6575;
    float _6577 = _6573 * _6576;
    float _6580 = mad(_6574, _6576, (_6576 * Material_Material_PreshaderBuffer[62].w) * _5981);
    float _6581 = floor(_6577);
    float _6591 = _6555 * Material_Material_PreshaderBuffer[17].z;
    float2 _6601 = float2(min(max(_5693 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6602 = _1694 * _6601;
    float2 _6603 = _6601 * _1695;
    float _6608 = _6602.x + _6602.y;
    float _6609 = _6603.x + _6603.y;
    float _6611 = 2.0f / (_6575 * Material_Material_PreshaderBuffer[15].w);
    float _6612 = _6608 * _6611;
    float _6615 = mad(_6609, _6611, (_6611 * Material_Material_PreshaderBuffer[63].y) * _5981);
    float _6616 = floor(_6612);
    float _6640 = (abs(Material_Material_PreshaderBuffer[78].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[78].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[78].w : Material_Material_PreshaderBuffer[79].x) : Material_Material_PreshaderBuffer[78].w;
    float _6648 = (abs(_6640 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_6640 >= 1.0f) ? Material_Material_PreshaderBuffer[79].y : Material_Material_PreshaderBuffer[78].w) : Material_Material_PreshaderBuffer[78].w;
    float3 _6658 = float3(min(max((abs(_6648) > 9.9999997473787516355514526367188e-06f) ? ((_6648 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[80].z, 0.0f);
    float2 _6664 = float2(min(max(_6658 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6665 = _1694 * _6664;
    float2 _6666 = _6664 * _1695;
    float _6671 = _6665.x + _6665.y;
    float _6672 = _6666.x + _6666.y;
    float _6675 = Material_Material_PreshaderBuffer[81].w * _4589;
    float _6676 = 2.0f / _6675;
    float _6677 = _6671 * _6676;
    float _6680 = mad(_6672, _6676, (_6676 * Material_Material_PreshaderBuffer[67].y) * _5981);
    float _6681 = floor(_6677);
    float _6691 = _6522 * Material_Material_PreshaderBuffer[25].w;
    float2 _6699 = float2(min(max(_6658 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6700 = _1694 * _6699;
    float2 _6701 = _6699 * _1695;
    float _6706 = _6700.x + _6700.y;
    float _6707 = _6701.x + _6701.y;
    float _6708 = _6675 * Material_Material_PreshaderBuffer[15].w;
    float _6709 = 2.0f / _6708;
    float _6710 = _6706 * _6709;
    float _6713 = mad(_6707, _6709, (_6709 * Material_Material_PreshaderBuffer[67].z) * _5981);
    float _6714 = floor(_6710);
    float _6724 = _6691 * Material_Material_PreshaderBuffer[17].z;
    float2 _6735 = float2(min(max(_6658 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6736 = _1694 * _6735;
    float2 _6737 = _6735 * _1695;
    float _6742 = _6736.x + _6736.y;
    float _6743 = _6737.x + _6737.y;
    float _6744 = _6708 * Material_Material_PreshaderBuffer[15].w;
    float _6745 = 2.0f / _6744;
    float _6746 = _6742 * _6745;
    float _6749 = mad(_6743, _6745, (_6745 * Material_Material_PreshaderBuffer[67].w) * _5981);
    float _6750 = floor(_6746);
    float _6760 = _6724 * Material_Material_PreshaderBuffer[17].z;
    float2 _6770 = float2(min(max(_6658 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6771 = _1694 * _6770;
    float2 _6772 = _6770 * _1695;
    float _6777 = _6771.x + _6771.y;
    float _6778 = _6772.x + _6772.y;
    float _6780 = 2.0f / (_6744 * Material_Material_PreshaderBuffer[15].w);
    float _6781 = _6777 * _6780;
    float _6784 = mad(_6778, _6780, (_6780 * Material_Material_PreshaderBuffer[68].x) * _5981);
    float _6785 = floor(_6781);
    float _6795 = _6760 * Material_Material_PreshaderBuffer[17].z;
    float3 _6800 = (((float3(_548, _548, sin(mad(mad(_5712, 6.283185482025146484375f, _5984 * (-6.283185482025146484375f)), 2097152.0f, mad(_5983, 6.283185482025146484375f, floor(mad(mad(_5706, _5711, -_5984), 2097152.0f, _5983)) * (-6.283185482025146484375f)))) * _6522) + float3(_548, _548, sin(mad(mad(_6541, 6.283185482025146484375f, _6545 * (-6.283185482025146484375f)), 2097152.0f, mad(_6544, 6.283185482025146484375f, floor(mad(mad(_6537, _6540, -_6545), 2097152.0f, _6544)) * (-6.283185482025146484375f)))) * _6555)) + float3(_548, _548, sin(mad(mad(_6577, 6.283185482025146484375f, _6581 * (-6.283185482025146484375f)), 2097152.0f, mad(_6580, 6.283185482025146484375f, floor(mad(mad(_6573, _6576, -_6581), 2097152.0f, _6580)) * (-6.283185482025146484375f)))) * _6591)) + float3(_548, _548, sin(mad(mad(_6612, 6.283185482025146484375f, _6616 * (-6.283185482025146484375f)), 2097152.0f, mad(_6615, 6.283185482025146484375f, floor(mad(mad(_6608, _6611, -_6616), 2097152.0f, _6615)) * (-6.283185482025146484375f)))) * (_6591 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_548, _548, sin(mad(mad(_6677, 6.283185482025146484375f, _6681 * (-6.283185482025146484375f)), 2097152.0f, mad(_6680, 6.283185482025146484375f, floor(mad(mad(_6671, _6676, -_6681), 2097152.0f, _6680)) * (-6.283185482025146484375f)))) * _6691) + float3(_548, _548, sin(mad(mad(_6710, 6.283185482025146484375f, _6714 * (-6.283185482025146484375f)), 2097152.0f, mad(_6713, 6.283185482025146484375f, floor(mad(mad(_6706, _6709, -_6714), 2097152.0f, _6713)) * (-6.283185482025146484375f)))) * _6724)) + float3(_548, _548, sin(mad(mad(_6746, 6.283185482025146484375f, _6750 * (-6.283185482025146484375f)), 2097152.0f, mad(_6749, 6.283185482025146484375f, floor(mad(mad(_6742, _6745, -_6750), 2097152.0f, _6749)) * (-6.283185482025146484375f)))) * _6760)) + float3(_548, _548, sin(mad(mad(_6781, 6.283185482025146484375f, _6785 * (-6.283185482025146484375f)), 2097152.0f, mad(_6784, 6.283185482025146484375f, floor(mad(mad(_6777, _6780, -_6785), 2097152.0f, _6784)) * (-6.283185482025146484375f)))) * _6795));
    float _6810 = (abs(Material_Material_PreshaderBuffer[82].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[82].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[82].x : Material_Material_PreshaderBuffer[82].y) : Material_Material_PreshaderBuffer[82].x;
    float _6818 = (abs(_6810 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_6810 >= 1.0f) ? Material_Material_PreshaderBuffer[82].z : Material_Material_PreshaderBuffer[82].x) : Material_Material_PreshaderBuffer[82].x;
    float3 _6828 = float3(min(max((abs(_6818) > 9.9999997473787516355514526367188e-06f) ? ((_6818 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[83].w, 0.0f);
    float2 _6834 = float2(min(max(_6828 + Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6835 = _1694 * _6834;
    float2 _6836 = _6834 * _1695;
    float _6841 = _6835.x + _6835.y;
    float _6842 = _6836.x + _6836.y;
    float _6845 = Material_Material_PreshaderBuffer[85].x * _4589;
    float _6846 = 2.0f / _6845;
    float _6847 = _6841 * _6846;
    float _6850 = mad(_6842, _6846, (_6846 * Material_Material_PreshaderBuffer[67].y) * _5981);
    float _6851 = floor(_6847);
    float2 _6868 = float2(min(max(_6828 + Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6869 = _1694 * _6868;
    float2 _6870 = _6868 * _1695;
    float _6875 = _6869.x + _6869.y;
    float _6876 = _6870.x + _6870.y;
    float _6877 = _6845 * Material_Material_PreshaderBuffer[15].w;
    float _6878 = 2.0f / _6877;
    float _6879 = _6875 * _6878;
    float _6882 = mad(_6876, _6878, (_6878 * Material_Material_PreshaderBuffer[67].z) * _5981);
    float _6883 = floor(_6879);
    float2 _6903 = float2(min(max(_6828 - Material_Material_PreshaderBuffer[6].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6904 = _1694 * _6903;
    float2 _6905 = _6903 * _1695;
    float _6910 = _6904.x + _6904.y;
    float _6911 = _6905.x + _6905.y;
    float _6912 = _6877 * Material_Material_PreshaderBuffer[15].w;
    float _6913 = 2.0f / _6912;
    float _6914 = _6910 * _6913;
    float _6917 = mad(_6911, _6913, (_6913 * Material_Material_PreshaderBuffer[67].w) * _5981);
    float _6918 = floor(_6914);
    float2 _6937 = float2(min(max(_6828 - Material_Material_PreshaderBuffer[15].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6938 = _1694 * _6937;
    float2 _6939 = _6937 * _1695;
    float _6944 = _6938.x + _6938.y;
    float _6945 = _6939.x + _6939.y;
    float _6947 = 2.0f / (_6912 * Material_Material_PreshaderBuffer[15].w);
    float _6948 = _6944 * _6947;
    float _6951 = mad(_6945, _6947, (_6947 * Material_Material_PreshaderBuffer[68].x) * _5981);
    float _6952 = floor(_6948);
    float3 _6966 = _6800 + (((float3(_548, _548, sin(mad(mad(_6847, 6.283185482025146484375f, _6851 * (-6.283185482025146484375f)), 2097152.0f, mad(_6850, 6.283185482025146484375f, floor(mad(mad(_6841, _6846, -_6851), 2097152.0f, _6850)) * (-6.283185482025146484375f)))) * _6691) + float3(_548, _548, sin(mad(mad(_6879, 6.283185482025146484375f, _6883 * (-6.283185482025146484375f)), 2097152.0f, mad(_6882, 6.283185482025146484375f, floor(mad(mad(_6875, _6878, -_6883), 2097152.0f, _6882)) * (-6.283185482025146484375f)))) * _6724)) + float3(_548, _548, sin(mad(mad(_6914, 6.283185482025146484375f, _6918 * (-6.283185482025146484375f)), 2097152.0f, mad(_6917, 6.283185482025146484375f, floor(mad(mad(_6910, _6913, -_6918), 2097152.0f, _6917)) * (-6.283185482025146484375f)))) * _6760)) + float3(_548, _548, sin(mad(mad(_6948, 6.283185482025146484375f, _6952 * (-6.283185482025146484375f)), 2097152.0f, mad(_6951, 6.283185482025146484375f, floor(mad(mad(_6944, _6947, -_6952), 2097152.0f, _6951)) * (-6.283185482025146484375f)))) * _6795));
    float _6967 = _3564 * 8.0f;
    float _6968 = Material_Material_PreshaderBuffer[78].z * _6967;
    float _6969 = 2.0f / _6968;
    float _6970 = _5706 * _6969;
    float _6973 = mad(_5707, _6969, (_6969 * Material_Material_PreshaderBuffer[71].z) * _5981);
    float _6974 = floor(_6970);
    float _6984 = _6522 * 8.0f;
    float _6987 = _6968 * Material_Material_PreshaderBuffer[15].w;
    float _6988 = 2.0f / _6987;
    float _6989 = _6537 * _6988;
    float _6992 = mad(_6538, _6988, (_6988 * Material_Material_PreshaderBuffer[71].w) * _5981);
    float _6993 = floor(_6989);
    float _7003 = _6984 * Material_Material_PreshaderBuffer[17].z;
    float _7009 = _6987 * Material_Material_PreshaderBuffer[15].w;
    float _7010 = 2.0f / _7009;
    float _7011 = _6573 * _7010;
    float _7014 = mad(_6574, _7010, (_7010 * Material_Material_PreshaderBuffer[72].x) * _5981);
    float _7015 = floor(_7011);
    float _7025 = _7003 * Material_Material_PreshaderBuffer[17].z;
    float _7031 = 2.0f / (_7009 * Material_Material_PreshaderBuffer[15].w);
    float _7032 = _6608 * _7031;
    float _7035 = mad(_6609, _7031, (_7031 * Material_Material_PreshaderBuffer[72].y) * _5981);
    float _7036 = floor(_7032);
    float _7051 = _6967 * Material_Material_PreshaderBuffer[23].w;
    float _7052 = Material_Material_PreshaderBuffer[81].w * _7051;
    float _7053 = 2.0f / _7052;
    float _7054 = _6671 * _7053;
    float _7057 = mad(_6672, _7053, (_7053 * Material_Material_PreshaderBuffer[72].z) * _5981);
    float _7058 = floor(_7054);
    float _7068 = _6984 * Material_Material_PreshaderBuffer[25].w;
    float _7071 = _7052 * Material_Material_PreshaderBuffer[15].w;
    float _7072 = 2.0f / _7071;
    float _7073 = _6706 * _7072;
    float _7076 = mad(_6707, _7072, (_7072 * Material_Material_PreshaderBuffer[72].w) * _5981);
    float _7077 = floor(_7073);
    float _7087 = _7068 * Material_Material_PreshaderBuffer[17].z;
    float _7093 = _7071 * Material_Material_PreshaderBuffer[15].w;
    float _7094 = 2.0f / _7093;
    float _7095 = _6742 * _7094;
    float _7098 = mad(_6743, _7094, (_7094 * Material_Material_PreshaderBuffer[73].x) * _5981);
    float _7099 = floor(_7095);
    float _7109 = _7087 * Material_Material_PreshaderBuffer[17].z;
    float _7115 = 2.0f / (_7093 * Material_Material_PreshaderBuffer[15].w);
    float _7116 = _6777 * _7115;
    float _7119 = mad(_6778, _7115, (_7115 * Material_Material_PreshaderBuffer[73].y) * _5981);
    float _7120 = floor(_7116);
    float _7130 = _7109 * Material_Material_PreshaderBuffer[17].z;
    float3 _7135 = (((float3(_548, _548, sin(mad(mad(_6970, 6.283185482025146484375f, _6974 * (-6.283185482025146484375f)), 2097152.0f, mad(_6973, 6.283185482025146484375f, floor(mad(mad(_5706, _6969, -_6974), 2097152.0f, _6973)) * (-6.283185482025146484375f)))) * _6984) + float3(_548, _548, sin(mad(mad(_6989, 6.283185482025146484375f, _6993 * (-6.283185482025146484375f)), 2097152.0f, mad(_6992, 6.283185482025146484375f, floor(mad(mad(_6537, _6988, -_6993), 2097152.0f, _6992)) * (-6.283185482025146484375f)))) * _7003)) + float3(_548, _548, sin(mad(mad(_7011, 6.283185482025146484375f, _7015 * (-6.283185482025146484375f)), 2097152.0f, mad(_7014, 6.283185482025146484375f, floor(mad(mad(_6573, _7010, -_7015), 2097152.0f, _7014)) * (-6.283185482025146484375f)))) * _7025)) + float3(_548, _548, sin(mad(mad(_7032, 6.283185482025146484375f, _7036 * (-6.283185482025146484375f)), 2097152.0f, mad(_7035, 6.283185482025146484375f, floor(mad(mad(_6608, _7031, -_7036), 2097152.0f, _7035)) * (-6.283185482025146484375f)))) * (_7025 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_548, _548, sin(mad(mad(_7054, 6.283185482025146484375f, _7058 * (-6.283185482025146484375f)), 2097152.0f, mad(_7057, 6.283185482025146484375f, floor(mad(mad(_6671, _7053, -_7058), 2097152.0f, _7057)) * (-6.283185482025146484375f)))) * _7068) + float3(_548, _548, sin(mad(mad(_7073, 6.283185482025146484375f, _7077 * (-6.283185482025146484375f)), 2097152.0f, mad(_7076, 6.283185482025146484375f, floor(mad(mad(_6706, _7072, -_7077), 2097152.0f, _7076)) * (-6.283185482025146484375f)))) * _7087)) + float3(_548, _548, sin(mad(mad(_7095, 6.283185482025146484375f, _7099 * (-6.283185482025146484375f)), 2097152.0f, mad(_7098, 6.283185482025146484375f, floor(mad(mad(_6742, _7094, -_7099), 2097152.0f, _7098)) * (-6.283185482025146484375f)))) * _7109)) + float3(_548, _548, sin(mad(mad(_7116, 6.283185482025146484375f, _7120 * (-6.283185482025146484375f)), 2097152.0f, mad(_7119, 6.283185482025146484375f, floor(mad(mad(_6777, _7115, -_7120), 2097152.0f, _7119)) * (-6.283185482025146484375f)))) * _7130));
    float _7136 = Material_Material_PreshaderBuffer[85].x * _7051;
    float _7137 = 2.0f / _7136;
    float _7138 = _6841 * _7137;
    float _7141 = mad(_6842, _7137, (_7137 * Material_Material_PreshaderBuffer[72].z) * _5981);
    float _7142 = floor(_7138);
    float _7154 = _7136 * Material_Material_PreshaderBuffer[15].w;
    float _7155 = 2.0f / _7154;
    float _7156 = _6875 * _7155;
    float _7159 = mad(_6876, _7155, (_7155 * Material_Material_PreshaderBuffer[72].w) * _5981);
    float _7160 = floor(_7156);
    float _7175 = _7154 * Material_Material_PreshaderBuffer[15].w;
    float _7176 = 2.0f / _7175;
    float _7177 = _6910 * _7176;
    float _7180 = mad(_6911, _7176, (_7176 * Material_Material_PreshaderBuffer[73].x) * _5981);
    float _7181 = floor(_7177);
    float _7196 = 2.0f / (_7175 * Material_Material_PreshaderBuffer[15].w);
    float _7197 = _6944 * _7196;
    float _7200 = mad(_6945, _7196, (_7196 * Material_Material_PreshaderBuffer[73].y) * _5981);
    float _7201 = floor(_7197);
    float3 _7215 = _7135 + (((float3(_548, _548, sin(mad(mad(_7138, 6.283185482025146484375f, _7142 * (-6.283185482025146484375f)), 2097152.0f, mad(_7141, 6.283185482025146484375f, floor(mad(mad(_6841, _7137, -_7142), 2097152.0f, _7141)) * (-6.283185482025146484375f)))) * _7068) + float3(_548, _548, sin(mad(mad(_7156, 6.283185482025146484375f, _7160 * (-6.283185482025146484375f)), 2097152.0f, mad(_7159, 6.283185482025146484375f, floor(mad(mad(_6875, _7155, -_7160), 2097152.0f, _7159)) * (-6.283185482025146484375f)))) * _7087)) + float3(_548, _548, sin(mad(mad(_7177, 6.283185482025146484375f, _7181 * (-6.283185482025146484375f)), 2097152.0f, mad(_7180, 6.283185482025146484375f, floor(mad(mad(_6910, _7176, -_7181), 2097152.0f, _7180)) * (-6.283185482025146484375f)))) * _7109)) + float3(_548, _548, sin(mad(mad(_7197, 6.283185482025146484375f, _7201 * (-6.283185482025146484375f)), 2097152.0f, mad(_7200, 6.283185482025146484375f, floor(mad(mad(_6944, _7196, -_7201), 2097152.0f, _7200)) * (-6.283185482025146484375f)))) * _7130));
    float _7216 = Material_Material_PreshaderBuffer[78].z * _5157;
    float _7217 = 2.0f / _7216;
    float _7218 = _5706 * _7217;
    float _7221 = mad(_5707, _7217, (_7217 * Material_Material_PreshaderBuffer[73].z) * _5981);
    float _7222 = floor(_7218);
    float _7232 = _6522 * 4.0f;
    float _7235 = _7216 * Material_Material_PreshaderBuffer[15].w;
    float _7236 = 2.0f / _7235;
    float _7237 = _6537 * _7236;
    float _7240 = mad(_6538, _7236, (_7236 * Material_Material_PreshaderBuffer[73].w) * _5981);
    float _7241 = floor(_7237);
    float _7251 = _7232 * Material_Material_PreshaderBuffer[17].z;
    float _7257 = _7235 * Material_Material_PreshaderBuffer[15].w;
    float _7258 = 2.0f / _7257;
    float _7259 = _6573 * _7258;
    float _7262 = mad(_6574, _7258, (_7258 * Material_Material_PreshaderBuffer[74].x) * _5981);
    float _7263 = floor(_7259);
    float _7273 = _7251 * Material_Material_PreshaderBuffer[17].z;
    float _7279 = 2.0f / (_7257 * Material_Material_PreshaderBuffer[15].w);
    float _7280 = _6608 * _7279;
    float _7283 = mad(_6609, _7279, (_7279 * Material_Material_PreshaderBuffer[74].y) * _5981);
    float _7284 = floor(_7280);
    float _7299 = Material_Material_PreshaderBuffer[81].w * _5245;
    float _7300 = 2.0f / _7299;
    float _7301 = _6671 * _7300;
    float _7304 = mad(_6672, _7300, (_7300 * Material_Material_PreshaderBuffer[74].z) * _5981);
    float _7305 = floor(_7301);
    float _7315 = _7232 * Material_Material_PreshaderBuffer[25].w;
    float _7318 = _7299 * Material_Material_PreshaderBuffer[15].w;
    float _7319 = 2.0f / _7318;
    float _7320 = _6706 * _7319;
    float _7323 = mad(_6707, _7319, (_7319 * Material_Material_PreshaderBuffer[74].w) * _5981);
    float _7324 = floor(_7320);
    float _7334 = _7315 * Material_Material_PreshaderBuffer[17].z;
    float _7340 = _7318 * Material_Material_PreshaderBuffer[15].w;
    float _7341 = 2.0f / _7340;
    float _7342 = _6742 * _7341;
    float _7345 = mad(_6743, _7341, (_7341 * Material_Material_PreshaderBuffer[75].x) * _5981);
    float _7346 = floor(_7342);
    float _7356 = _7334 * Material_Material_PreshaderBuffer[17].z;
    float _7362 = 2.0f / (_7340 * Material_Material_PreshaderBuffer[15].w);
    float _7363 = _6777 * _7362;
    float _7366 = mad(_6778, _7362, (_7362 * Material_Material_PreshaderBuffer[75].y) * _5981);
    float _7367 = floor(_7363);
    float _7377 = _7356 * Material_Material_PreshaderBuffer[17].z;
    float3 _7382 = (((float3(_548, _548, sin(mad(mad(_7218, 6.283185482025146484375f, _7222 * (-6.283185482025146484375f)), 2097152.0f, mad(_7221, 6.283185482025146484375f, floor(mad(mad(_5706, _7217, -_7222), 2097152.0f, _7221)) * (-6.283185482025146484375f)))) * _7232) + float3(_548, _548, sin(mad(mad(_7237, 6.283185482025146484375f, _7241 * (-6.283185482025146484375f)), 2097152.0f, mad(_7240, 6.283185482025146484375f, floor(mad(mad(_6537, _7236, -_7241), 2097152.0f, _7240)) * (-6.283185482025146484375f)))) * _7251)) + float3(_548, _548, sin(mad(mad(_7259, 6.283185482025146484375f, _7263 * (-6.283185482025146484375f)), 2097152.0f, mad(_7262, 6.283185482025146484375f, floor(mad(mad(_6573, _7258, -_7263), 2097152.0f, _7262)) * (-6.283185482025146484375f)))) * _7273)) + float3(_548, _548, sin(mad(mad(_7280, 6.283185482025146484375f, _7284 * (-6.283185482025146484375f)), 2097152.0f, mad(_7283, 6.283185482025146484375f, floor(mad(mad(_6608, _7279, -_7284), 2097152.0f, _7283)) * (-6.283185482025146484375f)))) * (_7273 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_548, _548, sin(mad(mad(_7301, 6.283185482025146484375f, _7305 * (-6.283185482025146484375f)), 2097152.0f, mad(_7304, 6.283185482025146484375f, floor(mad(mad(_6671, _7300, -_7305), 2097152.0f, _7304)) * (-6.283185482025146484375f)))) * _7315) + float3(_548, _548, sin(mad(mad(_7320, 6.283185482025146484375f, _7324 * (-6.283185482025146484375f)), 2097152.0f, mad(_7323, 6.283185482025146484375f, floor(mad(mad(_6706, _7319, -_7324), 2097152.0f, _7323)) * (-6.283185482025146484375f)))) * _7334)) + float3(_548, _548, sin(mad(mad(_7342, 6.283185482025146484375f, _7346 * (-6.283185482025146484375f)), 2097152.0f, mad(_7345, 6.283185482025146484375f, floor(mad(mad(_6742, _7341, -_7346), 2097152.0f, _7345)) * (-6.283185482025146484375f)))) * _7356)) + float3(_548, _548, sin(mad(mad(_7363, 6.283185482025146484375f, _7367 * (-6.283185482025146484375f)), 2097152.0f, mad(_7366, 6.283185482025146484375f, floor(mad(mad(_6777, _7362, -_7367), 2097152.0f, _7366)) * (-6.283185482025146484375f)))) * _7377));
    float _7383 = Material_Material_PreshaderBuffer[85].x * _5245;
    float _7384 = 2.0f / _7383;
    float _7385 = _6841 * _7384;
    float _7388 = mad(_6842, _7384, (_7384 * Material_Material_PreshaderBuffer[74].z) * _5981);
    float _7389 = floor(_7385);
    float _7401 = _7383 * Material_Material_PreshaderBuffer[15].w;
    float _7402 = 2.0f / _7401;
    float _7403 = _6875 * _7402;
    float _7406 = mad(_6876, _7402, (_7402 * Material_Material_PreshaderBuffer[74].w) * _5981);
    float _7407 = floor(_7403);
    float _7422 = _7401 * Material_Material_PreshaderBuffer[15].w;
    float _7423 = 2.0f / _7422;
    float _7424 = _6910 * _7423;
    float _7427 = mad(_6911, _7423, (_7423 * Material_Material_PreshaderBuffer[75].x) * _5981);
    float _7428 = floor(_7424);
    float _7443 = 2.0f / (_7422 * Material_Material_PreshaderBuffer[15].w);
    float _7444 = _6944 * _7443;
    float _7447 = mad(_6945, _7443, (_7443 * Material_Material_PreshaderBuffer[75].y) * _5981);
    float _7448 = floor(_7444);
    float3 _7462 = _7382 + (((float3(_548, _548, sin(mad(mad(_7385, 6.283185482025146484375f, _7389 * (-6.283185482025146484375f)), 2097152.0f, mad(_7388, 6.283185482025146484375f, floor(mad(mad(_6841, _7384, -_7389), 2097152.0f, _7388)) * (-6.283185482025146484375f)))) * _7315) + float3(_548, _548, sin(mad(mad(_7403, 6.283185482025146484375f, _7407 * (-6.283185482025146484375f)), 2097152.0f, mad(_7406, 6.283185482025146484375f, floor(mad(mad(_6875, _7402, -_7407), 2097152.0f, _7406)) * (-6.283185482025146484375f)))) * _7334)) + float3(_548, _548, sin(mad(mad(_7424, 6.283185482025146484375f, _7428 * (-6.283185482025146484375f)), 2097152.0f, mad(_7427, 6.283185482025146484375f, floor(mad(mad(_6910, _7423, -_7428), 2097152.0f, _7427)) * (-6.283185482025146484375f)))) * _7356)) + float3(_548, _548, sin(mad(mad(_7444, 6.283185482025146484375f, _7448 * (-6.283185482025146484375f)), 2097152.0f, mad(_7447, 6.283185482025146484375f, floor(mad(mad(_6944, _7443, -_7448), 2097152.0f, _7447)) * (-6.283185482025146484375f)))) * _7377));
    float _7463 = Material_Material_PreshaderBuffer[78].z * _5414;
    float _7464 = 2.0f / _7463;
    float _7465 = _5706 * _7464;
    float _7468 = mad(_5707, _7464, (_7464 * Material_Material_PreshaderBuffer[71].z) * _5981);
    float _7469 = floor(_7465);
    float _7479 = _6522 * 0.5f;
    float _7482 = _7463 * Material_Material_PreshaderBuffer[15].w;
    float _7483 = 2.0f / _7482;
    float _7484 = _6537 * _7483;
    float _7487 = mad(_6538, _7483, (_7483 * Material_Material_PreshaderBuffer[71].w) * _5981);
    float _7488 = floor(_7484);
    float _7498 = _7479 * Material_Material_PreshaderBuffer[17].z;
    float _7504 = _7482 * Material_Material_PreshaderBuffer[15].w;
    float _7505 = 2.0f / _7504;
    float _7506 = _6573 * _7505;
    float _7509 = mad(_6574, _7505, (_7505 * Material_Material_PreshaderBuffer[72].x) * _5981);
    float _7510 = floor(_7506);
    float _7520 = _7498 * Material_Material_PreshaderBuffer[17].z;
    float _7526 = 2.0f / (_7504 * Material_Material_PreshaderBuffer[15].w);
    float _7527 = _6608 * _7526;
    float _7530 = mad(_6609, _7526, (_7526 * Material_Material_PreshaderBuffer[72].y) * _5981);
    float _7531 = floor(_7527);
    float _7546 = Material_Material_PreshaderBuffer[81].w * _5498;
    float _7547 = 2.0f / _7546;
    float _7548 = _6671 * _7547;
    float _7551 = mad(_6672, _7547, (_7547 * Material_Material_PreshaderBuffer[72].z) * _5981);
    float _7552 = floor(_7548);
    float _7562 = _7479 * Material_Material_PreshaderBuffer[25].w;
    float _7565 = _7546 * Material_Material_PreshaderBuffer[15].w;
    float _7566 = 2.0f / _7565;
    float _7567 = _6706 * _7566;
    float _7570 = mad(_6707, _7566, (_7566 * Material_Material_PreshaderBuffer[72].w) * _5981);
    float _7571 = floor(_7567);
    float _7581 = _7562 * Material_Material_PreshaderBuffer[17].z;
    float _7587 = _7565 * Material_Material_PreshaderBuffer[15].w;
    float _7588 = 2.0f / _7587;
    float _7589 = _6742 * _7588;
    float _7592 = mad(_6743, _7588, (_7588 * Material_Material_PreshaderBuffer[73].x) * _5981);
    float _7593 = floor(_7589);
    float _7603 = _7581 * Material_Material_PreshaderBuffer[17].z;
    float _7609 = 2.0f / (_7587 * Material_Material_PreshaderBuffer[15].w);
    float _7610 = _6777 * _7609;
    float _7613 = mad(_6778, _7609, (_7609 * Material_Material_PreshaderBuffer[73].y) * _5981);
    float _7614 = floor(_7610);
    float _7624 = _7603 * Material_Material_PreshaderBuffer[17].z;
    float3 _7629 = (((float3(_548, _548, sin(mad(mad(_7465, 6.283185482025146484375f, _7469 * (-6.283185482025146484375f)), 2097152.0f, mad(_7468, 6.283185482025146484375f, floor(mad(mad(_5706, _7464, -_7469), 2097152.0f, _7468)) * (-6.283185482025146484375f)))) * _7479) + float3(_548, _548, sin(mad(mad(_7484, 6.283185482025146484375f, _7488 * (-6.283185482025146484375f)), 2097152.0f, mad(_7487, 6.283185482025146484375f, floor(mad(mad(_6537, _7483, -_7488), 2097152.0f, _7487)) * (-6.283185482025146484375f)))) * _7498)) + float3(_548, _548, sin(mad(mad(_7506, 6.283185482025146484375f, _7510 * (-6.283185482025146484375f)), 2097152.0f, mad(_7509, 6.283185482025146484375f, floor(mad(mad(_6573, _7505, -_7510), 2097152.0f, _7509)) * (-6.283185482025146484375f)))) * _7520)) + float3(_548, _548, sin(mad(mad(_7527, 6.283185482025146484375f, _7531 * (-6.283185482025146484375f)), 2097152.0f, mad(_7530, 6.283185482025146484375f, floor(mad(mad(_6608, _7526, -_7531), 2097152.0f, _7530)) * (-6.283185482025146484375f)))) * (_7520 * Material_Material_PreshaderBuffer[17].z))) + (((float3(_548, _548, sin(mad(mad(_7548, 6.283185482025146484375f, _7552 * (-6.283185482025146484375f)), 2097152.0f, mad(_7551, 6.283185482025146484375f, floor(mad(mad(_6671, _7547, -_7552), 2097152.0f, _7551)) * (-6.283185482025146484375f)))) * _7562) + float3(_548, _548, sin(mad(mad(_7567, 6.283185482025146484375f, _7571 * (-6.283185482025146484375f)), 2097152.0f, mad(_7570, 6.283185482025146484375f, floor(mad(mad(_6706, _7566, -_7571), 2097152.0f, _7570)) * (-6.283185482025146484375f)))) * _7581)) + float3(_548, _548, sin(mad(mad(_7589, 6.283185482025146484375f, _7593 * (-6.283185482025146484375f)), 2097152.0f, mad(_7592, 6.283185482025146484375f, floor(mad(mad(_6742, _7588, -_7593), 2097152.0f, _7592)) * (-6.283185482025146484375f)))) * _7603)) + float3(_548, _548, sin(mad(mad(_7610, 6.283185482025146484375f, _7614 * (-6.283185482025146484375f)), 2097152.0f, mad(_7613, 6.283185482025146484375f, floor(mad(mad(_6777, _7609, -_7614), 2097152.0f, _7613)) * (-6.283185482025146484375f)))) * _7624));
    float _7630 = Material_Material_PreshaderBuffer[85].x * _5498;
    float _7631 = 2.0f / _7630;
    float _7632 = _6841 * _7631;
    float _7635 = mad(_6842, _7631, (_7631 * Material_Material_PreshaderBuffer[72].z) * _5981);
    float _7636 = floor(_7632);
    float _7648 = _7630 * Material_Material_PreshaderBuffer[15].w;
    float _7649 = 2.0f / _7648;
    float _7650 = _6875 * _7649;
    float _7653 = mad(_6876, _7649, (_7649 * Material_Material_PreshaderBuffer[72].w) * _5981);
    float _7654 = floor(_7650);
    float _7669 = _7648 * Material_Material_PreshaderBuffer[15].w;
    float _7670 = 2.0f / _7669;
    float _7671 = _6910 * _7670;
    float _7674 = mad(_6911, _7670, (_7670 * Material_Material_PreshaderBuffer[73].x) * _5981);
    float _7675 = floor(_7671);
    float _7690 = 2.0f / (_7669 * Material_Material_PreshaderBuffer[15].w);
    float _7691 = _6944 * _7690;
    float _7694 = mad(_6945, _7690, (_7690 * Material_Material_PreshaderBuffer[73].y) * _5981);
    float _7695 = floor(_7691);
    float3 _7709 = _7629 + (((float3(_548, _548, sin(mad(mad(_7632, 6.283185482025146484375f, _7636 * (-6.283185482025146484375f)), 2097152.0f, mad(_7635, 6.283185482025146484375f, floor(mad(mad(_6841, _7631, -_7636), 2097152.0f, _7635)) * (-6.283185482025146484375f)))) * _7562) + float3(_548, _548, sin(mad(mad(_7650, 6.283185482025146484375f, _7654 * (-6.283185482025146484375f)), 2097152.0f, mad(_7653, 6.283185482025146484375f, floor(mad(mad(_6875, _7649, -_7654), 2097152.0f, _7653)) * (-6.283185482025146484375f)))) * _7581)) + float3(_548, _548, sin(mad(mad(_7671, 6.283185482025146484375f, _7675 * (-6.283185482025146484375f)), 2097152.0f, mad(_7674, 6.283185482025146484375f, floor(mad(mad(_6910, _7670, -_7675), 2097152.0f, _7674)) * (-6.283185482025146484375f)))) * _7603)) + float3(_548, _548, sin(mad(mad(_7691, 6.283185482025146484375f, _7695 * (-6.283185482025146484375f)), 2097152.0f, mad(_7694, 6.283185482025146484375f, floor(mad(mad(_6944, _7690, -_7695), 2097152.0f, _7694)) * (-6.283185482025146484375f)))) * _7624));
    float3 _7714 = mad(_3516, Material_Material_PreshaderBuffer[54].x.xxx, (_4891 + (_5156 + (_5413 + _5662))) + (_6966 + (_7215 + (_7462 + _7709))));
    float _7715 = _7714.z;
    float _7733 = clamp(mad(clamp(mad(_7715, MaterialCollection0_MaterialCollection0_Vectors[0].y, -Material_Material_PreshaderBuffer[90].w) * Material_Material_PreshaderBuffer[91].z, 0.0f, 1.0f), Material_Material_PreshaderBuffer[91].w, -Material_Material_PreshaderBuffer[92].x) * Material_Material_PreshaderBuffer[92].w, 0.0f, 1.0f);
    float3 _7735 = mad(_7715.xxx, in_var_TEXCOORD11_centroid.xyz, _639);
    float3 _7736 = ddx(View_View_ViewTilePosition);
    float3 _7738 = ddx(_7735);
    float3 _7740 = ddy(View_View_ViewTilePosition);
    float3 _7742 = ddy(_7735);
    float3 _7746 = ddx(View_View_ViewTilePosition);
    float3 _7748 = ddx(_639);
    float3 _7750 = ddy(View_View_ViewTilePosition);
    float3 _7752 = ddy(_639);
    float3 _7755 = normalize(cross((_7746 * 2097152.0f) + _7748, (_7750 * 2097152.0f) + _7752));
    float3 _7761 = lerp((normalize(cross((_7736 * 2097152.0f) + _7738, (_7740 * 2097152.0f) + _7742)) - _7755) + in_var_TEXCOORD11_centroid.xyz, float3(0.0f, 0.0f, 1.0f), Material_Material_PreshaderBuffer[93].y.xxx);
    float3 _7768 = Material_Material_PreshaderBuffer[93].w.xxx;
    float3 _7781 = float3((View_View_ViewTilePosition * _7768).xy, 0.0f);
    float3 _7782 = float3((mad(_7761, Material_Material_PreshaderBuffer[93].z.xxx, _640) * _7768).xy, ((_1159 * Material_Material_PreshaderBuffer[94].y).xx + float2(1.0f, 0.0f)).x);
    float3 _7792 = 0.0f.xxx;
    float _7797 = 0.0f;
    _7792 = (((_7781 - floor(_7781 + ((_7782 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _7782) * 1.0f;
    _7797 = 0.0f;
    float _7795 = 1.0f;
    uint _7799 = 0u;
    [loop]
    for (; _7799 < 10u; )
    {
        float3 _7803 = frac(_7792);
        float _7805 = dot(floor(_7792), float3(19.0f, 47.0f, 101.0f));
        uint3 _7817 = (uint3(int3(int(_7805), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7818 = _7817.y;
        uint _7819 = _7817.z;
        uint _7822 = _7817.x + (_7818 * _7819);
        uint _7824 = _7818 + (_7819 * _7822);
        uint3 _7829 = uint3(0u, 0u, 0u);
        _7829.x = _7822 + (_7824 * (_7819 + (_7822 * _7824)));
        uint3 _7830 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _7843 = (uint3(int3(int(_7805 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7844 = _7843.y;
        uint _7845 = _7843.z;
        uint _7848 = _7843.x + (_7844 * _7845);
        uint _7850 = _7844 + (_7845 * _7848);
        uint3 _7855 = uint3(0u, 0u, 0u);
        _7855.x = _7848 + (_7850 * (_7845 + (_7848 * _7850)));
        uint3 _7868 = (uint3(int3(int(_7805 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7869 = _7868.y;
        uint _7870 = _7868.z;
        uint _7873 = _7868.x + (_7869 * _7870);
        uint _7875 = _7869 + (_7870 * _7873);
        uint3 _7880 = uint3(0u, 0u, 0u);
        _7880.x = _7873 + (_7875 * (_7870 + (_7873 * _7875)));
        uint3 _7893 = (uint3(int3(int(_7805 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7894 = _7893.y;
        uint _7895 = _7893.z;
        uint _7898 = _7893.x + (_7894 * _7895);
        uint _7900 = _7894 + (_7895 * _7898);
        uint3 _7905 = uint3(0u, 0u, 0u);
        _7905.x = _7898 + (_7900 * (_7895 + (_7898 * _7900)));
        uint3 _7918 = (uint3(int3(int(_7805 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7919 = _7918.y;
        uint _7920 = _7918.z;
        uint _7923 = _7918.x + (_7919 * _7920);
        uint _7925 = _7919 + (_7920 * _7923);
        uint3 _7930 = uint3(0u, 0u, 0u);
        _7930.x = _7923 + (_7925 * (_7920 + (_7923 * _7925)));
        uint3 _7943 = (uint3(int3(int(_7805 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7944 = _7943.y;
        uint _7945 = _7943.z;
        uint _7948 = _7943.x + (_7944 * _7945);
        uint _7950 = _7944 + (_7945 * _7948);
        uint3 _7955 = uint3(0u, 0u, 0u);
        _7955.x = _7948 + (_7950 * (_7945 + (_7948 * _7950)));
        uint3 _7968 = (uint3(int3(int(_7805 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7969 = _7968.y;
        uint _7970 = _7968.z;
        uint _7973 = _7968.x + (_7969 * _7970);
        uint _7975 = _7969 + (_7970 * _7973);
        uint3 _7980 = uint3(0u, 0u, 0u);
        _7980.x = _7973 + (_7975 * (_7970 + (_7973 * _7975)));
        uint3 _7993 = (uint3(int3(int(_7805 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7994 = _7993.y;
        uint _7995 = _7993.z;
        uint _7998 = _7993.x + (_7994 * _7995);
        uint _8000 = _7994 + (_7995 * _7998);
        uint3 _8005 = uint3(0u, 0u, 0u);
        _8005.x = _7998 + (_8000 * (_7995 + (_7998 * _8000)));
        float4 _8016 = float4(_7803, 0.0f);
        float4 _8022 = ((_8016 * _8016) * _8016) * mad(_8016, (_8016 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _8023 = _8022.x;
        float _8026 = _8022.y;
        float _8033 = abs(lerp(lerp(lerp(dot(mad(float3((_7829 >> _7830).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7803), dot(mad(float3((_7855 >> _7830).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7803 - float3(1.0f, 0.0f, 0.0f)), _8023), lerp(dot(mad(float3((_7880 >> _7830).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7803 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_7905 >> _7830).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7803 - float3(1.0f, 1.0f, 0.0f)), _8023), _8026), lerp(lerp(dot(mad(float3((_7930 >> _7830).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7803 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_7955 >> _7830).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7803 - float3(1.0f, 0.0f, 1.0f)), _8023), lerp(dot(mad(float3((_7980 >> _7830).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7803 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_8005 >> _7830).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7803 - 1.0f.xxx), _8023), _8026), _8022.z));
        float _7798 = mad(_8033, _7795, _7797);
        _7792 *= 2.0f;
        _7795 *= 0.5f;
        _7797 = _7798;
        _7799++;
        continue;
    }
    float _8037 = -_7733;
    float _8043 = clamp(mad(mad(_8037, Material_Material_PreshaderBuffer[94].z, lerp(0.0f, 1.0f, _7797)) / mad(_8037, Material_Material_PreshaderBuffer[94].z, mad(_7733, Material_Material_PreshaderBuffer[94].z, 1.0f)), -1.0f, 1.0f), 0.0f, 1.0f);
    float _8052 = clamp(lerp(Material_Material_PreshaderBuffer[95].x, Material_Material_PreshaderBuffer[94].w, (_8043 <= 0.0f) ? 0.0f : pow(_8043, 2.0f)), 0.0f, 1.0f);
    float _8053 = _7733 * _8052;
    float3 _8056 = Material_Material_PreshaderBuffer[95].y.xxx;
    float3 _8057 = View_View_ViewTilePosition * _8056;
    float3 _8058 = _640 * _8056;
    float3 _8069 = 0.0f.xxx;
    float3 _8072 = 0.0f.xxx;
    float _8076 = 0.0f;
    _8069 = _541;
    _8072 = mad(_640, _8056, mad(View_View_ViewTilePosition, _8056, -floor(mad(View_View_ViewTilePosition, _8056, (_8058 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _8076 = 0.0f;
    float3 _8073 = 0.0f.xxx;
    float _8075 = 0.0f;
    float _8077 = 0.0f;
    float3 _8070 = 0.0f.xxx;
    float _8074 = 1.0f;
    uint _8078 = 0u;
    [loop]
    for (; _8078 < 1u; _8069 = _8070, _8072 = _8073, _8074 = _8075, _8076 = _8077, _8078++)
    {
        float3 _8083 = frac(_8072);
        float3 _8084 = floor(_8072);
        float3 _8085 = _8069;
        _8085.x = 0.0f;
        float4 _8087 = 0.0f.xxxx;
        _8087 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _8070 = _8085;
        float3 _8090 = 0.0f.xxx;
        float4 _8088 = 0.0f.xxxx;
        float3 _8097 = 0.0f.xxx;
        for (; _8070.x <= 1.0f; _8090 = _8097, _8090.x = _8097.x + 1.0f, _8087 = _8088, _8070 = _8090)
        {
            float3 _8095 = _8070;
            _8095.y = 0.0f;
            _8097 = _8095;
            _8088 = _8087;
            float3 _8098 = 0.0f.xxx;
            float4 _8100 = 0.0f.xxxx;
            float3 _8109 = 0.0f.xxx;
            for (; _8097.y <= 1.0f; _8098 = _8109, _8098.y = _8109.y + 1.0f, _8097 = _8098, _8088 = _8100)
            {
                float3 _8105 = _8097;
                _8105.z = 0.0f;
                _8100 = _8088;
                _8109 = _8105;
                for (; _8109.z <= 1.0f; )
                {
                    float3 _8114 = _8084 + _8109;
                    uint3 _8119 = (uint3(int3(float3(_8114.x, _8114.y, _8114.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _8120 = _8119.y;
                    uint _8121 = _8119.z;
                    uint _8124 = _8119.x + (_8120 * _8121);
                    uint _8126 = _8120 + (_8121 * _8124);
                    uint _8128 = _8121 + (_8124 * _8126);
                    uint _8130 = _8124 + (_8126 * _8128);
                    uint3 _8131 = _8119;
                    _8131.x = _8130;
                    uint _8133 = _8126 + (_8128 * _8130);
                    _8131.y = _8133;
                    _8131.z = _8128 + (_8130 * _8133);
                    float3 _8145 = _8083 - (_8109 + (normalize(mad(float3(_8131 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _8110 = _8109;
                    _8110.z = _8109.z + 1.0f;
                    _8100 = float4(0.0f, 0.0f, 0.0f, min(_8100.w, dot(_8145, _8145)));
                    _8109 = _8110;
                    continue;
                }
            }
        }
        _8077 = mad(abs(mad(sqrt(_8087.w), 2.0f, -1.0f)), _8074, _8076);
        _8073 = _8072 * 2.0f;
        _8075 = _8074 * 0.5f;
    }
    float3 _8171 = 0.0f.xxx;
    float3 _8174 = 0.0f.xxx;
    float _8178 = 0.0f;
    _8171 = _541;
    _8174 = mad(_8058, 1.2000000476837158203125f.xxx, mad(_8057, 1.2000000476837158203125f.xxx, -floor(mad(_8057, 1.2000000476837158203125f.xxx, ((_8058 * 1.2000000476837158203125f.xxx) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _8178 = 0.0f;
    float3 _8175 = 0.0f.xxx;
    float _8177 = 0.0f;
    float _8179 = 0.0f;
    float3 _8172 = 0.0f.xxx;
    float _8176 = 1.0f;
    uint _8180 = 0u;
    [loop]
    for (; _8180 < 1u; _8171 = _8172, _8174 = _8175, _8176 = _8177, _8178 = _8179, _8180++)
    {
        float3 _8185 = frac(_8174);
        float3 _8186 = floor(_8174);
        float3 _8187 = _8171;
        _8187.x = 0.0f;
        float4 _8189 = 0.0f.xxxx;
        _8189 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _8172 = _8187;
        float3 _8192 = 0.0f.xxx;
        float4 _8190 = 0.0f.xxxx;
        float3 _8199 = 0.0f.xxx;
        for (; _8172.x <= 1.0f; _8192 = _8199, _8192.x = _8199.x + 1.0f, _8189 = _8190, _8172 = _8192)
        {
            float3 _8197 = _8172;
            _8197.y = 0.0f;
            _8199 = _8197;
            _8190 = _8189;
            float3 _8200 = 0.0f.xxx;
            float4 _8202 = 0.0f.xxxx;
            float3 _8211 = 0.0f.xxx;
            for (; _8199.y <= 1.0f; _8200 = _8211, _8200.y = _8211.y + 1.0f, _8199 = _8200, _8190 = _8202)
            {
                float3 _8207 = _8199;
                _8207.z = 0.0f;
                _8202 = _8190;
                _8211 = _8207;
                for (; _8211.z <= 1.0f; )
                {
                    float3 _8216 = _8186 + _8211;
                    uint3 _8221 = (uint3(int3(float3(_8216.x, _8216.y, _8216.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _8222 = _8221.y;
                    uint _8223 = _8221.z;
                    uint _8226 = _8221.x + (_8222 * _8223);
                    uint _8228 = _8222 + (_8223 * _8226);
                    uint _8230 = _8223 + (_8226 * _8228);
                    uint _8232 = _8226 + (_8228 * _8230);
                    uint3 _8233 = _8221;
                    _8233.x = _8232;
                    uint _8235 = _8228 + (_8230 * _8232);
                    _8233.y = _8235;
                    _8233.z = _8230 + (_8232 * _8235);
                    float3 _8247 = _8185 - (_8211 + (normalize(mad(float3(_8233 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _8212 = _8211;
                    _8212.z = _8211.z + 1.0f;
                    _8202 = float4(0.0f, 0.0f, 0.0f, min(_8202.w, dot(_8247, _8247)));
                    _8211 = _8212;
                    continue;
                }
            }
        }
        _8179 = mad(abs(mad(sqrt(_8189.w), 2.0f, -1.0f)), _8176, _8178);
        _8175 = _8174 * 2.0f;
        _8177 = _8176 * 0.5f;
    }
    float _8262 = clamp(lerp(-1.0f, 1.0f, _8076), 0.0f, 1.0f) + clamp(lerp(-1.0f, 1.0f, _8178), 0.0f, 1.0f);
    float _8267 = clamp(_772 * mad(mad(_885, _1441, -_1651), Material_Material_PreshaderBuffer[90].z, mad(_7733, _8052, -_8262)), 0.0f, 1.0f);
    float3 _8275 = mad(_3516.z.xxx, in_var_TEXCOORD11_centroid.xyz, _639);
    float _8292 = max(abs(1.0f - max(0.0f, dot(_7761, _656))), 9.9999997473787516355514526367188e-05f);
    bool _8295 = _8292 <= 0.0f;
    float3 _8322 = mad((_772 * (mad(_1442, _1651, _1442) + mad(_8053, _8262, _8053))).xxx, in_var_TEXCOORD11_centroid.xyz, _639);
    float3 _8323 = ddx(View_View_ViewTilePosition);
    float3 _8325 = ddx(_8322);
    float3 _8327 = ddy(View_View_ViewTilePosition);
    float3 _8329 = ddy(_8322);
    float3 _8336 = lerp(lerp(lerp((normalize(cross((ddx(View_View_ViewTilePosition) * 2097152.0f) + ddx(_8275), (ddy(View_View_ViewTilePosition) * 2097152.0f) + ddy(_8275))) - _7755) + in_var_TEXCOORD11_centroid.xyz, lerp(_7761, float3(0.0f, 0.0f, 1.0f), lerp(Material_Material_PreshaderBuffer[97].x, Material_Material_PreshaderBuffer[96].w, mad(_8295 ? 0.0f : pow(_8292, Material_Material_PreshaderBuffer[96].x), Material_Material_PreshaderBuffer[96].z, Material_Material_PreshaderBuffer[96].y)).xxx), _771.xxx), float3(0.0f, 0.0f, 1.0f), lerp(Material_Material_PreshaderBuffer[97].y, 0.0f, _771).xxx), (normalize(cross((_8323 * 2097152.0f) + _8325, (_8327 * 2097152.0f) + _8329)) - _7755) + in_var_TEXCOORD11_centroid.xyz, _1442.xxx);
    float3 _8368 = Material_Material_PreshaderBuffer[107].xyz + Material_Material_PreshaderBuffer[106].xyz;
    if ((lerp(1.0f, 0.0f, clamp(mad(sqrt(mad(mad(_677, _677 * 4.76837158203125e-07f, mad(_667, _667 * 4.76837158203125e-07f, _671 * (_671 * 4.76837158203125e-07f))), 4.76837158203125e-07f, mad(_676, mad(_677, 9.5367431640625e-07f, _676), mad(_666, mad(_667, 9.5367431640625e-07f, _666), _670 * mad(_671, 9.5367431640625e-07f, _670))))) * (1.0f / max(9.9999997473787516355514526367188e-06f, MaterialCollection0_MaterialCollection0_Vectors[1].x)), -209715200000.0f, 100000.0f), 0.0f, 1.0f)) - 0.33329999446868896484375f) < 0.0f)
    {
        discard;
    }
    float _8386 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    uint _8387 = in_var_PRIMITIVE_ID * 41u;
    uint _8404 = (((1u | (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8387].x) & 512u) != 0u) ? 32u : 0u)) | (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8387].x) & 256u) != 0u) ? 64u : 0u)) & 4294967288u) | 4u;
    float _8413 = mad(clamp(lerp(lerp(Material_Material_PreshaderBuffer[105].x, Material_Material_PreshaderBuffer[103].w, mad(_8295 ? 0.0f : pow(_8292, Material_Material_PreshaderBuffer[104].y), Material_Material_PreshaderBuffer[104].w, Material_Material_PreshaderBuffer[104].z)), 1.0f, _8267), 0.0f, 1.0f), View_View_SpecularOverrideParameter.w, View_View_SpecularOverrideParameter.x);
    float4 _8414 = 0.0f.xxxx;
    _8414.y = _8413;
    float _8421 = clamp(max(View_View_MinRoughness, mad(lerp(Material_Material_PreshaderBuffer[95].w, Material_Material_PreshaderBuffer[95].z, _8267), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x)), 0.0f, 1.0f);
    _8414.z = _8421;
    float _8423 = clamp(lerp(Material_Material_PreshaderBuffer[97].z, 1.0f, _8267), 0.0f, 1.0f);
    _8414.w = _8423;
    float3 _8426 = clamp((Material_Material_PreshaderBuffer[107].xyz / _8368).xyz, 0.0f.xxx, 1.0f.xxx);
    float4 _8427 = float4(_8426.x, _8426.y, _8426.z, 0.0f.xxxx.w);
    _8427.w = 0.0f;
    float3 _8433 = mad(clamp(lerp(0.0f, Material_Material_PreshaderBuffer[105].y, _8267).xxx.xyz, 0.0f.xxx, 1.0f.xxx), View_View_DiffuseOverrideParameter.www, View_View_DiffuseOverrideParameter.xyz).xyz;
    float3 _8434 = normalize(_8336);
    float3 _8443 = 0.0f.xxx;
    float3 _8444 = 0.0f.xxx;
    [branch]
    if (!((asuint(dot(_8434, _8434)) & 2139095040u) != 2139095040u))
    {
        float3 _8442 = normalize(in_var_TEXCOORD11_centroid.xyz);
        _8443 = _8442;
        _8444 = _8442;
    }
    else
    {
        _8443 = _8336;
        _8444 = _8434;
    }
    float _8445 = 1.0f - _8423;
    bool _8453 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _8459 = 0.0f;
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8387].x) & 2u) != 0u) && _8453)
    {
        _8459 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _8459 = 1.0f;
    }
    float _8509 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8387].x) & 4u) != 0u)
    {
        float3 _8477 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _639, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _8488 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_8477.x), int(_8477.y), int(_8477.z), 0).xyz, 0)));
        _8509 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_8488.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_8477 / _8488.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _8509 = _8459;
    }
    float4 _8510 = float4(_8509, 1.0f, 1.0f, 1.0f);
    bool _8512 = all(bool4(_8510.x == 0.0f.xxxx.x, _8510.y == 0.0f.xxxx.y, _8510.z == 0.0f.xxxx.z, _8510.w == 0.0f.xxxx.w));
    bool _8514 = all(bool4(_8510.x == 1.0f.xxxx.x, _8510.y == 1.0f.xxxx.y, _8510.z == 1.0f.xxxx.z, _8510.w == 1.0f.xxxx.w));
    uint _8533 = 0u;
    if ((!_8512) && (!_8514))
    {
        _8533 = _8404 | 8u;
    }
    else
    {
        uint _8531 = 0u;
        if (_8512)
        {
            _8531 = (_8404 | 0u) | 16u;
        }
        else
        {
            uint _8528 = 0u;
            if (_8514)
            {
                _8528 = (_8404 | 0u) | 0u;
            }
            else
            {
                _8528 = _8404;
            }
            _8531 = _8528;
        }
        _8533 = _8531;
    }
    float _8534 = 0.07999999821186065673828125f * _8413;
    float3 _8539 = (_8433 * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _8544 = (_8534.xxx * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _8547 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _8552 = 0.0f.xxx;
    if (_8547)
    {
        _8552 = _8539 + (_8544 * 0.449999988079071044921875f);
    }
    else
    {
        _8552 = _8539;
    }
    bool3 _8553 = _8547.xxx;
    float3 _8554 = float3(_8553.x ? 0.0f.xxx.x : _8544.x, _8553.y ? 0.0f.xxx.y : _8544.y, _8553.z ? 0.0f.xxx.z : _8544.z);
    float3 _8616 = 0.0f.xxx;
    if (_8453)
    {
        float3 _8568 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _639, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _8572 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _8568);
        float4 _8576 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _8568);
        float4 _8579 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _8568);
        float4 _8597 = 0.0f.xxxx;
        _8597.y = (-0.48860299587249755859375f) * _8444.y;
        _8597.z = 0.48860299587249755859375f * _8444.z;
        _8597.w = (-0.48860299587249755859375f) * _8444.x;
        _8597.x = 0.886227548122406005859375f;
        float3 _8606 = _8597.yzw * 2.094395160675048828125f;
        float4 _8607 = float4(_8597.x, _8606.x, _8606.y, _8606.z);
        float3 _8609 = 0.0f.xxx;
        _8609.x = dot(float4(_8572.x, _8576.x, _8579.x, _8572.w), _8607);
        _8609.y = dot(float4(_8572.y, _8576.y, _8579.y, _8576.w), _8607);
        _8609.z = dot(float4(_8572.z, _8576.z, _8579.zw), _8607);
        _8616 = max(0.0f.xxx, _8609) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _8616 = 0.0f.xxx;
    }
    float3 _8619 = _8616 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _8634 = _8552 * _8423;
    uint2 _8661 = uint2(_622 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    bool _8678 = true && (SingleLayerWater_SingleLayerWater_bSeparateMainDirLightLuminance != 0u);
    float4 _8692 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _8692 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(0.0f.xx)), 0).xy, 0));
    }
    else
    {
        _8692 = 1.0f.xxxx;
    }
    float4 _8693 = _8692 * _8692;
    uint _8696 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8387].x);
    uint _8709 = (uint((_8696 & 2048u) != 0u) | (uint((_8696 & 4096u) != 0u) << 1u)) | (uint((_8696 & 8192u) != 0u) << 2u);
    float4 _9817 = 0.0f.xxxx;
    float3 _9818 = 0.0f.xxx;
    float _9819 = 0.0f;
    float4 _9820 = 0.0f.xxxx;
    float4 _9821 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        float4 _8734 = float4(_548, float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 2u) >> 1u), float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 4u) >> 2u), float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 8u) >> 3u));
        _8734.x = 1.0f;
        float4 _8738 = _8510;
        _8738.x = 1.0f;
        float _8817 = 0.0f;
        if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _8746 = _642.xxxx;
            float4 _8748 = float4(bool4(_8746.x >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.x, _8746.y >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.y, _8746.z >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.z, _8746.w >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _8756 = uint(((_8748.x + _8748.y) + _8748.z) + _8748.w);
            float _8816 = 0.0f;
            if (_8756 < OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _8766 = mul(float4(_638, 1.0f), OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_8756]);
                float2 _8770 = _8766.xy / _8766.w.xx;
                bool2 _8774 = bool2(_8770.x >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8756].xy.x, _8770.y >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8756].xy.y);
                bool2 _8776 = bool2(_8770.x <= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8756].zw.x, _8770.y <= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8756].zw.y);
                float _8815 = 0.0f;
                if (all(bool2(_8774.x && _8776.x, _8774.y && _8776.y)))
                {
                    float2 _8794 = mad(_8770, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy, (-0.5f).xx);
                    float2 _8795 = frac(_8794);
                    float4 _8806 = clamp((OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(OpaqueBasePass_Shared_Forward_ShadowmapSampler, (floor(_8794) + 1.0f.xx) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - mad(1.0f - _8766.z, 4000.0f, -1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _8810 = lerp(_8806.wx, _8806.zy, _8795.xx);
                    _8815 = lerp(_8810.x, _8810.y, _8795.y);
                }
                else
                {
                    _8815 = 1.0f;
                }
                _8816 = _8815;
            }
            else
            {
                _8816 = 1.0f;
            }
            _8817 = _8816;
        }
        else
        {
            _8817 = 1.0f;
        }
        float _9504 = 0.0f;
        [branch]
        if ((!(SingleLayerWater_SingleLayerWater_bMainDirectionalLightVSMFiltering != 0u)) && (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM != (-1)))
        {
            float _9502 = 0.0f;
            do
            {
                float _8827 = max(0.0f, 0.0f);
                uint _8828 = uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM);
                uint _8829 = _8828 * 336u;
                uint _8831 = (_8829 + 96u) >> 2u;
                float4x4 _8845 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                _8845[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8831 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8831 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8831 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8831 + 3u) * 4 + 0)));
                uint _8847 = (_8829 + 128u) >> 2u;
                float4x4 _8861 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                _8861[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8847 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8847 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8847 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8847 + 3u) * 4 + 0)));
                uint _8863 = (_8829 + 144u) >> 2u;
                _8861[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8863 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8863 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8863 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8863 + 3u) * 4 + 0)));
                uint _8879 = (_8829 + 160u) >> 2u;
                _8861[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8879 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8879 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8879 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8879 + 3u) * 4 + 0)));
                uint _8895 = (_8829 + 176u) >> 2u;
                _8861[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8895 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8895 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8895 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8895 + 3u) * 4 + 0)));
                uint _8911 = (_8829 + 256u) >> 2u;
                float3 _8921 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_8911 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8911 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8911 + 2u) * 4 + 0)));
                uint _8923 = (_8829 + 268u) >> 2u;
                uint _8927 = (_8829 + 272u) >> 2u;
                uint _8939 = (_8829 + 288u) >> 2u;
                if (VirtualShadowMap_ProjectionData.Load(_8923 * 4 + 0) == 0u)
                {
                    int _9174 = max(0, (int(floor(log2(length(((View_View_ViewTilePosition - (-_8921)) * 2097152.0f) + (_639 - (-asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_8939 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8939 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8939 + 2u) * 4 + 0))))))) + asfloat(VirtualShadowMap_ProjectionData.Load(((_8829 + 300u) >> 2u) * 4 + 0)))) - int(VirtualShadowMap_ProjectionData.Load(((_8829 + 312u) >> 2u) * 4 + 0))));
                    if (_9174 < int(VirtualShadowMap_ProjectionData.Load(((_8829 + 316u) >> 2u) * 4 + 0)))
                    {
                        int _9178 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM + _9174;
                        uint _9179 = uint(_9178);
                        uint _9180 = _9179 * 336u;
                        uint _9182 = (_9180 + 96u) >> 2u;
                        uint _9197 = (_9180 + 112u) >> 2u;
                        uint _9206 = (_9180 + 128u) >> 2u;
                        float4x4 _9220 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9220[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9206 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9206 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9206 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9206 + 3u) * 4 + 0)));
                        uint _9222 = (_9180 + 144u) >> 2u;
                        _9220[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9222 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9222 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9222 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9222 + 3u) * 4 + 0)));
                        uint _9238 = (_9180 + 160u) >> 2u;
                        _9220[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9238 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9238 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9238 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9238 + 3u) * 4 + 0)));
                        uint _9254 = (_9180 + 176u) >> 2u;
                        _9220[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9254 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9254 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9254 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9254 + 3u) * 4 + 0)));
                        uint _9270 = (_9180 + 256u) >> 2u;
                        uint _9282 = (_9180 + 272u) >> 2u;
                        float4 _9301 = mul(float4(((View_View_ViewTilePosition + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9270 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9270 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9270 + 2u) * 4 + 0)))) * 2097152.0f) + (_639 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9282 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9282 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9282 + 2u) * 4 + 0)))), 1.0f), _9220);
                        float2 _9302 = _9301.xy;
                        uint2 _9304 = uint2(_9302 * 128.0f);
                        uint _9320 = 0u;
                        do
                        {
                            if (uint(int(_9179)) < 8192u)
                            {
                                _9320 = _9179;
                                break;
                            }
                            _9320 = (8192u + ((_9179 - 8192u) * 21845u)) + (_9304.x + (_9304.y << 7u));
                            break;
                        } while(false);
                        uint _9328 = (VirtualShadowMap_PageTable[_9320] >> 20u) & 63u;
                        bool _9330 = (VirtualShadowMap_PageTable[_9320] & 134217728u) != 0u;
                        float _9493 = 0.0f;
                        bool _9494 = false;
                        if (_9330)
                        {
                            float _9469 = 0.0f;
                            float _9470 = 0.0f;
                            uint2 _9471 = uint2(0u, 0u);
                            uint2 _9472 = uint2(0u, 0u);
                            bool _9473 = false;
                            if (_9328 > 0u)
                            {
                                uint _9343 = (_9180 + 304u) >> 2u;
                                uint _9346 = _9343 + 1u;
                                uint _9351 = uint(int(_9179 + _9328));
                                uint _9354 = ((_9351 * 336u) + 304u) >> 2u;
                                int _9366 = int(_9328);
                                uint2 _9374 = ((_9304 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_9343 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_9346 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_9354 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9354 + 1u) * 4 + 0)))) << (_9366.xx & int2(31, 31)))) >> (_9328.xx & uint2(31u, 31u));
                                uint2 _9375 = _9374 * uint2(128u, 128u);
                                uint _9389 = uint(_9178 + _9366) * 336u;
                                uint _9391 = (_9389 + 112u) >> 2u;
                                uint _9406 = (_9389 + 304u) >> 2u;
                                float _9427 = (_9366 >= 0) ? (1.0f / float(1u << (uint(_9366) & 31u))) : float(1u << (uint(-_9366) & 31u));
                                uint _9456 = 0u;
                                do
                                {
                                    if (uint(int(_9351)) < 8192u)
                                    {
                                        _9456 = _9351;
                                        break;
                                    }
                                    _9456 = (8192u + ((_9351 - 8192u) * 21845u)) + (_9374.x + (_9374.y << 7u));
                                    break;
                                } while(false);
                                _9469 = _9427;
                                _9470 = mad(-_9427, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9197 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9197 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9197 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9197 + 3u) * 4 + 0))).z, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9391 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9391 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9391 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9391 + 3u) * 4 + 0))).z);
                                _9471 = clamp(uint2(((_9302 * _9427) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_9406 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9406 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_9343 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_9346 * 4 + 0)))) * _9427)) * 0.25f).xy) * 16384.0f), _9375, _9375 + uint2(127u, 127u));
                                _9472 = uint2(VirtualShadowMap_PageTable[_9456] & 1023u, (VirtualShadowMap_PageTable[_9456] >> 10u) & 1023u);
                                _9473 = ((VirtualShadowMap_PageTable[_9456] & 134217728u) != 0u) && (((VirtualShadowMap_PageTable[_9456] >> 20u) & 63u) == 0u);
                            }
                            else
                            {
                                _9469 = 1.0f;
                                _9470 = 0.0f;
                                _9471 = uint2(_9302 * 16384.0f);
                                _9472 = uint2(VirtualShadowMap_PageTable[_9320] & 1023u, (VirtualShadowMap_PageTable[_9320] >> 10u) & 1023u);
                                _9473 = _9330 && (_9328 == 0u);
                            }
                            float _9491 = 0.0f;
                            if (_9473)
                            {
                                int4 _9482 = int4(uint4((_9472 * uint2(128u, 128u)) + (_9471 & uint2(127u, 127u)), 0u, 0u));
                                _9491 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_9482.xyz, _9482.w)).x) - _9470) / _9469;
                            }
                            else
                            {
                                _9491 = 0.0f;
                            }
                            _9493 = _9491;
                            _9494 = _9473 ? true : false;
                        }
                        else
                        {
                            _9493 = 0.0f;
                            _9494 = false;
                        }
                        if (_9494)
                        {
                            _9502 = (mad(_8827, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9182 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9182 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9182 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9182 + 3u) * 4 + 0))).z, _9493) > _9301.z) ? 0.0f : 1.0f;
                            break;
                        }
                    }
                }
                else
                {
                    float3 _8974 = ((View_View_ViewTilePosition + _8921) * 2097152.0f) + (_639 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_8927 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8927 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8927 + 2u) * 4 + 0))));
                    float4x4 _9087 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    int _9088 = 0;
                    float4x4 _9089 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    if (VirtualShadowMap_ProjectionData.Load(_8923 * 4 + 0) != 2u)
                    {
                        uint _9002 = 0u;
                        do
                        {
                            float _8980 = _8974.x;
                            float _8981 = abs(_8980);
                            float _8982 = _8974.y;
                            float _8983 = abs(_8982);
                            float _8985 = _8974.z;
                            float _8986 = abs(_8985);
                            if ((_8981 >= _8983) && (_8981 >= _8986))
                            {
                                _9002 = (_8980 > 0.0f) ? 0u : 1u;
                                break;
                            }
                            else
                            {
                                if (_8983 > _8986)
                                {
                                    _9002 = (_8982 > 0.0f) ? 2u : 3u;
                                    break;
                                }
                                else
                                {
                                    _9002 = (_8985 > 0.0f) ? 4u : 5u;
                                    break;
                                }
                                break; // unreachable workaround
                            }
                            break; // unreachable workaround
                        } while(false);
                        int _9004 = int(_8828 + _9002);
                        uint _9006 = uint(_9004) * 336u;
                        uint _9008 = (_9006 + 96u) >> 2u;
                        float4x4 _9022 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9022[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9008 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9008 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9008 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9008 + 3u) * 4 + 0)));
                        uint _9024 = (_9006 + 128u) >> 2u;
                        float4x4 _9038 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9038[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9024 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9024 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9024 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9024 + 3u) * 4 + 0)));
                        uint _9040 = (_9006 + 144u) >> 2u;
                        _9038[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9040 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9040 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9040 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9040 + 3u) * 4 + 0)));
                        uint _9056 = (_9006 + 160u) >> 2u;
                        _9038[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9056 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9056 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9056 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9056 + 3u) * 4 + 0)));
                        uint _9072 = (_9006 + 176u) >> 2u;
                        _9038[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9072 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9072 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9072 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9072 + 3u) * 4 + 0)));
                        _9087 = _9022;
                        _9088 = _9004;
                        _9089 = _9038;
                    }
                    else
                    {
                        _9087 = _8845;
                        _9088 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM;
                        _9089 = _8861;
                    }
                    float4 _9094 = mul(float4(_8974, 1.0f), _9089);
                    float _9095 = _9094.w;
                    float3 _9098 = _9094.xyz / _9095.xxx;
                    float2 _9099 = _9098.xy;
                    float _9152 = 0.0f;
                    bool _9153 = false;
                    do
                    {
                        bool _9109 = false;
                        uint _9102 = uint(_9088);
                        uint2 _9104 = uint2(_9099 * 128.0f);
                        uint _9120 = 0u;
                        do
                        {
                            _9109 = uint(int(_9102)) < 8192u;
                            if (_9109)
                            {
                                _9120 = _9102;
                                break;
                            }
                            _9120 = (8192u + ((_9102 - 8192u) * 21845u)) + (_9104.x + (_9104.y << 7u));
                            break;
                        } while(false);
                        if ((VirtualShadowMap_PageTable[_9120] & 134217728u) != 0u)
                        {
                            int4 _9145 = int4(uint4((uint2(VirtualShadowMap_PageTable[_9120] & 1023u, (VirtualShadowMap_PageTable[_9120] >> 10u) & 1023u) * uint2(128u, 128u)) + (uint2(_9099 * float(16384u >> ((_9109 ? 7u : ((VirtualShadowMap_PageTable[_9120] >> 20u) & 63u)) & 31u))) & uint2(127u, 127u)), 0u, 0u));
                            _9152 = asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_9145.xyz, _9145.w)).x);
                            _9153 = true;
                            break;
                        }
                        _9152 = 0.0f;
                        _9153 = false;
                        break;
                    } while(false);
                    if (_9153)
                    {
                        _9502 = ((_9152 - (((-_8827) * _9087[2].z) / _9095)) > _9098.z) ? 0.0f : 1.0f;
                        break;
                    }
                }
                _9502 = 1.0f;
                break;
            } while(false);
            _9504 = _8817 * _9502;
        }
        else
        {
            _9504 = _8817;
        }
        float _9511 = clamp(mad(_642, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
        float _9513 = lerp(_9504, lerp(1.0f, dot(_8738, _8734), dot(_8734, 1.0f.xxxx)), _9511 * _9511);
        float3 _9788 = 0.0f.xxx;
        float3 _9789 = 0.0f.xxx;
        [branch]
        if ((_9513 + min(_9513, 1.0f)) > 0.0f)
        {
            float _9519 = max(_8421, View_View_MinRoughness);
            float _9520 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _9523 = rsqrt(_9520);
            float3 _9524 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _9523;
            float _9525 = dot(_8444, _9524);
            float _9543 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _9532 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_9520 + 1.0f)), 0.0f, 1.0f));
                float _9542 = 0.0f;
                if (_9525 < _9532)
                {
                    float _9538 = _9532 + max(_9525, -_9532);
                    _9542 = (_9538 * _9538) / (4.0f * _9532);
                }
                else
                {
                    _9542 = _9525;
                }
                _9543 = _9542;
            }
            else
            {
                _9543 = _9525;
            }
            float _9544 = clamp(_9543, 0.0f, 1.0f);
            float _9545 = max(_9519, View_View_MinRoughness);
            float _9550 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _9523) * mad(-_9545, _9545, 1.0f), 0.0f, 1.0f);
            uint _9557 = 0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u);
            float _9558 = dot(_8444, _656);
            float _9559 = dot(_656, _9524);
            float _9561 = rsqrt(mad(2.0f, _9559, 2.0f));
            float _9564 = clamp((_9525 + _9558) * _9561, 0.0f, 1.0f);
            float _9566 = clamp(mad(_9561, _9559, _9561), 0.0f, 1.0f);
            bool _9567 = _9550 > 0.0f;
            float _9646 = 0.0f;
            float _9647 = 0.0f;
            if (_9567)
            {
                float _9572 = sqrt(mad(-_9550, _9550, 1.0f));
                float _9573 = 2.0f * _9525;
                float _9574 = -_9559;
                float _9575 = mad(_9573, _9558, _9574);
                float _9644 = 0.0f;
                float _9645 = 0.0f;
                if (_9575 >= _9572)
                {
                    _9644 = 1.0f;
                    _9645 = abs(_9558);
                }
                else
                {
                    float _9580 = -_9575;
                    float _9583 = _9550 * rsqrt(mad(_9580, _9575, 1.0f));
                    float _9584 = mad(_9580, _9525, _9558);
                    float _9588 = mad(_9580, _9559, mad(2.0f * _9558, _9558, -1.0f));
                    float _9599 = _9583 * sqrt(clamp(mad(_9573 * _9558, _9559, mad(_9574, _9559, mad(-_9558, _9558, mad(-_9525, _9525, 1.0f)))), 0.0f, 1.0f));
                    float _9601 = (_9599 * 2.0f) * _9558;
                    float _9602 = mad(_9525, _9572, _9558);
                    float _9603 = mad(_9583, _9584, _9602);
                    float _9605 = mad(_9583, _9588, mad(_9559, _9572, 1.0f));
                    float _9606 = _9599 * _9605;
                    float _9607 = _9603 * _9605;
                    float _9612 = _9607 * mad(-0.5f, _9606, (0.25f * _9601) * _9603);
                    float _9622 = mad(_9603, mad(_9602, _9605 * _9605, _9607 * mad(-0.5f, mad(_9559, _9572, _9605), -0.5f)), mad(_9606, _9606, (_9601 * _9603) * mad(_9601, _9603, _9606 * (-2.0f))));
                    float _9626 = (2.0f * _9612) / mad(_9622, _9622, _9612 * _9612);
                    float _9627 = _9626 * _9622;
                    float _9629 = mad(-_9626, _9612, 1.0f);
                    float _9635 = mad(_9559, _9572, mad(_9629, _9583 * _9588, _9627 * _9601));
                    float _9637 = rsqrt(mad(2.0f, _9635, 2.0f));
                    _9644 = clamp((mad(_9525, _9572, mad(_9629, _9583 * _9584, _9627 * _9599)) + _9558) * _9637, 0.0f, 1.0f);
                    _9645 = clamp(mad(_9637, _9635, _9637), 0.0f, 1.0f);
                }
                _9646 = _9644;
                _9647 = _9645;
            }
            else
            {
                _9646 = _9564;
                _9647 = _9566;
            }
            float _9650 = clamp(abs(_9558) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float _9651 = _9519 * _9519;
            float _9652 = _9651 * _9651;
            float _9657 = clamp(_9566, 0.0f, 1.0f);
            int _9659 = asint(_9652);
            float _9665 = clamp(0.0555555559694766998291015625f * log2(mad(2.0f, asfloat(2129859010 - _9659), -1.0f)), 0.0f, 1.0f);
            float _9666 = 1.0f - _9657;
            float _9667 = _9666 * _9666;
            float _9670 = 1.0f - clamp(_9558, 0.0f, 1.0f);
            float _9671 = _9670 * _9670;
            float _9675 = 1.0f - clamp(_9544, 0.0f, 1.0f);
            float _9676 = _9675 * _9675;
            float3 _9700 = 1.0f.xxx * _9544;
            float3 _9750 = 0.0f.xxx;
            if ((_9557 & 1u) == 1u)
            {
                _9750 = 0.0f.xxx;
            }
            else
            {
                float _9719 = 0.0f;
                if (_9567)
                {
                    _9719 = _9652 / mad(_9651, _9651, ((0.25f * _9550) * mad(3.0f, asfloat(532487669 + (_9659 >> 1)), _9550)) / (_9647 + 0.001000000047497451305389404296875f));
                }
                else
                {
                    _9719 = 1.0f;
                }
                float _9722 = mad(mad(_9646, _9652, -_9646), _9646, 1.0f);
                float _9727 = sqrt(_9652);
                float _9728 = 1.0f - _9727;
                float _9734 = 1.0f - _9647;
                float _9735 = _9734 * _9734;
                float _9736 = _9735 * _9735;
                _9750 = _9700 * (((clamp(50.0f * _8554.y, 0.0f, 1.0f) * (_9736 * _9734)).xxx + (_8554 * mad(-_9736, _9734, 1.0f))) * (((_9652 / ((3.1415927410125732421875f * _9722) * _9722)) * _9719) * (0.5f / mad(_9544, mad(_9650, _9728, _9727), _9650 * mad(_9544, _9728, _9727)))));
            }
            float4 _9759 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_9650, _9519), 0.0f);
            bool3 _9763 = (View_View_bShadingEnergyConservation != 0u).xxx;
            float _9764 = _9759.x;
            float3 _9768 = 1.0f.xxx + (_8554 * ((1.0f - _9764) / _9764));
            float3 _9769 = float3(_9763.x ? _9768.x : 1.0f.xxx.x, _9763.y ? _9768.y : 1.0f.xxx.y, _9763.z ? _9768.z : 1.0f.xxx.z);
            float3 _9785 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _9513;
            float3 _9787 = mad(((_8634 * (0.3183098733425140380859375f * mad((mad(mad(34.5f, _9665, -59.0f), _9665, 24.5f) * _9657) * exp2((-max(mad(73.1999969482421875f, _9665, -21.200000762939453125f), 8.8999996185302734375f)) * asfloat(532487669 + (asint(clamp(_9564, 0.0f, 1.0f)) >> 1))), asfloat(_9557 >> 1u), lerp(mad(_9667 * _9667, _9666, _9657), mad(-0.75f, (_9671 * _9671) * _9670, 1.0f) * mad(-0.75f, (_9676 * _9676) * _9675, 1.0f), clamp(mad(2.2000000476837158203125f, _9665, -0.5f), 0.0f, 1.0f))))) * _9700) * ((View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(_9769 * ((_8554 * _9764) + ((clamp(50.0f * _8554.y, 0.0f, 1.0f).xxx - _8554) * _9759.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f), _9785, 0.0f.xxx);
            _9788 = _9787;
            _9789 = ((_9750 * _9769) * 1.0f) * _9785;
        }
        else
        {
            _9788 = 0.0f.xxx;
            _9789 = 0.0f.xxx;
        }
        float4 _9793 = float4(_9788, 0.0f);
        float4 _9797 = float4(_9789, 0.0f);
        float3 _9814 = 0.0f.xxx;
        float4 _9815 = 0.0f.xxxx;
        float4 _9816 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _8709) != 0u)
        {
            float4 _9802 = float4(_9793.x, _9793.y, _9793.z, _9793.w);
            float4 _9803 = float4(_9797.x, _9797.y, _9797.z, _9797.w);
            float3 _9810 = 0.0f.xxx;
            if (_8678)
            {
                _9810 = _9793.xyz + _9797.xyz;
            }
            else
            {
                _9810 = 0.0f.xxx;
            }
            bool4 _9811 = _8678.xxxx;
            _9814 = _9810;
            _9815 = float4(_9811.x ? 0.0f.xxxx.x : _9802.x, _9811.y ? 0.0f.xxxx.y : _9802.y, _9811.z ? 0.0f.xxxx.z : _9802.z, _9811.w ? 0.0f.xxxx.w : _9802.w);
            _9816 = float4(_9811.x ? 0.0f.xxxx.x : _9803.x, _9811.y ? 0.0f.xxxx.y : _9803.y, _9811.z ? 0.0f.xxxx.z : _9803.z, _9811.w ? 0.0f.xxxx.w : _9803.w);
        }
        else
        {
            _9814 = 0.0f.xxx;
            _9815 = 0.0f.xxxx;
            _9816 = 0.0f.xxxx;
        }
        _9817 = _8738;
        _9818 = _9814;
        _9819 = _9513;
        _9820 = _9815;
        _9821 = _9816;
    }
    else
    {
        _9817 = _8510;
        _9818 = 0.0f.xxx;
        _9819 = 1.0f;
        _9820 = 0.0f.xxxx;
        _9821 = 0.0f.xxxx;
    }
    uint _9822 = ((((min(uint(max(0.0f, log2(mad(_583, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _8661.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _8661.x) * 2u;
    uint _9828 = _9822 + 1u;
    uint _9831 = min(min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_9822], OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
    float4 _9833 = 0.0f.xxxx;
    float4 _9836 = 0.0f.xxxx;
    _9833 = _9820;
    _9836 = _9821;
    float4 _9834 = 0.0f.xxxx;
    float4 _9837 = 0.0f.xxxx;
    [loop]
    for (uint _9838 = 0u; _9838 < _9831; _9833 = _9834, _9836 = _9837, _9838++)
    {
        uint _9847 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_9828] + _9838).x * 6u;
        uint _9850 = _9847 + 1u;
        uint _9853 = _9847 + 2u;
        uint _9856 = _9847 + 3u;
        uint _9859 = _9847 + 4u;
        uint _9863 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9853].w);
        uint _9869 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9850].y);
        uint _9885 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9856].z);
        float2 _9887 = spvUnpackHalf2x16(_9885 & 65535u);
        float _9888 = _9887.x;
        float2 _9891 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9856].w));
        float _9892 = _9891.x;
        bool _9897 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9850].w == 0.0f;
        float4 _9918 = float4(float(_9863 & 1u), float((_9863 & 2u) >> 1u), float((_9863 & 4u) >> 2u), float((_9863 & 8u) >> 3u));
        uint _9919 = _9863 >> 4u;
        float3 _9935 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9847].xyz - _638;
        float _9936 = dot(_9935, _9935);
        float _9953 = 0.0f;
        if (_9897)
        {
            float _9948 = _9936 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9847].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9847].w);
            float _9951 = clamp(mad(-_9948, _9948, 1.0f), 0.0f, 1.0f);
            _9953 = _9951 * _9951;
        }
        else
        {
            float3 _9942 = _9935 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9847].w;
            _9953 = pow(1.0f - clamp(dot(_9942, _9942), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9850].w);
        }
        float _9964 = 0.0f;
        if (((_9863 >> 16u) & 3u) == 2u)
        {
            float _9961 = clamp((dot(_9935 * rsqrt(_9936), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9853].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9856].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9856].y, 0.0f, 1.0f);
            _9964 = _9953 * (_9961 * _9961);
        }
        else
        {
            _9964 = _9953;
        }
        float3 _10335 = 0.0f.xxx;
        float3 _10336 = 0.0f.xxx;
        [branch]
        if (_9964 > 0.0f)
        {
            float _9976 = 0.0f;
            [branch]
            if (uint((_9863 & 255u) != 0u) != 0u)
            {
                _9976 = dot(float4(float(_9919 & 1u), float((_9919 & 2u) >> 1u), float((_9919 & 4u) >> 2u), float((_9919 & 8u) >> 3u)), _8693) * lerp(1.0f, dot(_9817, _9918), dot(_9918, 1.0f.xxxx));
            }
            else
            {
                _9976 = 1.0f;
            }
            float3 _10333 = 0.0f.xxx;
            float3 _10334 = 0.0f.xxx;
            [branch]
            if ((_9976 + _9976) > 0.0f)
            {
                float3 _9982 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9859].xyz * (0.5f * _9892);
                float3 _9983 = _9935 - _9982;
                float3 _9984 = _9935 + _9982;
                float _9985 = max(_8421, View_View_MinRoughness);
                bool _9986 = _9892 > 0.0f;
                float _10011 = 0.0f;
                float _10012 = 0.0f;
                float _10013 = 0.0f;
                [branch]
                if (_9986)
                {
                    float _9998 = rsqrt(dot(_9983, _9983));
                    float _9999 = rsqrt(dot(_9984, _9984));
                    float _10000 = _9998 * _9999;
                    float _10002 = dot(_9983, _9984) * _10000;
                    _10011 = _10002;
                    _10012 = 0.5f * mad(dot(_8444, _9983), _9998, dot(_8444, _9984) * _9999);
                    _10013 = _10000 / mad(_9998, _9999, mad(_10002, 0.5f, 0.5f));
                }
                else
                {
                    float _9990 = dot(_9983, _9983);
                    _10011 = 1.0f;
                    _10012 = dot(_8444, _9983 * rsqrt(_9990));
                    _10013 = 1.0f / (_9990 + 1.0f);
                }
                float _10031 = 0.0f;
                if (_9888 > 0.0f)
                {
                    float _10020 = sqrt(clamp((_9888 * _9888) * _10013, 0.0f, 1.0f));
                    float _10030 = 0.0f;
                    if (_10012 < _10020)
                    {
                        float _10026 = _10020 + max(_10012, -_10020);
                        _10030 = (_10026 * _10026) / (4.0f * _10020);
                    }
                    else
                    {
                        _10030 = _10012;
                    }
                    _10031 = _10030;
                }
                else
                {
                    _10031 = _10012;
                }
                float _10032 = clamp(_10031, 0.0f, 1.0f);
                float3 _10050 = 0.0f.xxx;
                if (_9986)
                {
                    float3 _10037 = reflect(-_656, _8444);
                    float3 _10038 = _9984 - _9983;
                    float _10039 = dot(_10037, _10038);
                    _10050 = _9983 + (_10038 * clamp(dot(_9983, (_10037 * _10039) - _10038) / mad(_9892, _9892, -(_10039 * _10039)), 0.0f, 1.0f));
                }
                else
                {
                    _10050 = _9983;
                }
                float _10052 = rsqrt(dot(_10050, _10050));
                float3 _10053 = _10050 * _10052;
                float _10054 = max(_9985, View_View_MinRoughness);
                float _10059 = clamp((_9888 * _10052) * mad(-_10054, _10054, 1.0f), 0.0f, 1.0f);
                float _10061 = clamp(spvUnpackHalf2x16(_9885 >> 16u).x * _10052, 0.0f, 1.0f);
                uint _10068 = 0u | (asuint(clamp(mad(-max(_9892, _9888), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u);
                float _10069 = dot(_8444, _10053);
                float _10070 = dot(_8444, _656);
                float _10071 = dot(_656, _10053);
                float _10073 = rsqrt(mad(2.0f, _10071, 2.0f));
                float _10076 = clamp((_10069 + _10070) * _10073, 0.0f, 1.0f);
                float _10078 = clamp(mad(_10073, _10071, _10073), 0.0f, 1.0f);
                bool _10079 = _10059 > 0.0f;
                float _10158 = 0.0f;
                float _10159 = 0.0f;
                if (_10079)
                {
                    float _10084 = sqrt(mad(-_10059, _10059, 1.0f));
                    float _10085 = 2.0f * _10069;
                    float _10086 = -_10071;
                    float _10087 = mad(_10085, _10070, _10086);
                    float _10156 = 0.0f;
                    float _10157 = 0.0f;
                    if (_10087 >= _10084)
                    {
                        _10156 = 1.0f;
                        _10157 = abs(_10070);
                    }
                    else
                    {
                        float _10092 = -_10087;
                        float _10095 = _10059 * rsqrt(mad(_10092, _10087, 1.0f));
                        float _10096 = mad(_10092, _10069, _10070);
                        float _10100 = mad(_10092, _10071, mad(2.0f * _10070, _10070, -1.0f));
                        float _10111 = _10095 * sqrt(clamp(mad(_10085 * _10070, _10071, mad(_10086, _10071, mad(-_10070, _10070, mad(-_10069, _10069, 1.0f)))), 0.0f, 1.0f));
                        float _10113 = (_10111 * 2.0f) * _10070;
                        float _10114 = mad(_10069, _10084, _10070);
                        float _10115 = mad(_10095, _10096, _10114);
                        float _10117 = mad(_10095, _10100, mad(_10071, _10084, 1.0f));
                        float _10118 = _10111 * _10117;
                        float _10119 = _10115 * _10117;
                        float _10124 = _10119 * mad(-0.5f, _10118, (0.25f * _10113) * _10115);
                        float _10134 = mad(_10115, mad(_10114, _10117 * _10117, _10119 * mad(-0.5f, mad(_10071, _10084, _10117), -0.5f)), mad(_10118, _10118, (_10113 * _10115) * mad(_10113, _10115, _10118 * (-2.0f))));
                        float _10138 = (2.0f * _10124) / mad(_10134, _10134, _10124 * _10124);
                        float _10139 = _10138 * _10134;
                        float _10141 = mad(-_10138, _10124, 1.0f);
                        float _10147 = mad(_10071, _10084, mad(_10141, _10095 * _10100, _10139 * _10113));
                        float _10149 = rsqrt(mad(2.0f, _10147, 2.0f));
                        _10156 = clamp((mad(_10069, _10084, mad(_10141, _10095 * _10096, _10139 * _10111)) + _10070) * _10149, 0.0f, 1.0f);
                        _10157 = clamp(mad(_10149, _10147, _10149), 0.0f, 1.0f);
                    }
                    _10158 = _10156;
                    _10159 = _10157;
                }
                else
                {
                    _10158 = _10076;
                    _10159 = _10078;
                }
                float _10162 = clamp(abs(_10070) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float _10163 = _9985 * _9985;
                float _10164 = _10163 * _10163;
                float _10169 = clamp(_10078, 0.0f, 1.0f);
                float _10177 = clamp(0.0555555559694766998291015625f * log2(mad(2.0f, asfloat(2129859010 - asint(_10164)), -1.0f)), 0.0f, 1.0f);
                float _10178 = 1.0f - _10169;
                float _10179 = _10178 * _10178;
                float _10182 = 1.0f - clamp(_10070, 0.0f, 1.0f);
                float _10183 = _10182 * _10182;
                float _10187 = 1.0f - clamp(_10032, 0.0f, 1.0f);
                float _10188 = _10187 * _10187;
                float3 _10213 = 1.0f.xxx * ((_9897 ? _10013 : 1.0f) * _10032);
                float3 _10295 = 0.0f.xxx;
                if ((_10068 & 1u) == 1u)
                {
                    _10295 = 0.0f.xxx;
                }
                else
                {
                    float _10228 = 0.0f;
                    if (_10061 > 0.0f)
                    {
                        _10228 = clamp(mad(_10163, _10163, (_10061 * _10061) / mad(_10159, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _10228 = _10164;
                    }
                    float _10242 = 0.0f;
                    float _10243 = 0.0f;
                    if (_10079)
                    {
                        float _10240 = _10228 + (((0.25f * _10059) * mad(3.0f, asfloat(532487669 + (asint(_10228) >> 1)), _10059)) / (_10159 + 0.001000000047497451305389404296875f));
                        _10242 = _10228 / _10240;
                        _10243 = _10240;
                    }
                    else
                    {
                        _10242 = 1.0f;
                        _10243 = _10228;
                    }
                    float _10264 = 0.0f;
                    if (_10011 < 1.0f)
                    {
                        float _10250 = sqrt((1.00010001659393310546875f - _10011) / (1.0f + _10011));
                        _10264 = _10242 * sqrt(_10243 / (_10243 + (((0.25f * _10250) * mad(3.0f, asfloat(532487669 + (asint(_10243) >> 1)), _10250)) / (_10159 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _10264 = _10242;
                    }
                    float _10267 = mad(mad(_10158, _10228, -_10158), _10158, 1.0f);
                    float _10272 = sqrt(_10228);
                    float _10273 = 1.0f - _10272;
                    float _10279 = 1.0f - _10159;
                    float _10280 = _10279 * _10279;
                    float _10281 = _10280 * _10280;
                    _10295 = _10213 * (((clamp(50.0f * _8554.y, 0.0f, 1.0f) * (_10281 * _10279)).xxx + (_8554 * mad(-_10281, _10279, 1.0f))) * (((_10228 / ((3.1415927410125732421875f * _10267) * _10267)) * _10264) * (0.5f / mad(_10032, mad(_10162, _10273, _10272), _10162 * mad(_10032, _10273, _10272)))));
                }
                float4 _10304 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_10162, _9985), 0.0f);
                bool3 _10308 = (View_View_bShadingEnergyConservation != 0u).xxx;
                float _10309 = _10304.x;
                float3 _10313 = 1.0f.xxx + (_8554 * ((1.0f - _10309) / _10309));
                float3 _10314 = float3(_10308.x ? _10313.x : 1.0f.xxx.x, _10308.y ? _10313.y : 1.0f.xxx.y, _10308.z ? _10313.z : 1.0f.xxx.z);
                float3 _10330 = ((float3(float((_9869 >> 0u) & 1023u), float((_9869 >> 10u) & 1023u), float((_9869 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9850].x) * _9964) * _9976;
                float3 _10332 = mad(((_8634 * (0.3183098733425140380859375f * mad((mad(mad(34.5f, _10177, -59.0f), _10177, 24.5f) * _10169) * exp2((-max(mad(73.1999969482421875f, _10177, -21.200000762939453125f), 8.8999996185302734375f)) * asfloat(532487669 + (asint(clamp(_10076, 0.0f, 1.0f)) >> 1))), asfloat(_10068 >> 1u), lerp(mad(_10179 * _10179, _10178, _10169), mad(-0.75f, (_10183 * _10183) * _10182, 1.0f) * mad(-0.75f, (_10188 * _10188) * _10187, 1.0f), clamp(mad(2.2000000476837158203125f, _10177, -0.5f), 0.0f, 1.0f))))) * _10213) * ((View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(_10314 * ((_8554 * _10309) + ((clamp(50.0f * _8554.y, 0.0f, 1.0f).xxx - _8554) * _10304.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f), _10330, 0.0f.xxx);
                _10333 = _10332;
                _10334 = ((_10295 * _10314) * spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9859].w) & 65535u).x) * _10330;
            }
            else
            {
                _10333 = 0.0f.xxx;
                _10334 = 0.0f.xxx;
            }
            _10335 = _10333;
            _10336 = _10334;
        }
        else
        {
            _10335 = 0.0f.xxx;
            _10336 = 0.0f.xxx;
        }
        [flatten]
        if ((((_9863 >> 8u) & 7u) & _8709) != 0u)
        {
            _9834 = _9833 + float4(_10335, 0.0f);
            _9837 = _9836 + float4(_10336, 0.0f);
        }
        else
        {
            _9834 = _9833;
            _9837 = _9836;
        }
    }
    bool4 _10354 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    float3 _10440 = 0.0f.xxx;
    float3 _10441 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _10385 = _8387 + 31u;
        float3 _10394 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_8387 + 1u].xyz) * 2097152.0f) + (_639 - Scene_GPUScene_GPUScenePrimitiveSceneData[_8387 + 18u].xyz));
        float3 _10395 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_8387 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_8387 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_8387 + 25u].w) + 1.0f.xxx;
        float3 _10438 = 0.0f.xxx;
        float3 _10439 = 0.0f.xxx;
        if (any(bool3(_10394.x > _10395.x, _10394.y > _10395.y, _10394.z > _10395.z)))
        {
            float3 _10418 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _10419 = _639 * 0.57700002193450927734375f.xxx;
            float3 _10434 = frac(mad((_10419.x + _10419.y) + _10419.z, 0.00200000009499490261077880859375f, frac(((_10418.x + _10418.y) + _10418.z) * 4194.30419921875f))).xxx;
            float3 _10437 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_10434.x > 0.5f.xxx.x, _10434.y > 0.5f.xxx.y, _10434.z > 0.5f.xxx.z)));
            _10438 = _10437;
            _10439 = _10437;
        }
        else
        {
            float3 _10417 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_10385].x > 0.0f)
            {
                float3 _10405 = abs(_638 - in_var_TEXCOORD9);
                _10417 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_10405.x, max(_10405.y, _10405.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_10385].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _10417 = 0.0f.xxx;
            }
            _10438 = 0.0f.xxx;
            _10439 = _10417;
        }
        _10440 = _10438;
        _10441 = _10439;
    }
    else
    {
        _10440 = 0.0f.xxx;
        _10441 = 0.0f.xxx;
    }
    float4 _10453 = OpaqueBasePass_PreIntegratedGFTexture.SampleLevel(View_SharedBilinearClampedSampler, float2(max(0.0f, dot(_8444, _656)), _8421), 0.0f);
    float3 _10691 = 0.0f.xxx;
    float3 _10692 = 0.0f.xxx;
    if (_8445 > 0.0f)
    {
        float2 _10481 = clamp(mad(_629.xy / _642.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz), SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.xy, SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.zw);
        float4 _10483 = SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture.SampleLevel(View_SharedBilinearClampedSampler, _10481, 0.0f);
        float _10484 = _10483.x;
        float _10494 = -View_View_InvDeviceZToWorldZTransform.w;
        float _10497 = mad(_10484, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10484, View_View_InvDeviceZToWorldZTransform.z, _10494));
        float _10528 = _10497 - _642;
        float2 _10537 = clamp(_10481 + (((((((normalize(mul(_8444, float3x3(View_View_TranslatedWorldToView[0].xyz, View_View_TranslatedWorldToView[1].xyz, View_View_TranslatedWorldToView[2].xyz))).xy * (Material_Material_PreshaderBuffer[107].w - 1.0f)) * View_View_ViewSizeAndInvSize.xy) * View_View_BufferSizeAndInvSize.zw) * ((SingleLayerWater_SingleLayerWater_DistortionParams.zw * float2(0.000230000005103647708892822265625f, -0.000230000005103647708892822265625f)) * float2(SingleLayerWater_SingleLayerWater_DistortionParams.x, SingleLayerWater_SingleLayerWater_DistortionParams.y * SingleLayerWater_SingleLayerWater_DistortionParams.x))) * clamp(mad(_10528, 1.0f / max(1.0f, clamp(abs(Material_Material_PreshaderBuffer[108].x * (-0.5f)), 0.0f, 50.0f)), -Material_Material_PreshaderBuffer[108].x), 0.0f, 1.0f)) * 4.0f) * clamp(_10528 * 0.0333333350718021392822265625f, 0.0f, 1.0f)), SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.xy, SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.zw);
        float4 _10539 = SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture.GatherRed(View_SharedBilinearClampedSampler, _10537);
        float _10540 = _10539.x;
        float _10545 = _10539.y;
        float _10550 = _10539.z;
        float _10555 = _10539.w;
        float4 _10560 = float4(mad(_10540, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10540, View_View_InvDeviceZToWorldZTransform.z, _10494)), mad(_10545, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10545, View_View_InvDeviceZToWorldZTransform.z, _10494)), mad(_10550, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10550, View_View_InvDeviceZToWorldZTransform.z, _10494)), mad(_10555, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10555, View_View_InvDeviceZToWorldZTransform.z, _10494)));
        float4 _10561 = _642.xxxx;
        bool _10563 = any(bool4(_10560.x < _10561.x, _10560.y < _10561.y, _10560.z < _10561.z, _10560.w < _10561.w));
        float _10589 = 0.0f;
        float _10590 = 0.0f;
        if (_10563)
        {
            _10589 = _10497;
            _10590 = _10484;
        }
        else
        {
            float2 _10570 = frac(((_10537 * SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterTextureSize) * 1.0f) - 0.5f.xx);
            float _10572 = _10570.x;
            float _10573 = 1.0f - _10572;
            float _10574 = _10570.y;
            float _10575 = 1.0f - _10574;
            float4 _10577 = 0.0f.xxxx;
            _10577.x = _10573 * _10575;
            _10577.y = _10572 * _10575;
            _10577.z = _10573 * _10574;
            _10577.w = _10572 * _10574;
            float _10584 = dot(_10539.wzxy, _10577);
            _10589 = mad(_10584, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10584, View_View_InvDeviceZToWorldZTransform.z, _10494));
            _10590 = _10584;
        }
        bool2 _10591 = _10563.xx;
        float _10595 = max(0.0f, _10589 - _642);
        float3 _10597 = clamp(_8368.xyz, 0.0f.xxx, 64512.0f.xxx).xyz;
        float _10605 = 1.0f / ((2.0f / (1.0f - sqrt(min(_8534, 0.9900000095367431640625f)))) - 1.0f);
        float3 _10628 = 0.0f.xxx;
        bool _10629 = false;
        do
        {
            float _10608 = dot(_656, _8444);
            float _10613 = mad(-(_10605 * _10605), mad(-_10608, _10608, 1.0f), 1.0f);
            if (_10613 < 0.0f)
            {
                _10628 = reflect(-_656, _8444);
                _10629 = false;
                break;
            }
            _10628 = (_8444 * mad(_10605, _10608, (-((_10608 >= 0.0f) ? 1.0f : (-1.0f))) * sqrt(_10613))) - (_656 * _10605);
            _10629 = true;
            break;
        } while(false);
        float _10641 = 0.0f;
        if (_10629)
        {
            float _10634 = mad(1.5499999523162841796875f, 0.0f, -0.0f);
            float _10635 = mad(_10634, dot(-View_View_DirectionalLightDirection, _10628), 1.0f);
            _10641 = mad(-_10634, _10634, 1.0f) / ((12.56637096405029296875f * _10635) * _10635);
        }
        else
        {
            _10641 = 0.0f;
        }
        float4 _10643 = mul(float4(gl_FragCoord.xy, max(9.9999999600419720025001879548654e-13f, _10590), 1.0f), View_View_SVPositionToTranslatedWorld);
        float3 _10669 = exp(-(_10597 * _10595));
        float3 _10670 = ((View_View_DirectionalLightColor.xyz * 3.1415927410125732421875f) * _10641) * _9819;
        float3 _10676 = clamp(((_8427.xyz * _10597) * (1.0f.xxx - _10669)) / max(_10597, 9.9999997473787516355514526367188e-06f.xxx), 0.0f.xxx, 1.0f.xxx);
        float3 _10680 = 1.0f.xxx - ((_8554 * _10453.x) + (clamp(50.0f * _8554.y, 0.0f, 1.0f) * _10453.y).xxx);
        float3 _10681 = float3(_10680.x, _10680.y, _10680.z);
        _10691 = _9818 + ((((_10670 * float(_8678)) * _10676) * _10681) * _8445);
        _10692 = mad((((_8619 * 3.1415927410125732421875f) * 0.079577468335628509521484375f) + (_10670 * (_8678 ? 0.0f : 1.0f))) * _10676, _10681, (_10669 * float3(1.0f.xxx.x, 1.0f.xxx.y, 1.0f.xxx.z)) * (((exp(_10597 * (-max(0.0f, (((View_View_ViewTilePosition - View_View_ViewTilePosition) * 2097152.0f) + (_639 - ((_10643.xyz / _10643.w.xxx) - View_View_RelativePreViewTranslation))).z))) * View_View_OneOverPreExposure) * SingleLayerWater_SceneColorWithoutSingleLayerWaterTexture.SampleLevel(View_SharedBilinearClampedSampler, float2(_10591.x ? _10481.x : _10537.x, _10591.y ? _10481.y : _10537.y), 0.0f).xyz) * lerp(1.0f.xxx, clamp(Material_Material_PreshaderBuffer[105].z.xxx.xyz, 0.0f.xxx, 64512.0f.xxx).xyz, clamp(_10595 * 0.0199999995529651641845703125f, 0.0f, 1.0f).xxx))) * _8445;
    }
    else
    {
        _10691 = _9818;
        _10692 = 0.0f.xxx;
    }
    float3 _10694 = normalize(_8443);
    uint2 _10695 = uint2(gl_FragCoord.xy);
    float3 _10698 = mad(clamp(_8433, 0.0f.xxx, 1.0f.xxx), View_View_DiffuseOverrideParameter.www, View_View_DiffuseOverrideParameter.xyz);
    _8414.x = 0.0f;
    float _10701 = mad(clamp(_8413, 0.0f, 1.0f), View_View_SpecularOverrideParameter.w, View_View_SpecularOverrideParameter.x);
    _8414.y = _10701;
    float _10705 = clamp(max(View_View_MinRoughness, mad(_8421, View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x)), 0.0f, 1.0f);
    _8414.z = _10705;
    float _10707 = clamp(_8423, 0.0f, 1.0f);
    _8414.w = _10707;
    bool3 _10714 = (View_View_bShadingEnergyConservation != 0u).xxx;
    bool _10715 = any(bool3(true, true, true));
    uint _10838 = 0u;
    float3 _10839 = 0.0f.xxx;
    uint _10840 = 0u;
    uint _10841 = 0u;
    bool _10842 = false;
    bool _10843 = false;
    float3 _10844 = 0.0f.xxx;
    float _10845 = 0.0f;
    float3 _10846 = 0.0f.xxx;
    float _10847 = 0.0f;
    if (_10715)
    {
        float3 _10826 = 0.0f.xxx;
        uint _10827 = 0u;
        bool _10828 = false;
        bool _10829 = false;
        float3 _10830 = 0.0f.xxx;
        float _10831 = 0.0f;
        float _10832 = 0.0f;
        uint _10833 = 0u;
        switch (4u)
        {
            case 0u:
            {
                float3 _10807 = 0.0f.xxx;
                do
                {
                    float3 _10804 = 0.0f.xxx;
                    bool _10805 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10804 = lerp(_10698.xyz, _8414.xyz, clamp((max(0.0f, max(_10701, _10705)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10805 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10804 = _10698.xyz;
                            _10805 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10804 = _10698.xyz;
                            _10805 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10804 = _10698.xyz;
                            _10805 = true;
                            break;
                        }
                        default:
                        {
                            _10804 = _457;
                            _10805 = false;
                            break;
                        }
                    }
                    if (_10805)
                    {
                        _10807 = _10804;
                        break;
                    }
                    _10807 = 0.0f.xxx;
                    break;
                } while(false);
                float3 _10808 = _10807 * 1.0f;
                float3 _10822 = 0.0f.xxx;
                float _10823 = 0.0f;
                if (false)
                {
                    float3 _10820 = 0.0f.xxx;
                    float _10821 = 0.0f;
                    if (false)
                    {
                        _10820 = lerp(0.0f, 0.039999999105930328369140625f, clamp((max(0.039999999105930328369140625f, max(0.039999999105930328369140625f, 0.039999999105930328369140625f)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f)).xxx;
                        _10821 = 0.0f;
                    }
                    else
                    {
                        _10820 = _10808;
                        _10821 = 0.0f;
                    }
                    _10822 = _10820;
                    _10823 = _10821;
                }
                else
                {
                    _10822 = _10808;
                    _10823 = 0.0f;
                }
                _10826 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10827 = 1u;
                _10828 = (true && all(bool3(true, true, true))) && true;
                _10829 = true;
                _10830 = _10822;
                _10831 = _10823;
                _10832 = 1.0f;
                _10833 = (_8533 | 0u) | 0u;
                break;
            }
            case 3u:
            {
                float3 _10777 = 0.0f.xxx;
                do
                {
                    float3 _10774 = 0.0f.xxx;
                    bool _10775 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10774 = lerp(_10698.xyz, _8414.xyz, clamp((max(0.0f, max(_10701, _10705)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10775 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10774 = _10698.xyz;
                            _10775 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10774 = _10698.xyz;
                            _10775 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10774 = _10698.xyz;
                            _10775 = true;
                            break;
                        }
                        default:
                        {
                            _10774 = _457;
                            _10775 = false;
                            break;
                        }
                    }
                    if (_10775)
                    {
                        _10777 = _10774;
                        break;
                    }
                    _10777 = 0.0f.xxx;
                    break;
                } while(false);
                _10826 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10827 = 1u;
                _10828 = false;
                _10829 = false;
                _10830 = _10777 * 1.0f;
                _10831 = 1.0f;
                _10832 = 1.0f;
                _10833 = (_8533 & 4294967288u) | 5u;
                break;
            }
            case 5u:
            {
                _10826 = 0.0f.xxx;
                _10827 = 1u;
                _10828 = false;
                _10829 = false;
                _10830 = 0.0f.xxx;
                _10831 = 1.0f;
                _10832 = 1.0f;
                _10833 = ((_8533 | 0u) & 4294967288u) | 6u;
                break;
            }
            case 4u:
            {
                float3 _10747 = 0.0f.xxx;
                do
                {
                    float3 _10744 = 0.0f.xxx;
                    bool _10745 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10744 = lerp(_10698.xyz, _8414.xyz, clamp((max(0.0f, max(_10701, _10705)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10745 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10744 = _10698.xyz;
                            _10745 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10744 = _10698.xyz;
                            _10745 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10744 = _10698.xyz;
                            _10745 = true;
                            break;
                        }
                        default:
                        {
                            _10744 = _457;
                            _10745 = false;
                            break;
                        }
                    }
                    if (_10745)
                    {
                        _10747 = _10744;
                        break;
                    }
                    _10747 = 0.0f.xxx;
                    break;
                } while(false);
                _10826 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10827 = 2u;
                _10828 = false;
                _10829 = false;
                _10830 = _10747 * 1.0f;
                _10831 = mad(1.0f, _10705, 0.0f);
                _10832 = 1.0f;
                _10833 = (_8533 & 4294967288u) | 4u;
                break;
            }
            default:
            {
                _10826 = 0.0f.xxx;
                _10827 = 0u;
                _10828 = true;
                _10829 = true;
                _10830 = 0.0f.xxx;
                _10831 = 0.0f;
                _10832 = 0.0f;
                _10833 = _8533;
                break;
            }
        }
        float3 _10834[4] = { _10694, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx };
        float3 _576[4] = _10834;
        _10838 = 8194u;
        _10839 = _10826;
        _10840 = _10827;
        _10841 = _10833;
        _10842 = _10828;
        _10843 = _10829;
        _10844 = _10830;
        _10845 = _10831;
        _10846 = _576[0u] * 1.0f;
        _10847 = _10832;
    }
    else
    {
        _10838 = 8192u;
        _10839 = 0.0f.xxx;
        _10840 = 0u;
        _10841 = _8533;
        _10842 = true;
        _10843 = true;
        _10844 = 0.0f.xxx;
        _10845 = 0.0f;
        _10846 = 0.0f.xxx;
        _10847 = 0.0f;
    }
    uint _10848 = uint(_10715);
    bool _10849 = _10847 > 0.0f;
    bool3 _10850 = _10849.xxx;
    float3 _10851 = normalize(_10846);
    float3 _10852 = float3(_10850.x ? _10851.x : 0.0f.xxx.x, _10850.y ? _10851.y : 0.0f.xxx.y, _10850.z ? _10851.z : 0.0f.xxx.z);
    float3 _10856 = _10844 / _10847.xxx;
    uint _10943 = 0u;
    uint _10944 = 0u;
    uint _10945 = 0u;
    if (_10843)
    {
        bool _10861 = _10842 && (_10848 == 1u);
        uint _10941 = 0u;
        uint _10942 = 0u;
        if (_10861)
        {
            uint _10874 = 0u;
            if (((_10838 >> 6u) & 1u) != 0u)
            {
                _10874 = 1u;
            }
            else
            {
                _10874 = 0u;
            }
            uint _10882 = 0u;
            if ((((_10838 >> 9u) & 1u) != 0u) && true)
            {
                _10882 = _10874 | 4u;
            }
            else
            {
                _10882 = _10874;
            }
            uint _10889 = 0u;
            if (((_10838 >> 10u) & 1u) != 0u)
            {
                _10889 = _10882 | 8u;
            }
            else
            {
                _10889 = _10882;
            }
            uint _10891 = (_10838 >> 2u) & 7u;
            uint _10896 = 0u;
            if (_10891 == 4u)
            {
                _10896 = _10889 | 16u;
            }
            else
            {
                _10896 = _10889;
            }
            uint _10901 = 0u;
            if (_10891 == 1u)
            {
                _10901 = _10896 | 32u;
            }
            else
            {
                _10901 = _10896;
            }
            uint _10906 = 0u;
            if (_10891 == 3u)
            {
                _10906 = _10901 | 64u;
            }
            else
            {
                _10906 = _10901;
            }
            uint _10907 = _10906 & 2u;
            uint _10939 = 0u;
            uint _10940 = 0u;
            if ((_10907 == 2u) || (_10907 == 3u))
            {
                _10939 = 1u;
                _10940 = 0u;
            }
            else
            {
                uint _10937 = 0u;
                uint _10938 = 0u;
                if ((_10906 & 4u) == 4u)
                {
                    _10937 = 2u;
                    _10938 = 0u;
                }
                else
                {
                    uint _10935 = 0u;
                    uint _10936 = 0u;
                    if ((_10906 & 40u) == 40u)
                    {
                        _10935 = 5u;
                        _10936 = 0u;
                    }
                    else
                    {
                        uint _10933 = 0u;
                        uint _10934 = 0u;
                        if ((_10906 & 32u) == 32u)
                        {
                            _10933 = 3u;
                            _10934 = 0u;
                        }
                        else
                        {
                            bool _10930 = (_10906 & 72u) == 64u;
                            _10933 = _10930 ? 4u : 0u;
                            _10934 = _10930 ? 0u : 0u;
                        }
                        _10935 = _10933;
                        _10936 = _10934;
                    }
                    _10937 = _10935;
                    _10938 = _10936;
                }
                _10939 = _10937;
                _10940 = _10938;
            }
            _10941 = _10939;
            _10942 = _10940;
        }
        else
        {
            _10941 = 0u;
            _10942 = 0u;
        }
        _10943 = _10941;
        _10944 = _10942;
        _10945 = (_10841 & 4294967288u) | ((_10861 ? 1u : (_10861 ? 2u : 3u)) & 7u);
    }
    else
    {
        _10943 = 0u;
        _10944 = 0u;
        _10945 = _10841;
    }
    float3 _11346 = 0.0f.xxx;
    float _11347 = 0.0f;
    float2 _11348 = 0.0f.xx;
    [branch]
    if (_10715)
    {
        float3 _10948[4] = { _10694, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx };
        float3 _577[4] = _10948;
        uint _10950 = (_10838 >> 14u) & 3u;
        float _10953 = dot(_577[_10950], _656);
        float3 _11231 = 0.0f.xxx;
        float3 _11232 = 0.0f.xxx;
        float3 _11233 = 0.0f.xxx;
        float3 _11234 = 0.0f.xxx;
        switch ((_10838 >> 11u) & 7u)
        {
            case 0u:
            {
                float3 _11122 = _10698.xyz;
                float4 _11126 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_10953, 0.001000000047497451305389404296875f), 0.0f);
                float _11127 = _11126.x;
                float3 _11131 = 1.0f.xxx + (_8414.xyz * ((1.0f - _11127) / _11127));
                float _11144 = (View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(float3(_10714.x ? _11131.x : 1.0f.xxx.x, _10714.y ? _11131.y : 1.0f.xxx.y, _10714.z ? _11131.z : 1.0f.xxx.z) * ((_8414.xyz * _11127) + ((-_8414.xyz) * _11126.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f;
                float3 _11145 = _11122 * _11144;
                uint _11147 = (_10838 >> 2u) & 7u;
                float3 _11208 = 0.0f.xxx;
                [branch]
                if (_11147 == 4u)
                {
                    float _11156 = clamp(max(0.0f, max(0.0f, max(0.0f, 0.0f)) - 0.039999999105930328369140625f) * 3.0f, 0.0f, 1.0f);
                    float _11160 = abs(clamp(_10953, 0.0f, 1.0f));
                    float _11166 = clamp((mad(-0.15658299624919891357421875f, _11160, 1.57079637050628662109375f) * sqrt(1.0f - _11160)) * 0.636619746685028076171875f, 0.0f, 1.0f);
                    float _11175 = clamp(mad(10.0f, 0.001587301609106361865997314453125f, 1.0f), 0.0f, 1.0f);
                    float _11176 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10698.x, _11166), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11175;
                    float _11183 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10698.y, _11166), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11175;
                    float _11190 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10698.z, _11166), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11175;
                    float3 _11191 = float3(_11176, _11183, _11190);
                    float _11196 = max(_11145.x, max(_11145.y, _11145.z));
                    float _11198 = max(_11176, max(_11183, _11190));
                    float3 _11204 = 0.0f.xxx;
                    if (_11196 < _11198)
                    {
                        _11204 = _11191 * (_11196 / _11198);
                    }
                    else
                    {
                        _11204 = _11191;
                    }
                    _11208 = lerp(_11145, _11204 * _11144, (_11156 * _11156).xxx);
                }
                else
                {
                    _11208 = _11145;
                }
                float3 _11223 = 0.0f.xxx;
                [branch]
                if (_11147 == 1u)
                {
                    _11223 = (0.3183098733425140380859375f.xxx * exp((-max(9.9999999747524270787835121154785e-07f.xxx, 1.0f.xxx / max(9.9999999600419720025001879548654e-13f.xxx, 0.0f.xxx))) * (1.0f / max(9.9999997473787516355514526367188e-05f, abs(1.0f))))) * _11144;
                }
                else
                {
                    _11223 = 0.0f.xxx;
                }
                [branch]
                if (((_10838 >> 9u) & 1u) != 0u)
                {
                    _11231 = _11208 * 1.0f;
                    _11232 = _577[_10950];
                    _11233 = _11223;
                    _11234 = _11122 * 1.0f;
                    break;
                }
                _11231 = _11208;
                _11232 = _577[_10950];
                _11233 = _11223;
                _11234 = _11122;
                break;
            }
            case 3u:
            {
                float3 _10966 = normalize(_656 - (_577[_10950] * dot(_656, _577[_10950])));
                float _10967 = min(0.0f, 1.0f);
                float _10968 = dot(_656, _10966);
                float _10970 = clamp(dot(_577[_10950], _10966), -1.0f, 1.0f);
                float _10971 = clamp(_10953, -1.0f, 1.0f);
                float _10972 = abs(_10971);
                float _10973 = mad(-0.15658299624919891357421875f, _10972, 1.57079637050628662109375f);
                float _10975 = sqrt(1.0f - _10972);
                float _10982 = abs(_10970);
                float _10983 = mad(-0.15658299624919891357421875f, _10982, 1.57079637050628662109375f);
                float _10985 = sqrt(1.0f - _10982);
                float _10995 = cos(0.5f * abs((1.57079637050628662109375f - ((_10971 >= 0.0f) ? (_10973 * _10975) : mad(-_10973, _10975, 3.1415927410125732421875f))) - (1.57079637050628662109375f - ((_10970 >= 0.0f) ? (_10983 * _10985) : mad(-_10983, _10985, 3.1415927410125732421875f)))));
                float3 _10997 = _10966 - (_577[_10950] * _10970);
                float3 _10999 = _656 - (_577[_10950] * _10971);
                float _11005 = dot(_10997, _10999) * rsqrt(mad(dot(_10997, _10997), dot(_10999, _10999), 9.9999997473787516355514526367188e-05f));
                float _11008 = sqrt(clamp(mad(0.5f, _11005, 0.5f), 0.0f, 1.0f));
                float _11012 = mad(1.5378702300949953496456146240234e-05f, 0.5f, 0.20000000298023223876953125f);
                float _11013 = mad(1.5378702300949953496456146240234e-05f, 2.0f, 0.20000000298023223876953125f);
                float _11021 = mad(0.0039215688593685626983642578125f, 0.0039215688593685626983642578125f, 0.20000000298023223876953125f) * (1.41421353816986083984375f * _11008);
                float _11022 = _10970 + _10971;
                float _11023 = mad(0.1398856937885284423828125f, mad(0.997551023960113525390625f * _11008, sqrt(mad(-_10971, _10971, 1.0f)), (-0.06994284689426422119140625f) * _10971), _11022);
                float _11035 = 1.0f - sqrt(clamp(mad(0.5f, _10968, 0.5f), 0.0f, 1.0f));
                float _11036 = _11035 * _11035;
                float _11049 = _11022 - 0.0350000001490116119384765625f;
                float _11057 = 1.0f / mad(0.36000001430511474609375f, _10995, 1.190000057220458984375f / _10995);
                float _11060 = _11008 * mad(_11057, mad(-0.800000011920928955078125f, _11005, 0.60000002384185791015625f), 1.0f);
                float _11065 = -_10995;
                float _11066 = mad(_11065, sqrt(clamp(mad(-_11060, _11060, 1.0f), 0.0f, 1.0f)), 1.0f);
                float _11067 = _11066 * _11066;
                float _11071 = 1.0f - mad(0.95347940921783447265625f, (_11067 * _11067) * _11066, 0.0465205647051334381103515625f);
                float3 _11073 = abs(_10698.xyz);
                float _11074 = _11060 * _11057;
                float _11089 = _11022 - 0.14000000059604644775390625f;
                float _11097 = mad(_11065, 0.5f, 1.0f);
                float _11098 = _11097 * _11097;
                float _11101 = mad(0.95347940921783447265625f, (_11098 * _11098) * _11097, 0.0465205647051334381103515625f);
                float _11102 = 1.0f - _11101;
                float3 _11114 = (((((((exp(((-0.5f) * (_11023 * _11023)) / (_11021 * _11021)) / (2.5066282749176025390625f * _11021)) * (0.25f * _11008)) * mad(0.95347940921783447265625f, (_11036 * _11036) * _11035, 0.0465205647051334381103515625f)) * (_10701 * 2.0f)) * lerp(1.0f, _10967, clamp(-_10968, 0.0f, 1.0f))).xxx + ((pow(_11073, ((0.5f * sqrt(mad(-_11074, _11074, 1.0f))) / _10995).xxx) * (((exp(((-0.5f) * (_11049 * _11049)) / (_11012 * _11012)) / (2.5066282749176025390625f * _11012)) * exp(mad(-3.650000095367431640625f, _11005, -3.980000019073486328125f))) * (_11071 * _11071))) * _10967)) + (pow(_11073, (0.800000011920928955078125f / _10995).xxx) * (((exp(((-0.5f) * (_11089 * _11089)) / (_11013 * _11013)) / (2.5066282749176025390625f * _11013)) * exp(mad(17.0f, _11005, -16.7800006866455078125f))) * ((_11102 * _11102) * _11101)))) * 1.0f;
                _11231 = min(1.0f.xxx, (-min(-mad(0.0f.xxx, float3(1.0f.xxx.x, 1.0f.xxx.y, 1.0f.xxx.z), _11114), 0.0f.xxx)) * 6.283185482025146484375f);
                _11232 = _10966;
                _11233 = 0.0f.xxx;
                _11234 = 0.0f.xxx;
                break;
            }
            case 5u:
            {
                float3 _10960 = _10698.xyz;
                _11231 = _10960 * 1.0f;
                _11232 = _577[_10950];
                _11233 = 0.0f.xxx;
                _11234 = _10960;
                break;
            }
            default:
            {
                _11231 = 0.0f.xxx;
                _11232 = 0.0f.xxx;
                _11233 = 0.0f.xxx;
                _11234 = 0.0f.xxx;
                break;
            }
        }
        float3 _11322 = 0.0f.xxx;
        float3 _11323 = 0.0f.xxx;
        if (_8453)
        {
            float3 _11250 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _639, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
            float4 _11254 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _11250);
            float4 _11257 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _11250);
            float4 _11260 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _11250);
            float4 _11265 = float4(_11254.x, _11257.x, _11260.x, _11254.w);
            float4 _11270 = float4(_11254.y, _11257.y, _11260.y, _11257.w);
            float4 _11275 = float4(_11254.z, _11257.z, _11260.zw);
            float4 _11278 = 0.0f.xxxx;
            _11278.y = (-0.48860299587249755859375f) * _11232.y;
            _11278.z = 0.48860299587249755859375f * _11232.z;
            _11278.w = (-0.48860299587249755859375f) * _11232.x;
            _11278.x = 0.886227548122406005859375f;
            float3 _11287 = _11278.yzw * 2.094395160675048828125f;
            float4 _11288 = float4(_11278.x, _11287.x, _11287.y, _11287.z);
            float3 _11290 = 0.0f.xxx;
            _11290.x = dot(_11265, _11288);
            _11290.y = dot(_11270, _11288);
            _11290.z = dot(_11275, _11288);
            float3 _11321 = 0.0f.xxx;
            if (any(bool3(_11233.x > 0.0f.xxx.x, _11233.y > 0.0f.xxx.y, _11233.z > 0.0f.xxx.z)))
            {
                float3 _11299 = -_11232;
                float4 _11302 = 0.0f.xxxx;
                _11302.y = (-0.48860299587249755859375f) * _11299.y;
                _11302.z = 0.48860299587249755859375f * _11299.z;
                _11302.w = (-0.48860299587249755859375f) * _11299.x;
                _11302.x = 0.886227548122406005859375f;
                float3 _11311 = _11302.yzw * 2.094395160675048828125f;
                float4 _11312 = float4(_11302.x, _11311.x, _11311.y, _11311.z);
                float3 _11314 = 0.0f.xxx;
                _11314.x = dot(_11265, _11312);
                _11314.y = dot(_11270, _11312);
                _11314.z = dot(_11275, _11312);
                _11321 = max(0.0f.xxx, _11314) * 0.3183098733425140380859375f.xxx;
            }
            else
            {
                _11321 = 0.0f.xxx;
            }
            _11322 = _11321;
            _11323 = max(0.0f.xxx, _11290) * 0.3183098733425140380859375f.xxx;
        }
        else
        {
            _11322 = 0.0f.xxx;
            _11323 = 0.0f.xxx;
        }
        float3 _11324 = _11323 * View_View_PrecomputedIndirectLightingColorScale;
        float2 _11341 = 0.0f.xx;
        _11341.x = max(1.0f.xxx, 0.99960005283355712890625f.xxx).y;
        _11341.y = dot(_11324, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f));
        _11346 = mad(mad(_11324, _11231, (_11322 * View_View_PrecomputedIndirectLightingColorScale) * _11233), max(1.0f.xxx, ((((((_11234 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_11234 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_11234 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), _10839);
        _11347 = 1.0f;
        _11348 = _11341;
    }
    else
    {
        _11346 = _10839;
        _11347 = 0.0f;
        _11348 = 0.0f.xx;
    }
    float2 _11351 = _11348 * (1.0f / max(1.0f, _11347));
    uint _11366 = (_10945 & 4294902015u) | ((uint(min(255.0f, mad(log2(mad(_11351.y * _11351.x, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f) * 255.0f)) & 255u) << 8u);
    uint _11367 = _11366 & 7u;
    bool _11369 = (_11367 == 1u) || false;
    bool _11370 = _11367 == 4u;
    bool _11372 = (_11367 == 2u) || false;
    bool _11373 = _11367 == 5u;
    bool _11374 = _11367 == 6u;
    bool _11381 = !_11370;
    bool _11382 = (((!_11369) && (!_11372)) && (!(_11373 || _11374))) && _11381;
    uint _11429 = 0u;
    uint _11430 = 0u;
    if (_11382)
    {
        float2 _11402 = _10694.xy / dot(1.0f.xxx, abs(_10694)).xx;
        float3 _11420 = 0.0f.xxx;
        if (_10694.z <= 0.0f)
        {
            float2 _11411 = _11402.xy;
            bool2 _11412 = bool2(_11411.x >= 0.0f.xx.x, _11411.y >= 0.0f.xx.y);
            float2 _11418 = (1.0f.xx - abs(_11402.yx)) * float2(_11412.x ? 1.0f : (-1.0f), _11412.y ? 1.0f : (-1.0f));
            _11420 = float3(_11418.x, _11418.y, _10694.z);
        }
        else
        {
            _11420 = float3(_11402.x, _11402.y, _10694.z);
        }
        _11429 = spvPackHalf2x16(float2(_11420.x, 0.0f)) | (spvPackHalf2x16(float2(_11420.y, 0.0f)) << 16u);
        _11430 = (((((((0u | ((_10848 & 15u) << 16u)) & 4287627263u) | 1048576u) & 4169138175u) | 0u) | (_11366 & 134217728u)) & 4294901760u) | ((_11366 & 65535u) << 0u);
    }
    else
    {
        _11429 = 0u;
        _11430 = 0u;
    }
    uint _11431 = _11382 ? 2u : 0u;
    uint _13439 = 0u;
    uint _13440 = 0u;
    uint _13441 = 0u;
    uint _13442 = 0u;
    uint _13443 = 0u;
    [branch]
    if (_10715)
    {
        uint _11441 = (((_10838 & 4294967263u) | 32u) & 4294901759u) | ((uint(any(bool3(false, false, false))) & 1u) << 16u);
        bool _11442 = _11369 && true;
        uint _12616 = 0u;
        uint _12617 = 0u;
        uint _12618 = 0u;
        uint _12619 = 0u;
        uint _12620 = 0u;
        if (_11442)
        {
            float _12458 = _8386 - 0.5f;
            float _12459 = _12458 * 0.0078740157186985015869140625f;
            float3 _12461 = float3(_12459, _12459, _12458 * 0.01587301678955554962158203125f);
            float3 _12462 = clamp(_10698.xyz, 0.0f.xxx, 1.0f.xxx);
            float _12463 = _12462.x;
            float _12472 = 0.0f;
            do
            {
                if (_12463 < 0.00313066993840038776397705078125f)
                {
                    _12472 = _12463 * 12.9200000762939453125f;
                    break;
                }
                _12472 = mad(pow(_12463, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12473 = _12462.y;
            float _12482 = 0.0f;
            do
            {
                if (_12473 < 0.00313066993840038776397705078125f)
                {
                    _12482 = _12473 * 12.9200000762939453125f;
                    break;
                }
                _12482 = mad(pow(_12473, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12483 = _12462.z;
            float _12492 = 0.0f;
            do
            {
                if (_12483 < 0.00313066993840038776397705078125f)
                {
                    _12492 = _12483 * 12.9200000762939453125f;
                    break;
                }
                _12492 = mad(pow(_12483, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float3 _12493 = float3(_12472, _12482, _12492);
            float3 _12499 = clamp(mad(_12461, float3(min((asuint(_12493) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12493), 0.0f.xxx, 1.0f.xxx);
            uint _12513 = ((uint(_12499.x * 127.0f) << 0u) | (uint(_12499.y * 127.0f) << 7u)) | (uint(_12499.z * 63.0f) << 14u);
            float3 _12518 = clamp(_8414.xyz, 0.0f.xxx, 1.0f.xxx);
            float _12519 = _12518.x;
            float _12528 = 0.0f;
            do
            {
                if (_12519 < 0.00313066993840038776397705078125f)
                {
                    _12528 = _12519 * 12.9200000762939453125f;
                    break;
                }
                _12528 = mad(pow(_12519, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12529 = _12518.y;
            float _12538 = 0.0f;
            do
            {
                if (_12529 < 0.00313066993840038776397705078125f)
                {
                    _12538 = _12529 * 12.9200000762939453125f;
                    break;
                }
                _12538 = mad(pow(_12529, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12539 = _12518.z;
            float _12548 = 0.0f;
            do
            {
                if (_12539 < 0.00313066993840038776397705078125f)
                {
                    _12548 = _12539 * 12.9200000762939453125f;
                    break;
                }
                _12548 = mad(pow(_12539, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float3 _12549 = float3(_12528, _12538, _12548);
            float3 _12555 = clamp(mad(_12461, float3(min((asuint(_12549) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12549), 0.0f.xxx, 1.0f.xxx);
            uint _12577 = ((0u | ((_11366 & 65535u) << 0u)) & 65535u) | (((((_12513 >> 12u) & 255u) << 8u) | 0u) << 16u);
            uint _12592 = 0u;
            uint _12593 = 0u;
            uint _12594 = 0u;
            if (_11431 < 3u)
            {
                _12592 = (_11431 == 2u) ? _12577 : 0u;
                _12593 = (_11431 == 1u) ? _12577 : _11429;
                _12594 = (_11431 == 0u) ? _12577 : _11430;
            }
            else
            {
                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 - 3u)] = _12577;
                _12592 = 0u;
                _12593 = _11429;
                _12594 = _11430;
            }
            uint _12595 = _11431 + 1u;
            uint _12597 = (((uint(_12555.x * 127.0f) << 0u) | (uint(_12555.y * 127.0f) << 7u)) | (uint(_12555.z * 63.0f) << 14u)) | ((_12513 & 4095u) << 20u);
            uint _12612 = 0u;
            uint _12613 = 0u;
            uint _12614 = 0u;
            if (_12595 < 3u)
            {
                _12612 = (_12595 == 2u) ? _12597 : _12592;
                _12613 = (_12595 == 1u) ? _12597 : _12593;
                _12614 = (_12595 == 0u) ? _12597 : _12594;
            }
            else
            {
                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 + 4294967294u)] = _12597;
                _12612 = _12592;
                _12613 = _12593;
                _12614 = _12594;
            }
            _12616 = 0u;
            _12617 = _12612;
            _12618 = _12613;
            _12619 = _12614;
            _12620 = _11431 + 2u;
        }
        else
        {
            uint _12452 = 0u;
            uint _12453 = 0u;
            uint _12454 = 0u;
            uint _12455 = 0u;
            uint _12456 = 0u;
            if (_11372 && true)
            {
                uint _11682 = (_11441 & 4294967293u) | 2u;
                uint _11689 = ((0u | ((_11366 & 65535u) << 0u)) & 65535u) | ((_10943 & 7u) << 16u);
                uint _12447 = 0u;
                uint _12448 = 0u;
                uint _12449 = 0u;
                uint _12450 = 0u;
                uint _12451 = 0u;
                [branch]
                if (_10943 == 0u)
                {
                    uint _12428 = _11689 | ((_11682 & 2047u) << 19u);
                    uint _12443 = 0u;
                    uint _12444 = 0u;
                    uint _12445 = 0u;
                    if (_11431 < 3u)
                    {
                        _12443 = (_11431 == 2u) ? _12428 : 0u;
                        _12444 = (_11431 == 1u) ? _12428 : _11429;
                        _12445 = (_11431 == 0u) ? _12428 : _11430;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 - 3u)] = _12428;
                        _12443 = 0u;
                        _12444 = _11429;
                        _12445 = _11430;
                    }
                    _12447 = _11682;
                    _12448 = _12443;
                    _12449 = _12444;
                    _12450 = _12445;
                    _12451 = _11431 + 1u;
                }
                else
                {
                    uint _12421 = 0u;
                    uint _12422 = 0u;
                    uint _12423 = 0u;
                    uint _12424 = 0u;
                    uint _12425 = 0u;
                    if (_10943 == 1u)
                    {
                        float _12297 = _8386 - 0.5f;
                        float _12298 = _12297 * 0.0078740157186985015869140625f;
                        float3 _12301 = clamp(_10698.xyz, 0.0f.xxx, 1.0f.xxx);
                        float _12302 = _12301.x;
                        float _12311 = 0.0f;
                        do
                        {
                            if (_12302 < 0.00313066993840038776397705078125f)
                            {
                                _12311 = _12302 * 12.9200000762939453125f;
                                break;
                            }
                            _12311 = mad(pow(_12302, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12312 = _12301.y;
                        float _12321 = 0.0f;
                        do
                        {
                            if (_12312 < 0.00313066993840038776397705078125f)
                            {
                                _12321 = _12312 * 12.9200000762939453125f;
                                break;
                            }
                            _12321 = mad(pow(_12312, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12322 = _12301.z;
                        float _12331 = 0.0f;
                        do
                        {
                            if (_12322 < 0.00313066993840038776397705078125f)
                            {
                                _12331 = _12322 * 12.9200000762939453125f;
                                break;
                            }
                            _12331 = mad(pow(_12322, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float3 _12332 = float3(_12311, _12321, _12331);
                        float3 _12338 = clamp(mad(float3(_12298, _12298, _12297 * 0.01587301678955554962158203125f), float3(min((asuint(_12332) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12332), 0.0f.xxx, 1.0f.xxx);
                        uint _12364 = _11689 | 0u;
                        uint _12379 = 0u;
                        uint _12380 = 0u;
                        uint _12381 = 0u;
                        if (_11431 < 3u)
                        {
                            _12379 = (_11431 == 2u) ? _12364 : 0u;
                            _12380 = (_11431 == 1u) ? _12364 : _11429;
                            _12381 = (_11431 == 0u) ? _12364 : _11430;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 - 3u)] = _12364;
                            _12379 = 0u;
                            _12380 = _11429;
                            _12381 = _11430;
                        }
                        uint _12382 = _11431 + 1u;
                        uint _12383 = (((uint(_12338.x * 127.0f) << 0u) | (uint(_12338.y * 127.0f) << 7u)) | (uint(_12338.z * 63.0f) << 14u)) | 0u;
                        uint _12398 = 0u;
                        uint _12399 = 0u;
                        uint _12400 = 0u;
                        if (_12382 < 3u)
                        {
                            _12398 = (_12382 == 2u) ? _12383 : _12379;
                            _12399 = (_12382 == 1u) ? _12383 : _12380;
                            _12400 = (_12382 == 0u) ? _12383 : _12381;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 + 4294967294u)] = _12383;
                            _12398 = _12379;
                            _12399 = _12380;
                            _12400 = _12381;
                        }
                        uint _12401 = _11431 + 2u;
                        uint _12402 = (((0u | (uint(clamp(_10701, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_10705, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u) | 0u;
                        uint _12417 = 0u;
                        uint _12418 = 0u;
                        uint _12419 = 0u;
                        if (_12401 < 3u)
                        {
                            _12417 = (_12401 == 2u) ? _12402 : _12398;
                            _12418 = (_12401 == 1u) ? _12402 : _12399;
                            _12419 = (_12401 == 0u) ? _12402 : _12400;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 + 4294967295u)] = _12402;
                            _12417 = _12398;
                            _12418 = _12399;
                            _12419 = _12400;
                        }
                        _12421 = 0u;
                        _12422 = _12417;
                        _12423 = _12418;
                        _12424 = _12419;
                        _12425 = _11431 + 3u;
                    }
                    else
                    {
                        uint _12291 = 0u;
                        uint _12292 = 0u;
                        uint _12293 = 0u;
                        uint _12294 = 0u;
                        uint _12295 = 0u;
                        if (_10943 == 2u)
                        {
                            float _12082 = _8386 - 0.5f;
                            float _12083 = _12082 * 0.0078740157186985015869140625f;
                            float3 _12085 = float3(_12083, _12083, _12082 * 0.01587301678955554962158203125f);
                            float3 _12086 = clamp(_10698.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _12087 = _12086.x;
                            float _12096 = 0.0f;
                            do
                            {
                                if (_12087 < 0.00313066993840038776397705078125f)
                                {
                                    _12096 = _12087 * 12.9200000762939453125f;
                                    break;
                                }
                                _12096 = mad(pow(_12087, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12097 = _12086.y;
                            float _12106 = 0.0f;
                            do
                            {
                                if (_12097 < 0.00313066993840038776397705078125f)
                                {
                                    _12106 = _12097 * 12.9200000762939453125f;
                                    break;
                                }
                                _12106 = mad(pow(_12097, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12107 = _12086.z;
                            float _12116 = 0.0f;
                            do
                            {
                                if (_12107 < 0.00313066993840038776397705078125f)
                                {
                                    _12116 = _12107 * 12.9200000762939453125f;
                                    break;
                                }
                                _12116 = mad(pow(_12107, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12117 = float3(_12096, _12106, _12116);
                            float3 _12123 = clamp(mad(_12085, float3(min((asuint(_12117) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12117), 0.0f.xxx, 1.0f.xxx);
                            float3 _12139 = clamp(_8414.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _12140 = _12139.x;
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
                            float _12150 = _12139.y;
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
                            float _12160 = _12139.z;
                            float _12169 = 0.0f;
                            do
                            {
                                if (_12160 < 0.00313066993840038776397705078125f)
                                {
                                    _12169 = _12160 * 12.9200000762939453125f;
                                    break;
                                }
                                _12169 = mad(pow(_12160, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12170 = float3(_12149, _12159, _12169);
                            float3 _12176 = clamp(mad(_12085, float3(min((asuint(_12170) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12170), 0.0f.xxx, 1.0f.xxx);
                            float _12196 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12196 = 0.0f;
                                    break;
                                }
                                _12196 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12202 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12202 = 0.0f;
                                    break;
                                }
                                _12202 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12208 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12208 = 0.0f;
                                    break;
                                }
                                _12208 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12209 = float3(_12196, _12202, _12208);
                            float3 _12215 = clamp(mad(_12085, float3(min((asuint(_12209) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12209), 0.0f.xxx, 1.0f.xxx);
                            uint _12229 = ((uint(_12215.x * 127.0f) << 0u) | (uint(_12215.y * 127.0f) << 7u)) | (uint(_12215.z * 63.0f) << 14u);
                            uint _12230 = _11689 | 0u;
                            uint _12245 = 0u;
                            uint _12246 = 0u;
                            uint _12247 = 0u;
                            if (_11431 < 3u)
                            {
                                _12245 = (_11431 == 2u) ? _12230 : 0u;
                                _12246 = (_11431 == 1u) ? _12230 : _11429;
                                _12247 = (_11431 == 0u) ? _12230 : _11430;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 - 3u)] = _12230;
                                _12245 = 0u;
                                _12246 = _11429;
                                _12247 = _11430;
                            }
                            uint _12248 = _11431 + 1u;
                            uint _12251 = (((uint(_12123.x * 127.0f) << 0u) | (uint(_12123.y * 127.0f) << 7u)) | (uint(_12123.z * 63.0f) << 14u)) | ((_12229 & 1047552u) << 10u);
                            uint _12266 = 0u;
                            uint _12267 = 0u;
                            uint _12268 = 0u;
                            if (_12248 < 3u)
                            {
                                _12266 = (_12248 == 2u) ? _12251 : _12245;
                                _12267 = (_12248 == 1u) ? _12251 : _12246;
                                _12268 = (_12248 == 0u) ? _12251 : _12247;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 + 4294967294u)] = _12251;
                                _12266 = _12245;
                                _12267 = _12246;
                                _12268 = _12247;
                            }
                            uint _12269 = _11431 + 2u;
                            uint _12272 = (((uint(_12176.x * 127.0f) << 0u) | (uint(_12176.y * 127.0f) << 7u)) | (uint(_12176.z * 63.0f) << 14u)) | ((_12229 & 1023u) << 20u);
                            uint _12287 = 0u;
                            uint _12288 = 0u;
                            uint _12289 = 0u;
                            if (_12269 < 3u)
                            {
                                _12287 = (_12269 == 2u) ? _12272 : _12266;
                                _12288 = (_12269 == 1u) ? _12272 : _12267;
                                _12289 = (_12269 == 0u) ? _12272 : _12268;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 + 4294967295u)] = _12272;
                                _12287 = _12266;
                                _12288 = _12267;
                                _12289 = _12268;
                            }
                            _12291 = 0u;
                            _12292 = _12287;
                            _12293 = _12288;
                            _12294 = _12289;
                            _12295 = _11431 + 3u;
                        }
                        else
                        {
                            uint _12076 = 0u;
                            uint _12077 = 0u;
                            uint _12078 = 0u;
                            uint _12079 = 0u;
                            uint _12080 = 0u;
                            if ((_10943 == 3u) || (_10943 == 5u))
                            {
                                float _11886 = _8386 - 0.5f;
                                float _11887 = _11886 * 0.0078740157186985015869140625f;
                                float3 _11889 = float3(_11887, _11887, _11886 * 0.01587301678955554962158203125f);
                                float3 _11890 = clamp(_10698.xyz, 0.0f.xxx, 1.0f.xxx);
                                float _11891 = _11890.x;
                                float _11900 = 0.0f;
                                do
                                {
                                    if (_11891 < 0.00313066993840038776397705078125f)
                                    {
                                        _11900 = _11891 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11900 = mad(pow(_11891, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _11901 = _11890.y;
                                float _11910 = 0.0f;
                                do
                                {
                                    if (_11901 < 0.00313066993840038776397705078125f)
                                    {
                                        _11910 = _11901 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11910 = mad(pow(_11901, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _11911 = _11890.z;
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
                                float3 _11921 = float3(_11900, _11910, _11920);
                                float3 _11927 = clamp(mad(_11889, float3(min((asuint(_11921) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11921), 0.0f.xxx, 1.0f.xxx);
                                float3 _11943 = clamp(_8414.xyz, 0.0f.xxx, 1.0f.xxx);
                                float _11944 = _11943.x;
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
                                float _11954 = _11943.y;
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
                                float _11964 = _11943.z;
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
                                float3 _11974 = float3(_11953, _11963, _11973);
                                float3 _11980 = clamp(mad(_11889, float3(min((asuint(_11974) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11974), 0.0f.xxx, 1.0f.xxx);
                                uint _11999 = spvPackHalf2x16(0.0f.xx);
                                uint _12007 = (((_11999 << 15u) & 1072693248u) | ((_11999 << 5u) & 1047552u)) | ((_11999 >> 5u) & 1023u);
                                uint _12017 = (_11689 | ((uint(clamp(clamp(1.0f - abs(0.0f), 0.0f, 1.0f), 0.0f, 1.0f) * 127.0f) & 127u) << 19u)) | (((_12007 >> 24u) & 63u) << 26u);
                                uint _12032 = 0u;
                                uint _12033 = 0u;
                                uint _12034 = 0u;
                                if (_11431 < 3u)
                                {
                                    _12032 = (_11431 == 2u) ? _12017 : 0u;
                                    _12033 = (_11431 == 1u) ? _12017 : _11429;
                                    _12034 = (_11431 == 0u) ? _12017 : _11430;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 - 3u)] = _12017;
                                    _12032 = 0u;
                                    _12033 = _11429;
                                    _12034 = _11430;
                                }
                                uint _12035 = _11431 + 1u;
                                uint _12037 = (((uint(_11927.x * 127.0f) << 0u) | (uint(_11927.y * 127.0f) << 7u)) | (uint(_11927.z * 63.0f) << 14u)) | ((_12007 & 4095u) << 20u);
                                uint _12052 = 0u;
                                uint _12053 = 0u;
                                uint _12054 = 0u;
                                if (_12035 < 3u)
                                {
                                    _12052 = (_12035 == 2u) ? _12037 : _12032;
                                    _12053 = (_12035 == 1u) ? _12037 : _12033;
                                    _12054 = (_12035 == 0u) ? _12037 : _12034;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 + 4294967294u)] = _12037;
                                    _12052 = _12032;
                                    _12053 = _12033;
                                    _12054 = _12034;
                                }
                                uint _12055 = _11431 + 2u;
                                uint _12057 = (((uint(_11980.x * 127.0f) << 0u) | (uint(_11980.y * 127.0f) << 7u)) | (uint(_11980.z * 63.0f) << 14u)) | (((_12007 >> 12u) & 4095u) << 20u);
                                uint _12072 = 0u;
                                uint _12073 = 0u;
                                uint _12074 = 0u;
                                if (_12055 < 3u)
                                {
                                    _12072 = (_12055 == 2u) ? _12057 : _12052;
                                    _12073 = (_12055 == 1u) ? _12057 : _12053;
                                    _12074 = (_12055 == 0u) ? _12057 : _12054;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 + 4294967295u)] = _12057;
                                    _12072 = _12052;
                                    _12073 = _12053;
                                    _12074 = _12054;
                                }
                                _12076 = 0u;
                                _12077 = _12072;
                                _12078 = _12073;
                                _12079 = _12074;
                                _12080 = _11431 + 3u;
                            }
                            else
                            {
                                bool _11708 = _10943 == 4u;
                                uint _11878 = 0u;
                                uint _11879 = 0u;
                                uint _11880 = 0u;
                                uint _11881 = 0u;
                                if (_11708)
                                {
                                    float _11712 = _8386 - 0.5f;
                                    float _11713 = _11712 * 0.0078740157186985015869140625f;
                                    float3 _11715 = float3(_11713, _11713, _11712 * 0.01587301678955554962158203125f);
                                    float3 _11716 = clamp(_10698.xyz, 0.0f.xxx, 1.0f.xxx);
                                    float _11717 = _11716.x;
                                    float _11726 = 0.0f;
                                    do
                                    {
                                        if (_11717 < 0.00313066993840038776397705078125f)
                                        {
                                            _11726 = _11717 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11726 = mad(pow(_11717, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11727 = _11716.y;
                                    float _11736 = 0.0f;
                                    do
                                    {
                                        if (_11727 < 0.00313066993840038776397705078125f)
                                        {
                                            _11736 = _11727 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11736 = mad(pow(_11727, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11737 = _11716.z;
                                    float _11746 = 0.0f;
                                    do
                                    {
                                        if (_11737 < 0.00313066993840038776397705078125f)
                                        {
                                            _11746 = _11737 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11746 = mad(pow(_11737, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float3 _11747 = float3(_11726, _11736, _11746);
                                    float3 _11753 = clamp(mad(_11715, float3(min((asuint(_11747) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11747), 0.0f.xxx, 1.0f.xxx);
                                    float3 _11769 = clamp(_8414.xyz, 0.0f.xxx, 1.0f.xxx);
                                    float _11770 = _11769.x;
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
                                    float _11780 = _11769.y;
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
                                    float _11790 = _11769.z;
                                    float _11799 = 0.0f;
                                    do
                                    {
                                        if (_11790 < 0.00313066993840038776397705078125f)
                                        {
                                            _11799 = _11790 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11799 = mad(pow(_11790, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float3 _11800 = float3(_11779, _11789, _11799);
                                    float3 _11806 = clamp(mad(_11715, float3(min((asuint(_11800) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11800), 0.0f.xxx, 1.0f.xxx);
                                    uint _11821 = _11689 | 0u;
                                    uint _11836 = 0u;
                                    uint _11837 = 0u;
                                    uint _11838 = 0u;
                                    if (_11431 < 3u)
                                    {
                                        _11836 = (_11431 == 2u) ? _11821 : 0u;
                                        _11837 = (_11431 == 1u) ? _11821 : _11429;
                                        _11838 = (_11431 == 0u) ? _11821 : _11430;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 - 3u)] = _11821;
                                        _11836 = 0u;
                                        _11837 = _11429;
                                        _11838 = _11430;
                                    }
                                    uint _11839 = _11431 + 1u;
                                    uint _11840 = (((uint(_11753.x * 127.0f) << 0u) | (uint(_11753.y * 127.0f) << 7u)) | (uint(_11753.z * 63.0f) << 14u)) | 0u;
                                    uint _11855 = 0u;
                                    uint _11856 = 0u;
                                    uint _11857 = 0u;
                                    if (_11839 < 3u)
                                    {
                                        _11855 = (_11839 == 2u) ? _11840 : _11836;
                                        _11856 = (_11839 == 1u) ? _11840 : _11837;
                                        _11857 = (_11839 == 0u) ? _11840 : _11838;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 + 4294967294u)] = _11840;
                                        _11855 = _11836;
                                        _11856 = _11837;
                                        _11857 = _11838;
                                    }
                                    uint _11858 = _11431 + 2u;
                                    uint _11859 = (((uint(_11806.x * 127.0f) << 0u) | (uint(_11806.y * 127.0f) << 7u)) | (uint(_11806.z * 63.0f) << 14u)) | 0u;
                                    uint _11874 = 0u;
                                    uint _11875 = 0u;
                                    uint _11876 = 0u;
                                    if (_11858 < 3u)
                                    {
                                        _11874 = (_11858 == 2u) ? _11859 : _11855;
                                        _11875 = (_11858 == 1u) ? _11859 : _11856;
                                        _11876 = (_11858 == 0u) ? _11859 : _11857;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 + 4294967295u)] = _11859;
                                        _11874 = _11855;
                                        _11875 = _11856;
                                        _11876 = _11857;
                                    }
                                    _11878 = _11874;
                                    _11879 = _11875;
                                    _11880 = _11876;
                                    _11881 = _11431 + 3u;
                                }
                                else
                                {
                                    _11878 = 0u;
                                    _11879 = _11429;
                                    _11880 = _11430;
                                    _11881 = _11431;
                                }
                                _12076 = _11708 ? 0u : _11682;
                                _12077 = _11878;
                                _12078 = _11879;
                                _12079 = _11880;
                                _12080 = _11881;
                            }
                            _12291 = _12076;
                            _12292 = _12077;
                            _12293 = _12078;
                            _12294 = _12079;
                            _12295 = _12080;
                        }
                        _12421 = _12291;
                        _12422 = _12292;
                        _12423 = _12293;
                        _12424 = _12294;
                        _12425 = _12295;
                    }
                    _12447 = _12421;
                    _12448 = _12422;
                    _12449 = _12423;
                    _12450 = _12424;
                    _12451 = _12425;
                }
                _12452 = _12447;
                _12453 = _12448;
                _12454 = _12449;
                _12455 = _12450;
                _12456 = _12451;
            }
            else
            {
                uint _11676 = 0u;
                uint _11677 = 0u;
                uint _11678 = 0u;
                uint _11679 = 0u;
                uint _11680 = 0u;
                if (_11374)
                {
                    uint _11657 = ((0u | ((_11366 & 65535u) << 0u)) & 65535u) | ((0u | (uint(clamp(_10701, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u);
                    uint _11672 = 0u;
                    uint _11673 = 0u;
                    uint _11674 = 0u;
                    if (_11431 < 3u)
                    {
                        _11672 = (_11431 == 2u) ? _11657 : 0u;
                        _11673 = (_11431 == 1u) ? _11657 : _11429;
                        _11674 = (_11431 == 0u) ? _11657 : _11430;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 - 3u)] = _11657;
                        _11672 = 0u;
                        _11673 = _11429;
                        _11674 = _11430;
                    }
                    _11676 = _11441;
                    _11677 = _11672;
                    _11678 = _11673;
                    _11679 = _11674;
                    _11680 = _11431 + 1u;
                }
                else
                {
                    uint _11642 = 0u;
                    uint _11643 = 0u;
                    uint _11644 = 0u;
                    uint _11645 = 0u;
                    uint _11646 = 0u;
                    if (_11373)
                    {
                        uint _11623 = (0u | ((_11366 & 65535u) << 0u)) & 65535u;
                        uint _11638 = 0u;
                        uint _11639 = 0u;
                        uint _11640 = 0u;
                        if (_11431 < 3u)
                        {
                            _11638 = (_11431 == 2u) ? _11623 : 0u;
                            _11639 = (_11431 == 1u) ? _11623 : _11429;
                            _11640 = (_11431 == 0u) ? _11623 : _11430;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 - 3u)] = _11623;
                            _11638 = 0u;
                            _11639 = _11429;
                            _11640 = _11430;
                        }
                        _11642 = _11441;
                        _11643 = _11638;
                        _11644 = _11639;
                        _11645 = _11640;
                        _11646 = _11431 + 1u;
                    }
                    else
                    {
                        uint _11615 = 0u;
                        uint _11616 = 0u;
                        uint _11617 = 0u;
                        uint _11618 = 0u;
                        uint _11619 = 0u;
                        if (_11370)
                        {
                            float _11485 = _8386 - 0.5f;
                            float _11486 = _11485 * 0.0078740157186985015869140625f;
                            float3 _11488 = float3(_11486, _11486, _11485 * 0.01587301678955554962158203125f);
                            float3 _11489 = clamp(_10698.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _11490 = _11489.x;
                            float _11499 = 0.0f;
                            do
                            {
                                if (_11490 < 0.00313066993840038776397705078125f)
                                {
                                    _11499 = _11490 * 12.9200000762939453125f;
                                    break;
                                }
                                _11499 = mad(pow(_11490, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _11500 = _11489.y;
                            float _11509 = 0.0f;
                            do
                            {
                                if (_11500 < 0.00313066993840038776397705078125f)
                                {
                                    _11509 = _11500 * 12.9200000762939453125f;
                                    break;
                                }
                                _11509 = mad(pow(_11500, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _11510 = _11489.z;
                            float _11519 = 0.0f;
                            do
                            {
                                if (_11510 < 0.00313066993840038776397705078125f)
                                {
                                    _11519 = _11510 * 12.9200000762939453125f;
                                    break;
                                }
                                _11519 = mad(pow(_11510, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _11520 = float3(_11499, _11509, _11519);
                            float3 _11526 = clamp(mad(_11488, float3(min((asuint(_11520) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11520), 0.0f.xxx, 1.0f.xxx);
                            uint _11540 = ((uint(_11526.x * 127.0f) << 0u) | (uint(_11526.y * 127.0f) << 7u)) | (uint(_11526.z * 63.0f) << 14u);
                            float3 _11548 = clamp(float3(_10707, 0.0f, _10701), 0.0f.xxx, 1.0f.xxx);
                            float3 _11554 = clamp(mad(_11488, float3(min((asuint(_11548) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11548), 0.0f.xxx, 1.0f.xxx);
                            uint _11576 = ((0u | ((_11366 & 65535u) << 0u)) & 65535u) | (((((_11540 >> 12u) & 255u) << 8u) | uint(clamp(_10705, 0.0f, 1.0f) * 255.0f)) << 16u);
                            uint _11591 = 0u;
                            uint _11592 = 0u;
                            uint _11593 = 0u;
                            if (_11431 < 3u)
                            {
                                _11591 = (_11431 == 2u) ? _11576 : 0u;
                                _11592 = (_11431 == 1u) ? _11576 : _11429;
                                _11593 = (_11431 == 0u) ? _11576 : _11430;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 - 3u)] = _11576;
                                _11591 = 0u;
                                _11592 = _11429;
                                _11593 = _11430;
                            }
                            uint _11594 = _11431 + 1u;
                            uint _11596 = ((_11540 & 4095u) << 20u) | (((uint(_11554.x * 127.0f) << 0u) | (uint(_11554.y * 127.0f) << 7u)) | (uint(_11554.z * 63.0f) << 14u));
                            uint _11611 = 0u;
                            uint _11612 = 0u;
                            uint _11613 = 0u;
                            if (_11594 < 3u)
                            {
                                _11611 = (_11594 == 2u) ? _11596 : _11591;
                                _11612 = (_11594 == 1u) ? _11596 : _11592;
                                _11613 = (_11594 == 0u) ? _11596 : _11593;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 + 4294967294u)] = _11596;
                                _11611 = _11591;
                                _11612 = _11592;
                                _11613 = _11593;
                            }
                            _11615 = 0u;
                            _11616 = _11611;
                            _11617 = _11612;
                            _11618 = _11613;
                            _11619 = _11431 + 2u;
                        }
                        else
                        {
                            uint _11465 = (_11441 & 4194303u) | ((((spvPackHalf2x16(float2(1.0f, 0.0f)) >> 5u) & 1023u) & 1023u) << 22u);
                            uint _11480 = 0u;
                            uint _11481 = 0u;
                            uint _11482 = 0u;
                            if (_11431 < 3u)
                            {
                                _11480 = (_11431 == 2u) ? _11465 : 0u;
                                _11481 = (_11431 == 1u) ? _11465 : _11429;
                                _11482 = (_11431 == 0u) ? _11465 : _11430;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _11431 - 3u)] = _11465;
                                _11480 = 0u;
                                _11481 = _11429;
                                _11482 = _11430;
                            }
                            _11615 = _11465;
                            _11616 = _11480;
                            _11617 = _11481;
                            _11618 = _11482;
                            _11619 = _11431 + 1u;
                        }
                        _11642 = _11615;
                        _11643 = _11616;
                        _11644 = _11617;
                        _11645 = _11618;
                        _11646 = _11619;
                    }
                    _11676 = _11642;
                    _11677 = _11643;
                    _11678 = _11644;
                    _11679 = _11645;
                    _11680 = _11646;
                }
                _12452 = _11676;
                _12453 = _11677;
                _12454 = _11678;
                _12455 = _11679;
                _12456 = _11680;
            }
            _12616 = _12452;
            _12617 = _12453;
            _12618 = _12454;
            _12619 = _12455;
            _12620 = _12456;
        }
        uint _13434 = 0u;
        uint _13435 = 0u;
        uint _13436 = 0u;
        uint _13437 = 0u;
        uint _13438 = 0u;
        if (((!_11442) && _11381) && (_10943 == 0u))
        {
            uint _13429 = 0u;
            uint _13430 = 0u;
            uint _13431 = 0u;
            uint _13432 = 0u;
            uint _13433 = 0u;
            switch ((_12616 >> 11u) & 7u)
            {
                case 0u:
                {
                    float _12924 = _8386 - 0.5f;
                    float _12925 = _12924 * 0.0078740157186985015869140625f;
                    float _12926 = _12924 * 0.01587301678955554962158203125f;
                    float3 _12927 = float3(_12925, _12925, _12926);
                    float3 _12928 = clamp(_10698.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12929 = _12928.x;
                    float _12938 = 0.0f;
                    do
                    {
                        if (_12929 < 0.00313066993840038776397705078125f)
                        {
                            _12938 = _12929 * 12.9200000762939453125f;
                            break;
                        }
                        _12938 = mad(pow(_12929, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12939 = _12928.y;
                    float _12948 = 0.0f;
                    do
                    {
                        if (_12939 < 0.00313066993840038776397705078125f)
                        {
                            _12948 = _12939 * 12.9200000762939453125f;
                            break;
                        }
                        _12948 = mad(pow(_12939, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12949 = _12928.z;
                    float _12958 = 0.0f;
                    do
                    {
                        if (_12949 < 0.00313066993840038776397705078125f)
                        {
                            _12958 = _12949 * 12.9200000762939453125f;
                            break;
                        }
                        _12958 = mad(pow(_12949, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float3 _12959 = float3(_12938, _12948, _12958);
                    float3 _12965 = clamp(mad(_12927, float3(min((asuint(_12959) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12959), 0.0f.xxx, 1.0f.xxx);
                    float3 _12981 = clamp(_8414.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12982 = _12981.x;
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
                    float _12992 = _12981.y;
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
                    float _13002 = _12981.z;
                    float _13011 = 0.0f;
                    do
                    {
                        if (_13002 < 0.00313066993840038776397705078125f)
                        {
                            _13011 = _13002 * 12.9200000762939453125f;
                            break;
                        }
                        _13011 = mad(pow(_13002, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float3 _13012 = float3(_12991, _13001, _13011);
                    float3 _13018 = clamp(mad(_12927, float3(min((asuint(_13012) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13012), 0.0f.xxx, 1.0f.xxx);
                    uint _13032 = ((uint(_13018.x * 127.0f) << 0u) | (uint(_13018.y * 127.0f) << 7u)) | (uint(_13018.z * 63.0f) << 14u);
                    uint _13036 = (((((uint(_12965.x * 127.0f) << 0u) | (uint(_12965.y * 127.0f) << 7u)) | (uint(_12965.z * 63.0f) << 14u)) << 12u) & 4294963200u) | (_13032 & 4095u);
                    uint _13053 = 0u;
                    uint _13054 = 0u;
                    uint _13055 = 0u;
                    if (_12620 < 3u)
                    {
                        _13053 = (_12620 == 2u) ? _13036 : _12617;
                        _13054 = (_12620 == 1u) ? _13036 : _12618;
                        _13055 = (_12620 == 0u) ? _13036 : _12619;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _12620 - 3u)] = _13036;
                        _13053 = _12617;
                        _13054 = _12618;
                        _13055 = _12619;
                    }
                    uint _13056 = _12620 + 1u;
                    uint _13065 = ((_13032 >> 12u) & 255u) | ((0u | (uint(clamp((_10707 + 1.0f) * 0.5f, 0.0f, 1.0f) * 255.0f) << 16u)) | 2130706432u);
                    uint _13080 = 0u;
                    uint _13081 = 0u;
                    uint _13082 = 0u;
                    if (_13056 < 3u)
                    {
                        _13080 = (_13056 == 2u) ? _13065 : _13053;
                        _13081 = (_13056 == 1u) ? _13065 : _13054;
                        _13082 = (_13056 == 0u) ? _13065 : _13055;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _12620 + 4294967294u)] = _13065;
                        _13080 = _13053;
                        _13081 = _13054;
                        _13082 = _13055;
                    }
                    uint _13083 = _12620 + 2u;
                    uint _13134 = 0u;
                    uint _13135 = 0u;
                    uint _13136 = 0u;
                    uint _13137 = 0u;
                    if ((((_12616 >> 7u) & 1u) != 0u) || (((_12616 >> 6u) & 1u) != 0u))
                    {
                        bool3 _13096 = (max(0.0f, max(0.0f, 0.0f)) > 0.0f).xxx;
                        float3 _13097 = float3(_13096.x ? 0.0f.xxx.x : 1.0f.xxx.x, _13096.y ? 0.0f.xxx.y : 1.0f.xxx.y, _13096.z ? 0.0f.xxx.z : 1.0f.xxx.z);
                        float3 _13101 = mad(float3(_548, dot(_13097, float3(2.0f, 0.0f, -2.0f)), dot(_13097, float3(-1.0f, 2.0f, -1.0f))), 0.25f.xxx, float3(0.0f, 0.5f, 0.5f));
                        uint _13115 = 0u | ((((uint(clamp(_13101.y, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13101.z, 0.0f, 1.0f) * 255.0f) << 8u)) | 0u) | 0u);
                        uint _13130 = 0u;
                        uint _13131 = 0u;
                        uint _13132 = 0u;
                        if (_13083 < 3u)
                        {
                            _13130 = (_13083 == 2u) ? _13115 : _13080;
                            _13131 = (_13083 == 1u) ? _13115 : _13081;
                            _13132 = (_13083 == 0u) ? _13115 : _13082;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _12620 + 4294967295u)] = _13115;
                            _13130 = _13080;
                            _13131 = _13081;
                            _13132 = _13082;
                        }
                        _13134 = _13130;
                        _13135 = _13131;
                        _13136 = _13132;
                        _13137 = _12620 + 3u;
                    }
                    else
                    {
                        _13134 = _13080;
                        _13135 = _13081;
                        _13136 = _13082;
                        _13137 = _13083;
                    }
                    uint _13139 = (_12616 >> 2u) & 7u;
                    uint _13310 = 0u;
                    uint _13311 = 0u;
                    uint _13312 = 0u;
                    uint _13313 = 0u;
                    uint _13314 = 0u;
                    uint _13315 = 0u;
                    if (_13139 != 0u)
                    {
                        uint _13234 = 0u;
                        uint _13235 = 0u;
                        if (_13139 != 4u)
                        {
                            uint _13148 = (_10944 & 4294967292u) | (_13139 & 3u);
                            uint _13182 = 0u;
                            if (_13139 == 1u)
                            {
                                _13182 = (_13148 & 3u) | (uint(clamp(1.0f - abs(0.0f), 0.0f, 1.0f) * 255.0f) << 2u);
                            }
                            else
                            {
                                uint _13173 = 0u;
                                if (_13139 == 3u)
                                {
                                    _13173 = ((_13148 & 3u) | (uint(mad(0.0f, 255.0f, 0.5f)) << 24u)) | 0u;
                                }
                                else
                                {
                                    uint _13160 = (spvPackHalf2x16(0.0f.xx) >> 5u) & 1023u;
                                    _13173 = (_13148 & 3u) | (((_13160 << 22u) | (_13160 << 12u)) | (_13160 << 2u));
                                }
                                _13182 = _13173;
                            }
                            float3 _13188 = clamp(float4(_10698, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                            float _13189 = _13188.x;
                            float _13198 = 0.0f;
                            do
                            {
                                if (_13189 < 0.00313066993840038776397705078125f)
                                {
                                    _13198 = _13189 * 12.9200000762939453125f;
                                    break;
                                }
                                _13198 = mad(pow(_13189, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _13199 = _13188.y;
                            float _13208 = 0.0f;
                            do
                            {
                                if (_13199 < 0.00313066993840038776397705078125f)
                                {
                                    _13208 = _13199 * 12.9200000762939453125f;
                                    break;
                                }
                                _13208 = mad(pow(_13199, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _13209 = _13188.z;
                            float _13218 = 0.0f;
                            do
                            {
                                if (_13209 < 0.00313066993840038776397705078125f)
                                {
                                    _13218 = _13209 * 12.9200000762939453125f;
                                    break;
                                }
                                _13218 = mad(pow(_13209, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            _13234 = (((uint(clamp(_13198, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13208, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_13218, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                            _13235 = _13182;
                        }
                        else
                        {
                            _13234 = 0u;
                            _13235 = _10944;
                        }
                        uint _13307 = 0u;
                        uint _13308 = 0u;
                        uint _13309 = 0u;
                        if (_13139 == 3u)
                        {
                            uint _13289 = 0u | (((spvPackHalf2x16(0.0f.xx) >> 5u) & 1023u) << 16u);
                            uint _13304 = 0u;
                            uint _13305 = 0u;
                            uint _13306 = 0u;
                            if (_13137 < 3u)
                            {
                                _13304 = (_13137 == 2u) ? _13289 : _13134;
                                _13305 = (_13137 == 1u) ? _13289 : _13135;
                                _13306 = (_13137 == 0u) ? _13289 : _13136;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _13137 - 3u)] = _13289;
                                _13304 = _13134;
                                _13305 = _13135;
                                _13306 = _13136;
                            }
                            _13307 = _13304;
                            _13308 = _13305;
                            _13309 = _13306;
                        }
                        else
                        {
                            float4 _13250 = 0.0f.xxxx;
                            if ((((_12616 >> 10u) & 1u) != 0u) && (_13139 == 2u))
                            {
                                float3 _13248 = max(0.0f.xxx, 0.0f.xxx);
                                _13250 = float4(_13248.x, _13248.y, _13248.z, 0.0f.xxxx.w);
                            }
                            else
                            {
                                _13250 = 0.0f.xxxx;
                            }
                            uint _13267 = (((spvPackHalf2x16(float2(_13250.x, 0.0f)) << 17u) & 4292870144u) | ((spvPackHalf2x16(float2(_13250.y, 0.0f)) << 6u) & 2096128u)) | ((spvPackHalf2x16(float2(_13250.z, 0.0f)) >> 5u) & 1023u);
                            uint _13282 = 0u;
                            uint _13283 = 0u;
                            uint _13284 = 0u;
                            if (_13137 < 3u)
                            {
                                _13282 = (_13137 == 2u) ? _13267 : _13134;
                                _13283 = (_13137 == 1u) ? _13267 : _13135;
                                _13284 = (_13137 == 0u) ? _13267 : _13136;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _13137 - 3u)] = _13267;
                                _13282 = _13134;
                                _13283 = _13135;
                                _13284 = _13136;
                            }
                            _13307 = _13282;
                            _13308 = _13283;
                            _13309 = _13284;
                        }
                        _13310 = _13234;
                        _13311 = _13235;
                        _13312 = _13307;
                        _13313 = _13308;
                        _13314 = _13309;
                        _13315 = _13137 + 1u;
                    }
                    else
                    {
                        _13310 = 0u;
                        _13311 = _10944;
                        _13312 = _13134;
                        _13313 = _13135;
                        _13314 = _13136;
                        _13315 = _13137;
                    }
                    uint _13386 = 0u;
                    uint _13387 = 0u;
                    uint _13388 = 0u;
                    uint _13389 = 0u;
                    if (((_12616 >> 9u) & 1u) != 0u)
                    {
                        float _13326 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13326 = 0.0f;
                                break;
                            }
                            _13326 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13332 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13332 = 0.0f;
                                break;
                            }
                            _13332 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13338 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13338 = 0.0f;
                                break;
                            }
                            _13338 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float3 _13339 = float3(_13326, _13332, _13338);
                        float3 _13345 = clamp(mad(_12927, float3(min((asuint(_13339) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13339), 0.0f.xxx, 1.0f.xxx);
                        uint _13363 = uint(clamp(mad(_12926, 0.0f, 0.0f), 0.0f, 1.0f) * 63.0f);
                        uint _13367 = ((((uint(_13345.x * 127.0f) << 0u) | (uint(_13345.y * 127.0f) << 7u)) | (uint(_13345.z * 63.0f) << 14u)) | (_13363 << 20u)) | (_13363 << 26u);
                        uint _13382 = 0u;
                        uint _13383 = 0u;
                        uint _13384 = 0u;
                        if (_13315 < 3u)
                        {
                            _13382 = (_13315 == 2u) ? _13367 : _13312;
                            _13383 = (_13315 == 1u) ? _13367 : _13313;
                            _13384 = (_13315 == 0u) ? _13367 : _13314;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _13315 - 3u)] = _13367;
                            _13382 = _13312;
                            _13383 = _13313;
                            _13384 = _13314;
                        }
                        _13386 = _13382;
                        _13387 = _13383;
                        _13388 = _13384;
                        _13389 = _13315 + 1u;
                    }
                    else
                    {
                        _13386 = _13312;
                        _13387 = _13313;
                        _13388 = _13314;
                        _13389 = _13315;
                    }
                    uint _13426 = 0u;
                    uint _13427 = 0u;
                    uint _13428 = 0u;
                    if (((_12616 >> 16u) & 1u) != 0u)
                    {
                        float _13397 = 0.0f;
                        do
                        {
                            _13397 = mad(1.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        uint _13402 = uint(clamp(_13397, 0.0f, 1.0f) * 255.0f);
                        uint _13408 = (((_13402 << 0u) | (_13402 << 8u)) | (_13402 << 16u)) | 0u;
                        uint _13423 = 0u;
                        uint _13424 = 0u;
                        uint _13425 = 0u;
                        if (_13389 < 3u)
                        {
                            _13423 = (_13389 == 2u) ? _13408 : _13386;
                            _13424 = (_13389 == 1u) ? _13408 : _13387;
                            _13425 = (_13389 == 0u) ? _13408 : _13388;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _13389 - 3u)] = _13408;
                            _13423 = _13386;
                            _13424 = _13387;
                            _13425 = _13388;
                        }
                        _13426 = _13423;
                        _13427 = _13424;
                        _13428 = _13425;
                    }
                    else
                    {
                        _13426 = _13386;
                        _13427 = _13387;
                        _13428 = _13388;
                    }
                    _13429 = _13310;
                    _13430 = _13311;
                    _13431 = _13426;
                    _13432 = _13427;
                    _13433 = _13428;
                    break;
                }
                case 3u:
                {
                    float3 _12827 = clamp(float4(_10698, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12828 = _12827.x;
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
                    float _12838 = _12827.y;
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
                    float _12848 = _12827.z;
                    float _12857 = 0.0f;
                    do
                    {
                        if (_12848 < 0.00313066993840038776397705078125f)
                        {
                            _12857 = _12848 * 12.9200000762939453125f;
                            break;
                        }
                        _12857 = mad(pow(_12848, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    uint _12872 = (((uint(clamp(_12837, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12847, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12857, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                    uint _12887 = 0u;
                    uint _12888 = 0u;
                    uint _12889 = 0u;
                    if (_12620 < 3u)
                    {
                        _12887 = (_12620 == 2u) ? _12872 : _12617;
                        _12888 = (_12620 == 1u) ? _12872 : _12618;
                        _12889 = (_12620 == 0u) ? _12872 : _12619;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _12620 - 3u)] = _12872;
                        _12887 = _12617;
                        _12888 = _12618;
                        _12889 = _12619;
                    }
                    uint _12890 = _12620 + 1u;
                    uint _12905 = ((0u | (uint(clamp(_10701, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_10705, 0.0f, 1.0f) * 255.0f) << 16u)) | (uint(clamp(_10707, 0.0f, 1.0f) * 255.0f) << 24u);
                    uint _12920 = 0u;
                    uint _12921 = 0u;
                    uint _12922 = 0u;
                    if (_12890 < 3u)
                    {
                        _12920 = (_12890 == 2u) ? _12905 : _12887;
                        _12921 = (_12890 == 1u) ? _12905 : _12888;
                        _12922 = (_12890 == 0u) ? _12905 : _12889;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _12620 + 4294967294u)] = _12905;
                        _12920 = _12887;
                        _12921 = _12888;
                        _12922 = _12889;
                    }
                    _13429 = 0u;
                    _13430 = _10944;
                    _13431 = _12920;
                    _13432 = _12921;
                    _13433 = _12922;
                    break;
                }
                case 5u:
                {
                    float3 _12638 = 0.0f.xxx;
                    if (true)
                    {
                        float2 _12636 = 1.0f.xx - abs(0.0f.xx);
                        _12638 = float3(_12636.x, _12636.y, 0.0f.xxxx.z);
                    }
                    else
                    {
                        _12638 = 0.0f.xxx;
                    }
                    float3 _12645 = 0.0f.xxx;
                    if (true)
                    {
                        float2 _12643 = 1.0f.xx - abs(0.0f.xx);
                        _12645 = float3(_12643.x, _12643.y, 0.0f.xxxx.z);
                    }
                    else
                    {
                        _12645 = 0.0f.xxx;
                    }
                    float3 _12648 = clamp(_10698.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12649 = _12648.x;
                    float _12658 = 0.0f;
                    do
                    {
                        if (_12649 < 0.00313066993840038776397705078125f)
                        {
                            _12658 = _12649 * 12.9200000762939453125f;
                            break;
                        }
                        _12658 = mad(pow(_12649, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12659 = _12648.y;
                    float _12668 = 0.0f;
                    do
                    {
                        if (_12659 < 0.00313066993840038776397705078125f)
                        {
                            _12668 = _12659 * 12.9200000762939453125f;
                            break;
                        }
                        _12668 = mad(pow(_12659, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12669 = _12648.z;
                    float _12678 = 0.0f;
                    do
                    {
                        if (_12669 < 0.00313066993840038776397705078125f)
                        {
                            _12678 = _12669 * 12.9200000762939453125f;
                            break;
                        }
                        _12678 = mad(pow(_12669, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    uint _12693 = (((uint(clamp(_12658, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12668, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12678, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                    uint _12708 = 0u;
                    uint _12709 = 0u;
                    uint _12710 = 0u;
                    if (_12620 < 3u)
                    {
                        _12708 = (_12620 == 2u) ? _12693 : _12617;
                        _12709 = (_12620 == 1u) ? _12693 : _12618;
                        _12710 = (_12620 == 0u) ? _12693 : _12619;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _12620 - 3u)] = _12693;
                        _12708 = _12617;
                        _12709 = _12618;
                        _12710 = _12619;
                    }
                    uint _12711 = _12620 + 1u;
                    float2 _12713 = (_12638.xy * 0.5f) + 0.5f.xx;
                    float2 _12715 = (_12645.xy * 0.5f) + 0.5f.xx;
                    uint _12738 = (((uint(clamp(_12713.x, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12713.y, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12715.x, 0.0f, 1.0f) * 255.0f) << 16u)) | (uint(clamp(_12715.y, 0.0f, 1.0f) * 255.0f) << 24u);
                    uint _12753 = 0u;
                    uint _12754 = 0u;
                    uint _12755 = 0u;
                    if (_12711 < 3u)
                    {
                        _12753 = (_12711 == 2u) ? _12738 : _12708;
                        _12754 = (_12711 == 1u) ? _12738 : _12709;
                        _12755 = (_12711 == 0u) ? _12738 : _12710;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10695, _12620 + 4294967294u)] = _12738;
                        _12753 = _12708;
                        _12754 = _12709;
                        _12755 = _12710;
                    }
                    uint _12820 = 0u;
                    uint _12821 = 0u;
                    if (((_12616 >> 2u) & 7u) == 3u)
                    {
                        float3 _12774 = clamp(float4(_10698, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                        float _12775 = _12774.x;
                        float _12784 = 0.0f;
                        do
                        {
                            if (_12775 < 0.00313066993840038776397705078125f)
                            {
                                _12784 = _12775 * 12.9200000762939453125f;
                                break;
                            }
                            _12784 = mad(pow(_12775, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12785 = _12774.y;
                        float _12794 = 0.0f;
                        do
                        {
                            if (_12785 < 0.00313066993840038776397705078125f)
                            {
                                _12794 = _12785 * 12.9200000762939453125f;
                                break;
                            }
                            _12794 = mad(pow(_12785, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12795 = _12774.z;
                        float _12804 = 0.0f;
                        do
                        {
                            if (_12795 < 0.00313066993840038776397705078125f)
                            {
                                _12804 = _12795 * 12.9200000762939453125f;
                                break;
                            }
                            _12804 = mad(pow(_12795, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        _12820 = (((uint(clamp(_12784, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12794, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12804, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                        _12821 = ((((_10944 & 4294967292u) | 3u) & 3u) | (uint(mad(_10705, 255.0f, 0.5f)) << 24u)) | 16711680u;
                    }
                    else
                    {
                        _12820 = 0u;
                        _12821 = _10944;
                    }
                    _13429 = _12820;
                    _13430 = _12821;
                    _13431 = _12753;
                    _13432 = _12754;
                    _13433 = _12755;
                    break;
                }
                default:
                {
                    _13429 = 0u;
                    _13430 = _10944;
                    _13431 = _12617;
                    _13432 = _12618;
                    _13433 = _12619;
                    break;
                }
            }
            _13434 = _13429;
            _13435 = _13430;
            _13436 = _13431;
            _13437 = _13432;
            _13438 = _13433;
        }
        else
        {
            _13434 = 0u;
            _13435 = _10944;
            _13436 = _12617;
            _13437 = _12618;
            _13438 = _12619;
        }
        _13439 = _13434;
        _13440 = _13435;
        _13441 = _13436;
        _13442 = _13437;
        _13443 = _13438;
    }
    else
    {
        _13439 = 0u;
        _13440 = _10944;
        _13441 = 0u;
        _13442 = _11429;
        _13443 = _11430;
    }
    float2 _13448 = _10852.xy / dot(1.0f.xxx, abs(_10852)).xx;
    float3 _13466 = 0.0f.xxx;
    if (_10852.z <= 0.0f)
    {
        float2 _13457 = _13448.xy;
        bool2 _13458 = bool2(_13457.x >= 0.0f.xx.x, _13457.y >= 0.0f.xx.y);
        float2 _13464 = (1.0f.xx - abs(_13448.yx)) * float2(_13458.x ? 1.0f : (-1.0f), _13458.y ? 1.0f : (-1.0f));
        _13466 = float3(_13464.x, _13464.y, _10852.z);
    }
    else
    {
        _13466 = float3(_13448.x, _13448.y, _10852.z);
    }
    uint2 _13471 = uint2(clamp((_13466.xy * 1023.0f) + 1024.0f.xx, 0.0f.xx, 2047.0f.xx));
    uint _13483 = _13440 & 3u;
    [branch]
    if (_13483 != 0u)
    {
        uint _13490 = uint(OpaqueBasePass_OpaqueBasePass_Strata_FirstSliceStoringStrataSSSDataWithoutMRT);
        uint _13491 = _10695.x;
        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_13491, _10695.y, _13490)] = _13440;
        if ((_13483 == 2u) || (_13483 == 3u))
        {
            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_13491, _10695.y, _13490 + 1u)] = _13439;
        }
    }
    float4 _13512 = float4((lerp((((float4(_10354.x ? 0.0f.xxxx.x : _9833.x, _10354.y ? 0.0f.xxxx.y : _9833.y, _10354.z ? 0.0f.xxxx.z : _9833.z, _10354.w ? 0.0f.xxxx.w : _9833.w).xyz + float4(_10354.x ? 0.0f.xxxx.x : _9836.x, _10354.y ? 0.0f.xxxx.y : _9836.y, _10354.z ? 0.0f.xxxx.z : _9836.z, _10354.w ? 0.0f.xxxx.w : _9836.w).xyz) + (((_8619 * _8552) * max(1.0f.xxx, ((((((_8433 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_8433 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_8433 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)) * _8423)) + _10441) + _10692, float3(_10850.x ? _10856.x : 0.0f.xxx.x, _10850.y ? _10856.y : 0.0f.xxx.y, _10850.z ? _10856.z : 0.0f.xxx.z), View_View_UnlitViewmodeMask.xxx) + (_11346 + _10440)) * 1.0f, 0.0f);
    float4 _13519 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _13518 = _13512;
        _13518.w = 0.0f;
        _13519 = _13518;
    }
    else
    {
        _13519 = _13512;
    }
    float4 _13520 = 0.0f.xxxx;
    _13520.x = _8509;
    _13520.y = 1.0f;
    _13520.z = 1.0f;
    _13520.w = 1.0f;
    float4 _13529 = _13519 * View_View_PreExposure;
    float3 _13531 = min(_13529.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_13531.x, _13531.y, _13531.z, _13529.w);
    out_var_SV_Target1 = _13520;
    out_var_SV_Target2 = float4(_10691 * View_View_PreExposure, 1.0f);
    out_var_SV_Target3 = _13443;
    out_var_SV_Target4 = _13442;
    out_var_SV_Target5 = _13441;
    out_var_SV_Target6 = (((_13471.x | (_13471.y << 11u)) << 10u) | (uint(clamp(_10849 ? (_10845 / _10847) : 0.0f, 0.0f, 1.0f) * 255.0f) << 2u)) | _10840;
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
