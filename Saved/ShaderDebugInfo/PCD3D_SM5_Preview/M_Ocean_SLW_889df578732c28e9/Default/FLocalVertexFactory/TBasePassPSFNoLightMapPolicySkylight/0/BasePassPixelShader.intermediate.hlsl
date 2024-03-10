#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _449 = 0.0f.xxx;
static float3 _527 = 0.0f.xxx;
static uint3 _528 = uint3(0u, 0u, 0u);
static float3 _529 = 0.0f.xxx;
static float4x4 _530 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
static float4 _531 = 0.0f.xxxx;
static float _537 = 0.0f;
static uint3 _538 = uint3(0u, 0u, 0u);
static float3 _539 = 0.0f.xxx;
static float2 _540 = 0.0f.xx;

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
    float View_View_RenderingReflectionCaptureMask : packoffset(c179.w);
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
    float _571 = 1.0f / gl_FragCoord.w;
    float2 _612 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _619 = float4(mad(_612, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _537, 1.0f) * _571;
    float4 _624 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _628 = _624.xyz / _624.w.xxx;
    float3 _629 = _628 - View_View_RelativePreViewTranslation;
    float3 _630 = in_var_TEXCOORD9 - View_View_RelativePreViewTranslation;
    float _632 = _619.w;
    float3 _646 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _646 = -View_View_ViewForward;
    }
    else
    {
        _646 = normalize(-_628);
    }
    float3 _653 = View_View_ViewTilePosition * float3(-1.0f, -1.0f, -0.0f);
    float3 _655 = mad(-_629, float3(1.0f, 1.0f, 0.0f), float3(MaterialCollection0_MaterialCollection0_Vectors[4].xyz));
    float _656 = _653.x;
    float _657 = _655.x;
    float _660 = _653.y;
    float _661 = _655.y;
    float _666 = _653.z;
    float _667 = _655.z;
    float3 _687 = Material_Material_PreshaderBuffer[2].x.xxx;
    float3 _699 = 0.0f.xxx;
    float _704 = 0.0f;
    _699 = mad(_629, _687, mad(View_View_ViewTilePosition, _687, -floor(mad(View_View_ViewTilePosition, _687, ((_629 * _687) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _704 = 0.0f;
    float _702 = 1.0f;
    uint _706 = 0u;
    [loop]
    for (; _706 < 6u; )
    {
        float3 _710 = _699 * 0.066666670143604278564453125f.xxx;
        float3 _712 = frac(_710) * 15.0f;
        float3 _713 = frac(_712);
        float4 _718 = float4(_713, 0.0f);
        float4 _731 = View_PerlinNoise3DTexture.SampleLevel(View_PerlinNoise3DTextureSampler, mad((_712 - _713) + (((_718 * _718) * _718) * mad(_718, (_718 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx)).xyz, 0.0625f.xxx, 0.03125f.xxx), 0.0f);
        float _705 = mad(abs(dot(_712, mad(_731.xyz * 255.0f, 0.0078740157186985015869140625f.xxx, (-1.0f).xxx)) - mad(_731.w, 255.0f, -127.0f)), _702, _704);
        _699 *= 2.0f;
        _702 *= 0.5f;
        _704 = _705;
        _706++;
        continue;
    }
    float _761 = clamp(mad(-length((mad(View_View_ViewTilePosition, float3(1.0f, 1.0f, 0.0f), _653) * 2097152.0f) + mad(View_View_RelativeWorldCameraOrigin, float3(1.0f, 1.0f, 0.0f), _629 * float3(-1.0f, -1.0f, -0.0f))), 1.0f / max(9.9999997473787516355514526367188e-06f, MaterialCollection0_MaterialCollection0_Vectors[0].x * Material_Material_PreshaderBuffer[2].y), 1.0f) * Material_Material_PreshaderBuffer[3].y, 0.0f, 1.0f);
    float _762 = lerp(clamp(lerp(-1.0f, 1.0f, _704), 0.0f, 1.0f), 1.0f, _761);
    float3 _765 = ((View_View_ViewTilePosition + (-View_View_ViewTilePosition)) * 2097152.0f) + _628;
    uint3 _767 = uint3(0u, 0u, 0u);
    _767 = _528;
    float _773 = 0.0f;
    uint3 _768 = uint3(0u, 0u, 0u);
    float _864 = 0.0f;
    uint _770 = 0u;
    float _772 = 0.0f;
    uint _775 = 0u;
    for (;;)
    {
        _775 = View_View_NumGlobalSDFClipmaps;
        if (_770 < _775)
        {
            float3 _789 = min(max((_765 - View_View_GlobalVolumeTranslatedCenterAndExtent[_770].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_770].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_770].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_770].www) - _765, 0.0f.xxx));
            float _799 = View_View_GlobalVolumeTranslatedCenterAndExtent[_770].w * View_View_GlobalVolumeTexelSize;
            _773 = 8.0f * _799;
            if (min(_789.x, min(_789.y, _789.z)) > _799)
            {
                float3 _809 = frac(frac(mad(_765, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_770].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_770].xyz)));
                float _813 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _820 = (clamp(_809, 0.0f.xxx, 1.0f.xxx) * _813) + float3(int3(0, 0, int(_770 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                uint4 _830 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_820.x), int(_820.y), int(_820.z), 0).xyz, 0));
                uint _831 = _830.x;
                uint _832 = _831 & 16777215u;
                uint3 _863 = uint3(0u, 0u, 0u);
                if (_831 < 4294967295u)
                {
                    uint3 _837 = _767;
                    _837.x = _832 & 127u;
                    _837.y = (_832 >> 7u) & 127u;
                    _837.z = _832 >> 14u;
                    float4 _856 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_837 * uint3(8u, 8u, 8u)) + (frac(_809 * _813) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f);
                    float _857 = _856.x;
                    if (_857 < 1.0f)
                    {
                        _864 = mad(_857, 2.0f, -1.0f) * _773;
                        break;
                    }
                    _863 = _837;
                }
                else
                {
                    _863 = _767;
                }
                _768 = _863;
            }
            else
            {
                _768 = _767;
            }
            _767 = _768;
            _770++;
            _772 = _773;
            continue;
        }
        else
        {
            _864 = _772;
            break;
        }
    }
    float _875 = clamp(mad(mad(_864, Material_Material_PreshaderBuffer[3].w, -Material_Material_PreshaderBuffer[4].x) * Material_Material_PreshaderBuffer[4].w, -1.0f, 1.0f), 0.0f, 1.0f);
    uint3 _877 = uint3(0u, 0u, 0u);
    _877 = _528;
    uint3 _878 = uint3(0u, 0u, 0u);
    float3 _1135 = 0.0f.xxx;
    uint _880 = 0u;
    for (;;)
    {
        if (_880 < _775)
        {
            float _890 = View_View_GlobalVolumeTranslatedCenterAndExtent[_880].w * View_View_GlobalVolumeTexelSize;
            float3 _900 = min(max((_765 - View_View_GlobalVolumeTranslatedCenterAndExtent[_880].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_880].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_880].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_880].www) - _765, 0.0f.xxx));
            if (min(_900.x, min(_900.y, _900.z)) >= _890)
            {
                float3 _915 = frac(frac(mad(_765, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_880].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_880].xyz)));
                float _919 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _925 = float3(int3(0, 0, int(_880 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                float3 _926 = (clamp(_915, 0.0f.xxx, 1.0f.xxx) * _919) + _925;
                uint4 _936 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_926.x), int(_926.y), int(_926.z), 0).xyz, 0));
                uint _937 = _936.x;
                uint _938 = _937 & 16777215u;
                uint3 _1134 = uint3(0u, 0u, 0u);
                if (_937 < 4294967295u)
                {
                    uint3 _943 = _877;
                    _943.x = _938 & 127u;
                    _943.y = (_938 >> 7u) & 127u;
                    _943.z = _938 >> 14u;
                    if (View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_943 * uint3(8u, 8u, 8u)) + (frac(_915 * _919) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x < 0.89999997615814208984375f)
                    {
                        float _967 = 0.5f * View_View_GlobalVolumeTexelSize;
                        float3 _970 = frac(_915 + float3(_967, 0.0f, 0.0f));
                        float3 _973 = (clamp(_970, 0.0f.xxx, 1.0f.xxx) * _919) + _925;
                        uint4 _982 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_973.x), int(_973.y), int(_973.z), 0).xyz, 0));
                        uint _983 = _982.x;
                        uint _984 = _983 & 16777215u;
                        float _1006 = 0.0f;
                        if (_983 < 4294967295u)
                        {
                            uint3 _989 = uint3(0u, 0u, 0u);
                            _989.x = _984 & 127u;
                            _989.y = (_984 >> 7u) & 127u;
                            _989.z = _984 >> 14u;
                            _1006 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_989 * uint3(8u, 8u, 8u)) + (frac(_970 * _919) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1006 = 1.0f;
                        }
                        float _1007 = View_View_GlobalVolumeTexelSize * (-0.5f);
                        float3 _1010 = frac(_915 + float3(_1007, 0.0f, 0.0f));
                        float3 _1013 = (clamp(_1010, 0.0f.xxx, 1.0f.xxx) * _919) + _925;
                        uint4 _1022 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1013.x), int(_1013.y), int(_1013.z), 0).xyz, 0));
                        uint _1023 = _1022.x;
                        uint _1024 = _1023 & 16777215u;
                        float _1046 = 0.0f;
                        if (_1023 < 4294967295u)
                        {
                            uint3 _1029 = uint3(0u, 0u, 0u);
                            _1029.x = _1024 & 127u;
                            _1029.y = (_1024 >> 7u) & 127u;
                            _1029.z = _1024 >> 14u;
                            _1046 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1029 * uint3(8u, 8u, 8u)) + (frac(_1010 * _919) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1046 = 1.0f;
                        }
                        float3 _1049 = frac(_915 + float3(0.0f, _967, 0.0f));
                        float3 _1052 = (clamp(_1049, 0.0f.xxx, 1.0f.xxx) * _919) + _925;
                        uint4 _1061 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1052.x), int(_1052.y), int(_1052.z), 0).xyz, 0));
                        uint _1062 = _1061.x;
                        uint _1063 = _1062 & 16777215u;
                        float _1085 = 0.0f;
                        if (_1062 < 4294967295u)
                        {
                            uint3 _1068 = uint3(0u, 0u, 0u);
                            _1068.x = _1063 & 127u;
                            _1068.y = (_1063 >> 7u) & 127u;
                            _1068.z = _1063 >> 14u;
                            _1085 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1068 * uint3(8u, 8u, 8u)) + (frac(_1049 * _919) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1085 = 1.0f;
                        }
                        float3 _1088 = frac(_915 + float3(0.0f, _1007, 0.0f));
                        float3 _1091 = (clamp(_1088, 0.0f.xxx, 1.0f.xxx) * _919) + _925;
                        uint4 _1100 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_1091.x), int(_1091.y), int(_1091.z), 0).xyz, 0));
                        uint _1101 = _1100.x;
                        uint _1102 = _1101 & 16777215u;
                        float _1124 = 0.0f;
                        if (_1101 < 4294967295u)
                        {
                            uint3 _1107 = uint3(0u, 0u, 0u);
                            _1107.x = _1102 & 127u;
                            _1107.y = (_1102 >> 7u) & 127u;
                            _1107.z = _1102 >> 14u;
                            _1124 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_1107 * uint3(8u, 8u, 8u)) + (frac(_1088 * _919) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f).x;
                        }
                        else
                        {
                            _1124 = 1.0f;
                        }
                        _1135 = (float3(_1006 - _1046, _1085 - _1124, _537) * (_890 * 16.0f)) / (View_View_GlobalVolumeTranslatedCenterAndExtent[_880].w * (128.0f * View_View_GlobalVolumeTexelSize)).xxx;
                        break;
                    }
                    _1134 = _943;
                }
                else
                {
                    _1134 = _877;
                }
                _878 = _1134;
            }
            else
            {
                _878 = _877;
            }
            _877 = _878;
            _880++;
            continue;
        }
        else
        {
            _1135 = float3(0.0f, 0.0f, 0.001000000047497451305389404296875f);
            break;
        }
    }
    float3 _1142 = Material_Material_PreshaderBuffer[5].z.xxx;
    float _1149 = lerp(View_View_GameTime, MaterialCollection0_MaterialCollection0_Vectors[0].z, MaterialCollection0_MaterialCollection0_Vectors[0].w);
    float3 _1160 = float3((View_View_ViewTilePosition * _1142).xy, 0.0f);
    float3 _1161 = float3((mad(_1135, Material_Material_PreshaderBuffer[5].y.xxx, _630) * _1142).xy, ((_1149 * Material_Material_PreshaderBuffer[6].x).xx + float2(1.0f, 0.0f)).x);
    float3 _1171 = 0.0f.xxx;
    float _1176 = 0.0f;
    _1171 = (((_1160 - floor(_1160 + ((_1161 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _1161) * 1.0f;
    _1176 = 0.0f;
    float _1174 = 1.0f;
    uint _1178 = 0u;
    [loop]
    for (; _1178 < 10u; )
    {
        float3 _1182 = frac(_1171);
        float _1184 = dot(floor(_1171), float3(19.0f, 47.0f, 101.0f));
        uint3 _1196 = (uint3(int3(int(_1184), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1197 = _1196.y;
        uint _1198 = _1196.z;
        uint _1201 = _1196.x + (_1197 * _1198);
        uint _1203 = _1197 + (_1198 * _1201);
        uint3 _1208 = uint3(0u, 0u, 0u);
        _1208.x = _1201 + (_1203 * (_1198 + (_1201 * _1203)));
        uint3 _1209 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _1222 = (uint3(int3(int(_1184 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1223 = _1222.y;
        uint _1224 = _1222.z;
        uint _1227 = _1222.x + (_1223 * _1224);
        uint _1229 = _1223 + (_1224 * _1227);
        uint3 _1234 = uint3(0u, 0u, 0u);
        _1234.x = _1227 + (_1229 * (_1224 + (_1227 * _1229)));
        uint3 _1247 = (uint3(int3(int(_1184 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1248 = _1247.y;
        uint _1249 = _1247.z;
        uint _1252 = _1247.x + (_1248 * _1249);
        uint _1254 = _1248 + (_1249 * _1252);
        uint3 _1259 = uint3(0u, 0u, 0u);
        _1259.x = _1252 + (_1254 * (_1249 + (_1252 * _1254)));
        uint3 _1272 = (uint3(int3(int(_1184 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1273 = _1272.y;
        uint _1274 = _1272.z;
        uint _1277 = _1272.x + (_1273 * _1274);
        uint _1279 = _1273 + (_1274 * _1277);
        uint3 _1284 = uint3(0u, 0u, 0u);
        _1284.x = _1277 + (_1279 * (_1274 + (_1277 * _1279)));
        uint3 _1297 = (uint3(int3(int(_1184 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1298 = _1297.y;
        uint _1299 = _1297.z;
        uint _1302 = _1297.x + (_1298 * _1299);
        uint _1304 = _1298 + (_1299 * _1302);
        uint3 _1309 = uint3(0u, 0u, 0u);
        _1309.x = _1302 + (_1304 * (_1299 + (_1302 * _1304)));
        uint3 _1322 = (uint3(int3(int(_1184 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1323 = _1322.y;
        uint _1324 = _1322.z;
        uint _1327 = _1322.x + (_1323 * _1324);
        uint _1329 = _1323 + (_1324 * _1327);
        uint3 _1334 = uint3(0u, 0u, 0u);
        _1334.x = _1327 + (_1329 * (_1324 + (_1327 * _1329)));
        uint3 _1347 = (uint3(int3(int(_1184 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1348 = _1347.y;
        uint _1349 = _1347.z;
        uint _1352 = _1347.x + (_1348 * _1349);
        uint _1354 = _1348 + (_1349 * _1352);
        uint3 _1359 = uint3(0u, 0u, 0u);
        _1359.x = _1352 + (_1354 * (_1349 + (_1352 * _1354)));
        uint3 _1372 = (uint3(int3(int(_1184 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1373 = _1372.y;
        uint _1374 = _1372.z;
        uint _1377 = _1372.x + (_1373 * _1374);
        uint _1379 = _1373 + (_1374 * _1377);
        uint3 _1384 = uint3(0u, 0u, 0u);
        _1384.x = _1377 + (_1379 * (_1374 + (_1377 * _1379)));
        float4 _1395 = float4(_1182, 0.0f);
        float4 _1401 = ((_1395 * _1395) * _1395) * mad(_1395, (_1395 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _1402 = _1401.x;
        float _1405 = _1401.y;
        float _1412 = abs(lerp(lerp(lerp(dot(mad(float3((_1208 >> _1209).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1182), dot(mad(float3((_1234 >> _1209).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1182 - float3(1.0f, 0.0f, 0.0f)), _1402), lerp(dot(mad(float3((_1259 >> _1209).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1182 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_1284 >> _1209).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1182 - float3(1.0f, 1.0f, 0.0f)), _1402), _1405), lerp(lerp(dot(mad(float3((_1309 >> _1209).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1182 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_1334 >> _1209).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1182 - float3(1.0f, 0.0f, 1.0f)), _1402), lerp(dot(mad(float3((_1359 >> _1209).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1182 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_1384 >> _1209).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1182 - 1.0f.xxx), _1402), _1405), _1401.z));
        float _1177 = mad(_1412, _1174, _1176);
        _1171 *= 2.0f;
        _1174 *= 0.5f;
        _1176 = _1177;
        _1178++;
        continue;
    }
    float _1416 = -_875;
    float _1422 = clamp(mad(mad(_1416, Material_Material_PreshaderBuffer[6].y, lerp(0.0f, 1.0f, _1176)) / mad(_1416, Material_Material_PreshaderBuffer[6].y, mad(_875, Material_Material_PreshaderBuffer[6].y, 1.0f)), -1.0f, 1.0f), 0.0f, 1.0f);
    float _1431 = clamp(lerp(Material_Material_PreshaderBuffer[6].w, Material_Material_PreshaderBuffer[6].z, (_1422 <= 0.0f) ? 0.0f : pow(_1422, 2.0f)), 0.0f, 1.0f);
    float _1432 = _875 * _1431;
    float3 _1435 = Material_Material_PreshaderBuffer[7].x.xxx;
    float3 _1436 = View_View_ViewTilePosition * _1435;
    float3 _1437 = _630 * _1435;
    float3 _1448 = 0.0f.xxx;
    float3 _1451 = 0.0f.xxx;
    float _1455 = 0.0f;
    _1448 = _529;
    _1451 = mad(_630, _1435, mad(View_View_ViewTilePosition, _1435, -floor(mad(View_View_ViewTilePosition, _1435, (_1437 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _1455 = 0.0f;
    float3 _1452 = 0.0f.xxx;
    float _1454 = 0.0f;
    float _1456 = 0.0f;
    float3 _1449 = 0.0f.xxx;
    float _1453 = 1.0f;
    uint _1457 = 0u;
    [loop]
    for (; _1457 < 1u; _1448 = _1449, _1451 = _1452, _1453 = _1454, _1455 = _1456, _1457++)
    {
        float3 _1462 = frac(_1451);
        float3 _1463 = floor(_1451);
        float3 _1464 = _1448;
        _1464.x = 0.0f;
        float4 _1466 = 0.0f.xxxx;
        _1466 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _1449 = _1464;
        float3 _1469 = 0.0f.xxx;
        float4 _1467 = 0.0f.xxxx;
        float3 _1476 = 0.0f.xxx;
        for (; _1449.x <= 1.0f; _1469 = _1476, _1469.x = _1476.x + 1.0f, _1466 = _1467, _1449 = _1469)
        {
            float3 _1474 = _1449;
            _1474.y = 0.0f;
            _1476 = _1474;
            _1467 = _1466;
            float3 _1477 = 0.0f.xxx;
            float4 _1479 = 0.0f.xxxx;
            float3 _1488 = 0.0f.xxx;
            for (; _1476.y <= 1.0f; _1477 = _1488, _1477.y = _1488.y + 1.0f, _1476 = _1477, _1467 = _1479)
            {
                float3 _1484 = _1476;
                _1484.z = 0.0f;
                _1479 = _1467;
                _1488 = _1484;
                for (; _1488.z <= 1.0f; )
                {
                    float3 _1493 = _1463 + _1488;
                    uint3 _1498 = (uint3(int3(float3(_1493.x, _1493.y, _1493.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _1499 = _1498.y;
                    uint _1500 = _1498.z;
                    uint _1503 = _1498.x + (_1499 * _1500);
                    uint _1505 = _1499 + (_1500 * _1503);
                    uint _1507 = _1500 + (_1503 * _1505);
                    uint _1509 = _1503 + (_1505 * _1507);
                    uint3 _1510 = _1498;
                    _1510.x = _1509;
                    uint _1512 = _1505 + (_1507 * _1509);
                    _1510.y = _1512;
                    _1510.z = _1507 + (_1509 * _1512);
                    float3 _1524 = _1462 - (_1488 + (normalize(mad(float3(_1510 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _1489 = _1488;
                    _1489.z = _1488.z + 1.0f;
                    _1479 = float4(0.0f, 0.0f, 0.0f, min(_1479.w, dot(_1524, _1524)));
                    _1488 = _1489;
                    continue;
                }
            }
        }
        _1456 = mad(abs(mad(sqrt(_1466.w), 2.0f, -1.0f)), _1453, _1455);
        _1452 = _1451 * 2.0f;
        _1454 = _1453 * 0.5f;
    }
    float3 _1550 = 0.0f.xxx;
    float3 _1553 = 0.0f.xxx;
    float _1557 = 0.0f;
    _1550 = _529;
    _1553 = mad(_1437, 1.2000000476837158203125f.xxx, mad(_1436, 1.2000000476837158203125f.xxx, -floor(mad(_1436, 1.2000000476837158203125f.xxx, ((_1437 * 1.2000000476837158203125f.xxx) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _1557 = 0.0f;
    float3 _1554 = 0.0f.xxx;
    float _1556 = 0.0f;
    float _1558 = 0.0f;
    float3 _1551 = 0.0f.xxx;
    float _1555 = 1.0f;
    uint _1559 = 0u;
    [loop]
    for (; _1559 < 1u; _1550 = _1551, _1553 = _1554, _1555 = _1556, _1557 = _1558, _1559++)
    {
        float3 _1564 = frac(_1553);
        float3 _1565 = floor(_1553);
        float3 _1566 = _1550;
        _1566.x = 0.0f;
        float4 _1568 = 0.0f.xxxx;
        _1568 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _1551 = _1566;
        float3 _1571 = 0.0f.xxx;
        float4 _1569 = 0.0f.xxxx;
        float3 _1578 = 0.0f.xxx;
        for (; _1551.x <= 1.0f; _1571 = _1578, _1571.x = _1578.x + 1.0f, _1568 = _1569, _1551 = _1571)
        {
            float3 _1576 = _1551;
            _1576.y = 0.0f;
            _1578 = _1576;
            _1569 = _1568;
            float3 _1579 = 0.0f.xxx;
            float4 _1581 = 0.0f.xxxx;
            float3 _1590 = 0.0f.xxx;
            for (; _1578.y <= 1.0f; _1579 = _1590, _1579.y = _1590.y + 1.0f, _1578 = _1579, _1569 = _1581)
            {
                float3 _1586 = _1578;
                _1586.z = 0.0f;
                _1581 = _1569;
                _1590 = _1586;
                for (; _1590.z <= 1.0f; )
                {
                    float3 _1595 = _1565 + _1590;
                    uint3 _1600 = (uint3(int3(float3(_1595.x, _1595.y, _1595.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _1601 = _1600.y;
                    uint _1602 = _1600.z;
                    uint _1605 = _1600.x + (_1601 * _1602);
                    uint _1607 = _1601 + (_1602 * _1605);
                    uint _1609 = _1602 + (_1605 * _1607);
                    uint _1611 = _1605 + (_1607 * _1609);
                    uint3 _1612 = _1600;
                    _1612.x = _1611;
                    uint _1614 = _1607 + (_1609 * _1611);
                    _1612.y = _1614;
                    _1612.z = _1609 + (_1611 * _1614);
                    float3 _1626 = _1564 - (_1590 + (normalize(mad(float3(_1612 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _1591 = _1590;
                    _1591.z = _1590.z + 1.0f;
                    _1581 = float4(0.0f, 0.0f, 0.0f, min(_1581.w, dot(_1626, _1626)));
                    _1590 = _1591;
                    continue;
                }
            }
        }
        _1558 = mad(abs(mad(sqrt(_1568.w), 2.0f, -1.0f)), _1555, _1557);
        _1554 = _1553 * 2.0f;
        _1556 = _1555 * 0.5f;
    }
    float _1641 = clamp(lerp(-1.0f, 1.0f, _1455), 0.0f, 1.0f) + clamp(lerp(-1.0f, 1.0f, _1557), 0.0f, 1.0f);
    float _1655 = (abs(Material_Material_PreshaderBuffer[7].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[7].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[7].z : Material_Material_PreshaderBuffer[7].w) : Material_Material_PreshaderBuffer[7].z;
    float _1663 = (abs(_1655 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_1655 >= 1.0f) ? Material_Material_PreshaderBuffer[8].x : Material_Material_PreshaderBuffer[7].z) : Material_Material_PreshaderBuffer[7].z;
    float3 _1673 = float3(min(max((abs(_1663) > 9.9999997473787516355514526367188e-06f) ? ((_1663 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[10].y, 0.0f);
    float2 _1684 = float2(View_View_ViewTilePosition.xy);
    float2 _1685 = float2(_630.xy);
    float2 _1688 = float2(min(max(_1673 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _1689 = _1684 * _1688;
    float2 _1690 = _1688 * _1685;
    float _1695 = _1689.x + _1689.y;
    float _1699 = _1695 * Material_Material_PreshaderBuffer[14].x;
    float _1702 = _1149 - Material_Material_PreshaderBuffer[14].z;
    float3 _1705 = Material_Material_PreshaderBuffer[14].w.xxx;
    float3 _1710 = Material_Material_PreshaderBuffer[15].x.xxx;
    float3 _1714 = MaterialCollection0_MaterialCollection0_Vectors[0].y.xxx;
    float3 _1715 = ((View_View_ViewTilePosition * _1705) * _1710) * _1714;
    float3 _1717 = (((_1705 * _630) * _1710) * _1714) * 0.100000001490116119384765625f.xxx;
    float3 _1728 = float3(_1717.xy, ((_1149 * Material_Material_PreshaderBuffer[15].z).xx + _1717.z.xx).x);
    float3 _1739 = 0.0f.xxx;
    float _1744 = 0.0f;
    _1739 = ((mad(_1715, 0.100000001490116119384765625f.xxx, -floor(mad(_1715, 0.100000001490116119384765625f.xxx, (_1728 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _1728) * 1.0f;
    _1744 = 0.0f;
    float _1742 = 1.0f;
    uint _1746 = 0u;
    [loop]
    for (; _1746 < 6u; )
    {
        float3 _1750 = frac(_1739);
        float _1752 = dot(floor(_1739), float3(19.0f, 47.0f, 101.0f));
        uint3 _1764 = (uint3(int3(int(_1752), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1765 = _1764.y;
        uint _1766 = _1764.z;
        uint _1769 = _1764.x + (_1765 * _1766);
        uint _1771 = _1765 + (_1766 * _1769);
        uint3 _1776 = uint3(0u, 0u, 0u);
        _1776.x = _1769 + (_1771 * (_1766 + (_1769 * _1771)));
        uint3 _1777 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _1790 = (uint3(int3(int(_1752 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1791 = _1790.y;
        uint _1792 = _1790.z;
        uint _1795 = _1790.x + (_1791 * _1792);
        uint _1797 = _1791 + (_1792 * _1795);
        uint3 _1802 = uint3(0u, 0u, 0u);
        _1802.x = _1795 + (_1797 * (_1792 + (_1795 * _1797)));
        uint3 _1815 = (uint3(int3(int(_1752 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1816 = _1815.y;
        uint _1817 = _1815.z;
        uint _1820 = _1815.x + (_1816 * _1817);
        uint _1822 = _1816 + (_1817 * _1820);
        uint3 _1827 = uint3(0u, 0u, 0u);
        _1827.x = _1820 + (_1822 * (_1817 + (_1820 * _1822)));
        uint3 _1840 = (uint3(int3(int(_1752 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1841 = _1840.y;
        uint _1842 = _1840.z;
        uint _1845 = _1840.x + (_1841 * _1842);
        uint _1847 = _1841 + (_1842 * _1845);
        uint3 _1852 = uint3(0u, 0u, 0u);
        _1852.x = _1845 + (_1847 * (_1842 + (_1845 * _1847)));
        uint3 _1865 = (uint3(int3(int(_1752 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1866 = _1865.y;
        uint _1867 = _1865.z;
        uint _1870 = _1865.x + (_1866 * _1867);
        uint _1872 = _1866 + (_1867 * _1870);
        uint3 _1877 = uint3(0u, 0u, 0u);
        _1877.x = _1870 + (_1872 * (_1867 + (_1870 * _1872)));
        uint3 _1890 = (uint3(int3(int(_1752 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1891 = _1890.y;
        uint _1892 = _1890.z;
        uint _1895 = _1890.x + (_1891 * _1892);
        uint _1897 = _1891 + (_1892 * _1895);
        uint3 _1902 = uint3(0u, 0u, 0u);
        _1902.x = _1895 + (_1897 * (_1892 + (_1895 * _1897)));
        uint3 _1915 = (uint3(int3(int(_1752 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1916 = _1915.y;
        uint _1917 = _1915.z;
        uint _1920 = _1915.x + (_1916 * _1917);
        uint _1922 = _1916 + (_1917 * _1920);
        uint3 _1927 = uint3(0u, 0u, 0u);
        _1927.x = _1920 + (_1922 * (_1917 + (_1920 * _1922)));
        uint3 _1940 = (uint3(int3(int(_1752 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _1941 = _1940.y;
        uint _1942 = _1940.z;
        uint _1945 = _1940.x + (_1941 * _1942);
        uint _1947 = _1941 + (_1942 * _1945);
        uint3 _1952 = uint3(0u, 0u, 0u);
        _1952.x = _1945 + (_1947 * (_1942 + (_1945 * _1947)));
        float4 _1963 = float4(_1750, 0.0f);
        float4 _1969 = ((_1963 * _1963) * _1963) * mad(_1963, (_1963 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _1970 = _1969.x;
        float _1973 = _1969.y;
        float _1745 = mad(lerp(lerp(lerp(dot(mad(float3((_1776 >> _1777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1750), dot(mad(float3((_1802 >> _1777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1750 - float3(1.0f, 0.0f, 0.0f)), _1970), lerp(dot(mad(float3((_1827 >> _1777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1750 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_1852 >> _1777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1750 - float3(1.0f, 1.0f, 0.0f)), _1970), _1973), lerp(lerp(dot(mad(float3((_1877 >> _1777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1750 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_1902 >> _1777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1750 - float3(1.0f, 0.0f, 1.0f)), _1970), lerp(dot(mad(float3((_1927 >> _1777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1750 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_1952 >> _1777).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _1750 - 1.0f.xxx), _1970), _1973), _1969.z), _1742, _1744);
        _1739 *= 2.0f;
        _1742 *= 0.5f;
        _1744 = _1745;
        _1746++;
        continue;
    }
    float _1983 = lerp(_1149, _1702, clamp(lerp(0.0f, 1.0f, mad(_1744, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _1987 = mad(_1690.x + _1690.y, Material_Material_PreshaderBuffer[14].x, Material_Material_PreshaderBuffer[15].w * _1983);
    float _1988 = floor(_1699);
    float3 _2000 = Material_Material_PreshaderBuffer[17].x.xxx;
    float3 _2005 = Material_Material_PreshaderBuffer[17].y.xxx;
    float3 _2006 = (View_View_ViewTilePosition * _2000) * _2005;
    float3 _2007 = (_2000 * _630) * _2005;
    float3 _2008 = _2007 * 0.0001000000047497451305389404296875f.xxx;
    float2 _2015 = (_1149 * Material_Material_PreshaderBuffer[17].w).xx;
    float3 _2019 = float3(_2008.xy, (_2015 + _2008.z.xx).x);
    float3 _2030 = 0.0f.xxx;
    float _2035 = 0.0f;
    _2030 = ((mad(_2006, 0.0001000000047497451305389404296875f.xxx, -floor(mad(_2006, 0.0001000000047497451305389404296875f.xxx, (_2019 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _2019) * 1.0f;
    _2035 = 0.0f;
    float _2033 = 1.0f;
    uint _2037 = 0u;
    [loop]
    for (; _2037 < 10u; )
    {
        float3 _2041 = frac(_2030);
        float _2043 = dot(floor(_2030), float3(19.0f, 47.0f, 101.0f));
        uint3 _2055 = (uint3(int3(int(_2043), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2056 = _2055.y;
        uint _2057 = _2055.z;
        uint _2060 = _2055.x + (_2056 * _2057);
        uint _2062 = _2056 + (_2057 * _2060);
        uint3 _2067 = uint3(0u, 0u, 0u);
        _2067.x = _2060 + (_2062 * (_2057 + (_2060 * _2062)));
        uint3 _2068 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _2081 = (uint3(int3(int(_2043 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2082 = _2081.y;
        uint _2083 = _2081.z;
        uint _2086 = _2081.x + (_2082 * _2083);
        uint _2088 = _2082 + (_2083 * _2086);
        uint3 _2093 = uint3(0u, 0u, 0u);
        _2093.x = _2086 + (_2088 * (_2083 + (_2086 * _2088)));
        uint3 _2106 = (uint3(int3(int(_2043 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2107 = _2106.y;
        uint _2108 = _2106.z;
        uint _2111 = _2106.x + (_2107 * _2108);
        uint _2113 = _2107 + (_2108 * _2111);
        uint3 _2118 = uint3(0u, 0u, 0u);
        _2118.x = _2111 + (_2113 * (_2108 + (_2111 * _2113)));
        uint3 _2131 = (uint3(int3(int(_2043 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2132 = _2131.y;
        uint _2133 = _2131.z;
        uint _2136 = _2131.x + (_2132 * _2133);
        uint _2138 = _2132 + (_2133 * _2136);
        uint3 _2143 = uint3(0u, 0u, 0u);
        _2143.x = _2136 + (_2138 * (_2133 + (_2136 * _2138)));
        uint3 _2156 = (uint3(int3(int(_2043 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2157 = _2156.y;
        uint _2158 = _2156.z;
        uint _2161 = _2156.x + (_2157 * _2158);
        uint _2163 = _2157 + (_2158 * _2161);
        uint3 _2168 = uint3(0u, 0u, 0u);
        _2168.x = _2161 + (_2163 * (_2158 + (_2161 * _2163)));
        uint3 _2181 = (uint3(int3(int(_2043 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2182 = _2181.y;
        uint _2183 = _2181.z;
        uint _2186 = _2181.x + (_2182 * _2183);
        uint _2188 = _2182 + (_2183 * _2186);
        uint3 _2193 = uint3(0u, 0u, 0u);
        _2193.x = _2186 + (_2188 * (_2183 + (_2186 * _2188)));
        uint3 _2206 = (uint3(int3(int(_2043 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2207 = _2206.y;
        uint _2208 = _2206.z;
        uint _2211 = _2206.x + (_2207 * _2208);
        uint _2213 = _2207 + (_2208 * _2211);
        uint3 _2218 = uint3(0u, 0u, 0u);
        _2218.x = _2211 + (_2213 * (_2208 + (_2211 * _2213)));
        uint3 _2231 = (uint3(int3(int(_2043 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2232 = _2231.y;
        uint _2233 = _2231.z;
        uint _2236 = _2231.x + (_2232 * _2233);
        uint _2238 = _2232 + (_2233 * _2236);
        uint3 _2243 = uint3(0u, 0u, 0u);
        _2243.x = _2236 + (_2238 * (_2233 + (_2236 * _2238)));
        float4 _2254 = float4(_2041, 0.0f);
        float4 _2260 = ((_2254 * _2254) * _2254) * mad(_2254, (_2254 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _2261 = _2260.x;
        float _2264 = _2260.y;
        float _2271 = abs(lerp(lerp(lerp(dot(mad(float3((_2067 >> _2068).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2041), dot(mad(float3((_2093 >> _2068).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2041 - float3(1.0f, 0.0f, 0.0f)), _2261), lerp(dot(mad(float3((_2118 >> _2068).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2041 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_2143 >> _2068).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2041 - float3(1.0f, 1.0f, 0.0f)), _2261), _2264), lerp(lerp(dot(mad(float3((_2168 >> _2068).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2041 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_2193 >> _2068).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2041 - float3(1.0f, 0.0f, 1.0f)), _2261), lerp(dot(mad(float3((_2218 >> _2068).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2041 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_2243 >> _2068).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2041 - 1.0f.xxx), _2261), _2264), _2260.z));
        float _2036 = mad(_2271, _2033, _2035);
        _2030 *= 2.0f;
        _2033 *= 0.5f;
        _2035 = _2036;
        _2037++;
        continue;
    }
    float3 _2273 = _2007 * 0.000200000009499490261077880859375f.xxx;
    float3 _2280 = float3(_2273.xy, (_2015 + _2273.z.xx).x);
    float3 _2291 = 0.0f.xxx;
    float _2296 = 0.0f;
    _2291 = ((mad(_2006, 0.000200000009499490261077880859375f.xxx, -floor(mad(_2006, 0.000200000009499490261077880859375f.xxx, (_2280 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _2280) * 1.0f;
    _2296 = 0.0f;
    float _2294 = 1.0f;
    uint _2298 = 0u;
    [loop]
    for (; _2298 < 10u; )
    {
        float3 _2302 = frac(_2291);
        float _2304 = dot(floor(_2291), float3(19.0f, 47.0f, 101.0f));
        uint3 _2316 = (uint3(int3(int(_2304), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2317 = _2316.y;
        uint _2318 = _2316.z;
        uint _2321 = _2316.x + (_2317 * _2318);
        uint _2323 = _2317 + (_2318 * _2321);
        uint3 _2328 = uint3(0u, 0u, 0u);
        _2328.x = _2321 + (_2323 * (_2318 + (_2321 * _2323)));
        uint3 _2329 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _2342 = (uint3(int3(int(_2304 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2343 = _2342.y;
        uint _2344 = _2342.z;
        uint _2347 = _2342.x + (_2343 * _2344);
        uint _2349 = _2343 + (_2344 * _2347);
        uint3 _2354 = uint3(0u, 0u, 0u);
        _2354.x = _2347 + (_2349 * (_2344 + (_2347 * _2349)));
        uint3 _2367 = (uint3(int3(int(_2304 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2368 = _2367.y;
        uint _2369 = _2367.z;
        uint _2372 = _2367.x + (_2368 * _2369);
        uint _2374 = _2368 + (_2369 * _2372);
        uint3 _2379 = uint3(0u, 0u, 0u);
        _2379.x = _2372 + (_2374 * (_2369 + (_2372 * _2374)));
        uint3 _2392 = (uint3(int3(int(_2304 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2393 = _2392.y;
        uint _2394 = _2392.z;
        uint _2397 = _2392.x + (_2393 * _2394);
        uint _2399 = _2393 + (_2394 * _2397);
        uint3 _2404 = uint3(0u, 0u, 0u);
        _2404.x = _2397 + (_2399 * (_2394 + (_2397 * _2399)));
        uint3 _2417 = (uint3(int3(int(_2304 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2418 = _2417.y;
        uint _2419 = _2417.z;
        uint _2422 = _2417.x + (_2418 * _2419);
        uint _2424 = _2418 + (_2419 * _2422);
        uint3 _2429 = uint3(0u, 0u, 0u);
        _2429.x = _2422 + (_2424 * (_2419 + (_2422 * _2424)));
        uint3 _2442 = (uint3(int3(int(_2304 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2443 = _2442.y;
        uint _2444 = _2442.z;
        uint _2447 = _2442.x + (_2443 * _2444);
        uint _2449 = _2443 + (_2444 * _2447);
        uint3 _2454 = uint3(0u, 0u, 0u);
        _2454.x = _2447 + (_2449 * (_2444 + (_2447 * _2449)));
        uint3 _2467 = (uint3(int3(int(_2304 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2468 = _2467.y;
        uint _2469 = _2467.z;
        uint _2472 = _2467.x + (_2468 * _2469);
        uint _2474 = _2468 + (_2469 * _2472);
        uint3 _2479 = uint3(0u, 0u, 0u);
        _2479.x = _2472 + (_2474 * (_2469 + (_2472 * _2474)));
        uint3 _2492 = (uint3(int3(int(_2304 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _2493 = _2492.y;
        uint _2494 = _2492.z;
        uint _2497 = _2492.x + (_2493 * _2494);
        uint _2499 = _2493 + (_2494 * _2497);
        uint3 _2504 = uint3(0u, 0u, 0u);
        _2504.x = _2497 + (_2499 * (_2494 + (_2497 * _2499)));
        float4 _2515 = float4(_2302, 0.0f);
        float4 _2521 = ((_2515 * _2515) * _2515) * mad(_2515, (_2515 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _2522 = _2521.x;
        float _2525 = _2521.y;
        float _2532 = abs(lerp(lerp(lerp(dot(mad(float3((_2328 >> _2329).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2302), dot(mad(float3((_2354 >> _2329).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2302 - float3(1.0f, 0.0f, 0.0f)), _2522), lerp(dot(mad(float3((_2379 >> _2329).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2302 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_2404 >> _2329).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2302 - float3(1.0f, 1.0f, 0.0f)), _2522), _2525), lerp(lerp(dot(mad(float3((_2429 >> _2329).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2302 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_2454 >> _2329).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2302 - float3(1.0f, 0.0f, 1.0f)), _2522), lerp(dot(mad(float3((_2479 >> _2329).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2302 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_2504 >> _2329).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _2302 - 1.0f.xxx), _2522), _2525), _2521.z));
        float _2297 = mad(_2532, _2294, _2296);
        _2291 *= 2.0f;
        _2294 *= 0.5f;
        _2296 = _2297;
        _2298++;
        continue;
    }
    float _2544 = lerp(Material_Material_PreshaderBuffer[16].w, Material_Material_PreshaderBuffer[18].z, lerp(0.0f, 1.0f, _2035) * mad(lerp(0.0f, 1.0f, _2296), Material_Material_PreshaderBuffer[18].y, Material_Material_PreshaderBuffer[18].x));
    float2 _2555 = float2(min(max(_1673 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2556 = _1684 * _2555;
    float2 _2557 = _2555 * _1685;
    float _2562 = _2556.x + _2556.y;
    float _2566 = _2562 * Material_Material_PreshaderBuffer[21].y;
    float _2570 = mad(_2557.x + _2557.y, Material_Material_PreshaderBuffer[21].y, Material_Material_PreshaderBuffer[22].x * _1983);
    float _2571 = floor(_2566);
    float _2583 = _2544 * Material_Material_PreshaderBuffer[22].z;
    float2 _2594 = float2(min(max(_1673 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2595 = _1684 * _2594;
    float2 _2596 = _2594 * _1685;
    float _2601 = _2595.x + _2595.y;
    float _2605 = _2601 * Material_Material_PreshaderBuffer[23].y;
    float _2609 = mad(_2596.x + _2596.y, Material_Material_PreshaderBuffer[23].y, Material_Material_PreshaderBuffer[23].w * _1983);
    float _2610 = floor(_2605);
    float _2620 = _2583 * Material_Material_PreshaderBuffer[22].z;
    float2 _2630 = float2(min(max(_1673 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2631 = _1684 * _2630;
    float2 _2632 = _2630 * _1685;
    float _2637 = _2631.x + _2631.y;
    float _2641 = _2637 * Material_Material_PreshaderBuffer[24].z;
    float _2645 = mad(_2632.x + _2632.y, Material_Material_PreshaderBuffer[24].z, Material_Material_PreshaderBuffer[25].x * _1983);
    float _2646 = floor(_2641);
    float _2656 = _2620 * Material_Material_PreshaderBuffer[22].z;
    float _2670 = (abs(Material_Material_PreshaderBuffer[25].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[25].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[25].w : Material_Material_PreshaderBuffer[26].x) : Material_Material_PreshaderBuffer[25].w;
    float _2678 = (abs(_2670 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_2670 >= 1.0f) ? Material_Material_PreshaderBuffer[26].y : Material_Material_PreshaderBuffer[25].w) : Material_Material_PreshaderBuffer[25].w;
    float3 _2688 = float3(min(max((abs(_2678) > 9.9999997473787516355514526367188e-06f) ? ((_2678 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[27].z, 0.0f);
    float2 _2694 = float2(min(max(_2688 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2695 = _1684 * _2694;
    float2 _2696 = _2694 * _1685;
    float _2701 = _2695.x + _2695.y;
    float _2705 = _2701 * Material_Material_PreshaderBuffer[29].w;
    float _2709 = mad(_2696.x + _2696.y, Material_Material_PreshaderBuffer[29].w, Material_Material_PreshaderBuffer[30].z * _1983);
    float _2710 = floor(_2705);
    float _2722 = _2544 * Material_Material_PreshaderBuffer[30].w;
    float2 _2730 = float2(min(max(_2688 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2731 = _1684 * _2730;
    float2 _2732 = _2730 * _1685;
    float _2737 = _2731.x + _2731.y;
    float _2741 = _2737 * Material_Material_PreshaderBuffer[31].y;
    float _2745 = mad(_2732.x + _2732.y, Material_Material_PreshaderBuffer[31].y, Material_Material_PreshaderBuffer[31].w * _1983);
    float _2746 = floor(_2741);
    float _2756 = _2722 * Material_Material_PreshaderBuffer[22].z;
    float2 _2767 = float2(min(max(_2688 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2768 = _1684 * _2767;
    float2 _2769 = _2767 * _1685;
    float _2774 = _2768.x + _2768.y;
    float _2778 = _2774 * Material_Material_PreshaderBuffer[32].y;
    float _2782 = mad(_2769.x + _2769.y, Material_Material_PreshaderBuffer[32].y, Material_Material_PreshaderBuffer[32].w * _1983);
    float _2783 = floor(_2778);
    float _2793 = _2756 * Material_Material_PreshaderBuffer[22].z;
    float2 _2803 = float2(min(max(_2688 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2804 = _1684 * _2803;
    float2 _2805 = _2803 * _1685;
    float _2810 = _2804.x + _2804.y;
    float _2814 = _2810 * Material_Material_PreshaderBuffer[33].y;
    float _2818 = mad(_2805.x + _2805.y, Material_Material_PreshaderBuffer[33].y, Material_Material_PreshaderBuffer[33].w * _1983);
    float _2819 = floor(_2814);
    float _2829 = _2793 * Material_Material_PreshaderBuffer[22].z;
    float3 _2834 = (((float3(_537, _537, sin(mad(mad(_1699, 6.283185482025146484375f, _1988 * (-6.283185482025146484375f)), 2097152.0f, mad(_1987, 6.283185482025146484375f, floor(mad(mad(_1695, Material_Material_PreshaderBuffer[14].x, -_1988), 2097152.0f, _1987)) * (-6.283185482025146484375f)))) * _2544) + float3(_537, _537, sin(mad(mad(_2566, 6.283185482025146484375f, _2571 * (-6.283185482025146484375f)), 2097152.0f, mad(_2570, 6.283185482025146484375f, floor(mad(mad(_2562, Material_Material_PreshaderBuffer[21].y, -_2571), 2097152.0f, _2570)) * (-6.283185482025146484375f)))) * _2583)) + float3(_537, _537, sin(mad(mad(_2605, 6.283185482025146484375f, _2610 * (-6.283185482025146484375f)), 2097152.0f, mad(_2609, 6.283185482025146484375f, floor(mad(mad(_2601, Material_Material_PreshaderBuffer[23].y, -_2610), 2097152.0f, _2609)) * (-6.283185482025146484375f)))) * _2620)) + float3(_537, _537, sin(mad(mad(_2641, 6.283185482025146484375f, _2646 * (-6.283185482025146484375f)), 2097152.0f, mad(_2645, 6.283185482025146484375f, floor(mad(mad(_2637, Material_Material_PreshaderBuffer[24].z, -_2646), 2097152.0f, _2645)) * (-6.283185482025146484375f)))) * _2656)) + (((float3(_537, _537, sin(mad(mad(_2705, 6.283185482025146484375f, _2710 * (-6.283185482025146484375f)), 2097152.0f, mad(_2709, 6.283185482025146484375f, floor(mad(mad(_2701, Material_Material_PreshaderBuffer[29].w, -_2710), 2097152.0f, _2709)) * (-6.283185482025146484375f)))) * _2722) + float3(_537, _537, sin(mad(mad(_2741, 6.283185482025146484375f, _2746 * (-6.283185482025146484375f)), 2097152.0f, mad(_2745, 6.283185482025146484375f, floor(mad(mad(_2737, Material_Material_PreshaderBuffer[31].y, -_2746), 2097152.0f, _2745)) * (-6.283185482025146484375f)))) * _2756)) + float3(_537, _537, sin(mad(mad(_2778, 6.283185482025146484375f, _2783 * (-6.283185482025146484375f)), 2097152.0f, mad(_2782, 6.283185482025146484375f, floor(mad(mad(_2774, Material_Material_PreshaderBuffer[32].y, -_2783), 2097152.0f, _2782)) * (-6.283185482025146484375f)))) * _2793)) + float3(_537, _537, sin(mad(mad(_2814, 6.283185482025146484375f, _2819 * (-6.283185482025146484375f)), 2097152.0f, mad(_2818, 6.283185482025146484375f, floor(mad(mad(_2810, Material_Material_PreshaderBuffer[33].y, -_2819), 2097152.0f, _2818)) * (-6.283185482025146484375f)))) * _2829));
    float _2844 = (abs(Material_Material_PreshaderBuffer[34].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[34].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[34].x : Material_Material_PreshaderBuffer[34].y) : Material_Material_PreshaderBuffer[34].x;
    float _2852 = (abs(_2844 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_2844 >= 1.0f) ? Material_Material_PreshaderBuffer[34].z : Material_Material_PreshaderBuffer[34].x) : Material_Material_PreshaderBuffer[34].x;
    float3 _2862 = float3(min(max((abs(_2852) > 9.9999997473787516355514526367188e-06f) ? ((_2852 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[35].w, 0.0f);
    float2 _2868 = float2(min(max(_2862 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2869 = _1684 * _2868;
    float2 _2870 = _2868 * _1685;
    float _2875 = _2869.x + _2869.y;
    float _2879 = _2875 * Material_Material_PreshaderBuffer[37].z;
    float _2883 = mad(_2870.x + _2870.y, Material_Material_PreshaderBuffer[37].z, Material_Material_PreshaderBuffer[37].w * _1983);
    float _2884 = floor(_2879);
    float2 _2901 = float2(min(max(_2862 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2902 = _1684 * _2901;
    float2 _2903 = _2901 * _1685;
    float _2908 = _2902.x + _2902.y;
    float _2912 = _2908 * Material_Material_PreshaderBuffer[38].y;
    float _2916 = mad(_2903.x + _2903.y, Material_Material_PreshaderBuffer[38].y, Material_Material_PreshaderBuffer[38].z * _1983);
    float _2917 = floor(_2912);
    float2 _2937 = float2(min(max(_2862 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2938 = _1684 * _2937;
    float2 _2939 = _2937 * _1685;
    float _2944 = _2938.x + _2938.y;
    float _2948 = _2944 * Material_Material_PreshaderBuffer[39].x;
    float _2952 = mad(_2939.x + _2939.y, Material_Material_PreshaderBuffer[39].x, Material_Material_PreshaderBuffer[39].y * _1983);
    float _2953 = floor(_2948);
    float2 _2972 = float2(min(max(_2862 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _2973 = _1684 * _2972;
    float2 _2974 = _2972 * _1685;
    float _2979 = _2973.x + _2973.y;
    float _2983 = _2979 * Material_Material_PreshaderBuffer[39].w;
    float _2987 = mad(_2974.x + _2974.y, Material_Material_PreshaderBuffer[39].w, Material_Material_PreshaderBuffer[40].x * _1983);
    float _2988 = floor(_2983);
    float3 _3002 = _2834 + (((float3(_537, _537, sin(mad(mad(_2879, 6.283185482025146484375f, _2884 * (-6.283185482025146484375f)), 2097152.0f, mad(_2883, 6.283185482025146484375f, floor(mad(mad(_2875, Material_Material_PreshaderBuffer[37].z, -_2884), 2097152.0f, _2883)) * (-6.283185482025146484375f)))) * _2722) + float3(_537, _537, sin(mad(mad(_2912, 6.283185482025146484375f, _2917 * (-6.283185482025146484375f)), 2097152.0f, mad(_2916, 6.283185482025146484375f, floor(mad(mad(_2908, Material_Material_PreshaderBuffer[38].y, -_2917), 2097152.0f, _2916)) * (-6.283185482025146484375f)))) * _2756)) + float3(_537, _537, sin(mad(mad(_2948, 6.283185482025146484375f, _2953 * (-6.283185482025146484375f)), 2097152.0f, mad(_2952, 6.283185482025146484375f, floor(mad(mad(_2944, Material_Material_PreshaderBuffer[39].x, -_2953), 2097152.0f, _2952)) * (-6.283185482025146484375f)))) * _2793)) + float3(_537, _537, sin(mad(mad(_2983, 6.283185482025146484375f, _2988 * (-6.283185482025146484375f)), 2097152.0f, mad(_2987, 6.283185482025146484375f, floor(mad(mad(_2979, Material_Material_PreshaderBuffer[39].w, -_2988), 2097152.0f, _2987)) * (-6.283185482025146484375f)))) * _2829));
    float _3012 = (abs(Material_Material_PreshaderBuffer[40].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[40].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[40].y : Material_Material_PreshaderBuffer[40].z) : Material_Material_PreshaderBuffer[40].y;
    float _3020 = (abs(_3012 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3012 >= 1.0f) ? Material_Material_PreshaderBuffer[40].w : Material_Material_PreshaderBuffer[40].y) : Material_Material_PreshaderBuffer[40].y;
    float3 _3030 = float3(min(max((abs(_3020) > 9.9999997473787516355514526367188e-06f) ? ((_3020 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[42].x, 0.0f);
    float2 _3036 = float2(min(max(_3030 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3037 = _1684 * _3036;
    float2 _3038 = _3036 * _1685;
    float _3043 = _3037.x + _3037.y;
    float _3047 = _3043 * Material_Material_PreshaderBuffer[43].w;
    float _3051 = mad(_3038.x + _3038.y, Material_Material_PreshaderBuffer[43].w, Material_Material_PreshaderBuffer[44].x * _1983);
    float _3052 = floor(_3047);
    float2 _3069 = float2(min(max(_3030 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3070 = _1684 * _3069;
    float2 _3071 = _3069 * _1685;
    float _3076 = _3070.x + _3070.y;
    float _3080 = _3076 * Material_Material_PreshaderBuffer[44].z;
    float _3084 = mad(_3071.x + _3071.y, Material_Material_PreshaderBuffer[44].z, Material_Material_PreshaderBuffer[44].w * _1983);
    float _3085 = floor(_3080);
    float2 _3105 = float2(min(max(_3030 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3106 = _1684 * _3105;
    float2 _3107 = _3105 * _1685;
    float _3112 = _3106.x + _3106.y;
    float _3116 = _3112 * Material_Material_PreshaderBuffer[45].y;
    float _3120 = mad(_3107.x + _3107.y, Material_Material_PreshaderBuffer[45].y, Material_Material_PreshaderBuffer[45].z * _1983);
    float _3121 = floor(_3116);
    float2 _3140 = float2(min(max(_3030 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3141 = _1684 * _3140;
    float2 _3142 = _3140 * _1685;
    float _3147 = _3141.x + _3141.y;
    float _3151 = _3147 * Material_Material_PreshaderBuffer[46].x;
    float _3155 = mad(_3142.x + _3142.y, Material_Material_PreshaderBuffer[46].x, Material_Material_PreshaderBuffer[46].y * _1983);
    float _3156 = floor(_3151);
    float _3179 = (abs(Material_Material_PreshaderBuffer[46].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[46].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[46].z : Material_Material_PreshaderBuffer[46].w) : Material_Material_PreshaderBuffer[46].z;
    float _3187 = (abs(_3179 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3179 >= 1.0f) ? Material_Material_PreshaderBuffer[47].x : Material_Material_PreshaderBuffer[46].z) : Material_Material_PreshaderBuffer[46].z;
    float3 _3197 = float3(min(max((abs(_3187) > 9.9999997473787516355514526367188e-06f) ? ((_3187 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[48].y, 0.0f);
    float2 _3203 = float2(min(max(_3197 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3204 = _1684 * _3203;
    float2 _3205 = _3203 * _1685;
    float _3210 = _3204.x + _3204.y;
    float _3214 = _3210 * Material_Material_PreshaderBuffer[50].x;
    float _3218 = mad(_3205.x + _3205.y, Material_Material_PreshaderBuffer[50].x, Material_Material_PreshaderBuffer[50].y * _1983);
    float _3219 = floor(_3214);
    float2 _3236 = float2(min(max(_3197 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3237 = _1684 * _3236;
    float2 _3238 = _3236 * _1685;
    float _3243 = _3237.x + _3237.y;
    float _3247 = _3243 * Material_Material_PreshaderBuffer[50].w;
    float _3251 = mad(_3238.x + _3238.y, Material_Material_PreshaderBuffer[50].w, Material_Material_PreshaderBuffer[51].x * _1983);
    float _3252 = floor(_3247);
    float2 _3272 = float2(min(max(_3197 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3273 = _1684 * _3272;
    float2 _3274 = _3272 * _1685;
    float _3279 = _3273.x + _3273.y;
    float _3283 = _3279 * Material_Material_PreshaderBuffer[51].z;
    float _3287 = mad(_3274.x + _3274.y, Material_Material_PreshaderBuffer[51].z, Material_Material_PreshaderBuffer[51].w * _1983);
    float _3288 = floor(_3283);
    float2 _3307 = float2(min(max(_3197 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3308 = _1684 * _3307;
    float2 _3309 = _3307 * _1685;
    float _3314 = _3308.x + _3308.y;
    float _3318 = _3314 * Material_Material_PreshaderBuffer[52].y;
    float _3322 = mad(_3309.x + _3309.y, Material_Material_PreshaderBuffer[52].y, Material_Material_PreshaderBuffer[52].z * _1983);
    float _3323 = floor(_3318);
    float3 _3337 = (((float3(_537, _537, sin(mad(mad(_3047, 6.283185482025146484375f, _3052 * (-6.283185482025146484375f)), 2097152.0f, mad(_3051, 6.283185482025146484375f, floor(mad(mad(_3043, Material_Material_PreshaderBuffer[43].w, -_3052), 2097152.0f, _3051)) * (-6.283185482025146484375f)))) * _2544) + float3(_537, _537, sin(mad(mad(_3080, 6.283185482025146484375f, _3085 * (-6.283185482025146484375f)), 2097152.0f, mad(_3084, 6.283185482025146484375f, floor(mad(mad(_3076, Material_Material_PreshaderBuffer[44].z, -_3085), 2097152.0f, _3084)) * (-6.283185482025146484375f)))) * _2583)) + float3(_537, _537, sin(mad(mad(_3116, 6.283185482025146484375f, _3121 * (-6.283185482025146484375f)), 2097152.0f, mad(_3120, 6.283185482025146484375f, floor(mad(mad(_3112, Material_Material_PreshaderBuffer[45].y, -_3121), 2097152.0f, _3120)) * (-6.283185482025146484375f)))) * _2620)) + float3(_537, _537, sin(mad(mad(_3151, 6.283185482025146484375f, _3156 * (-6.283185482025146484375f)), 2097152.0f, mad(_3155, 6.283185482025146484375f, floor(mad(mad(_3147, Material_Material_PreshaderBuffer[46].x, -_3156), 2097152.0f, _3155)) * (-6.283185482025146484375f)))) * _2656)) + (((float3(_537, _537, sin(mad(mad(_3214, 6.283185482025146484375f, _3219 * (-6.283185482025146484375f)), 2097152.0f, mad(_3218, 6.283185482025146484375f, floor(mad(mad(_3210, Material_Material_PreshaderBuffer[50].x, -_3219), 2097152.0f, _3218)) * (-6.283185482025146484375f)))) * _2722) + float3(_537, _537, sin(mad(mad(_3247, 6.283185482025146484375f, _3252 * (-6.283185482025146484375f)), 2097152.0f, mad(_3251, 6.283185482025146484375f, floor(mad(mad(_3243, Material_Material_PreshaderBuffer[50].w, -_3252), 2097152.0f, _3251)) * (-6.283185482025146484375f)))) * _2756)) + float3(_537, _537, sin(mad(mad(_3283, 6.283185482025146484375f, _3288 * (-6.283185482025146484375f)), 2097152.0f, mad(_3287, 6.283185482025146484375f, floor(mad(mad(_3279, Material_Material_PreshaderBuffer[51].z, -_3288), 2097152.0f, _3287)) * (-6.283185482025146484375f)))) * _2793)) + float3(_537, _537, sin(mad(mad(_3318, 6.283185482025146484375f, _3323 * (-6.283185482025146484375f)), 2097152.0f, mad(_3322, 6.283185482025146484375f, floor(mad(mad(_3314, Material_Material_PreshaderBuffer[52].y, -_3323), 2097152.0f, _3322)) * (-6.283185482025146484375f)))) * _2829));
    float _3347 = (abs(Material_Material_PreshaderBuffer[52].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[52].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[52].w : Material_Material_PreshaderBuffer[53].x) : Material_Material_PreshaderBuffer[52].w;
    float _3355 = (abs(_3347 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3347 >= 1.0f) ? Material_Material_PreshaderBuffer[53].y : Material_Material_PreshaderBuffer[52].w) : Material_Material_PreshaderBuffer[52].w;
    float3 _3365 = float3(min(max((abs(_3355) > 9.9999997473787516355514526367188e-06f) ? ((_3355 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[54].z, 0.0f);
    float2 _3371 = float2(min(max(_3365 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3372 = _1684 * _3371;
    float2 _3373 = _3371 * _1685;
    float _3378 = _3372.x + _3372.y;
    float _3382 = _3378 * Material_Material_PreshaderBuffer[56].y;
    float _3386 = mad(_3373.x + _3373.y, Material_Material_PreshaderBuffer[56].y, Material_Material_PreshaderBuffer[56].z * _1983);
    float _3387 = floor(_3382);
    float2 _3404 = float2(min(max(_3365 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3405 = _1684 * _3404;
    float2 _3406 = _3404 * _1685;
    float _3411 = _3405.x + _3405.y;
    float _3415 = _3411 * Material_Material_PreshaderBuffer[57].x;
    float _3419 = mad(_3406.x + _3406.y, Material_Material_PreshaderBuffer[57].x, Material_Material_PreshaderBuffer[57].y * _1983);
    float _3420 = floor(_3415);
    float2 _3440 = float2(min(max(_3365 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3441 = _1684 * _3440;
    float2 _3442 = _3440 * _1685;
    float _3447 = _3441.x + _3441.y;
    float _3451 = _3447 * Material_Material_PreshaderBuffer[57].w;
    float _3455 = mad(_3442.x + _3442.y, Material_Material_PreshaderBuffer[57].w, Material_Material_PreshaderBuffer[58].x * _1983);
    float _3456 = floor(_3451);
    float2 _3475 = float2(min(max(_3365 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3476 = _1684 * _3475;
    float2 _3477 = _3475 * _1685;
    float _3482 = _3476.x + _3476.y;
    float _3486 = _3482 * Material_Material_PreshaderBuffer[58].z;
    float _3490 = mad(_3477.x + _3477.y, Material_Material_PreshaderBuffer[58].z, Material_Material_PreshaderBuffer[58].w * _1983);
    float _3491 = floor(_3486);
    float3 _3505 = _3337 + (((float3(_537, _537, sin(mad(mad(_3382, 6.283185482025146484375f, _3387 * (-6.283185482025146484375f)), 2097152.0f, mad(_3386, 6.283185482025146484375f, floor(mad(mad(_3378, Material_Material_PreshaderBuffer[56].y, -_3387), 2097152.0f, _3386)) * (-6.283185482025146484375f)))) * _2722) + float3(_537, _537, sin(mad(mad(_3415, 6.283185482025146484375f, _3420 * (-6.283185482025146484375f)), 2097152.0f, mad(_3419, 6.283185482025146484375f, floor(mad(mad(_3411, Material_Material_PreshaderBuffer[57].x, -_3420), 2097152.0f, _3419)) * (-6.283185482025146484375f)))) * _2756)) + float3(_537, _537, sin(mad(mad(_3451, 6.283185482025146484375f, _3456 * (-6.283185482025146484375f)), 2097152.0f, mad(_3455, 6.283185482025146484375f, floor(mad(mad(_3447, Material_Material_PreshaderBuffer[57].w, -_3456), 2097152.0f, _3455)) * (-6.283185482025146484375f)))) * _2793)) + float3(_537, _537, sin(mad(mad(_3486, 6.283185482025146484375f, _3491 * (-6.283185482025146484375f)), 2097152.0f, mad(_3490, 6.283185482025146484375f, floor(mad(mad(_3482, Material_Material_PreshaderBuffer[58].z, -_3491), 2097152.0f, _3490)) * (-6.283185482025146484375f)))) * _2829));
    float3 _3506 = _3002 + _3505;
    float _3519 = (abs(Material_Material_PreshaderBuffer[59].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[59].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[59].y : Material_Material_PreshaderBuffer[59].z) : Material_Material_PreshaderBuffer[59].y;
    float _3527 = (abs(_3519 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_3519 >= 1.0f) ? Material_Material_PreshaderBuffer[59].w : Material_Material_PreshaderBuffer[59].y) : Material_Material_PreshaderBuffer[59].y;
    float3 _3537 = float3(min(max((abs(_3527) > 9.9999997473787516355514526367188e-06f) ? ((_3527 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[61].x, 0.0f);
    float2 _3543 = float2(min(max(_3537 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _3544 = _1684 * _3543;
    float2 _3545 = _3543 * _1685;
    float _3550 = _3544.x + _3544.y;
    float _3551 = _3545.x + _3545.y;
    float _3554 = Material_Material_PreshaderBuffer[62].y * MaterialCollection0_MaterialCollection0_Vectors[0].y;
    float _3557 = Material_Material_PreshaderBuffer[62].z * _3554;
    float _3558 = 2.0f / _3557;
    float _3559 = _3550 * _3558;
    float3 _3565 = Material_Material_PreshaderBuffer[63].x.xxx;
    float3 _3570 = Material_Material_PreshaderBuffer[63].y.xxx;
    float3 _3571 = (View_View_ViewTilePosition * _3565) * _3570;
    float3 _3574 = (1.0f / MaterialCollection0_MaterialCollection0_Vectors[0].y).xxx;
    float3 _3575 = ((_3565 * _630) * _3570) * _3574;
    float2 _3582 = (_1149 * Material_Material_PreshaderBuffer[63].w).xx;
    float3 _3586 = float3(_3575.xy, (_3582 + _3575.z.xx).x);
    float3 _3597 = 0.0f.xxx;
    float _3602 = 0.0f;
    _3597 = ((mad(_3571, _3574, -floor(mad(_3571, _3574, (_3586 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _3586) * 1.0f;
    _3602 = 0.0f;
    float _3600 = 1.0f;
    uint _3604 = 0u;
    [loop]
    for (; _3604 < 6u; )
    {
        float3 _3608 = frac(_3597);
        float _3610 = dot(floor(_3597), float3(19.0f, 47.0f, 101.0f));
        uint3 _3622 = (uint3(int3(int(_3610), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3623 = _3622.y;
        uint _3624 = _3622.z;
        uint _3627 = _3622.x + (_3623 * _3624);
        uint _3629 = _3623 + (_3624 * _3627);
        uint3 _3634 = uint3(0u, 0u, 0u);
        _3634.x = _3627 + (_3629 * (_3624 + (_3627 * _3629)));
        uint3 _3635 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _3648 = (uint3(int3(int(_3610 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3649 = _3648.y;
        uint _3650 = _3648.z;
        uint _3653 = _3648.x + (_3649 * _3650);
        uint _3655 = _3649 + (_3650 * _3653);
        uint3 _3660 = uint3(0u, 0u, 0u);
        _3660.x = _3653 + (_3655 * (_3650 + (_3653 * _3655)));
        uint3 _3673 = (uint3(int3(int(_3610 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3674 = _3673.y;
        uint _3675 = _3673.z;
        uint _3678 = _3673.x + (_3674 * _3675);
        uint _3680 = _3674 + (_3675 * _3678);
        uint3 _3685 = uint3(0u, 0u, 0u);
        _3685.x = _3678 + (_3680 * (_3675 + (_3678 * _3680)));
        uint3 _3698 = (uint3(int3(int(_3610 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3699 = _3698.y;
        uint _3700 = _3698.z;
        uint _3703 = _3698.x + (_3699 * _3700);
        uint _3705 = _3699 + (_3700 * _3703);
        uint3 _3710 = uint3(0u, 0u, 0u);
        _3710.x = _3703 + (_3705 * (_3700 + (_3703 * _3705)));
        uint3 _3723 = (uint3(int3(int(_3610 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3724 = _3723.y;
        uint _3725 = _3723.z;
        uint _3728 = _3723.x + (_3724 * _3725);
        uint _3730 = _3724 + (_3725 * _3728);
        uint3 _3735 = uint3(0u, 0u, 0u);
        _3735.x = _3728 + (_3730 * (_3725 + (_3728 * _3730)));
        uint3 _3748 = (uint3(int3(int(_3610 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3749 = _3748.y;
        uint _3750 = _3748.z;
        uint _3753 = _3748.x + (_3749 * _3750);
        uint _3755 = _3749 + (_3750 * _3753);
        uint3 _3760 = uint3(0u, 0u, 0u);
        _3760.x = _3753 + (_3755 * (_3750 + (_3753 * _3755)));
        uint3 _3773 = (uint3(int3(int(_3610 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3774 = _3773.y;
        uint _3775 = _3773.z;
        uint _3778 = _3773.x + (_3774 * _3775);
        uint _3780 = _3774 + (_3775 * _3778);
        uint3 _3785 = uint3(0u, 0u, 0u);
        _3785.x = _3778 + (_3780 * (_3775 + (_3778 * _3780)));
        uint3 _3798 = (uint3(int3(int(_3610 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3799 = _3798.y;
        uint _3800 = _3798.z;
        uint _3803 = _3798.x + (_3799 * _3800);
        uint _3805 = _3799 + (_3800 * _3803);
        uint3 _3810 = uint3(0u, 0u, 0u);
        _3810.x = _3803 + (_3805 * (_3800 + (_3803 * _3805)));
        float4 _3821 = float4(_3608, 0.0f);
        float4 _3827 = ((_3821 * _3821) * _3821) * mad(_3821, (_3821 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _3828 = _3827.x;
        float _3831 = _3827.y;
        float _3603 = mad(lerp(lerp(lerp(dot(mad(float3((_3634 >> _3635).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3608), dot(mad(float3((_3660 >> _3635).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3608 - float3(1.0f, 0.0f, 0.0f)), _3828), lerp(dot(mad(float3((_3685 >> _3635).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3608 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_3710 >> _3635).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3608 - float3(1.0f, 1.0f, 0.0f)), _3828), _3831), lerp(lerp(dot(mad(float3((_3735 >> _3635).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3608 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_3760 >> _3635).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3608 - float3(1.0f, 0.0f, 1.0f)), _3828), lerp(dot(mad(float3((_3785 >> _3635).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3608 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_3810 >> _3635).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3608 - 1.0f.xxx), _3828), _3831), _3827.z), _3600, _3602);
        _3597 *= 2.0f;
        _3600 *= 0.5f;
        _3602 = _3603;
        _3604++;
        continue;
    }
    float _3841 = lerp(_1149, _1702, clamp(lerp(0.0f, 1.0f, mad(_3602, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _3843 = mad(_3551, _3558, (_3558 * Material_Material_PreshaderBuffer[62].w) * _3841);
    float _3844 = floor(_3559);
    float _3856 = Material_Material_PreshaderBuffer[64].x * MaterialCollection0_MaterialCollection0_Vectors[0].y;
    float _3861 = mad(Material_Material_PreshaderBuffer[64].x, MaterialCollection0_MaterialCollection0_Vectors[0].y, -(Material_Material_PreshaderBuffer[64].y * MaterialCollection0_MaterialCollection0_Vectors[0].y));
    float3 _3864 = Material_Material_PreshaderBuffer[64].z.xxx;
    float3 _3869 = Material_Material_PreshaderBuffer[64].w.xxx;
    float3 _3870 = (View_View_ViewTilePosition * _3864) * _3869;
    float3 _3872 = ((_3864 * _630) * _3869) * _3574;
    float2 _3879 = (_1149 * Material_Material_PreshaderBuffer[65].y).xx;
    float3 _3883 = float3(_3872.xy, (_3879 + _3872.z.xx).x);
    float3 _3894 = 0.0f.xxx;
    float _3899 = 0.0f;
    _3894 = ((mad(_3870, _3574, -floor(mad(_3870, _3574, (_3883 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _3883) * 1.0f;
    _3899 = 0.0f;
    float _3897 = 1.0f;
    uint _3901 = 0u;
    [loop]
    for (; _3901 < 10u; )
    {
        float3 _3905 = frac(_3894);
        float _3907 = dot(floor(_3894), float3(19.0f, 47.0f, 101.0f));
        uint3 _3919 = (uint3(int3(int(_3907), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3920 = _3919.y;
        uint _3921 = _3919.z;
        uint _3924 = _3919.x + (_3920 * _3921);
        uint _3926 = _3920 + (_3921 * _3924);
        uint3 _3931 = uint3(0u, 0u, 0u);
        _3931.x = _3924 + (_3926 * (_3921 + (_3924 * _3926)));
        uint3 _3932 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _3945 = (uint3(int3(int(_3907 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3946 = _3945.y;
        uint _3947 = _3945.z;
        uint _3950 = _3945.x + (_3946 * _3947);
        uint _3952 = _3946 + (_3947 * _3950);
        uint3 _3957 = uint3(0u, 0u, 0u);
        _3957.x = _3950 + (_3952 * (_3947 + (_3950 * _3952)));
        uint3 _3970 = (uint3(int3(int(_3907 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3971 = _3970.y;
        uint _3972 = _3970.z;
        uint _3975 = _3970.x + (_3971 * _3972);
        uint _3977 = _3971 + (_3972 * _3975);
        uint3 _3982 = uint3(0u, 0u, 0u);
        _3982.x = _3975 + (_3977 * (_3972 + (_3975 * _3977)));
        uint3 _3995 = (uint3(int3(int(_3907 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _3996 = _3995.y;
        uint _3997 = _3995.z;
        uint _4000 = _3995.x + (_3996 * _3997);
        uint _4002 = _3996 + (_3997 * _4000);
        uint3 _4007 = uint3(0u, 0u, 0u);
        _4007.x = _4000 + (_4002 * (_3997 + (_4000 * _4002)));
        uint3 _4020 = (uint3(int3(int(_3907 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4021 = _4020.y;
        uint _4022 = _4020.z;
        uint _4025 = _4020.x + (_4021 * _4022);
        uint _4027 = _4021 + (_4022 * _4025);
        uint3 _4032 = uint3(0u, 0u, 0u);
        _4032.x = _4025 + (_4027 * (_4022 + (_4025 * _4027)));
        uint3 _4045 = (uint3(int3(int(_3907 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4046 = _4045.y;
        uint _4047 = _4045.z;
        uint _4050 = _4045.x + (_4046 * _4047);
        uint _4052 = _4046 + (_4047 * _4050);
        uint3 _4057 = uint3(0u, 0u, 0u);
        _4057.x = _4050 + (_4052 * (_4047 + (_4050 * _4052)));
        uint3 _4070 = (uint3(int3(int(_3907 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4071 = _4070.y;
        uint _4072 = _4070.z;
        uint _4075 = _4070.x + (_4071 * _4072);
        uint _4077 = _4071 + (_4072 * _4075);
        uint3 _4082 = uint3(0u, 0u, 0u);
        _4082.x = _4075 + (_4077 * (_4072 + (_4075 * _4077)));
        uint3 _4095 = (uint3(int3(int(_3907 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4096 = _4095.y;
        uint _4097 = _4095.z;
        uint _4100 = _4095.x + (_4096 * _4097);
        uint _4102 = _4096 + (_4097 * _4100);
        uint3 _4107 = uint3(0u, 0u, 0u);
        _4107.x = _4100 + (_4102 * (_4097 + (_4100 * _4102)));
        float4 _4118 = float4(_3905, 0.0f);
        float4 _4124 = ((_4118 * _4118) * _4118) * mad(_4118, (_4118 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _4125 = _4124.x;
        float _4128 = _4124.y;
        float _4135 = abs(lerp(lerp(lerp(dot(mad(float3((_3931 >> _3932).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3905), dot(mad(float3((_3957 >> _3932).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3905 - float3(1.0f, 0.0f, 0.0f)), _4125), lerp(dot(mad(float3((_3982 >> _3932).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3905 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_4007 >> _3932).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3905 - float3(1.0f, 1.0f, 0.0f)), _4125), _4128), lerp(lerp(dot(mad(float3((_4032 >> _3932).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3905 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_4057 >> _3932).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3905 - float3(1.0f, 0.0f, 1.0f)), _4125), lerp(dot(mad(float3((_4082 >> _3932).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3905 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_4107 >> _3932).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _3905 - 1.0f.xxx), _4125), _4128), _4124.z));
        float _3900 = mad(_4135, _3897, _3899);
        _3894 *= 2.0f;
        _3897 *= 0.5f;
        _3899 = _3900;
        _3901++;
        continue;
    }
    float3 _4139 = Material_Material_PreshaderBuffer[65].z.xxx;
    float3 _4144 = Material_Material_PreshaderBuffer[65].w.xxx;
    float3 _4145 = (View_View_ViewTilePosition * _4139) * _4144;
    float3 _4147 = ((_4139 * _630) * _4144) * _3574;
    float2 _4154 = (_1149 * Material_Material_PreshaderBuffer[66].y).xx;
    float3 _4158 = float3(_4147.xy, (_4154 + _4147.z.xx).x);
    float3 _4169 = 0.0f.xxx;
    float _4174 = 0.0f;
    _4169 = ((mad(_4145, _3574, -floor(mad(_4145, _3574, (_4158 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _4158) * 1.0f;
    _4174 = 0.0f;
    float _4172 = 1.0f;
    uint _4176 = 0u;
    [loop]
    for (; _4176 < 10u; )
    {
        float3 _4180 = frac(_4169);
        float _4182 = dot(floor(_4169), float3(19.0f, 47.0f, 101.0f));
        uint3 _4194 = (uint3(int3(int(_4182), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4195 = _4194.y;
        uint _4196 = _4194.z;
        uint _4199 = _4194.x + (_4195 * _4196);
        uint _4201 = _4195 + (_4196 * _4199);
        uint3 _4206 = uint3(0u, 0u, 0u);
        _4206.x = _4199 + (_4201 * (_4196 + (_4199 * _4201)));
        uint3 _4207 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _4220 = (uint3(int3(int(_4182 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4221 = _4220.y;
        uint _4222 = _4220.z;
        uint _4225 = _4220.x + (_4221 * _4222);
        uint _4227 = _4221 + (_4222 * _4225);
        uint3 _4232 = uint3(0u, 0u, 0u);
        _4232.x = _4225 + (_4227 * (_4222 + (_4225 * _4227)));
        uint3 _4245 = (uint3(int3(int(_4182 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4246 = _4245.y;
        uint _4247 = _4245.z;
        uint _4250 = _4245.x + (_4246 * _4247);
        uint _4252 = _4246 + (_4247 * _4250);
        uint3 _4257 = uint3(0u, 0u, 0u);
        _4257.x = _4250 + (_4252 * (_4247 + (_4250 * _4252)));
        uint3 _4270 = (uint3(int3(int(_4182 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4271 = _4270.y;
        uint _4272 = _4270.z;
        uint _4275 = _4270.x + (_4271 * _4272);
        uint _4277 = _4271 + (_4272 * _4275);
        uint3 _4282 = uint3(0u, 0u, 0u);
        _4282.x = _4275 + (_4277 * (_4272 + (_4275 * _4277)));
        uint3 _4295 = (uint3(int3(int(_4182 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4296 = _4295.y;
        uint _4297 = _4295.z;
        uint _4300 = _4295.x + (_4296 * _4297);
        uint _4302 = _4296 + (_4297 * _4300);
        uint3 _4307 = uint3(0u, 0u, 0u);
        _4307.x = _4300 + (_4302 * (_4297 + (_4300 * _4302)));
        uint3 _4320 = (uint3(int3(int(_4182 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4321 = _4320.y;
        uint _4322 = _4320.z;
        uint _4325 = _4320.x + (_4321 * _4322);
        uint _4327 = _4321 + (_4322 * _4325);
        uint3 _4332 = uint3(0u, 0u, 0u);
        _4332.x = _4325 + (_4327 * (_4322 + (_4325 * _4327)));
        uint3 _4345 = (uint3(int3(int(_4182 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4346 = _4345.y;
        uint _4347 = _4345.z;
        uint _4350 = _4345.x + (_4346 * _4347);
        uint _4352 = _4346 + (_4347 * _4350);
        uint3 _4357 = uint3(0u, 0u, 0u);
        _4357.x = _4350 + (_4352 * (_4347 + (_4350 * _4352)));
        uint3 _4370 = (uint3(int3(int(_4182 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _4371 = _4370.y;
        uint _4372 = _4370.z;
        uint _4375 = _4370.x + (_4371 * _4372);
        uint _4377 = _4371 + (_4372 * _4375);
        uint3 _4382 = uint3(0u, 0u, 0u);
        _4382.x = _4375 + (_4377 * (_4372 + (_4375 * _4377)));
        float4 _4393 = float4(_4180, 0.0f);
        float4 _4399 = ((_4393 * _4393) * _4393) * mad(_4393, (_4393 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _4400 = _4399.x;
        float _4403 = _4399.y;
        float _4410 = abs(lerp(lerp(lerp(dot(mad(float3((_4206 >> _4207).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4180), dot(mad(float3((_4232 >> _4207).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4180 - float3(1.0f, 0.0f, 0.0f)), _4400), lerp(dot(mad(float3((_4257 >> _4207).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4180 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_4282 >> _4207).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4180 - float3(1.0f, 1.0f, 0.0f)), _4400), _4403), lerp(lerp(dot(mad(float3((_4307 >> _4207).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4180 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_4332 >> _4207).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4180 - float3(1.0f, 0.0f, 1.0f)), _4400), lerp(dot(mad(float3((_4357 >> _4207).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4180 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_4382 >> _4207).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _4180 - 1.0f.xxx), _4400), _4403), _4399.z));
        float _4175 = mad(_4410, _4172, _4174);
        _4169 *= 2.0f;
        _4172 *= 0.5f;
        _4174 = _4175;
        _4176++;
        continue;
    }
    float _4418 = lerp(_3856, _3861, lerp(0.0f, 1.0f, _3899) * mad(lerp(0.0f, 1.0f, _4174), Material_Material_PreshaderBuffer[66].w, Material_Material_PreshaderBuffer[66].z));
    float2 _4426 = float2(min(max(_3537 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4427 = _1684 * _4426;
    float2 _4428 = _4426 * _1685;
    float _4433 = _4427.x + _4427.y;
    float _4434 = _4428.x + _4428.y;
    float _4437 = _3557 * Material_Material_PreshaderBuffer[20].w;
    float _4438 = 2.0f / _4437;
    float _4439 = _4433 * _4438;
    float _4444 = mad(_4434, _4438, (_4438 * Material_Material_PreshaderBuffer[67].y) * _3841);
    float _4445 = floor(_4439);
    float _4455 = _4418 * Material_Material_PreshaderBuffer[22].z;
    float2 _4466 = float2(min(max(_3537 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4467 = _1684 * _4466;
    float2 _4468 = _4466 * _1685;
    float _4473 = _4467.x + _4467.y;
    float _4474 = _4468.x + _4468.y;
    float _4475 = _4437 * Material_Material_PreshaderBuffer[20].w;
    float _4476 = 2.0f / _4475;
    float _4477 = _4473 * _4476;
    float _4482 = mad(_4474, _4476, (_4476 * Material_Material_PreshaderBuffer[67].w) * _3841);
    float _4483 = floor(_4477);
    float _4493 = _4455 * Material_Material_PreshaderBuffer[22].z;
    float2 _4503 = float2(min(max(_3537 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4504 = _1684 * _4503;
    float2 _4505 = _4503 * _1685;
    float _4510 = _4504.x + _4504.y;
    float _4511 = _4505.x + _4505.y;
    float _4513 = 2.0f / (_4475 * Material_Material_PreshaderBuffer[20].w);
    float _4514 = _4510 * _4513;
    float _4519 = mad(_4511, _4513, (_4513 * Material_Material_PreshaderBuffer[68].y) * _3841);
    float _4520 = floor(_4514);
    float _4544 = (abs(Material_Material_PreshaderBuffer[69].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[69].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[69].x : Material_Material_PreshaderBuffer[69].y) : Material_Material_PreshaderBuffer[69].x;
    float _4552 = (abs(_4544 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_4544 >= 1.0f) ? Material_Material_PreshaderBuffer[69].z : Material_Material_PreshaderBuffer[69].x) : Material_Material_PreshaderBuffer[69].x;
    float3 _4562 = float3(min(max((abs(_4552) > 9.9999997473787516355514526367188e-06f) ? ((_4552 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[70].w, 0.0f);
    float2 _4568 = float2(min(max(_4562 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4569 = _1684 * _4568;
    float2 _4570 = _4568 * _1685;
    float _4575 = _4569.x + _4569.y;
    float _4576 = _4570.x + _4570.y;
    float _4579 = _3554 * Material_Material_PreshaderBuffer[28].w;
    float _4582 = Material_Material_PreshaderBuffer[72].x * _4579;
    float _4583 = 2.0f / _4582;
    float _4584 = _4575 * _4583;
    float _4589 = mad(_4576, _4583, (_4583 * Material_Material_PreshaderBuffer[72].y) * _3841);
    float _4590 = floor(_4584);
    float _4600 = _4418 * Material_Material_PreshaderBuffer[30].w;
    float2 _4608 = float2(min(max(_4562 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4609 = _1684 * _4608;
    float2 _4610 = _4608 * _1685;
    float _4615 = _4609.x + _4609.y;
    float _4616 = _4610.x + _4610.y;
    float _4617 = _4582 * Material_Material_PreshaderBuffer[20].w;
    float _4618 = 2.0f / _4617;
    float _4619 = _4615 * _4618;
    float _4624 = mad(_4616, _4618, (_4618 * Material_Material_PreshaderBuffer[72].z) * _3841);
    float _4625 = floor(_4619);
    float _4635 = _4600 * Material_Material_PreshaderBuffer[22].z;
    float2 _4646 = float2(min(max(_4562 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4647 = _1684 * _4646;
    float2 _4648 = _4646 * _1685;
    float _4653 = _4647.x + _4647.y;
    float _4654 = _4648.x + _4648.y;
    float _4655 = _4617 * Material_Material_PreshaderBuffer[20].w;
    float _4656 = 2.0f / _4655;
    float _4657 = _4653 * _4656;
    float _4662 = mad(_4654, _4656, (_4656 * Material_Material_PreshaderBuffer[72].w) * _3841);
    float _4663 = floor(_4657);
    float _4673 = _4635 * Material_Material_PreshaderBuffer[22].z;
    float2 _4683 = float2(min(max(_4562 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4684 = _1684 * _4683;
    float2 _4685 = _4683 * _1685;
    float _4690 = _4684.x + _4684.y;
    float _4691 = _4685.x + _4685.y;
    float _4693 = 2.0f / (_4655 * Material_Material_PreshaderBuffer[20].w);
    float _4694 = _4690 * _4693;
    float _4699 = mad(_4691, _4693, (_4693 * Material_Material_PreshaderBuffer[73].x) * _3841);
    float _4700 = floor(_4694);
    float _4710 = _4673 * Material_Material_PreshaderBuffer[22].z;
    float3 _4715 = (((float3(_537, _537, sin(mad(mad(_3559, 6.283185482025146484375f, _3844 * (-6.283185482025146484375f)), 2097152.0f, mad(_3843, 6.283185482025146484375f, floor(mad(mad(_3550, _3558, -_3844), 2097152.0f, _3843)) * (-6.283185482025146484375f)))) * _4418) + float3(_537, _537, sin(mad(mad(_4439, 6.283185482025146484375f, _4445 * (-6.283185482025146484375f)), 2097152.0f, mad(_4444, 6.283185482025146484375f, floor(mad(mad(_4433, _4438, -_4445), 2097152.0f, _4444)) * (-6.283185482025146484375f)))) * _4455)) + float3(_537, _537, sin(mad(mad(_4477, 6.283185482025146484375f, _4483 * (-6.283185482025146484375f)), 2097152.0f, mad(_4482, 6.283185482025146484375f, floor(mad(mad(_4473, _4476, -_4483), 2097152.0f, _4482)) * (-6.283185482025146484375f)))) * _4493)) + float3(_537, _537, sin(mad(mad(_4514, 6.283185482025146484375f, _4520 * (-6.283185482025146484375f)), 2097152.0f, mad(_4519, 6.283185482025146484375f, floor(mad(mad(_4510, _4513, -_4520), 2097152.0f, _4519)) * (-6.283185482025146484375f)))) * (_4493 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_537, _537, sin(mad(mad(_4584, 6.283185482025146484375f, _4590 * (-6.283185482025146484375f)), 2097152.0f, mad(_4589, 6.283185482025146484375f, floor(mad(mad(_4575, _4583, -_4590), 2097152.0f, _4589)) * (-6.283185482025146484375f)))) * _4600) + float3(_537, _537, sin(mad(mad(_4619, 6.283185482025146484375f, _4625 * (-6.283185482025146484375f)), 2097152.0f, mad(_4624, 6.283185482025146484375f, floor(mad(mad(_4615, _4618, -_4625), 2097152.0f, _4624)) * (-6.283185482025146484375f)))) * _4635)) + float3(_537, _537, sin(mad(mad(_4657, 6.283185482025146484375f, _4663 * (-6.283185482025146484375f)), 2097152.0f, mad(_4662, 6.283185482025146484375f, floor(mad(mad(_4653, _4656, -_4663), 2097152.0f, _4662)) * (-6.283185482025146484375f)))) * _4673)) + float3(_537, _537, sin(mad(mad(_4694, 6.283185482025146484375f, _4700 * (-6.283185482025146484375f)), 2097152.0f, mad(_4699, 6.283185482025146484375f, floor(mad(mad(_4690, _4693, -_4700), 2097152.0f, _4699)) * (-6.283185482025146484375f)))) * _4710));
    float _4725 = (abs(Material_Material_PreshaderBuffer[73].y - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[73].y >= (-1.0f)) ? Material_Material_PreshaderBuffer[73].y : Material_Material_PreshaderBuffer[73].z) : Material_Material_PreshaderBuffer[73].y;
    float _4733 = (abs(_4725 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_4725 >= 1.0f) ? Material_Material_PreshaderBuffer[73].w : Material_Material_PreshaderBuffer[73].y) : Material_Material_PreshaderBuffer[73].y;
    float3 _4743 = float3(min(max((abs(_4733) > 9.9999997473787516355514526367188e-06f) ? ((_4733 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[75].x, 0.0f);
    float2 _4749 = float2(min(max(_4743 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4750 = _1684 * _4749;
    float2 _4751 = _4749 * _1685;
    float _4756 = _4750.x + _4750.y;
    float _4757 = _4751.x + _4751.y;
    float _4760 = Material_Material_PreshaderBuffer[76].y * _4579;
    float _4761 = 2.0f / _4760;
    float _4762 = _4756 * _4761;
    float _4765 = mad(_4757, _4761, (_4761 * Material_Material_PreshaderBuffer[72].y) * _3841);
    float _4766 = floor(_4762);
    float2 _4783 = float2(min(max(_4743 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4784 = _1684 * _4783;
    float2 _4785 = _4783 * _1685;
    float _4790 = _4784.x + _4784.y;
    float _4791 = _4785.x + _4785.y;
    float _4792 = _4760 * Material_Material_PreshaderBuffer[20].w;
    float _4793 = 2.0f / _4792;
    float _4794 = _4790 * _4793;
    float _4797 = mad(_4791, _4793, (_4793 * Material_Material_PreshaderBuffer[72].z) * _3841);
    float _4798 = floor(_4794);
    float2 _4818 = float2(min(max(_4743 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4819 = _1684 * _4818;
    float2 _4820 = _4818 * _1685;
    float _4825 = _4819.x + _4819.y;
    float _4826 = _4820.x + _4820.y;
    float _4827 = _4792 * Material_Material_PreshaderBuffer[20].w;
    float _4828 = 2.0f / _4827;
    float _4829 = _4825 * _4828;
    float _4832 = mad(_4826, _4828, (_4828 * Material_Material_PreshaderBuffer[72].w) * _3841);
    float _4833 = floor(_4829);
    float2 _4852 = float2(min(max(_4743 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _4853 = _1684 * _4852;
    float2 _4854 = _4852 * _1685;
    float _4859 = _4853.x + _4853.y;
    float _4860 = _4854.x + _4854.y;
    float _4862 = 2.0f / (_4827 * Material_Material_PreshaderBuffer[20].w);
    float _4863 = _4859 * _4862;
    float _4866 = mad(_4860, _4862, (_4862 * Material_Material_PreshaderBuffer[73].x) * _3841);
    float _4867 = floor(_4863);
    float3 _4881 = _4715 + (((float3(_537, _537, sin(mad(mad(_4762, 6.283185482025146484375f, _4766 * (-6.283185482025146484375f)), 2097152.0f, mad(_4765, 6.283185482025146484375f, floor(mad(mad(_4756, _4761, -_4766), 2097152.0f, _4765)) * (-6.283185482025146484375f)))) * _4600) + float3(_537, _537, sin(mad(mad(_4794, 6.283185482025146484375f, _4798 * (-6.283185482025146484375f)), 2097152.0f, mad(_4797, 6.283185482025146484375f, floor(mad(mad(_4790, _4793, -_4798), 2097152.0f, _4797)) * (-6.283185482025146484375f)))) * _4635)) + float3(_537, _537, sin(mad(mad(_4829, 6.283185482025146484375f, _4833 * (-6.283185482025146484375f)), 2097152.0f, mad(_4832, 6.283185482025146484375f, floor(mad(mad(_4825, _4828, -_4833), 2097152.0f, _4832)) * (-6.283185482025146484375f)))) * _4673)) + float3(_537, _537, sin(mad(mad(_4863, 6.283185482025146484375f, _4867 * (-6.283185482025146484375f)), 2097152.0f, mad(_4866, 6.283185482025146484375f, floor(mad(mad(_4859, _4862, -_4867), 2097152.0f, _4866)) * (-6.283185482025146484375f)))) * _4710));
    float _4882 = _3554 * 0.800000011920928955078125f;
    float _4883 = Material_Material_PreshaderBuffer[62].z * _4882;
    float _4884 = 2.0f / _4883;
    float _4885 = _3550 * _4884;
    float _4890 = mad(_3551, _4884, (_4884 * Material_Material_PreshaderBuffer[76].z) * _3841);
    float _4891 = floor(_4885);
    float _4901 = _4418 * 0.800000011920928955078125f;
    float _4904 = _4883 * Material_Material_PreshaderBuffer[20].w;
    float _4905 = 2.0f / _4904;
    float _4906 = _4433 * _4905;
    float _4911 = mad(_4434, _4905, (_4905 * Material_Material_PreshaderBuffer[76].w) * _3841);
    float _4912 = floor(_4906);
    float _4922 = _4901 * Material_Material_PreshaderBuffer[22].z;
    float _4928 = _4904 * Material_Material_PreshaderBuffer[20].w;
    float _4929 = 2.0f / _4928;
    float _4930 = _4473 * _4929;
    float _4935 = mad(_4474, _4929, (_4929 * Material_Material_PreshaderBuffer[77].x) * _3841);
    float _4936 = floor(_4930);
    float _4946 = _4922 * Material_Material_PreshaderBuffer[22].z;
    float _4952 = 2.0f / (_4928 * Material_Material_PreshaderBuffer[20].w);
    float _4953 = _4510 * _4952;
    float _4958 = mad(_4511, _4952, (_4952 * Material_Material_PreshaderBuffer[77].y) * _3841);
    float _4959 = floor(_4953);
    float _4969 = _4946 * Material_Material_PreshaderBuffer[22].z;
    float _4974 = _4882 * Material_Material_PreshaderBuffer[28].w;
    float _4975 = Material_Material_PreshaderBuffer[72].x * _4974;
    float _4976 = 2.0f / _4975;
    float _4977 = _4575 * _4976;
    float _4982 = mad(_4576, _4976, (_4976 * Material_Material_PreshaderBuffer[77].z) * _3841);
    float _4983 = floor(_4977);
    float _4993 = _4901 * Material_Material_PreshaderBuffer[30].w;
    float _4996 = _4975 * Material_Material_PreshaderBuffer[20].w;
    float _4997 = 2.0f / _4996;
    float _4998 = _4615 * _4997;
    float _5003 = mad(_4616, _4997, (_4997 * Material_Material_PreshaderBuffer[77].w) * _3841);
    float _5004 = floor(_4998);
    float _5014 = _4993 * Material_Material_PreshaderBuffer[22].z;
    float _5020 = _4996 * Material_Material_PreshaderBuffer[20].w;
    float _5021 = 2.0f / _5020;
    float _5022 = _4653 * _5021;
    float _5027 = mad(_4654, _5021, (_5021 * Material_Material_PreshaderBuffer[78].x) * _3841);
    float _5028 = floor(_5022);
    float _5038 = _5014 * Material_Material_PreshaderBuffer[22].z;
    float _5044 = 2.0f / (_5020 * Material_Material_PreshaderBuffer[20].w);
    float _5045 = _4690 * _5044;
    float _5050 = mad(_4691, _5044, (_5044 * Material_Material_PreshaderBuffer[78].y) * _3841);
    float _5051 = floor(_5045);
    float _5061 = _5038 * Material_Material_PreshaderBuffer[22].z;
    float3 _5066 = (((float3(_537, _537, sin(mad(mad(_4885, 6.283185482025146484375f, _4891 * (-6.283185482025146484375f)), 2097152.0f, mad(_4890, 6.283185482025146484375f, floor(mad(mad(_3550, _4884, -_4891), 2097152.0f, _4890)) * (-6.283185482025146484375f)))) * _4901) + float3(_537, _537, sin(mad(mad(_4906, 6.283185482025146484375f, _4912 * (-6.283185482025146484375f)), 2097152.0f, mad(_4911, 6.283185482025146484375f, floor(mad(mad(_4433, _4905, -_4912), 2097152.0f, _4911)) * (-6.283185482025146484375f)))) * _4922)) + float3(_537, _537, sin(mad(mad(_4930, 6.283185482025146484375f, _4936 * (-6.283185482025146484375f)), 2097152.0f, mad(_4935, 6.283185482025146484375f, floor(mad(mad(_4473, _4929, -_4936), 2097152.0f, _4935)) * (-6.283185482025146484375f)))) * _4946)) + float3(_537, _537, sin(mad(mad(_4953, 6.283185482025146484375f, _4959 * (-6.283185482025146484375f)), 2097152.0f, mad(_4958, 6.283185482025146484375f, floor(mad(mad(_4510, _4952, -_4959), 2097152.0f, _4958)) * (-6.283185482025146484375f)))) * _4969)) + (((float3(_537, _537, sin(mad(mad(_4977, 6.283185482025146484375f, _4983 * (-6.283185482025146484375f)), 2097152.0f, mad(_4982, 6.283185482025146484375f, floor(mad(mad(_4575, _4976, -_4983), 2097152.0f, _4982)) * (-6.283185482025146484375f)))) * _4993) + float3(_537, _537, sin(mad(mad(_4998, 6.283185482025146484375f, _5004 * (-6.283185482025146484375f)), 2097152.0f, mad(_5003, 6.283185482025146484375f, floor(mad(mad(_4615, _4997, -_5004), 2097152.0f, _5003)) * (-6.283185482025146484375f)))) * _5014)) + float3(_537, _537, sin(mad(mad(_5022, 6.283185482025146484375f, _5028 * (-6.283185482025146484375f)), 2097152.0f, mad(_5027, 6.283185482025146484375f, floor(mad(mad(_4653, _5021, -_5028), 2097152.0f, _5027)) * (-6.283185482025146484375f)))) * _5038)) + float3(_537, _537, sin(mad(mad(_5045, 6.283185482025146484375f, _5051 * (-6.283185482025146484375f)), 2097152.0f, mad(_5050, 6.283185482025146484375f, floor(mad(mad(_4690, _5044, -_5051), 2097152.0f, _5050)) * (-6.283185482025146484375f)))) * _5061));
    float _5067 = Material_Material_PreshaderBuffer[76].y * _4974;
    float _5068 = 2.0f / _5067;
    float _5069 = _4756 * _5068;
    float _5072 = mad(_4757, _5068, (_5068 * Material_Material_PreshaderBuffer[77].z) * _3841);
    float _5073 = floor(_5069);
    float _5085 = _5067 * Material_Material_PreshaderBuffer[20].w;
    float _5086 = 2.0f / _5085;
    float _5087 = _4790 * _5086;
    float _5090 = mad(_4791, _5086, (_5086 * Material_Material_PreshaderBuffer[77].w) * _3841);
    float _5091 = floor(_5087);
    float _5106 = _5085 * Material_Material_PreshaderBuffer[20].w;
    float _5107 = 2.0f / _5106;
    float _5108 = _4825 * _5107;
    float _5111 = mad(_4826, _5107, (_5107 * Material_Material_PreshaderBuffer[78].x) * _3841);
    float _5112 = floor(_5108);
    float _5127 = 2.0f / (_5106 * Material_Material_PreshaderBuffer[20].w);
    float _5128 = _4859 * _5127;
    float _5131 = mad(_4860, _5127, (_5127 * Material_Material_PreshaderBuffer[78].y) * _3841);
    float _5132 = floor(_5128);
    float3 _5146 = _5066 + (((float3(_537, _537, sin(mad(mad(_5069, 6.283185482025146484375f, _5073 * (-6.283185482025146484375f)), 2097152.0f, mad(_5072, 6.283185482025146484375f, floor(mad(mad(_4756, _5068, -_5073), 2097152.0f, _5072)) * (-6.283185482025146484375f)))) * _4993) + float3(_537, _537, sin(mad(mad(_5087, 6.283185482025146484375f, _5091 * (-6.283185482025146484375f)), 2097152.0f, mad(_5090, 6.283185482025146484375f, floor(mad(mad(_4790, _5086, -_5091), 2097152.0f, _5090)) * (-6.283185482025146484375f)))) * _5014)) + float3(_537, _537, sin(mad(mad(_5108, 6.283185482025146484375f, _5112 * (-6.283185482025146484375f)), 2097152.0f, mad(_5111, 6.283185482025146484375f, floor(mad(mad(_4825, _5107, -_5112), 2097152.0f, _5111)) * (-6.283185482025146484375f)))) * _5038)) + float3(_537, _537, sin(mad(mad(_5128, 6.283185482025146484375f, _5132 * (-6.283185482025146484375f)), 2097152.0f, mad(_5131, 6.283185482025146484375f, floor(mad(mad(_4859, _5127, -_5132), 2097152.0f, _5131)) * (-6.283185482025146484375f)))) * _5061));
    float _5147 = _3554 * 4.0f;
    float _5148 = Material_Material_PreshaderBuffer[62].z * _5147;
    float _5149 = 2.0f / _5148;
    float _5150 = _3550 * _5149;
    float _5155 = mad(_3551, _5149, (_5149 * Material_Material_PreshaderBuffer[78].z) * _3841);
    float _5156 = floor(_5150);
    float _5168 = _5148 * Material_Material_PreshaderBuffer[20].w;
    float _5169 = 2.0f / _5168;
    float _5170 = _4433 * _5169;
    float _5175 = mad(_4434, _5169, (_5169 * Material_Material_PreshaderBuffer[78].w) * _3841);
    float _5176 = floor(_5170);
    float _5191 = _5168 * Material_Material_PreshaderBuffer[20].w;
    float _5192 = 2.0f / _5191;
    float _5193 = _4473 * _5192;
    float _5198 = mad(_4474, _5192, (_5192 * Material_Material_PreshaderBuffer[79].x) * _3841);
    float _5199 = floor(_5193);
    float _5214 = 2.0f / (_5191 * Material_Material_PreshaderBuffer[20].w);
    float _5215 = _4510 * _5214;
    float _5220 = mad(_4511, _5214, (_5214 * Material_Material_PreshaderBuffer[79].y) * _3841);
    float _5221 = floor(_5215);
    float _5235 = _5147 * Material_Material_PreshaderBuffer[28].w;
    float _5236 = Material_Material_PreshaderBuffer[72].x * _5235;
    float _5237 = 2.0f / _5236;
    float _5238 = _4575 * _5237;
    float _5243 = mad(_4576, _5237, (_5237 * Material_Material_PreshaderBuffer[79].z) * _3841);
    float _5244 = floor(_5238);
    float _5256 = _5236 * Material_Material_PreshaderBuffer[20].w;
    float _5257 = 2.0f / _5256;
    float _5258 = _4615 * _5257;
    float _5263 = mad(_4616, _5257, (_5257 * Material_Material_PreshaderBuffer[79].w) * _3841);
    float _5264 = floor(_5258);
    float _5279 = _5256 * Material_Material_PreshaderBuffer[20].w;
    float _5280 = 2.0f / _5279;
    float _5281 = _4653 * _5280;
    float _5286 = mad(_4654, _5280, (_5280 * Material_Material_PreshaderBuffer[80].x) * _3841);
    float _5287 = floor(_5281);
    float _5302 = 2.0f / (_5279 * Material_Material_PreshaderBuffer[20].w);
    float _5303 = _4690 * _5302;
    float _5308 = mad(_4691, _5302, (_5302 * Material_Material_PreshaderBuffer[80].y) * _3841);
    float _5309 = floor(_5303);
    float3 _5323 = (((float3(_537, _537, sin(mad(mad(_5150, 6.283185482025146484375f, _5156 * (-6.283185482025146484375f)), 2097152.0f, mad(_5155, 6.283185482025146484375f, floor(mad(mad(_3550, _5149, -_5156), 2097152.0f, _5155)) * (-6.283185482025146484375f)))) * _4901) + float3(_537, _537, sin(mad(mad(_5170, 6.283185482025146484375f, _5176 * (-6.283185482025146484375f)), 2097152.0f, mad(_5175, 6.283185482025146484375f, floor(mad(mad(_4433, _5169, -_5176), 2097152.0f, _5175)) * (-6.283185482025146484375f)))) * _4922)) + float3(_537, _537, sin(mad(mad(_5193, 6.283185482025146484375f, _5199 * (-6.283185482025146484375f)), 2097152.0f, mad(_5198, 6.283185482025146484375f, floor(mad(mad(_4473, _5192, -_5199), 2097152.0f, _5198)) * (-6.283185482025146484375f)))) * _4946)) + float3(_537, _537, sin(mad(mad(_5215, 6.283185482025146484375f, _5221 * (-6.283185482025146484375f)), 2097152.0f, mad(_5220, 6.283185482025146484375f, floor(mad(mad(_4510, _5214, -_5221), 2097152.0f, _5220)) * (-6.283185482025146484375f)))) * _4969)) + (((float3(_537, _537, sin(mad(mad(_5238, 6.283185482025146484375f, _5244 * (-6.283185482025146484375f)), 2097152.0f, mad(_5243, 6.283185482025146484375f, floor(mad(mad(_4575, _5237, -_5244), 2097152.0f, _5243)) * (-6.283185482025146484375f)))) * _4993) + float3(_537, _537, sin(mad(mad(_5258, 6.283185482025146484375f, _5264 * (-6.283185482025146484375f)), 2097152.0f, mad(_5263, 6.283185482025146484375f, floor(mad(mad(_4615, _5257, -_5264), 2097152.0f, _5263)) * (-6.283185482025146484375f)))) * _5014)) + float3(_537, _537, sin(mad(mad(_5281, 6.283185482025146484375f, _5287 * (-6.283185482025146484375f)), 2097152.0f, mad(_5286, 6.283185482025146484375f, floor(mad(mad(_4653, _5280, -_5287), 2097152.0f, _5286)) * (-6.283185482025146484375f)))) * _5038)) + float3(_537, _537, sin(mad(mad(_5303, 6.283185482025146484375f, _5309 * (-6.283185482025146484375f)), 2097152.0f, mad(_5308, 6.283185482025146484375f, floor(mad(mad(_4690, _5302, -_5309), 2097152.0f, _5308)) * (-6.283185482025146484375f)))) * _5061));
    float _5324 = Material_Material_PreshaderBuffer[76].y * _5235;
    float _5325 = 2.0f / _5324;
    float _5326 = _4756 * _5325;
    float _5329 = mad(_4757, _5325, (_5325 * Material_Material_PreshaderBuffer[79].z) * _3841);
    float _5330 = floor(_5326);
    float _5342 = _5324 * Material_Material_PreshaderBuffer[20].w;
    float _5343 = 2.0f / _5342;
    float _5344 = _4790 * _5343;
    float _5347 = mad(_4791, _5343, (_5343 * Material_Material_PreshaderBuffer[79].w) * _3841);
    float _5348 = floor(_5344);
    float _5363 = _5342 * Material_Material_PreshaderBuffer[20].w;
    float _5364 = 2.0f / _5363;
    float _5365 = _4825 * _5364;
    float _5368 = mad(_4826, _5364, (_5364 * Material_Material_PreshaderBuffer[80].x) * _3841);
    float _5369 = floor(_5365);
    float _5384 = 2.0f / (_5363 * Material_Material_PreshaderBuffer[20].w);
    float _5385 = _4859 * _5384;
    float _5388 = mad(_4860, _5384, (_5384 * Material_Material_PreshaderBuffer[80].y) * _3841);
    float _5389 = floor(_5385);
    float3 _5403 = _5323 + (((float3(_537, _537, sin(mad(mad(_5326, 6.283185482025146484375f, _5330 * (-6.283185482025146484375f)), 2097152.0f, mad(_5329, 6.283185482025146484375f, floor(mad(mad(_4756, _5325, -_5330), 2097152.0f, _5329)) * (-6.283185482025146484375f)))) * _4993) + float3(_537, _537, sin(mad(mad(_5344, 6.283185482025146484375f, _5348 * (-6.283185482025146484375f)), 2097152.0f, mad(_5347, 6.283185482025146484375f, floor(mad(mad(_4790, _5343, -_5348), 2097152.0f, _5347)) * (-6.283185482025146484375f)))) * _5014)) + float3(_537, _537, sin(mad(mad(_5365, 6.283185482025146484375f, _5369 * (-6.283185482025146484375f)), 2097152.0f, mad(_5368, 6.283185482025146484375f, floor(mad(mad(_4825, _5364, -_5369), 2097152.0f, _5368)) * (-6.283185482025146484375f)))) * _5038)) + float3(_537, _537, sin(mad(mad(_5385, 6.283185482025146484375f, _5389 * (-6.283185482025146484375f)), 2097152.0f, mad(_5388, 6.283185482025146484375f, floor(mad(mad(_4859, _5384, -_5389), 2097152.0f, _5388)) * (-6.283185482025146484375f)))) * _5061));
    float _5404 = _3554 * 0.75f;
    float _5405 = Material_Material_PreshaderBuffer[62].z * _5404;
    float _5406 = 2.0f / _5405;
    float _5407 = _3550 * _5406;
    float _5410 = mad(_3551, _5406, (_5406 * Material_Material_PreshaderBuffer[76].z) * _3841);
    float _5411 = floor(_5407);
    float _5421 = _4418 * 0.5f;
    float _5424 = _5405 * Material_Material_PreshaderBuffer[20].w;
    float _5425 = 2.0f / _5424;
    float _5426 = _4433 * _5425;
    float _5429 = mad(_4434, _5425, (_5425 * Material_Material_PreshaderBuffer[76].w) * _3841);
    float _5430 = floor(_5426);
    float _5440 = _5421 * Material_Material_PreshaderBuffer[22].z;
    float _5446 = _5424 * Material_Material_PreshaderBuffer[20].w;
    float _5447 = 2.0f / _5446;
    float _5448 = _4473 * _5447;
    float _5451 = mad(_4474, _5447, (_5447 * Material_Material_PreshaderBuffer[77].x) * _3841);
    float _5452 = floor(_5448);
    float _5462 = _5440 * Material_Material_PreshaderBuffer[22].z;
    float _5468 = 2.0f / (_5446 * Material_Material_PreshaderBuffer[20].w);
    float _5469 = _4510 * _5468;
    float _5472 = mad(_4511, _5468, (_5468 * Material_Material_PreshaderBuffer[77].y) * _3841);
    float _5473 = floor(_5469);
    float _5488 = _5404 * Material_Material_PreshaderBuffer[28].w;
    float _5489 = Material_Material_PreshaderBuffer[72].x * _5488;
    float _5490 = 2.0f / _5489;
    float _5491 = _4575 * _5490;
    float _5494 = mad(_4576, _5490, (_5490 * Material_Material_PreshaderBuffer[77].z) * _3841);
    float _5495 = floor(_5491);
    float _5505 = _5421 * Material_Material_PreshaderBuffer[30].w;
    float _5508 = _5489 * Material_Material_PreshaderBuffer[20].w;
    float _5509 = 2.0f / _5508;
    float _5510 = _4615 * _5509;
    float _5513 = mad(_4616, _5509, (_5509 * Material_Material_PreshaderBuffer[77].w) * _3841);
    float _5514 = floor(_5510);
    float _5524 = _5505 * Material_Material_PreshaderBuffer[22].z;
    float _5530 = _5508 * Material_Material_PreshaderBuffer[20].w;
    float _5531 = 2.0f / _5530;
    float _5532 = _4653 * _5531;
    float _5535 = mad(_4654, _5531, (_5531 * Material_Material_PreshaderBuffer[78].x) * _3841);
    float _5536 = floor(_5532);
    float _5546 = _5524 * Material_Material_PreshaderBuffer[22].z;
    float _5552 = 2.0f / (_5530 * Material_Material_PreshaderBuffer[20].w);
    float _5553 = _4690 * _5552;
    float _5556 = mad(_4691, _5552, (_5552 * Material_Material_PreshaderBuffer[78].y) * _3841);
    float _5557 = floor(_5553);
    float _5567 = _5546 * Material_Material_PreshaderBuffer[22].z;
    float3 _5572 = (((float3(_537, _537, sin(mad(mad(_5407, 6.283185482025146484375f, _5411 * (-6.283185482025146484375f)), 2097152.0f, mad(_5410, 6.283185482025146484375f, floor(mad(mad(_3550, _5406, -_5411), 2097152.0f, _5410)) * (-6.283185482025146484375f)))) * _5421) + float3(_537, _537, sin(mad(mad(_5426, 6.283185482025146484375f, _5430 * (-6.283185482025146484375f)), 2097152.0f, mad(_5429, 6.283185482025146484375f, floor(mad(mad(_4433, _5425, -_5430), 2097152.0f, _5429)) * (-6.283185482025146484375f)))) * _5440)) + float3(_537, _537, sin(mad(mad(_5448, 6.283185482025146484375f, _5452 * (-6.283185482025146484375f)), 2097152.0f, mad(_5451, 6.283185482025146484375f, floor(mad(mad(_4473, _5447, -_5452), 2097152.0f, _5451)) * (-6.283185482025146484375f)))) * _5462)) + float3(_537, _537, sin(mad(mad(_5469, 6.283185482025146484375f, _5473 * (-6.283185482025146484375f)), 2097152.0f, mad(_5472, 6.283185482025146484375f, floor(mad(mad(_4510, _5468, -_5473), 2097152.0f, _5472)) * (-6.283185482025146484375f)))) * (_5462 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_537, _537, sin(mad(mad(_5491, 6.283185482025146484375f, _5495 * (-6.283185482025146484375f)), 2097152.0f, mad(_5494, 6.283185482025146484375f, floor(mad(mad(_4575, _5490, -_5495), 2097152.0f, _5494)) * (-6.283185482025146484375f)))) * _5505) + float3(_537, _537, sin(mad(mad(_5510, 6.283185482025146484375f, _5514 * (-6.283185482025146484375f)), 2097152.0f, mad(_5513, 6.283185482025146484375f, floor(mad(mad(_4615, _5509, -_5514), 2097152.0f, _5513)) * (-6.283185482025146484375f)))) * _5524)) + float3(_537, _537, sin(mad(mad(_5532, 6.283185482025146484375f, _5536 * (-6.283185482025146484375f)), 2097152.0f, mad(_5535, 6.283185482025146484375f, floor(mad(mad(_4653, _5531, -_5536), 2097152.0f, _5535)) * (-6.283185482025146484375f)))) * _5546)) + float3(_537, _537, sin(mad(mad(_5553, 6.283185482025146484375f, _5557 * (-6.283185482025146484375f)), 2097152.0f, mad(_5556, 6.283185482025146484375f, floor(mad(mad(_4690, _5552, -_5557), 2097152.0f, _5556)) * (-6.283185482025146484375f)))) * _5567));
    float _5573 = Material_Material_PreshaderBuffer[76].y * _5488;
    float _5574 = 2.0f / _5573;
    float _5575 = _4756 * _5574;
    float _5578 = mad(_4757, _5574, (_5574 * Material_Material_PreshaderBuffer[77].z) * _3841);
    float _5579 = floor(_5575);
    float _5591 = _5573 * Material_Material_PreshaderBuffer[20].w;
    float _5592 = 2.0f / _5591;
    float _5593 = _4790 * _5592;
    float _5596 = mad(_4791, _5592, (_5592 * Material_Material_PreshaderBuffer[77].w) * _3841);
    float _5597 = floor(_5593);
    float _5612 = _5591 * Material_Material_PreshaderBuffer[20].w;
    float _5613 = 2.0f / _5612;
    float _5614 = _4825 * _5613;
    float _5617 = mad(_4826, _5613, (_5613 * Material_Material_PreshaderBuffer[78].x) * _3841);
    float _5618 = floor(_5614);
    float _5633 = 2.0f / (_5612 * Material_Material_PreshaderBuffer[20].w);
    float _5634 = _4859 * _5633;
    float _5637 = mad(_4860, _5633, (_5633 * Material_Material_PreshaderBuffer[78].y) * _3841);
    float _5638 = floor(_5634);
    float3 _5652 = _5572 + (((float3(_537, _537, sin(mad(mad(_5575, 6.283185482025146484375f, _5579 * (-6.283185482025146484375f)), 2097152.0f, mad(_5578, 6.283185482025146484375f, floor(mad(mad(_4756, _5574, -_5579), 2097152.0f, _5578)) * (-6.283185482025146484375f)))) * _5505) + float3(_537, _537, sin(mad(mad(_5593, 6.283185482025146484375f, _5597 * (-6.283185482025146484375f)), 2097152.0f, mad(_5596, 6.283185482025146484375f, floor(mad(mad(_4790, _5592, -_5597), 2097152.0f, _5596)) * (-6.283185482025146484375f)))) * _5524)) + float3(_537, _537, sin(mad(mad(_5614, 6.283185482025146484375f, _5618 * (-6.283185482025146484375f)), 2097152.0f, mad(_5617, 6.283185482025146484375f, floor(mad(mad(_4825, _5613, -_5618), 2097152.0f, _5617)) * (-6.283185482025146484375f)))) * _5546)) + float3(_537, _537, sin(mad(mad(_5634, 6.283185482025146484375f, _5638 * (-6.283185482025146484375f)), 2097152.0f, mad(_5637, 6.283185482025146484375f, floor(mad(mad(_4859, _5633, -_5638), 2097152.0f, _5637)) * (-6.283185482025146484375f)))) * _5567));
    float _5665 = (abs(Material_Material_PreshaderBuffer[80].z - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[80].z >= (-1.0f)) ? Material_Material_PreshaderBuffer[80].z : Material_Material_PreshaderBuffer[80].w) : Material_Material_PreshaderBuffer[80].z;
    float _5673 = (abs(_5665 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_5665 >= 1.0f) ? Material_Material_PreshaderBuffer[81].x : Material_Material_PreshaderBuffer[80].z) : Material_Material_PreshaderBuffer[80].z;
    float3 _5683 = float3(min(max((abs(_5673) > 9.9999997473787516355514526367188e-06f) ? ((_5673 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[82].y, 0.0f);
    float2 _5689 = float2(min(max(_5683 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _5690 = _1684 * _5689;
    float2 _5691 = _5689 * _1685;
    float _5696 = _5690.x + _5690.y;
    float _5697 = _5691.x + _5691.y;
    float _5700 = Material_Material_PreshaderBuffer[83].z * _3554;
    float _5701 = 2.0f / _5700;
    float _5702 = _5696 * _5701;
    float3 _5705 = View_View_ViewTilePosition * _3574;
    float3 _5706 = (_630 + 10000.0f.xxx) * _3574;
    float3 _5707 = _5705 * _3565;
    float3 _5709 = (_3565 * _5706) * _3570;
    float3 _5716 = float3(_5709.xy, (_3582 + _5709.z.xx).x);
    float3 _5727 = 0.0f.xxx;
    float _5732 = 0.0f;
    _5727 = ((mad(_5707, _3570, -floor(mad(_5707, _3570, (_5716 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _5716) * 1.0f;
    _5732 = 0.0f;
    float _5730 = 1.0f;
    uint _5734 = 0u;
    [loop]
    for (; _5734 < 6u; )
    {
        float3 _5738 = frac(_5727);
        float _5740 = dot(floor(_5727), float3(19.0f, 47.0f, 101.0f));
        uint3 _5752 = (uint3(int3(int(_5740), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5753 = _5752.y;
        uint _5754 = _5752.z;
        uint _5757 = _5752.x + (_5753 * _5754);
        uint _5759 = _5753 + (_5754 * _5757);
        uint3 _5764 = uint3(0u, 0u, 0u);
        _5764.x = _5757 + (_5759 * (_5754 + (_5757 * _5759)));
        uint3 _5765 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _5778 = (uint3(int3(int(_5740 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5779 = _5778.y;
        uint _5780 = _5778.z;
        uint _5783 = _5778.x + (_5779 * _5780);
        uint _5785 = _5779 + (_5780 * _5783);
        uint3 _5790 = uint3(0u, 0u, 0u);
        _5790.x = _5783 + (_5785 * (_5780 + (_5783 * _5785)));
        uint3 _5803 = (uint3(int3(int(_5740 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5804 = _5803.y;
        uint _5805 = _5803.z;
        uint _5808 = _5803.x + (_5804 * _5805);
        uint _5810 = _5804 + (_5805 * _5808);
        uint3 _5815 = uint3(0u, 0u, 0u);
        _5815.x = _5808 + (_5810 * (_5805 + (_5808 * _5810)));
        uint3 _5828 = (uint3(int3(int(_5740 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5829 = _5828.y;
        uint _5830 = _5828.z;
        uint _5833 = _5828.x + (_5829 * _5830);
        uint _5835 = _5829 + (_5830 * _5833);
        uint3 _5840 = uint3(0u, 0u, 0u);
        _5840.x = _5833 + (_5835 * (_5830 + (_5833 * _5835)));
        uint3 _5853 = (uint3(int3(int(_5740 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5854 = _5853.y;
        uint _5855 = _5853.z;
        uint _5858 = _5853.x + (_5854 * _5855);
        uint _5860 = _5854 + (_5855 * _5858);
        uint3 _5865 = uint3(0u, 0u, 0u);
        _5865.x = _5858 + (_5860 * (_5855 + (_5858 * _5860)));
        uint3 _5878 = (uint3(int3(int(_5740 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5879 = _5878.y;
        uint _5880 = _5878.z;
        uint _5883 = _5878.x + (_5879 * _5880);
        uint _5885 = _5879 + (_5880 * _5883);
        uint3 _5890 = uint3(0u, 0u, 0u);
        _5890.x = _5883 + (_5885 * (_5880 + (_5883 * _5885)));
        uint3 _5903 = (uint3(int3(int(_5740 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5904 = _5903.y;
        uint _5905 = _5903.z;
        uint _5908 = _5903.x + (_5904 * _5905);
        uint _5910 = _5904 + (_5905 * _5908);
        uint3 _5915 = uint3(0u, 0u, 0u);
        _5915.x = _5908 + (_5910 * (_5905 + (_5908 * _5910)));
        uint3 _5928 = (uint3(int3(int(_5740 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _5929 = _5928.y;
        uint _5930 = _5928.z;
        uint _5933 = _5928.x + (_5929 * _5930);
        uint _5935 = _5929 + (_5930 * _5933);
        uint3 _5940 = uint3(0u, 0u, 0u);
        _5940.x = _5933 + (_5935 * (_5930 + (_5933 * _5935)));
        float4 _5951 = float4(_5738, 0.0f);
        float4 _5957 = ((_5951 * _5951) * _5951) * mad(_5951, (_5951 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _5958 = _5957.x;
        float _5961 = _5957.y;
        float _5733 = mad(lerp(lerp(lerp(dot(mad(float3((_5764 >> _5765).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5738), dot(mad(float3((_5790 >> _5765).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5738 - float3(1.0f, 0.0f, 0.0f)), _5958), lerp(dot(mad(float3((_5815 >> _5765).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5738 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_5840 >> _5765).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5738 - float3(1.0f, 1.0f, 0.0f)), _5958), _5961), lerp(lerp(dot(mad(float3((_5865 >> _5765).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5738 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_5890 >> _5765).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5738 - float3(1.0f, 0.0f, 1.0f)), _5958), lerp(dot(mad(float3((_5915 >> _5765).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5738 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_5940 >> _5765).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _5738 - 1.0f.xxx), _5958), _5961), _5957.z), _5730, _5732);
        _5727 *= 2.0f;
        _5730 *= 0.5f;
        _5732 = _5733;
        _5734++;
        continue;
    }
    float _5971 = lerp(_1149, _1702, clamp(lerp(0.0f, 1.0f, mad(_5732, 0.5f, 0.5f)), 0.0f, 1.0f));
    float _5973 = mad(_5697, _5701, (_5701 * Material_Material_PreshaderBuffer[62].w) * _5971);
    float _5974 = floor(_5702);
    float3 _5984 = _5705 * _3864;
    float3 _5986 = (_3864 * _5706) * _3869;
    float3 _5993 = float3(_5986.xy, (_3879 + _5986.z.xx).x);
    float3 _6004 = 0.0f.xxx;
    float _6009 = 0.0f;
    _6004 = ((mad(_5984, _3869, -floor(mad(_5984, _3869, (_5993 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _5993) * 1.0f;
    _6009 = 0.0f;
    float _6007 = 1.0f;
    uint _6011 = 0u;
    [loop]
    for (; _6011 < 10u; )
    {
        float3 _6015 = frac(_6004);
        float _6017 = dot(floor(_6004), float3(19.0f, 47.0f, 101.0f));
        uint3 _6029 = (uint3(int3(int(_6017), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6030 = _6029.y;
        uint _6031 = _6029.z;
        uint _6034 = _6029.x + (_6030 * _6031);
        uint _6036 = _6030 + (_6031 * _6034);
        uint3 _6041 = uint3(0u, 0u, 0u);
        _6041.x = _6034 + (_6036 * (_6031 + (_6034 * _6036)));
        uint3 _6042 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _6055 = (uint3(int3(int(_6017 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6056 = _6055.y;
        uint _6057 = _6055.z;
        uint _6060 = _6055.x + (_6056 * _6057);
        uint _6062 = _6056 + (_6057 * _6060);
        uint3 _6067 = uint3(0u, 0u, 0u);
        _6067.x = _6060 + (_6062 * (_6057 + (_6060 * _6062)));
        uint3 _6080 = (uint3(int3(int(_6017 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6081 = _6080.y;
        uint _6082 = _6080.z;
        uint _6085 = _6080.x + (_6081 * _6082);
        uint _6087 = _6081 + (_6082 * _6085);
        uint3 _6092 = uint3(0u, 0u, 0u);
        _6092.x = _6085 + (_6087 * (_6082 + (_6085 * _6087)));
        uint3 _6105 = (uint3(int3(int(_6017 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6106 = _6105.y;
        uint _6107 = _6105.z;
        uint _6110 = _6105.x + (_6106 * _6107);
        uint _6112 = _6106 + (_6107 * _6110);
        uint3 _6117 = uint3(0u, 0u, 0u);
        _6117.x = _6110 + (_6112 * (_6107 + (_6110 * _6112)));
        uint3 _6130 = (uint3(int3(int(_6017 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6131 = _6130.y;
        uint _6132 = _6130.z;
        uint _6135 = _6130.x + (_6131 * _6132);
        uint _6137 = _6131 + (_6132 * _6135);
        uint3 _6142 = uint3(0u, 0u, 0u);
        _6142.x = _6135 + (_6137 * (_6132 + (_6135 * _6137)));
        uint3 _6155 = (uint3(int3(int(_6017 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6156 = _6155.y;
        uint _6157 = _6155.z;
        uint _6160 = _6155.x + (_6156 * _6157);
        uint _6162 = _6156 + (_6157 * _6160);
        uint3 _6167 = uint3(0u, 0u, 0u);
        _6167.x = _6160 + (_6162 * (_6157 + (_6160 * _6162)));
        uint3 _6180 = (uint3(int3(int(_6017 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6181 = _6180.y;
        uint _6182 = _6180.z;
        uint _6185 = _6180.x + (_6181 * _6182);
        uint _6187 = _6181 + (_6182 * _6185);
        uint3 _6192 = uint3(0u, 0u, 0u);
        _6192.x = _6185 + (_6187 * (_6182 + (_6185 * _6187)));
        uint3 _6205 = (uint3(int3(int(_6017 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6206 = _6205.y;
        uint _6207 = _6205.z;
        uint _6210 = _6205.x + (_6206 * _6207);
        uint _6212 = _6206 + (_6207 * _6210);
        uint3 _6217 = uint3(0u, 0u, 0u);
        _6217.x = _6210 + (_6212 * (_6207 + (_6210 * _6212)));
        float4 _6228 = float4(_6015, 0.0f);
        float4 _6234 = ((_6228 * _6228) * _6228) * mad(_6228, (_6228 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _6235 = _6234.x;
        float _6238 = _6234.y;
        float _6245 = abs(lerp(lerp(lerp(dot(mad(float3((_6041 >> _6042).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6015), dot(mad(float3((_6067 >> _6042).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6015 - float3(1.0f, 0.0f, 0.0f)), _6235), lerp(dot(mad(float3((_6092 >> _6042).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6015 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_6117 >> _6042).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6015 - float3(1.0f, 1.0f, 0.0f)), _6235), _6238), lerp(lerp(dot(mad(float3((_6142 >> _6042).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6015 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_6167 >> _6042).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6015 - float3(1.0f, 0.0f, 1.0f)), _6235), lerp(dot(mad(float3((_6192 >> _6042).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6015 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_6217 >> _6042).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6015 - 1.0f.xxx), _6235), _6238), _6234.z));
        float _6010 = mad(_6245, _6007, _6009);
        _6004 *= 2.0f;
        _6007 *= 0.5f;
        _6009 = _6010;
        _6011++;
        continue;
    }
    float3 _6247 = _5705 * _4139;
    float3 _6249 = (_4139 * _5706) * _4144;
    float3 _6256 = float3(_6249.xy, (_4154 + _6249.z.xx).x);
    float3 _6267 = 0.0f.xxx;
    float _6272 = 0.0f;
    _6267 = ((mad(_6247, _4144, -floor(mad(_6247, _4144, (_6256 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _6256) * 1.0f;
    _6272 = 0.0f;
    float _6270 = 1.0f;
    uint _6274 = 0u;
    [loop]
    for (; _6274 < 10u; )
    {
        float3 _6278 = frac(_6267);
        float _6280 = dot(floor(_6267), float3(19.0f, 47.0f, 101.0f));
        uint3 _6292 = (uint3(int3(int(_6280), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6293 = _6292.y;
        uint _6294 = _6292.z;
        uint _6297 = _6292.x + (_6293 * _6294);
        uint _6299 = _6293 + (_6294 * _6297);
        uint3 _6304 = uint3(0u, 0u, 0u);
        _6304.x = _6297 + (_6299 * (_6294 + (_6297 * _6299)));
        uint3 _6305 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _6318 = (uint3(int3(int(_6280 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6319 = _6318.y;
        uint _6320 = _6318.z;
        uint _6323 = _6318.x + (_6319 * _6320);
        uint _6325 = _6319 + (_6320 * _6323);
        uint3 _6330 = uint3(0u, 0u, 0u);
        _6330.x = _6323 + (_6325 * (_6320 + (_6323 * _6325)));
        uint3 _6343 = (uint3(int3(int(_6280 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6344 = _6343.y;
        uint _6345 = _6343.z;
        uint _6348 = _6343.x + (_6344 * _6345);
        uint _6350 = _6344 + (_6345 * _6348);
        uint3 _6355 = uint3(0u, 0u, 0u);
        _6355.x = _6348 + (_6350 * (_6345 + (_6348 * _6350)));
        uint3 _6368 = (uint3(int3(int(_6280 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6369 = _6368.y;
        uint _6370 = _6368.z;
        uint _6373 = _6368.x + (_6369 * _6370);
        uint _6375 = _6369 + (_6370 * _6373);
        uint3 _6380 = uint3(0u, 0u, 0u);
        _6380.x = _6373 + (_6375 * (_6370 + (_6373 * _6375)));
        uint3 _6393 = (uint3(int3(int(_6280 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6394 = _6393.y;
        uint _6395 = _6393.z;
        uint _6398 = _6393.x + (_6394 * _6395);
        uint _6400 = _6394 + (_6395 * _6398);
        uint3 _6405 = uint3(0u, 0u, 0u);
        _6405.x = _6398 + (_6400 * (_6395 + (_6398 * _6400)));
        uint3 _6418 = (uint3(int3(int(_6280 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6419 = _6418.y;
        uint _6420 = _6418.z;
        uint _6423 = _6418.x + (_6419 * _6420);
        uint _6425 = _6419 + (_6420 * _6423);
        uint3 _6430 = uint3(0u, 0u, 0u);
        _6430.x = _6423 + (_6425 * (_6420 + (_6423 * _6425)));
        uint3 _6443 = (uint3(int3(int(_6280 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6444 = _6443.y;
        uint _6445 = _6443.z;
        uint _6448 = _6443.x + (_6444 * _6445);
        uint _6450 = _6444 + (_6445 * _6448);
        uint3 _6455 = uint3(0u, 0u, 0u);
        _6455.x = _6448 + (_6450 * (_6445 + (_6448 * _6450)));
        uint3 _6468 = (uint3(int3(int(_6280 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _6469 = _6468.y;
        uint _6470 = _6468.z;
        uint _6473 = _6468.x + (_6469 * _6470);
        uint _6475 = _6469 + (_6470 * _6473);
        uint3 _6480 = uint3(0u, 0u, 0u);
        _6480.x = _6473 + (_6475 * (_6470 + (_6473 * _6475)));
        float4 _6491 = float4(_6278, 0.0f);
        float4 _6497 = ((_6491 * _6491) * _6491) * mad(_6491, (_6491 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _6498 = _6497.x;
        float _6501 = _6497.y;
        float _6508 = abs(lerp(lerp(lerp(dot(mad(float3((_6304 >> _6305).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6278), dot(mad(float3((_6330 >> _6305).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6278 - float3(1.0f, 0.0f, 0.0f)), _6498), lerp(dot(mad(float3((_6355 >> _6305).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6278 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_6380 >> _6305).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6278 - float3(1.0f, 1.0f, 0.0f)), _6498), _6501), lerp(lerp(dot(mad(float3((_6405 >> _6305).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6278 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_6430 >> _6305).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6278 - float3(1.0f, 0.0f, 1.0f)), _6498), lerp(dot(mad(float3((_6455 >> _6305).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6278 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_6480 >> _6305).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _6278 - 1.0f.xxx), _6498), _6501), _6497.z));
        float _6273 = mad(_6508, _6270, _6272);
        _6267 *= 2.0f;
        _6270 *= 0.5f;
        _6272 = _6273;
        _6274++;
        continue;
    }
    float _6512 = lerp(_3856, _3861, lerp(0.0f, 1.0f, _6009) * mad(lerp(0.0f, 1.0f, _6272), Material_Material_PreshaderBuffer[66].w, Material_Material_PreshaderBuffer[66].z));
    float2 _6520 = float2(min(max(_5683 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6521 = _1684 * _6520;
    float2 _6522 = _6520 * _1685;
    float _6527 = _6521.x + _6521.y;
    float _6528 = _6522.x + _6522.y;
    float _6529 = _5700 * Material_Material_PreshaderBuffer[20].w;
    float _6530 = 2.0f / _6529;
    float _6531 = _6527 * _6530;
    float _6534 = mad(_6528, _6530, (_6530 * Material_Material_PreshaderBuffer[67].y) * _5971);
    float _6535 = floor(_6531);
    float _6545 = _6512 * Material_Material_PreshaderBuffer[22].z;
    float2 _6556 = float2(min(max(_5683 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6557 = _1684 * _6556;
    float2 _6558 = _6556 * _1685;
    float _6563 = _6557.x + _6557.y;
    float _6564 = _6558.x + _6558.y;
    float _6565 = _6529 * Material_Material_PreshaderBuffer[20].w;
    float _6566 = 2.0f / _6565;
    float _6567 = _6563 * _6566;
    float _6570 = mad(_6564, _6566, (_6566 * Material_Material_PreshaderBuffer[67].w) * _5971);
    float _6571 = floor(_6567);
    float _6581 = _6545 * Material_Material_PreshaderBuffer[22].z;
    float2 _6591 = float2(min(max(_5683 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6592 = _1684 * _6591;
    float2 _6593 = _6591 * _1685;
    float _6598 = _6592.x + _6592.y;
    float _6599 = _6593.x + _6593.y;
    float _6601 = 2.0f / (_6565 * Material_Material_PreshaderBuffer[20].w);
    float _6602 = _6598 * _6601;
    float _6605 = mad(_6599, _6601, (_6601 * Material_Material_PreshaderBuffer[68].y) * _5971);
    float _6606 = floor(_6602);
    float _6630 = (abs(Material_Material_PreshaderBuffer[83].w - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[83].w >= (-1.0f)) ? Material_Material_PreshaderBuffer[83].w : Material_Material_PreshaderBuffer[84].x) : Material_Material_PreshaderBuffer[83].w;
    float _6638 = (abs(_6630 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_6630 >= 1.0f) ? Material_Material_PreshaderBuffer[84].y : Material_Material_PreshaderBuffer[83].w) : Material_Material_PreshaderBuffer[83].w;
    float3 _6648 = float3(min(max((abs(_6638) > 9.9999997473787516355514526367188e-06f) ? ((_6638 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[85].z, 0.0f);
    float2 _6654 = float2(min(max(_6648 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6655 = _1684 * _6654;
    float2 _6656 = _6654 * _1685;
    float _6661 = _6655.x + _6655.y;
    float _6662 = _6656.x + _6656.y;
    float _6665 = Material_Material_PreshaderBuffer[86].w * _4579;
    float _6666 = 2.0f / _6665;
    float _6667 = _6661 * _6666;
    float _6670 = mad(_6662, _6666, (_6666 * Material_Material_PreshaderBuffer[72].y) * _5971);
    float _6671 = floor(_6667);
    float _6681 = _6512 * Material_Material_PreshaderBuffer[30].w;
    float2 _6689 = float2(min(max(_6648 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6690 = _1684 * _6689;
    float2 _6691 = _6689 * _1685;
    float _6696 = _6690.x + _6690.y;
    float _6697 = _6691.x + _6691.y;
    float _6698 = _6665 * Material_Material_PreshaderBuffer[20].w;
    float _6699 = 2.0f / _6698;
    float _6700 = _6696 * _6699;
    float _6703 = mad(_6697, _6699, (_6699 * Material_Material_PreshaderBuffer[72].z) * _5971);
    float _6704 = floor(_6700);
    float _6714 = _6681 * Material_Material_PreshaderBuffer[22].z;
    float2 _6725 = float2(min(max(_6648 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6726 = _1684 * _6725;
    float2 _6727 = _6725 * _1685;
    float _6732 = _6726.x + _6726.y;
    float _6733 = _6727.x + _6727.y;
    float _6734 = _6698 * Material_Material_PreshaderBuffer[20].w;
    float _6735 = 2.0f / _6734;
    float _6736 = _6732 * _6735;
    float _6739 = mad(_6733, _6735, (_6735 * Material_Material_PreshaderBuffer[72].w) * _5971);
    float _6740 = floor(_6736);
    float _6750 = _6714 * Material_Material_PreshaderBuffer[22].z;
    float2 _6760 = float2(min(max(_6648 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6761 = _1684 * _6760;
    float2 _6762 = _6760 * _1685;
    float _6767 = _6761.x + _6761.y;
    float _6768 = _6762.x + _6762.y;
    float _6770 = 2.0f / (_6734 * Material_Material_PreshaderBuffer[20].w);
    float _6771 = _6767 * _6770;
    float _6774 = mad(_6768, _6770, (_6770 * Material_Material_PreshaderBuffer[73].x) * _5971);
    float _6775 = floor(_6771);
    float _6785 = _6750 * Material_Material_PreshaderBuffer[22].z;
    float3 _6790 = (((float3(_537, _537, sin(mad(mad(_5702, 6.283185482025146484375f, _5974 * (-6.283185482025146484375f)), 2097152.0f, mad(_5973, 6.283185482025146484375f, floor(mad(mad(_5696, _5701, -_5974), 2097152.0f, _5973)) * (-6.283185482025146484375f)))) * _6512) + float3(_537, _537, sin(mad(mad(_6531, 6.283185482025146484375f, _6535 * (-6.283185482025146484375f)), 2097152.0f, mad(_6534, 6.283185482025146484375f, floor(mad(mad(_6527, _6530, -_6535), 2097152.0f, _6534)) * (-6.283185482025146484375f)))) * _6545)) + float3(_537, _537, sin(mad(mad(_6567, 6.283185482025146484375f, _6571 * (-6.283185482025146484375f)), 2097152.0f, mad(_6570, 6.283185482025146484375f, floor(mad(mad(_6563, _6566, -_6571), 2097152.0f, _6570)) * (-6.283185482025146484375f)))) * _6581)) + float3(_537, _537, sin(mad(mad(_6602, 6.283185482025146484375f, _6606 * (-6.283185482025146484375f)), 2097152.0f, mad(_6605, 6.283185482025146484375f, floor(mad(mad(_6598, _6601, -_6606), 2097152.0f, _6605)) * (-6.283185482025146484375f)))) * (_6581 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_537, _537, sin(mad(mad(_6667, 6.283185482025146484375f, _6671 * (-6.283185482025146484375f)), 2097152.0f, mad(_6670, 6.283185482025146484375f, floor(mad(mad(_6661, _6666, -_6671), 2097152.0f, _6670)) * (-6.283185482025146484375f)))) * _6681) + float3(_537, _537, sin(mad(mad(_6700, 6.283185482025146484375f, _6704 * (-6.283185482025146484375f)), 2097152.0f, mad(_6703, 6.283185482025146484375f, floor(mad(mad(_6696, _6699, -_6704), 2097152.0f, _6703)) * (-6.283185482025146484375f)))) * _6714)) + float3(_537, _537, sin(mad(mad(_6736, 6.283185482025146484375f, _6740 * (-6.283185482025146484375f)), 2097152.0f, mad(_6739, 6.283185482025146484375f, floor(mad(mad(_6732, _6735, -_6740), 2097152.0f, _6739)) * (-6.283185482025146484375f)))) * _6750)) + float3(_537, _537, sin(mad(mad(_6771, 6.283185482025146484375f, _6775 * (-6.283185482025146484375f)), 2097152.0f, mad(_6774, 6.283185482025146484375f, floor(mad(mad(_6767, _6770, -_6775), 2097152.0f, _6774)) * (-6.283185482025146484375f)))) * _6785));
    float _6800 = (abs(Material_Material_PreshaderBuffer[87].x - (-1.0f)) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[87].x >= (-1.0f)) ? Material_Material_PreshaderBuffer[87].x : Material_Material_PreshaderBuffer[87].y) : Material_Material_PreshaderBuffer[87].x;
    float _6808 = (abs(_6800 - 1.0f) > 9.9999997473787516355514526367188e-06f) ? ((_6800 >= 1.0f) ? Material_Material_PreshaderBuffer[87].z : Material_Material_PreshaderBuffer[87].x) : Material_Material_PreshaderBuffer[87].x;
    float3 _6818 = float3(min(max((abs(_6808) > 9.9999997473787516355514526367188e-06f) ? ((_6808 >= 0.0f) ? 1.0f : (-1.0f)) : 1.0f, -1.0f), 1.0f), Material_Material_PreshaderBuffer[88].w, 0.0f);
    float2 _6824 = float2(min(max(_6818 + Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6825 = _1684 * _6824;
    float2 _6826 = _6824 * _1685;
    float _6831 = _6825.x + _6825.y;
    float _6832 = _6826.x + _6826.y;
    float _6835 = Material_Material_PreshaderBuffer[90].x * _4579;
    float _6836 = 2.0f / _6835;
    float _6837 = _6831 * _6836;
    float _6840 = mad(_6832, _6836, (_6836 * Material_Material_PreshaderBuffer[72].y) * _5971);
    float _6841 = floor(_6837);
    float2 _6858 = float2(min(max(_6818 + Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6859 = _1684 * _6858;
    float2 _6860 = _6858 * _1685;
    float _6865 = _6859.x + _6859.y;
    float _6866 = _6860.x + _6860.y;
    float _6867 = _6835 * Material_Material_PreshaderBuffer[20].w;
    float _6868 = 2.0f / _6867;
    float _6869 = _6865 * _6868;
    float _6872 = mad(_6866, _6868, (_6868 * Material_Material_PreshaderBuffer[72].z) * _5971);
    float _6873 = floor(_6869);
    float2 _6893 = float2(min(max(_6818 - Material_Material_PreshaderBuffer[11].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6894 = _1684 * _6893;
    float2 _6895 = _6893 * _1685;
    float _6900 = _6894.x + _6894.y;
    float _6901 = _6895.x + _6895.y;
    float _6902 = _6867 * Material_Material_PreshaderBuffer[20].w;
    float _6903 = 2.0f / _6902;
    float _6904 = _6900 * _6903;
    float _6907 = mad(_6901, _6903, (_6903 * Material_Material_PreshaderBuffer[72].w) * _5971);
    float _6908 = floor(_6904);
    float2 _6927 = float2(min(max(_6818 - Material_Material_PreshaderBuffer[20].xyz, (-1.0f).xxx), 1.0f.xxx).xy);
    float2 _6928 = _1684 * _6927;
    float2 _6929 = _6927 * _1685;
    float _6934 = _6928.x + _6928.y;
    float _6935 = _6929.x + _6929.y;
    float _6937 = 2.0f / (_6902 * Material_Material_PreshaderBuffer[20].w);
    float _6938 = _6934 * _6937;
    float _6941 = mad(_6935, _6937, (_6937 * Material_Material_PreshaderBuffer[73].x) * _5971);
    float _6942 = floor(_6938);
    float3 _6956 = _6790 + (((float3(_537, _537, sin(mad(mad(_6837, 6.283185482025146484375f, _6841 * (-6.283185482025146484375f)), 2097152.0f, mad(_6840, 6.283185482025146484375f, floor(mad(mad(_6831, _6836, -_6841), 2097152.0f, _6840)) * (-6.283185482025146484375f)))) * _6681) + float3(_537, _537, sin(mad(mad(_6869, 6.283185482025146484375f, _6873 * (-6.283185482025146484375f)), 2097152.0f, mad(_6872, 6.283185482025146484375f, floor(mad(mad(_6865, _6868, -_6873), 2097152.0f, _6872)) * (-6.283185482025146484375f)))) * _6714)) + float3(_537, _537, sin(mad(mad(_6904, 6.283185482025146484375f, _6908 * (-6.283185482025146484375f)), 2097152.0f, mad(_6907, 6.283185482025146484375f, floor(mad(mad(_6900, _6903, -_6908), 2097152.0f, _6907)) * (-6.283185482025146484375f)))) * _6750)) + float3(_537, _537, sin(mad(mad(_6938, 6.283185482025146484375f, _6942 * (-6.283185482025146484375f)), 2097152.0f, mad(_6941, 6.283185482025146484375f, floor(mad(mad(_6934, _6937, -_6942), 2097152.0f, _6941)) * (-6.283185482025146484375f)))) * _6785));
    float _6957 = _3554 * 8.0f;
    float _6958 = Material_Material_PreshaderBuffer[83].z * _6957;
    float _6959 = 2.0f / _6958;
    float _6960 = _5696 * _6959;
    float _6963 = mad(_5697, _6959, (_6959 * Material_Material_PreshaderBuffer[76].z) * _5971);
    float _6964 = floor(_6960);
    float _6974 = _6512 * 8.0f;
    float _6977 = _6958 * Material_Material_PreshaderBuffer[20].w;
    float _6978 = 2.0f / _6977;
    float _6979 = _6527 * _6978;
    float _6982 = mad(_6528, _6978, (_6978 * Material_Material_PreshaderBuffer[76].w) * _5971);
    float _6983 = floor(_6979);
    float _6993 = _6974 * Material_Material_PreshaderBuffer[22].z;
    float _6999 = _6977 * Material_Material_PreshaderBuffer[20].w;
    float _7000 = 2.0f / _6999;
    float _7001 = _6563 * _7000;
    float _7004 = mad(_6564, _7000, (_7000 * Material_Material_PreshaderBuffer[77].x) * _5971);
    float _7005 = floor(_7001);
    float _7015 = _6993 * Material_Material_PreshaderBuffer[22].z;
    float _7021 = 2.0f / (_6999 * Material_Material_PreshaderBuffer[20].w);
    float _7022 = _6598 * _7021;
    float _7025 = mad(_6599, _7021, (_7021 * Material_Material_PreshaderBuffer[77].y) * _5971);
    float _7026 = floor(_7022);
    float _7041 = _6957 * Material_Material_PreshaderBuffer[28].w;
    float _7042 = Material_Material_PreshaderBuffer[86].w * _7041;
    float _7043 = 2.0f / _7042;
    float _7044 = _6661 * _7043;
    float _7047 = mad(_6662, _7043, (_7043 * Material_Material_PreshaderBuffer[77].z) * _5971);
    float _7048 = floor(_7044);
    float _7058 = _6974 * Material_Material_PreshaderBuffer[30].w;
    float _7061 = _7042 * Material_Material_PreshaderBuffer[20].w;
    float _7062 = 2.0f / _7061;
    float _7063 = _6696 * _7062;
    float _7066 = mad(_6697, _7062, (_7062 * Material_Material_PreshaderBuffer[77].w) * _5971);
    float _7067 = floor(_7063);
    float _7077 = _7058 * Material_Material_PreshaderBuffer[22].z;
    float _7083 = _7061 * Material_Material_PreshaderBuffer[20].w;
    float _7084 = 2.0f / _7083;
    float _7085 = _6732 * _7084;
    float _7088 = mad(_6733, _7084, (_7084 * Material_Material_PreshaderBuffer[78].x) * _5971);
    float _7089 = floor(_7085);
    float _7099 = _7077 * Material_Material_PreshaderBuffer[22].z;
    float _7105 = 2.0f / (_7083 * Material_Material_PreshaderBuffer[20].w);
    float _7106 = _6767 * _7105;
    float _7109 = mad(_6768, _7105, (_7105 * Material_Material_PreshaderBuffer[78].y) * _5971);
    float _7110 = floor(_7106);
    float _7120 = _7099 * Material_Material_PreshaderBuffer[22].z;
    float3 _7125 = (((float3(_537, _537, sin(mad(mad(_6960, 6.283185482025146484375f, _6964 * (-6.283185482025146484375f)), 2097152.0f, mad(_6963, 6.283185482025146484375f, floor(mad(mad(_5696, _6959, -_6964), 2097152.0f, _6963)) * (-6.283185482025146484375f)))) * _6974) + float3(_537, _537, sin(mad(mad(_6979, 6.283185482025146484375f, _6983 * (-6.283185482025146484375f)), 2097152.0f, mad(_6982, 6.283185482025146484375f, floor(mad(mad(_6527, _6978, -_6983), 2097152.0f, _6982)) * (-6.283185482025146484375f)))) * _6993)) + float3(_537, _537, sin(mad(mad(_7001, 6.283185482025146484375f, _7005 * (-6.283185482025146484375f)), 2097152.0f, mad(_7004, 6.283185482025146484375f, floor(mad(mad(_6563, _7000, -_7005), 2097152.0f, _7004)) * (-6.283185482025146484375f)))) * _7015)) + float3(_537, _537, sin(mad(mad(_7022, 6.283185482025146484375f, _7026 * (-6.283185482025146484375f)), 2097152.0f, mad(_7025, 6.283185482025146484375f, floor(mad(mad(_6598, _7021, -_7026), 2097152.0f, _7025)) * (-6.283185482025146484375f)))) * (_7015 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_537, _537, sin(mad(mad(_7044, 6.283185482025146484375f, _7048 * (-6.283185482025146484375f)), 2097152.0f, mad(_7047, 6.283185482025146484375f, floor(mad(mad(_6661, _7043, -_7048), 2097152.0f, _7047)) * (-6.283185482025146484375f)))) * _7058) + float3(_537, _537, sin(mad(mad(_7063, 6.283185482025146484375f, _7067 * (-6.283185482025146484375f)), 2097152.0f, mad(_7066, 6.283185482025146484375f, floor(mad(mad(_6696, _7062, -_7067), 2097152.0f, _7066)) * (-6.283185482025146484375f)))) * _7077)) + float3(_537, _537, sin(mad(mad(_7085, 6.283185482025146484375f, _7089 * (-6.283185482025146484375f)), 2097152.0f, mad(_7088, 6.283185482025146484375f, floor(mad(mad(_6732, _7084, -_7089), 2097152.0f, _7088)) * (-6.283185482025146484375f)))) * _7099)) + float3(_537, _537, sin(mad(mad(_7106, 6.283185482025146484375f, _7110 * (-6.283185482025146484375f)), 2097152.0f, mad(_7109, 6.283185482025146484375f, floor(mad(mad(_6767, _7105, -_7110), 2097152.0f, _7109)) * (-6.283185482025146484375f)))) * _7120));
    float _7126 = Material_Material_PreshaderBuffer[90].x * _7041;
    float _7127 = 2.0f / _7126;
    float _7128 = _6831 * _7127;
    float _7131 = mad(_6832, _7127, (_7127 * Material_Material_PreshaderBuffer[77].z) * _5971);
    float _7132 = floor(_7128);
    float _7144 = _7126 * Material_Material_PreshaderBuffer[20].w;
    float _7145 = 2.0f / _7144;
    float _7146 = _6865 * _7145;
    float _7149 = mad(_6866, _7145, (_7145 * Material_Material_PreshaderBuffer[77].w) * _5971);
    float _7150 = floor(_7146);
    float _7165 = _7144 * Material_Material_PreshaderBuffer[20].w;
    float _7166 = 2.0f / _7165;
    float _7167 = _6900 * _7166;
    float _7170 = mad(_6901, _7166, (_7166 * Material_Material_PreshaderBuffer[78].x) * _5971);
    float _7171 = floor(_7167);
    float _7186 = 2.0f / (_7165 * Material_Material_PreshaderBuffer[20].w);
    float _7187 = _6934 * _7186;
    float _7190 = mad(_6935, _7186, (_7186 * Material_Material_PreshaderBuffer[78].y) * _5971);
    float _7191 = floor(_7187);
    float3 _7205 = _7125 + (((float3(_537, _537, sin(mad(mad(_7128, 6.283185482025146484375f, _7132 * (-6.283185482025146484375f)), 2097152.0f, mad(_7131, 6.283185482025146484375f, floor(mad(mad(_6831, _7127, -_7132), 2097152.0f, _7131)) * (-6.283185482025146484375f)))) * _7058) + float3(_537, _537, sin(mad(mad(_7146, 6.283185482025146484375f, _7150 * (-6.283185482025146484375f)), 2097152.0f, mad(_7149, 6.283185482025146484375f, floor(mad(mad(_6865, _7145, -_7150), 2097152.0f, _7149)) * (-6.283185482025146484375f)))) * _7077)) + float3(_537, _537, sin(mad(mad(_7167, 6.283185482025146484375f, _7171 * (-6.283185482025146484375f)), 2097152.0f, mad(_7170, 6.283185482025146484375f, floor(mad(mad(_6900, _7166, -_7171), 2097152.0f, _7170)) * (-6.283185482025146484375f)))) * _7099)) + float3(_537, _537, sin(mad(mad(_7187, 6.283185482025146484375f, _7191 * (-6.283185482025146484375f)), 2097152.0f, mad(_7190, 6.283185482025146484375f, floor(mad(mad(_6934, _7186, -_7191), 2097152.0f, _7190)) * (-6.283185482025146484375f)))) * _7120));
    float _7206 = Material_Material_PreshaderBuffer[83].z * _5147;
    float _7207 = 2.0f / _7206;
    float _7208 = _5696 * _7207;
    float _7211 = mad(_5697, _7207, (_7207 * Material_Material_PreshaderBuffer[78].z) * _5971);
    float _7212 = floor(_7208);
    float _7222 = _6512 * 4.0f;
    float _7225 = _7206 * Material_Material_PreshaderBuffer[20].w;
    float _7226 = 2.0f / _7225;
    float _7227 = _6527 * _7226;
    float _7230 = mad(_6528, _7226, (_7226 * Material_Material_PreshaderBuffer[78].w) * _5971);
    float _7231 = floor(_7227);
    float _7241 = _7222 * Material_Material_PreshaderBuffer[22].z;
    float _7247 = _7225 * Material_Material_PreshaderBuffer[20].w;
    float _7248 = 2.0f / _7247;
    float _7249 = _6563 * _7248;
    float _7252 = mad(_6564, _7248, (_7248 * Material_Material_PreshaderBuffer[79].x) * _5971);
    float _7253 = floor(_7249);
    float _7263 = _7241 * Material_Material_PreshaderBuffer[22].z;
    float _7269 = 2.0f / (_7247 * Material_Material_PreshaderBuffer[20].w);
    float _7270 = _6598 * _7269;
    float _7273 = mad(_6599, _7269, (_7269 * Material_Material_PreshaderBuffer[79].y) * _5971);
    float _7274 = floor(_7270);
    float _7289 = Material_Material_PreshaderBuffer[86].w * _5235;
    float _7290 = 2.0f / _7289;
    float _7291 = _6661 * _7290;
    float _7294 = mad(_6662, _7290, (_7290 * Material_Material_PreshaderBuffer[79].z) * _5971);
    float _7295 = floor(_7291);
    float _7305 = _7222 * Material_Material_PreshaderBuffer[30].w;
    float _7308 = _7289 * Material_Material_PreshaderBuffer[20].w;
    float _7309 = 2.0f / _7308;
    float _7310 = _6696 * _7309;
    float _7313 = mad(_6697, _7309, (_7309 * Material_Material_PreshaderBuffer[79].w) * _5971);
    float _7314 = floor(_7310);
    float _7324 = _7305 * Material_Material_PreshaderBuffer[22].z;
    float _7330 = _7308 * Material_Material_PreshaderBuffer[20].w;
    float _7331 = 2.0f / _7330;
    float _7332 = _6732 * _7331;
    float _7335 = mad(_6733, _7331, (_7331 * Material_Material_PreshaderBuffer[80].x) * _5971);
    float _7336 = floor(_7332);
    float _7346 = _7324 * Material_Material_PreshaderBuffer[22].z;
    float _7352 = 2.0f / (_7330 * Material_Material_PreshaderBuffer[20].w);
    float _7353 = _6767 * _7352;
    float _7356 = mad(_6768, _7352, (_7352 * Material_Material_PreshaderBuffer[80].y) * _5971);
    float _7357 = floor(_7353);
    float _7367 = _7346 * Material_Material_PreshaderBuffer[22].z;
    float3 _7372 = (((float3(_537, _537, sin(mad(mad(_7208, 6.283185482025146484375f, _7212 * (-6.283185482025146484375f)), 2097152.0f, mad(_7211, 6.283185482025146484375f, floor(mad(mad(_5696, _7207, -_7212), 2097152.0f, _7211)) * (-6.283185482025146484375f)))) * _7222) + float3(_537, _537, sin(mad(mad(_7227, 6.283185482025146484375f, _7231 * (-6.283185482025146484375f)), 2097152.0f, mad(_7230, 6.283185482025146484375f, floor(mad(mad(_6527, _7226, -_7231), 2097152.0f, _7230)) * (-6.283185482025146484375f)))) * _7241)) + float3(_537, _537, sin(mad(mad(_7249, 6.283185482025146484375f, _7253 * (-6.283185482025146484375f)), 2097152.0f, mad(_7252, 6.283185482025146484375f, floor(mad(mad(_6563, _7248, -_7253), 2097152.0f, _7252)) * (-6.283185482025146484375f)))) * _7263)) + float3(_537, _537, sin(mad(mad(_7270, 6.283185482025146484375f, _7274 * (-6.283185482025146484375f)), 2097152.0f, mad(_7273, 6.283185482025146484375f, floor(mad(mad(_6598, _7269, -_7274), 2097152.0f, _7273)) * (-6.283185482025146484375f)))) * (_7263 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_537, _537, sin(mad(mad(_7291, 6.283185482025146484375f, _7295 * (-6.283185482025146484375f)), 2097152.0f, mad(_7294, 6.283185482025146484375f, floor(mad(mad(_6661, _7290, -_7295), 2097152.0f, _7294)) * (-6.283185482025146484375f)))) * _7305) + float3(_537, _537, sin(mad(mad(_7310, 6.283185482025146484375f, _7314 * (-6.283185482025146484375f)), 2097152.0f, mad(_7313, 6.283185482025146484375f, floor(mad(mad(_6696, _7309, -_7314), 2097152.0f, _7313)) * (-6.283185482025146484375f)))) * _7324)) + float3(_537, _537, sin(mad(mad(_7332, 6.283185482025146484375f, _7336 * (-6.283185482025146484375f)), 2097152.0f, mad(_7335, 6.283185482025146484375f, floor(mad(mad(_6732, _7331, -_7336), 2097152.0f, _7335)) * (-6.283185482025146484375f)))) * _7346)) + float3(_537, _537, sin(mad(mad(_7353, 6.283185482025146484375f, _7357 * (-6.283185482025146484375f)), 2097152.0f, mad(_7356, 6.283185482025146484375f, floor(mad(mad(_6767, _7352, -_7357), 2097152.0f, _7356)) * (-6.283185482025146484375f)))) * _7367));
    float _7373 = Material_Material_PreshaderBuffer[90].x * _5235;
    float _7374 = 2.0f / _7373;
    float _7375 = _6831 * _7374;
    float _7378 = mad(_6832, _7374, (_7374 * Material_Material_PreshaderBuffer[79].z) * _5971);
    float _7379 = floor(_7375);
    float _7391 = _7373 * Material_Material_PreshaderBuffer[20].w;
    float _7392 = 2.0f / _7391;
    float _7393 = _6865 * _7392;
    float _7396 = mad(_6866, _7392, (_7392 * Material_Material_PreshaderBuffer[79].w) * _5971);
    float _7397 = floor(_7393);
    float _7412 = _7391 * Material_Material_PreshaderBuffer[20].w;
    float _7413 = 2.0f / _7412;
    float _7414 = _6900 * _7413;
    float _7417 = mad(_6901, _7413, (_7413 * Material_Material_PreshaderBuffer[80].x) * _5971);
    float _7418 = floor(_7414);
    float _7433 = 2.0f / (_7412 * Material_Material_PreshaderBuffer[20].w);
    float _7434 = _6934 * _7433;
    float _7437 = mad(_6935, _7433, (_7433 * Material_Material_PreshaderBuffer[80].y) * _5971);
    float _7438 = floor(_7434);
    float3 _7452 = _7372 + (((float3(_537, _537, sin(mad(mad(_7375, 6.283185482025146484375f, _7379 * (-6.283185482025146484375f)), 2097152.0f, mad(_7378, 6.283185482025146484375f, floor(mad(mad(_6831, _7374, -_7379), 2097152.0f, _7378)) * (-6.283185482025146484375f)))) * _7305) + float3(_537, _537, sin(mad(mad(_7393, 6.283185482025146484375f, _7397 * (-6.283185482025146484375f)), 2097152.0f, mad(_7396, 6.283185482025146484375f, floor(mad(mad(_6865, _7392, -_7397), 2097152.0f, _7396)) * (-6.283185482025146484375f)))) * _7324)) + float3(_537, _537, sin(mad(mad(_7414, 6.283185482025146484375f, _7418 * (-6.283185482025146484375f)), 2097152.0f, mad(_7417, 6.283185482025146484375f, floor(mad(mad(_6900, _7413, -_7418), 2097152.0f, _7417)) * (-6.283185482025146484375f)))) * _7346)) + float3(_537, _537, sin(mad(mad(_7434, 6.283185482025146484375f, _7438 * (-6.283185482025146484375f)), 2097152.0f, mad(_7437, 6.283185482025146484375f, floor(mad(mad(_6934, _7433, -_7438), 2097152.0f, _7437)) * (-6.283185482025146484375f)))) * _7367));
    float _7453 = Material_Material_PreshaderBuffer[83].z * _5404;
    float _7454 = 2.0f / _7453;
    float _7455 = _5696 * _7454;
    float _7458 = mad(_5697, _7454, (_7454 * Material_Material_PreshaderBuffer[76].z) * _5971);
    float _7459 = floor(_7455);
    float _7469 = _6512 * 0.5f;
    float _7472 = _7453 * Material_Material_PreshaderBuffer[20].w;
    float _7473 = 2.0f / _7472;
    float _7474 = _6527 * _7473;
    float _7477 = mad(_6528, _7473, (_7473 * Material_Material_PreshaderBuffer[76].w) * _5971);
    float _7478 = floor(_7474);
    float _7488 = _7469 * Material_Material_PreshaderBuffer[22].z;
    float _7494 = _7472 * Material_Material_PreshaderBuffer[20].w;
    float _7495 = 2.0f / _7494;
    float _7496 = _6563 * _7495;
    float _7499 = mad(_6564, _7495, (_7495 * Material_Material_PreshaderBuffer[77].x) * _5971);
    float _7500 = floor(_7496);
    float _7510 = _7488 * Material_Material_PreshaderBuffer[22].z;
    float _7516 = 2.0f / (_7494 * Material_Material_PreshaderBuffer[20].w);
    float _7517 = _6598 * _7516;
    float _7520 = mad(_6599, _7516, (_7516 * Material_Material_PreshaderBuffer[77].y) * _5971);
    float _7521 = floor(_7517);
    float _7536 = Material_Material_PreshaderBuffer[86].w * _5488;
    float _7537 = 2.0f / _7536;
    float _7538 = _6661 * _7537;
    float _7541 = mad(_6662, _7537, (_7537 * Material_Material_PreshaderBuffer[77].z) * _5971);
    float _7542 = floor(_7538);
    float _7552 = _7469 * Material_Material_PreshaderBuffer[30].w;
    float _7555 = _7536 * Material_Material_PreshaderBuffer[20].w;
    float _7556 = 2.0f / _7555;
    float _7557 = _6696 * _7556;
    float _7560 = mad(_6697, _7556, (_7556 * Material_Material_PreshaderBuffer[77].w) * _5971);
    float _7561 = floor(_7557);
    float _7571 = _7552 * Material_Material_PreshaderBuffer[22].z;
    float _7577 = _7555 * Material_Material_PreshaderBuffer[20].w;
    float _7578 = 2.0f / _7577;
    float _7579 = _6732 * _7578;
    float _7582 = mad(_6733, _7578, (_7578 * Material_Material_PreshaderBuffer[78].x) * _5971);
    float _7583 = floor(_7579);
    float _7593 = _7571 * Material_Material_PreshaderBuffer[22].z;
    float _7599 = 2.0f / (_7577 * Material_Material_PreshaderBuffer[20].w);
    float _7600 = _6767 * _7599;
    float _7603 = mad(_6768, _7599, (_7599 * Material_Material_PreshaderBuffer[78].y) * _5971);
    float _7604 = floor(_7600);
    float _7614 = _7593 * Material_Material_PreshaderBuffer[22].z;
    float3 _7619 = (((float3(_537, _537, sin(mad(mad(_7455, 6.283185482025146484375f, _7459 * (-6.283185482025146484375f)), 2097152.0f, mad(_7458, 6.283185482025146484375f, floor(mad(mad(_5696, _7454, -_7459), 2097152.0f, _7458)) * (-6.283185482025146484375f)))) * _7469) + float3(_537, _537, sin(mad(mad(_7474, 6.283185482025146484375f, _7478 * (-6.283185482025146484375f)), 2097152.0f, mad(_7477, 6.283185482025146484375f, floor(mad(mad(_6527, _7473, -_7478), 2097152.0f, _7477)) * (-6.283185482025146484375f)))) * _7488)) + float3(_537, _537, sin(mad(mad(_7496, 6.283185482025146484375f, _7500 * (-6.283185482025146484375f)), 2097152.0f, mad(_7499, 6.283185482025146484375f, floor(mad(mad(_6563, _7495, -_7500), 2097152.0f, _7499)) * (-6.283185482025146484375f)))) * _7510)) + float3(_537, _537, sin(mad(mad(_7517, 6.283185482025146484375f, _7521 * (-6.283185482025146484375f)), 2097152.0f, mad(_7520, 6.283185482025146484375f, floor(mad(mad(_6598, _7516, -_7521), 2097152.0f, _7520)) * (-6.283185482025146484375f)))) * (_7510 * Material_Material_PreshaderBuffer[22].z))) + (((float3(_537, _537, sin(mad(mad(_7538, 6.283185482025146484375f, _7542 * (-6.283185482025146484375f)), 2097152.0f, mad(_7541, 6.283185482025146484375f, floor(mad(mad(_6661, _7537, -_7542), 2097152.0f, _7541)) * (-6.283185482025146484375f)))) * _7552) + float3(_537, _537, sin(mad(mad(_7557, 6.283185482025146484375f, _7561 * (-6.283185482025146484375f)), 2097152.0f, mad(_7560, 6.283185482025146484375f, floor(mad(mad(_6696, _7556, -_7561), 2097152.0f, _7560)) * (-6.283185482025146484375f)))) * _7571)) + float3(_537, _537, sin(mad(mad(_7579, 6.283185482025146484375f, _7583 * (-6.283185482025146484375f)), 2097152.0f, mad(_7582, 6.283185482025146484375f, floor(mad(mad(_6732, _7578, -_7583), 2097152.0f, _7582)) * (-6.283185482025146484375f)))) * _7593)) + float3(_537, _537, sin(mad(mad(_7600, 6.283185482025146484375f, _7604 * (-6.283185482025146484375f)), 2097152.0f, mad(_7603, 6.283185482025146484375f, floor(mad(mad(_6767, _7599, -_7604), 2097152.0f, _7603)) * (-6.283185482025146484375f)))) * _7614));
    float _7620 = Material_Material_PreshaderBuffer[90].x * _5488;
    float _7621 = 2.0f / _7620;
    float _7622 = _6831 * _7621;
    float _7625 = mad(_6832, _7621, (_7621 * Material_Material_PreshaderBuffer[77].z) * _5971);
    float _7626 = floor(_7622);
    float _7638 = _7620 * Material_Material_PreshaderBuffer[20].w;
    float _7639 = 2.0f / _7638;
    float _7640 = _6865 * _7639;
    float _7643 = mad(_6866, _7639, (_7639 * Material_Material_PreshaderBuffer[77].w) * _5971);
    float _7644 = floor(_7640);
    float _7659 = _7638 * Material_Material_PreshaderBuffer[20].w;
    float _7660 = 2.0f / _7659;
    float _7661 = _6900 * _7660;
    float _7664 = mad(_6901, _7660, (_7660 * Material_Material_PreshaderBuffer[78].x) * _5971);
    float _7665 = floor(_7661);
    float _7680 = 2.0f / (_7659 * Material_Material_PreshaderBuffer[20].w);
    float _7681 = _6934 * _7680;
    float _7684 = mad(_6935, _7680, (_7680 * Material_Material_PreshaderBuffer[78].y) * _5971);
    float _7685 = floor(_7681);
    float3 _7699 = _7619 + (((float3(_537, _537, sin(mad(mad(_7622, 6.283185482025146484375f, _7626 * (-6.283185482025146484375f)), 2097152.0f, mad(_7625, 6.283185482025146484375f, floor(mad(mad(_6831, _7621, -_7626), 2097152.0f, _7625)) * (-6.283185482025146484375f)))) * _7552) + float3(_537, _537, sin(mad(mad(_7640, 6.283185482025146484375f, _7644 * (-6.283185482025146484375f)), 2097152.0f, mad(_7643, 6.283185482025146484375f, floor(mad(mad(_6865, _7639, -_7644), 2097152.0f, _7643)) * (-6.283185482025146484375f)))) * _7571)) + float3(_537, _537, sin(mad(mad(_7661, 6.283185482025146484375f, _7665 * (-6.283185482025146484375f)), 2097152.0f, mad(_7664, 6.283185482025146484375f, floor(mad(mad(_6900, _7660, -_7665), 2097152.0f, _7664)) * (-6.283185482025146484375f)))) * _7593)) + float3(_537, _537, sin(mad(mad(_7681, 6.283185482025146484375f, _7685 * (-6.283185482025146484375f)), 2097152.0f, mad(_7684, 6.283185482025146484375f, floor(mad(mad(_6934, _7680, -_7685), 2097152.0f, _7684)) * (-6.283185482025146484375f)))) * _7614));
    float3 _7704 = mad(_3506, Material_Material_PreshaderBuffer[59].x.xxx, (_4881 + (_5146 + (_5403 + _5652))) + (_6956 + (_7205 + (_7452 + _7699))));
    float _7705 = _7704.z;
    float _7723 = clamp(mad(clamp(mad(_7705, MaterialCollection0_MaterialCollection0_Vectors[0].y, -Material_Material_PreshaderBuffer[90].y) * Material_Material_PreshaderBuffer[91].x, 0.0f, 1.0f), Material_Material_PreshaderBuffer[91].y, -Material_Material_PreshaderBuffer[91].z) * Material_Material_PreshaderBuffer[92].y, 0.0f, 1.0f);
    float3 _7725 = mad(_7705.xxx, in_var_TEXCOORD11_centroid.xyz, _629);
    float3 _7726 = ddx(View_View_ViewTilePosition);
    float3 _7728 = ddx(_7725);
    float3 _7730 = ddy(View_View_ViewTilePosition);
    float3 _7732 = ddy(_7725);
    float3 _7736 = ddx(View_View_ViewTilePosition);
    float3 _7738 = ddx(_629);
    float3 _7740 = ddy(View_View_ViewTilePosition);
    float3 _7742 = ddy(_629);
    float3 _7745 = normalize(cross((_7736 * 2097152.0f) + _7738, (_7740 * 2097152.0f) + _7742));
    float3 _7751 = lerp((normalize(cross((_7726 * 2097152.0f) + _7728, (_7730 * 2097152.0f) + _7732)) - _7745) + in_var_TEXCOORD11_centroid.xyz, float3(0.0f, 0.0f, 1.0f), Material_Material_PreshaderBuffer[92].w.xxx);
    float3 _7758 = Material_Material_PreshaderBuffer[93].y.xxx;
    float3 _7771 = float3((View_View_ViewTilePosition * _7758).xy, 0.0f);
    float3 _7772 = float3((mad(_7751, Material_Material_PreshaderBuffer[93].x.xxx, _630) * _7758).xy, ((_1149 * Material_Material_PreshaderBuffer[93].w).xx + float2(1.0f, 0.0f)).x);
    float3 _7782 = 0.0f.xxx;
    float _7787 = 0.0f;
    _7782 = (((_7771 - floor(_7771 + ((_7772 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) + _7772) * 1.0f;
    _7787 = 0.0f;
    float _7785 = 1.0f;
    uint _7789 = 0u;
    [loop]
    for (; _7789 < 10u; )
    {
        float3 _7793 = frac(_7782);
        float _7795 = dot(floor(_7782), float3(19.0f, 47.0f, 101.0f));
        uint3 _7807 = (uint3(int3(int(_7795), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7808 = _7807.y;
        uint _7809 = _7807.z;
        uint _7812 = _7807.x + (_7808 * _7809);
        uint _7814 = _7808 + (_7809 * _7812);
        uint3 _7819 = uint3(0u, 0u, 0u);
        _7819.x = _7812 + (_7814 * (_7809 + (_7812 * _7814)));
        uint3 _7820 = uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u);
        uint3 _7833 = (uint3(int3(int(_7795 + 19.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7834 = _7833.y;
        uint _7835 = _7833.z;
        uint _7838 = _7833.x + (_7834 * _7835);
        uint _7840 = _7834 + (_7835 * _7838);
        uint3 _7845 = uint3(0u, 0u, 0u);
        _7845.x = _7838 + (_7840 * (_7835 + (_7838 * _7840)));
        uint3 _7858 = (uint3(int3(int(_7795 + 47.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7859 = _7858.y;
        uint _7860 = _7858.z;
        uint _7863 = _7858.x + (_7859 * _7860);
        uint _7865 = _7859 + (_7860 * _7863);
        uint3 _7870 = uint3(0u, 0u, 0u);
        _7870.x = _7863 + (_7865 * (_7860 + (_7863 * _7865)));
        uint3 _7883 = (uint3(int3(int(_7795 + 66.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7884 = _7883.y;
        uint _7885 = _7883.z;
        uint _7888 = _7883.x + (_7884 * _7885);
        uint _7890 = _7884 + (_7885 * _7888);
        uint3 _7895 = uint3(0u, 0u, 0u);
        _7895.x = _7888 + (_7890 * (_7885 + (_7888 * _7890)));
        uint3 _7908 = (uint3(int3(int(_7795 + 101.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7909 = _7908.y;
        uint _7910 = _7908.z;
        uint _7913 = _7908.x + (_7909 * _7910);
        uint _7915 = _7909 + (_7910 * _7913);
        uint3 _7920 = uint3(0u, 0u, 0u);
        _7920.x = _7913 + (_7915 * (_7910 + (_7913 * _7915)));
        uint3 _7933 = (uint3(int3(int(_7795 + 120.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7934 = _7933.y;
        uint _7935 = _7933.z;
        uint _7938 = _7933.x + (_7934 * _7935);
        uint _7940 = _7934 + (_7935 * _7938);
        uint3 _7945 = uint3(0u, 0u, 0u);
        _7945.x = _7938 + (_7940 * (_7935 + (_7938 * _7940)));
        uint3 _7958 = (uint3(int3(int(_7795 + 148.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7959 = _7958.y;
        uint _7960 = _7958.z;
        uint _7963 = _7958.x + (_7959 * _7960);
        uint _7965 = _7959 + (_7960 * _7963);
        uint3 _7970 = uint3(0u, 0u, 0u);
        _7970.x = _7963 + (_7965 * (_7960 + (_7963 * _7965)));
        uint3 _7983 = (uint3(int3(int(_7795 + 167.0f), 0, 0)) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
        uint _7984 = _7983.y;
        uint _7985 = _7983.z;
        uint _7988 = _7983.x + (_7984 * _7985);
        uint _7990 = _7984 + (_7985 * _7988);
        uint3 _7995 = uint3(0u, 0u, 0u);
        _7995.x = _7988 + (_7990 * (_7985 + (_7988 * _7990)));
        float4 _8006 = float4(_7793, 0.0f);
        float4 _8012 = ((_8006 * _8006) * _8006) * mad(_8006, (_8006 * 6.0f) - 15.0f.xxxx, 10.0f.xxxx);
        float _8013 = _8012.x;
        float _8016 = _8012.y;
        float _8023 = abs(lerp(lerp(lerp(dot(mad(float3((_7819 >> _7820).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7793), dot(mad(float3((_7845 >> _7820).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7793 - float3(1.0f, 0.0f, 0.0f)), _8013), lerp(dot(mad(float3((_7870 >> _7820).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7793 - float3(0.0f, 1.0f, 0.0f)), dot(mad(float3((_7895 >> _7820).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7793 - float3(1.0f, 1.0f, 0.0f)), _8013), _8016), lerp(lerp(dot(mad(float3((_7920 >> _7820).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7793 - float3(0.0f, 0.0f, 1.0f)), dot(mad(float3((_7945 >> _7820).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7793 - float3(1.0f, 0.0f, 1.0f)), _8013), lerp(dot(mad(float3((_7970 >> _7820).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7793 - float3(0.0f, 1.0f, 1.0f)), dot(mad(float3((_7995 >> _7820).x.xxx & uint3(32768u, 16384u, 8192u)), float3(6.103515625e-05f, 0.0001220703125f, 0.000244140625f), (-1.0f).xxx), _7793 - 1.0f.xxx), _8013), _8016), _8012.z));
        float _7788 = mad(_8023, _7785, _7787);
        _7782 *= 2.0f;
        _7785 *= 0.5f;
        _7787 = _7788;
        _7789++;
        continue;
    }
    float _8027 = -_7723;
    float _8033 = clamp(mad(mad(_8027, Material_Material_PreshaderBuffer[94].x, lerp(0.0f, 1.0f, _7787)) / mad(_8027, Material_Material_PreshaderBuffer[94].x, mad(_7723, Material_Material_PreshaderBuffer[94].x, 1.0f)), -1.0f, 1.0f), 0.0f, 1.0f);
    float _8042 = clamp(lerp(Material_Material_PreshaderBuffer[94].z, Material_Material_PreshaderBuffer[94].y, (_8033 <= 0.0f) ? 0.0f : pow(_8033, 2.0f)), 0.0f, 1.0f);
    float _8043 = _7723 * _8042;
    float3 _8046 = Material_Material_PreshaderBuffer[94].w.xxx;
    float3 _8047 = View_View_ViewTilePosition * _8046;
    float3 _8048 = _630 * _8046;
    float3 _8059 = 0.0f.xxx;
    float3 _8062 = 0.0f.xxx;
    float _8066 = 0.0f;
    _8059 = _529;
    _8062 = mad(_630, _8046, mad(View_View_ViewTilePosition, _8046, -floor(mad(View_View_ViewTilePosition, _8046, (_8048 * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _8066 = 0.0f;
    float3 _8063 = 0.0f.xxx;
    float _8065 = 0.0f;
    float _8067 = 0.0f;
    float3 _8060 = 0.0f.xxx;
    float _8064 = 1.0f;
    uint _8068 = 0u;
    [loop]
    for (; _8068 < 1u; _8059 = _8060, _8062 = _8063, _8064 = _8065, _8066 = _8067, _8068++)
    {
        float3 _8073 = frac(_8062);
        float3 _8074 = floor(_8062);
        float3 _8075 = _8059;
        _8075.x = 0.0f;
        float4 _8077 = 0.0f.xxxx;
        _8077 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _8060 = _8075;
        float3 _8080 = 0.0f.xxx;
        float4 _8078 = 0.0f.xxxx;
        float3 _8087 = 0.0f.xxx;
        for (; _8060.x <= 1.0f; _8080 = _8087, _8080.x = _8087.x + 1.0f, _8077 = _8078, _8060 = _8080)
        {
            float3 _8085 = _8060;
            _8085.y = 0.0f;
            _8087 = _8085;
            _8078 = _8077;
            float3 _8088 = 0.0f.xxx;
            float4 _8090 = 0.0f.xxxx;
            float3 _8099 = 0.0f.xxx;
            for (; _8087.y <= 1.0f; _8088 = _8099, _8088.y = _8099.y + 1.0f, _8087 = _8088, _8078 = _8090)
            {
                float3 _8095 = _8087;
                _8095.z = 0.0f;
                _8090 = _8078;
                _8099 = _8095;
                for (; _8099.z <= 1.0f; )
                {
                    float3 _8104 = _8074 + _8099;
                    uint3 _8109 = (uint3(int3(float3(_8104.x, _8104.y, _8104.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _8110 = _8109.y;
                    uint _8111 = _8109.z;
                    uint _8114 = _8109.x + (_8110 * _8111);
                    uint _8116 = _8110 + (_8111 * _8114);
                    uint _8118 = _8111 + (_8114 * _8116);
                    uint _8120 = _8114 + (_8116 * _8118);
                    uint3 _8121 = _8109;
                    _8121.x = _8120;
                    uint _8123 = _8116 + (_8118 * _8120);
                    _8121.y = _8123;
                    _8121.z = _8118 + (_8120 * _8123);
                    float3 _8135 = _8073 - (_8099 + (normalize(mad(float3(_8121 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _8100 = _8099;
                    _8100.z = _8099.z + 1.0f;
                    _8090 = float4(0.0f, 0.0f, 0.0f, min(_8090.w, dot(_8135, _8135)));
                    _8099 = _8100;
                    continue;
                }
            }
        }
        _8067 = mad(abs(mad(sqrt(_8077.w), 2.0f, -1.0f)), _8064, _8066);
        _8063 = _8062 * 2.0f;
        _8065 = _8064 * 0.5f;
    }
    float3 _8161 = 0.0f.xxx;
    float3 _8164 = 0.0f.xxx;
    float _8168 = 0.0f;
    _8161 = _529;
    _8164 = mad(_8048, 1.2000000476837158203125f.xxx, mad(_8047, 1.2000000476837158203125f.xxx, -floor(mad(_8047, 1.2000000476837158203125f.xxx, ((_8048 * 1.2000000476837158203125f.xxx) * 4.76837158203125e-07f) + 0.5f.xxx))) * 2097152.0f) * 1.0f;
    _8168 = 0.0f;
    float3 _8165 = 0.0f.xxx;
    float _8167 = 0.0f;
    float _8169 = 0.0f;
    float3 _8162 = 0.0f.xxx;
    float _8166 = 1.0f;
    uint _8170 = 0u;
    [loop]
    for (; _8170 < 1u; _8161 = _8162, _8164 = _8165, _8166 = _8167, _8168 = _8169, _8170++)
    {
        float3 _8175 = frac(_8164);
        float3 _8176 = floor(_8164);
        float3 _8177 = _8161;
        _8177.x = 0.0f;
        float4 _8179 = 0.0f.xxxx;
        _8179 = float4(0.0f, 0.0f, 0.0f, 100.0f);
        _8162 = _8177;
        float3 _8182 = 0.0f.xxx;
        float4 _8180 = 0.0f.xxxx;
        float3 _8189 = 0.0f.xxx;
        for (; _8162.x <= 1.0f; _8182 = _8189, _8182.x = _8189.x + 1.0f, _8179 = _8180, _8162 = _8182)
        {
            float3 _8187 = _8162;
            _8187.y = 0.0f;
            _8189 = _8187;
            _8180 = _8179;
            float3 _8190 = 0.0f.xxx;
            float4 _8192 = 0.0f.xxxx;
            float3 _8201 = 0.0f.xxx;
            for (; _8189.y <= 1.0f; _8190 = _8201, _8190.y = _8201.y + 1.0f, _8189 = _8190, _8180 = _8192)
            {
                float3 _8197 = _8189;
                _8197.z = 0.0f;
                _8192 = _8180;
                _8201 = _8197;
                for (; _8201.z <= 1.0f; )
                {
                    float3 _8206 = _8176 + _8201;
                    uint3 _8211 = (uint3(int3(float3(_8206.x, _8206.y, _8206.z))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
                    uint _8212 = _8211.y;
                    uint _8213 = _8211.z;
                    uint _8216 = _8211.x + (_8212 * _8213);
                    uint _8218 = _8212 + (_8213 * _8216);
                    uint _8220 = _8213 + (_8216 * _8218);
                    uint _8222 = _8216 + (_8218 * _8220);
                    uint3 _8223 = _8211;
                    _8223.x = _8222;
                    uint _8225 = _8218 + (_8220 * _8222);
                    _8223.y = _8225;
                    _8223.z = _8220 + (_8222 * _8225);
                    float3 _8237 = _8175 - (_8201 + (normalize(mad(float3(_8223 >> (uint3(16u, 16u, 16u) & uint3(31u, 31u, 31u))), 1.525902189314365386962890625e-05f.xxx, (-0.5f).xxx)) * 0.2587999999523162841796875f));
                    float3 _8202 = _8201;
                    _8202.z = _8201.z + 1.0f;
                    _8192 = float4(0.0f, 0.0f, 0.0f, min(_8192.w, dot(_8237, _8237)));
                    _8201 = _8202;
                    continue;
                }
            }
        }
        _8169 = mad(abs(mad(sqrt(_8179.w), 2.0f, -1.0f)), _8166, _8168);
        _8165 = _8164 * 2.0f;
        _8167 = _8166 * 0.5f;
    }
    float _8252 = clamp(lerp(-1.0f, 1.0f, _8066), 0.0f, 1.0f) + clamp(lerp(-1.0f, 1.0f, _8168), 0.0f, 1.0f);
    float _8257 = clamp(_762 * mad(mad(_875, _1431, -_1641), Material_Material_PreshaderBuffer[7].y, mad(_7723, _8042, -_8252)), 0.0f, 1.0f);
    float3 _8265 = mad(_3506.z.xxx, in_var_TEXCOORD11_centroid.xyz, _629);
    float _8282 = max(abs(1.0f - max(0.0f, dot(_7751, _646))), 9.9999997473787516355514526367188e-05f);
    bool _8285 = _8282 <= 0.0f;
    float3 _8312 = mad((_762 * (mad(_1432, _1641, _1432) + mad(_8043, _8252, _8043))).xxx, in_var_TEXCOORD11_centroid.xyz, _629);
    float3 _8313 = ddx(View_View_ViewTilePosition);
    float3 _8315 = ddx(_8312);
    float3 _8317 = ddy(View_View_ViewTilePosition);
    float3 _8319 = ddy(_8312);
    float3 _8326 = lerp(lerp(lerp((normalize(cross((ddx(View_View_ViewTilePosition) * 2097152.0f) + ddx(_8265), (ddy(View_View_ViewTilePosition) * 2097152.0f) + ddy(_8265))) - _7745) + in_var_TEXCOORD11_centroid.xyz, lerp(_7751, float3(0.0f, 0.0f, 1.0f), lerp(Material_Material_PreshaderBuffer[96].z, Material_Material_PreshaderBuffer[96].y, mad(_8285 ? 0.0f : pow(_8282, Material_Material_PreshaderBuffer[95].z), Material_Material_PreshaderBuffer[96].x, Material_Material_PreshaderBuffer[95].w)).xxx), _761.xxx), float3(0.0f, 0.0f, 1.0f), lerp(Material_Material_PreshaderBuffer[96].w, 0.0f, _761).xxx), (normalize(cross((_8313 * 2097152.0f) + _8315, (_8317 * 2097152.0f) + _8319)) - _7745) + in_var_TEXCOORD11_centroid.xyz, _1432.xxx);
    float3 _8358 = Material_Material_PreshaderBuffer[107].xyz + Material_Material_PreshaderBuffer[106].xyz;
    if ((lerp(1.0f, 0.0f, clamp(mad(sqrt(mad(mad(_667, _667 * 4.76837158203125e-07f, mad(_657, _657 * 4.76837158203125e-07f, _661 * (_661 * 4.76837158203125e-07f))), 4.76837158203125e-07f, mad(_666, mad(_667, 9.5367431640625e-07f, _666), mad(_656, mad(_657, 9.5367431640625e-07f, _656), _660 * mad(_661, 9.5367431640625e-07f, _660))))) * (1.0f / max(9.9999997473787516355514526367188e-06f, MaterialCollection0_MaterialCollection0_Vectors[1].x)), -209715200000.0f, 100000.0f), 0.0f, 1.0f)) - 0.33329999446868896484375f) < 0.0f)
    {
        discard;
    }
    float _8376 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
    uint _8377 = in_var_PRIMITIVE_ID * 41u;
    uint _8394 = (((1u | (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8377].x) & 512u) != 0u) ? 32u : 0u)) | (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8377].x) & 256u) != 0u) ? 64u : 0u)) & 4294967288u) | 4u;
    float _8403 = mad(clamp(lerp(lerp(Material_Material_PreshaderBuffer[105].x, Material_Material_PreshaderBuffer[103].w, mad(_8285 ? 0.0f : pow(_8282, Material_Material_PreshaderBuffer[104].y), Material_Material_PreshaderBuffer[104].w, Material_Material_PreshaderBuffer[104].z)), 1.0f, _8257), 0.0f, 1.0f), View_View_SpecularOverrideParameter.w, View_View_SpecularOverrideParameter.x);
    float4 _8404 = 0.0f.xxxx;
    _8404.y = _8403;
    float _8411 = clamp(max(View_View_MinRoughness, mad(lerp(Material_Material_PreshaderBuffer[95].y, Material_Material_PreshaderBuffer[95].x, _8257), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x)), 0.0f, 1.0f);
    _8404.z = _8411;
    float _8413 = clamp(lerp(Material_Material_PreshaderBuffer[97].x, 1.0f, _8257), 0.0f, 1.0f);
    _8404.w = _8413;
    float3 _8416 = clamp((Material_Material_PreshaderBuffer[107].xyz / _8358).xyz, 0.0f.xxx, 1.0f.xxx);
    float4 _8417 = float4(_8416.x, _8416.y, _8416.z, 0.0f.xxxx.w);
    _8417.w = 0.0f;
    float3 _8423 = mad(clamp(lerp(0.0f, Material_Material_PreshaderBuffer[105].y, _8257).xxx.xyz, 0.0f.xxx, 1.0f.xxx), View_View_DiffuseOverrideParameter.www, View_View_DiffuseOverrideParameter.xyz).xyz;
    float3 _8424 = normalize(_8326);
    float3 _8433 = 0.0f.xxx;
    float3 _8434 = 0.0f.xxx;
    [branch]
    if (!((asuint(dot(_8424, _8424)) & 2139095040u) != 2139095040u))
    {
        float3 _8432 = normalize(in_var_TEXCOORD11_centroid.xyz);
        _8433 = _8432;
        _8434 = _8432;
    }
    else
    {
        _8433 = _8326;
        _8434 = _8424;
    }
    float _8435 = 1.0f - _8413;
    float _8485 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8377].x) & 4u) != 0u)
    {
        float3 _8453 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _629, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _8464 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_8453.x), int(_8453.y), int(_8453.z), 0).xyz, 0)));
        _8485 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_8464.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_8453 / _8464.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _8485 = 1.0f;
    }
    float4 _8486 = float4(_8485, 1.0f, 1.0f, 1.0f);
    bool _8488 = all(bool4(_8486.x == 0.0f.xxxx.x, _8486.y == 0.0f.xxxx.y, _8486.z == 0.0f.xxxx.z, _8486.w == 0.0f.xxxx.w));
    bool _8490 = all(bool4(_8486.x == 1.0f.xxxx.x, _8486.y == 1.0f.xxxx.y, _8486.z == 1.0f.xxxx.z, _8486.w == 1.0f.xxxx.w));
    uint _8509 = 0u;
    if ((!_8488) && (!_8490))
    {
        _8509 = _8394 | 8u;
    }
    else
    {
        uint _8507 = 0u;
        if (_8488)
        {
            _8507 = (_8394 | 0u) | 16u;
        }
        else
        {
            uint _8504 = 0u;
            if (_8490)
            {
                _8504 = (_8394 | 0u) | 0u;
            }
            else
            {
                _8504 = _8394;
            }
            _8507 = _8504;
        }
        _8509 = _8507;
    }
    float _8510 = 0.07999999821186065673828125f * _8403;
    float3 _8515 = (_8423 * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _8520 = (_8510.xxx * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _8523 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _8528 = 0.0f.xxx;
    if (_8523)
    {
        _8528 = _8515 + (_8520 * 0.449999988079071044921875f);
    }
    else
    {
        _8528 = _8515;
    }
    bool3 _8529 = _8523.xxx;
    float3 _8530 = float3(_8529.x ? 0.0f.xxx.x : _8520.x, _8529.y ? 0.0f.xxx.y : _8520.y, _8529.z ? 0.0f.xxx.z : _8520.z);
    bool _8533 = OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u;
    float3 _8580 = 0.0f.xxx;
    if (_8533)
    {
        float4 _8539 = float4(_8434, 1.0f);
        float3 _8543 = 0.0f.xxx;
        _8543.x = dot(View_SkyIrradianceEnvironmentMap[0u], _8539);
        _8543.y = dot(View_SkyIrradianceEnvironmentMap[1u], _8539);
        _8543.z = dot(View_SkyIrradianceEnvironmentMap[2u], _8539);
        float4 _8554 = _8539.xyzz * _8539.yzzx;
        float3 _8558 = 0.0f.xxx;
        _8558.x = dot(View_SkyIrradianceEnvironmentMap[3u], _8554);
        _8558.y = dot(View_SkyIrradianceEnvironmentMap[4u], _8554);
        _8558.z = dot(View_SkyIrradianceEnvironmentMap[5u], _8554);
        _8580 = (max(0.0f.xxx, (_8543 + _8558) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_8434.x, _8434.x, -(_8434.y * _8434.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _8580 = 0.0f.xxx;
    }
    float3 _8595 = _8528 * _8413;
    uint2 _8622 = uint2(_612 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    bool _8639 = true && (SingleLayerWater_SingleLayerWater_bSeparateMainDirLightLuminance != 0u);
    float4 _8653 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _8653 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(0.0f.xx)), 0).xy, 0));
    }
    else
    {
        _8653 = 1.0f.xxxx;
    }
    float4 _8654 = _8653 * _8653;
    uint _8657 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_8377].x);
    uint _8670 = (uint((_8657 & 2048u) != 0u) | (uint((_8657 & 4096u) != 0u) << 1u)) | (uint((_8657 & 8192u) != 0u) << 2u);
    float4 _9778 = 0.0f.xxxx;
    float3 _9779 = 0.0f.xxx;
    float _9780 = 0.0f;
    float4 _9781 = 0.0f.xxxx;
    float4 _9782 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        float4 _8695 = float4(_537, float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 2u) >> 1u), float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 4u) >> 2u), float((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 8u) >> 3u));
        _8695.x = 1.0f;
        float4 _8699 = _8486;
        _8699.x = 1.0f;
        float _8778 = 0.0f;
        if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _8707 = _632.xxxx;
            float4 _8709 = float4(bool4(_8707.x >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.x, _8707.y >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.y, _8707.z >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.z, _8707.w >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _8717 = uint(((_8709.x + _8709.y) + _8709.z) + _8709.w);
            float _8777 = 0.0f;
            if (_8717 < OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _8727 = mul(float4(_628, 1.0f), OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_8717]);
                float2 _8731 = _8727.xy / _8727.w.xx;
                bool2 _8735 = bool2(_8731.x >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8717].xy.x, _8731.y >= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8717].xy.y);
                bool2 _8737 = bool2(_8731.x <= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8717].zw.x, _8731.y <= OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_8717].zw.y);
                float _8776 = 0.0f;
                if (all(bool2(_8735.x && _8737.x, _8735.y && _8737.y)))
                {
                    float2 _8755 = mad(_8731, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy, (-0.5f).xx);
                    float2 _8756 = frac(_8755);
                    float4 _8767 = clamp((OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(OpaqueBasePass_Shared_Forward_ShadowmapSampler, (floor(_8755) + 1.0f.xx) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - mad(1.0f - _8727.z, 4000.0f, -1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _8771 = lerp(_8767.wx, _8767.zy, _8756.xx);
                    _8776 = lerp(_8771.x, _8771.y, _8756.y);
                }
                else
                {
                    _8776 = 1.0f;
                }
                _8777 = _8776;
            }
            else
            {
                _8777 = 1.0f;
            }
            _8778 = _8777;
        }
        else
        {
            _8778 = 1.0f;
        }
        float _9465 = 0.0f;
        [branch]
        if ((!(SingleLayerWater_SingleLayerWater_bMainDirectionalLightVSMFiltering != 0u)) && (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM != (-1)))
        {
            float _9463 = 0.0f;
            do
            {
                float _8788 = max(0.0f, 0.0f);
                uint _8789 = uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM);
                uint _8790 = _8789 * 336u;
                uint _8792 = (_8790 + 96u) >> 2u;
                float4x4 _8806 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                _8806[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8792 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8792 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8792 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8792 + 3u) * 4 + 0)));
                uint _8808 = (_8790 + 128u) >> 2u;
                float4x4 _8822 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                _8822[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8808 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8808 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8808 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8808 + 3u) * 4 + 0)));
                uint _8824 = (_8790 + 144u) >> 2u;
                _8822[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8824 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8824 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8824 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8824 + 3u) * 4 + 0)));
                uint _8840 = (_8790 + 160u) >> 2u;
                _8822[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8840 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8840 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8840 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8840 + 3u) * 4 + 0)));
                uint _8856 = (_8790 + 176u) >> 2u;
                _8822[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8856 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8856 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8856 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8856 + 3u) * 4 + 0)));
                uint _8872 = (_8790 + 256u) >> 2u;
                float3 _8882 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_8872 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8872 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8872 + 2u) * 4 + 0)));
                uint _8884 = (_8790 + 268u) >> 2u;
                uint _8888 = (_8790 + 272u) >> 2u;
                uint _8900 = (_8790 + 288u) >> 2u;
                if (VirtualShadowMap_ProjectionData.Load(_8884 * 4 + 0) == 0u)
                {
                    int _9135 = max(0, (int(floor(log2(length(((View_View_ViewTilePosition - (-_8882)) * 2097152.0f) + (_629 - (-asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_8900 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8900 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8900 + 2u) * 4 + 0))))))) + asfloat(VirtualShadowMap_ProjectionData.Load(((_8790 + 300u) >> 2u) * 4 + 0)))) - int(VirtualShadowMap_ProjectionData.Load(((_8790 + 312u) >> 2u) * 4 + 0))));
                    if (_9135 < int(VirtualShadowMap_ProjectionData.Load(((_8790 + 316u) >> 2u) * 4 + 0)))
                    {
                        int _9139 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM + _9135;
                        uint _9140 = uint(_9139);
                        uint _9141 = _9140 * 336u;
                        uint _9143 = (_9141 + 96u) >> 2u;
                        uint _9158 = (_9141 + 112u) >> 2u;
                        uint _9167 = (_9141 + 128u) >> 2u;
                        float4x4 _9181 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _9181[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9167 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9167 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9167 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9167 + 3u) * 4 + 0)));
                        uint _9183 = (_9141 + 144u) >> 2u;
                        _9181[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9183 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9183 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9183 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9183 + 3u) * 4 + 0)));
                        uint _9199 = (_9141 + 160u) >> 2u;
                        _9181[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9199 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9199 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9199 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9199 + 3u) * 4 + 0)));
                        uint _9215 = (_9141 + 176u) >> 2u;
                        _9181[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9215 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9215 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9215 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9215 + 3u) * 4 + 0)));
                        uint _9231 = (_9141 + 256u) >> 2u;
                        uint _9243 = (_9141 + 272u) >> 2u;
                        float4 _9262 = mul(float4(((View_View_ViewTilePosition + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9231 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9231 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9231 + 2u) * 4 + 0)))) * 2097152.0f) + (_629 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_9243 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9243 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9243 + 2u) * 4 + 0)))), 1.0f), _9181);
                        float2 _9263 = _9262.xy;
                        uint2 _9265 = uint2(_9263 * 128.0f);
                        uint _9281 = 0u;
                        do
                        {
                            if (uint(int(_9140)) < 8192u)
                            {
                                _9281 = _9140;
                                break;
                            }
                            _9281 = (8192u + ((_9140 - 8192u) * 21845u)) + (_9265.x + (_9265.y << 7u));
                            break;
                        } while(false);
                        uint _9289 = (VirtualShadowMap_PageTable[_9281] >> 20u) & 63u;
                        bool _9291 = (VirtualShadowMap_PageTable[_9281] & 134217728u) != 0u;
                        float _9454 = 0.0f;
                        bool _9455 = false;
                        if (_9291)
                        {
                            float _9430 = 0.0f;
                            float _9431 = 0.0f;
                            uint2 _9432 = uint2(0u, 0u);
                            uint2 _9433 = uint2(0u, 0u);
                            bool _9434 = false;
                            if (_9289 > 0u)
                            {
                                uint _9304 = (_9141 + 304u) >> 2u;
                                uint _9307 = _9304 + 1u;
                                uint _9312 = uint(int(_9140 + _9289));
                                uint _9315 = ((_9312 * 336u) + 304u) >> 2u;
                                int _9327 = int(_9289);
                                uint2 _9335 = ((_9265 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_9304 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_9307 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_9315 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9315 + 1u) * 4 + 0)))) << (_9327.xx & int2(31, 31)))) >> (_9289.xx & uint2(31u, 31u));
                                uint2 _9336 = _9335 * uint2(128u, 128u);
                                uint _9350 = uint(_9139 + _9327) * 336u;
                                uint _9352 = (_9350 + 112u) >> 2u;
                                uint _9367 = (_9350 + 304u) >> 2u;
                                float _9388 = (_9327 >= 0) ? (1.0f / float(1u << (uint(_9327) & 31u))) : float(1u << (uint(-_9327) & 31u));
                                uint _9417 = 0u;
                                do
                                {
                                    if (uint(int(_9312)) < 8192u)
                                    {
                                        _9417 = _9312;
                                        break;
                                    }
                                    _9417 = (8192u + ((_9312 - 8192u) * 21845u)) + (_9335.x + (_9335.y << 7u));
                                    break;
                                } while(false);
                                _9430 = _9388;
                                _9431 = mad(-_9388, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9158 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9158 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9158 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9158 + 3u) * 4 + 0))).z, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9352 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9352 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9352 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9352 + 3u) * 4 + 0))).z);
                                _9432 = clamp(uint2(((_9263 * _9388) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_9367 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9367 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_9304 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_9307 * 4 + 0)))) * _9388)) * 0.25f).xy) * 16384.0f), _9336, _9336 + uint2(127u, 127u));
                                _9433 = uint2(VirtualShadowMap_PageTable[_9417] & 1023u, (VirtualShadowMap_PageTable[_9417] >> 10u) & 1023u);
                                _9434 = ((VirtualShadowMap_PageTable[_9417] & 134217728u) != 0u) && (((VirtualShadowMap_PageTable[_9417] >> 20u) & 63u) == 0u);
                            }
                            else
                            {
                                _9430 = 1.0f;
                                _9431 = 0.0f;
                                _9432 = uint2(_9263 * 16384.0f);
                                _9433 = uint2(VirtualShadowMap_PageTable[_9281] & 1023u, (VirtualShadowMap_PageTable[_9281] >> 10u) & 1023u);
                                _9434 = _9291 && (_9289 == 0u);
                            }
                            float _9452 = 0.0f;
                            if (_9434)
                            {
                                int4 _9443 = int4(uint4((_9433 * uint2(128u, 128u)) + (_9432 & uint2(127u, 127u)), 0u, 0u));
                                _9452 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_9443.xyz, _9443.w)).x) - _9431) / _9430;
                            }
                            else
                            {
                                _9452 = 0.0f;
                            }
                            _9454 = _9452;
                            _9455 = _9434 ? true : false;
                        }
                        else
                        {
                            _9454 = 0.0f;
                            _9455 = false;
                        }
                        if (_9455)
                        {
                            _9463 = (mad(_8788, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9143 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9143 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9143 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9143 + 3u) * 4 + 0))).z, _9454) > _9262.z) ? 0.0f : 1.0f;
                            break;
                        }
                    }
                }
                else
                {
                    float3 _8935 = ((View_View_ViewTilePosition + _8882) * 2097152.0f) + (_629 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_8888 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8888 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8888 + 2u) * 4 + 0))));
                    float4x4 _9048 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    int _9049 = 0;
                    float4x4 _9050 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    if (VirtualShadowMap_ProjectionData.Load(_8884 * 4 + 0) != 2u)
                    {
                        uint _8963 = 0u;
                        do
                        {
                            float _8941 = _8935.x;
                            float _8942 = abs(_8941);
                            float _8943 = _8935.y;
                            float _8944 = abs(_8943);
                            float _8946 = _8935.z;
                            float _8947 = abs(_8946);
                            if ((_8942 >= _8944) && (_8942 >= _8947))
                            {
                                _8963 = (_8941 > 0.0f) ? 0u : 1u;
                                break;
                            }
                            else
                            {
                                if (_8944 > _8947)
                                {
                                    _8963 = (_8943 > 0.0f) ? 2u : 3u;
                                    break;
                                }
                                else
                                {
                                    _8963 = (_8946 > 0.0f) ? 4u : 5u;
                                    break;
                                }
                                break; // unreachable workaround
                            }
                            break; // unreachable workaround
                        } while(false);
                        int _8965 = int(_8789 + _8963);
                        uint _8967 = uint(_8965) * 336u;
                        uint _8969 = (_8967 + 96u) >> 2u;
                        float4x4 _8983 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _8983[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8969 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8969 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8969 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8969 + 3u) * 4 + 0)));
                        uint _8985 = (_8967 + 128u) >> 2u;
                        float4x4 _8999 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                        _8999[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_8985 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8985 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8985 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_8985 + 3u) * 4 + 0)));
                        uint _9001 = (_8967 + 144u) >> 2u;
                        _8999[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9001 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9001 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9001 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9001 + 3u) * 4 + 0)));
                        uint _9017 = (_8967 + 160u) >> 2u;
                        _8999[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9017 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9017 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9017 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9017 + 3u) * 4 + 0)));
                        uint _9033 = (_8967 + 176u) >> 2u;
                        _8999[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_9033 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9033 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9033 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_9033 + 3u) * 4 + 0)));
                        _9048 = _8983;
                        _9049 = _8965;
                        _9050 = _8999;
                    }
                    else
                    {
                        _9048 = _8806;
                        _9049 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightVSM;
                        _9050 = _8822;
                    }
                    float4 _9055 = mul(float4(_8935, 1.0f), _9050);
                    float _9056 = _9055.w;
                    float3 _9059 = _9055.xyz / _9056.xxx;
                    float2 _9060 = _9059.xy;
                    float _9113 = 0.0f;
                    bool _9114 = false;
                    do
                    {
                        bool _9070 = false;
                        uint _9063 = uint(_9049);
                        uint2 _9065 = uint2(_9060 * 128.0f);
                        uint _9081 = 0u;
                        do
                        {
                            _9070 = uint(int(_9063)) < 8192u;
                            if (_9070)
                            {
                                _9081 = _9063;
                                break;
                            }
                            _9081 = (8192u + ((_9063 - 8192u) * 21845u)) + (_9065.x + (_9065.y << 7u));
                            break;
                        } while(false);
                        if ((VirtualShadowMap_PageTable[_9081] & 134217728u) != 0u)
                        {
                            int4 _9106 = int4(uint4((uint2(VirtualShadowMap_PageTable[_9081] & 1023u, (VirtualShadowMap_PageTable[_9081] >> 10u) & 1023u) * uint2(128u, 128u)) + (uint2(_9060 * float(16384u >> ((_9070 ? 7u : ((VirtualShadowMap_PageTable[_9081] >> 20u) & 63u)) & 31u))) & uint2(127u, 127u)), 0u, 0u));
                            _9113 = asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_9106.xyz, _9106.w)).x);
                            _9114 = true;
                            break;
                        }
                        _9113 = 0.0f;
                        _9114 = false;
                        break;
                    } while(false);
                    if (_9114)
                    {
                        _9463 = ((_9113 - (((-_8788) * _9048[2].z) / _9056)) > _9059.z) ? 0.0f : 1.0f;
                        break;
                    }
                }
                _9463 = 1.0f;
                break;
            } while(false);
            _9465 = _8778 * _9463;
        }
        else
        {
            _9465 = _8778;
        }
        float _9472 = clamp(mad(_632, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
        float _9474 = lerp(_9465, lerp(1.0f, dot(_8699, _8695), dot(_8695, 1.0f.xxxx)), _9472 * _9472);
        float3 _9749 = 0.0f.xxx;
        float3 _9750 = 0.0f.xxx;
        [branch]
        if ((_9474 + min(_9474, 1.0f)) > 0.0f)
        {
            float _9480 = max(_8411, View_View_MinRoughness);
            float _9481 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _9484 = rsqrt(_9481);
            float3 _9485 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _9484;
            float _9486 = dot(_8434, _9485);
            float _9504 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _9493 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_9481 + 1.0f)), 0.0f, 1.0f));
                float _9503 = 0.0f;
                if (_9486 < _9493)
                {
                    float _9499 = _9493 + max(_9486, -_9493);
                    _9503 = (_9499 * _9499) / (4.0f * _9493);
                }
                else
                {
                    _9503 = _9486;
                }
                _9504 = _9503;
            }
            else
            {
                _9504 = _9486;
            }
            float _9505 = clamp(_9504, 0.0f, 1.0f);
            float _9506 = max(_9480, View_View_MinRoughness);
            float _9511 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _9484) * mad(-_9506, _9506, 1.0f), 0.0f, 1.0f);
            uint _9518 = 0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u);
            float _9519 = dot(_8434, _646);
            float _9520 = dot(_646, _9485);
            float _9522 = rsqrt(mad(2.0f, _9520, 2.0f));
            float _9525 = clamp((_9486 + _9519) * _9522, 0.0f, 1.0f);
            float _9527 = clamp(mad(_9522, _9520, _9522), 0.0f, 1.0f);
            bool _9528 = _9511 > 0.0f;
            float _9607 = 0.0f;
            float _9608 = 0.0f;
            if (_9528)
            {
                float _9533 = sqrt(mad(-_9511, _9511, 1.0f));
                float _9534 = 2.0f * _9486;
                float _9535 = -_9520;
                float _9536 = mad(_9534, _9519, _9535);
                float _9605 = 0.0f;
                float _9606 = 0.0f;
                if (_9536 >= _9533)
                {
                    _9605 = 1.0f;
                    _9606 = abs(_9519);
                }
                else
                {
                    float _9541 = -_9536;
                    float _9544 = _9511 * rsqrt(mad(_9541, _9536, 1.0f));
                    float _9545 = mad(_9541, _9486, _9519);
                    float _9549 = mad(_9541, _9520, mad(2.0f * _9519, _9519, -1.0f));
                    float _9560 = _9544 * sqrt(clamp(mad(_9534 * _9519, _9520, mad(_9535, _9520, mad(-_9519, _9519, mad(-_9486, _9486, 1.0f)))), 0.0f, 1.0f));
                    float _9562 = (_9560 * 2.0f) * _9519;
                    float _9563 = mad(_9486, _9533, _9519);
                    float _9564 = mad(_9544, _9545, _9563);
                    float _9566 = mad(_9544, _9549, mad(_9520, _9533, 1.0f));
                    float _9567 = _9560 * _9566;
                    float _9568 = _9564 * _9566;
                    float _9573 = _9568 * mad(-0.5f, _9567, (0.25f * _9562) * _9564);
                    float _9583 = mad(_9564, mad(_9563, _9566 * _9566, _9568 * mad(-0.5f, mad(_9520, _9533, _9566), -0.5f)), mad(_9567, _9567, (_9562 * _9564) * mad(_9562, _9564, _9567 * (-2.0f))));
                    float _9587 = (2.0f * _9573) / mad(_9583, _9583, _9573 * _9573);
                    float _9588 = _9587 * _9583;
                    float _9590 = mad(-_9587, _9573, 1.0f);
                    float _9596 = mad(_9520, _9533, mad(_9590, _9544 * _9549, _9588 * _9562));
                    float _9598 = rsqrt(mad(2.0f, _9596, 2.0f));
                    _9605 = clamp((mad(_9486, _9533, mad(_9590, _9544 * _9545, _9588 * _9560)) + _9519) * _9598, 0.0f, 1.0f);
                    _9606 = clamp(mad(_9598, _9596, _9598), 0.0f, 1.0f);
                }
                _9607 = _9605;
                _9608 = _9606;
            }
            else
            {
                _9607 = _9525;
                _9608 = _9527;
            }
            float _9611 = clamp(abs(_9519) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float _9612 = _9480 * _9480;
            float _9613 = _9612 * _9612;
            float _9618 = clamp(_9527, 0.0f, 1.0f);
            int _9620 = asint(_9613);
            float _9626 = clamp(0.0555555559694766998291015625f * log2(mad(2.0f, asfloat(2129859010 - _9620), -1.0f)), 0.0f, 1.0f);
            float _9627 = 1.0f - _9618;
            float _9628 = _9627 * _9627;
            float _9631 = 1.0f - clamp(_9519, 0.0f, 1.0f);
            float _9632 = _9631 * _9631;
            float _9636 = 1.0f - clamp(_9505, 0.0f, 1.0f);
            float _9637 = _9636 * _9636;
            float3 _9661 = 1.0f.xxx * _9505;
            float3 _9711 = 0.0f.xxx;
            if ((_9518 & 1u) == 1u)
            {
                _9711 = 0.0f.xxx;
            }
            else
            {
                float _9680 = 0.0f;
                if (_9528)
                {
                    _9680 = _9613 / mad(_9612, _9612, ((0.25f * _9511) * mad(3.0f, asfloat(532487669 + (_9620 >> 1)), _9511)) / (_9608 + 0.001000000047497451305389404296875f));
                }
                else
                {
                    _9680 = 1.0f;
                }
                float _9683 = mad(mad(_9607, _9613, -_9607), _9607, 1.0f);
                float _9688 = sqrt(_9613);
                float _9689 = 1.0f - _9688;
                float _9695 = 1.0f - _9608;
                float _9696 = _9695 * _9695;
                float _9697 = _9696 * _9696;
                _9711 = _9661 * (((clamp(50.0f * _8530.y, 0.0f, 1.0f) * (_9697 * _9695)).xxx + (_8530 * mad(-_9697, _9695, 1.0f))) * (((_9613 / ((3.1415927410125732421875f * _9683) * _9683)) * _9680) * (0.5f / mad(_9505, mad(_9611, _9689, _9688), _9611 * mad(_9505, _9689, _9688)))));
            }
            float4 _9720 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_9611, _9480), 0.0f);
            bool3 _9724 = (View_View_bShadingEnergyConservation != 0u).xxx;
            float _9725 = _9720.x;
            float3 _9729 = 1.0f.xxx + (_8530 * ((1.0f - _9725) / _9725));
            float3 _9730 = float3(_9724.x ? _9729.x : 1.0f.xxx.x, _9724.y ? _9729.y : 1.0f.xxx.y, _9724.z ? _9729.z : 1.0f.xxx.z);
            float3 _9746 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _9474;
            float3 _9748 = mad(((_8595 * (0.3183098733425140380859375f * mad((mad(mad(34.5f, _9626, -59.0f), _9626, 24.5f) * _9618) * exp2((-max(mad(73.1999969482421875f, _9626, -21.200000762939453125f), 8.8999996185302734375f)) * asfloat(532487669 + (asint(clamp(_9525, 0.0f, 1.0f)) >> 1))), asfloat(_9518 >> 1u), lerp(mad(_9628 * _9628, _9627, _9618), mad(-0.75f, (_9632 * _9632) * _9631, 1.0f) * mad(-0.75f, (_9637 * _9637) * _9636, 1.0f), clamp(mad(2.2000000476837158203125f, _9626, -0.5f), 0.0f, 1.0f))))) * _9661) * ((View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(_9730 * ((_8530 * _9725) + ((clamp(50.0f * _8530.y, 0.0f, 1.0f).xxx - _8530) * _9720.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f), _9746, 0.0f.xxx);
            _9749 = _9748;
            _9750 = ((_9711 * _9730) * 1.0f) * _9746;
        }
        else
        {
            _9749 = 0.0f.xxx;
            _9750 = 0.0f.xxx;
        }
        float4 _9754 = float4(_9749, 0.0f);
        float4 _9758 = float4(_9750, 0.0f);
        float3 _9775 = 0.0f.xxx;
        float4 _9776 = 0.0f.xxxx;
        float4 _9777 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _8670) != 0u)
        {
            float4 _9763 = float4(_9754.x, _9754.y, _9754.z, _9754.w);
            float4 _9764 = float4(_9758.x, _9758.y, _9758.z, _9758.w);
            float3 _9771 = 0.0f.xxx;
            if (_8639)
            {
                _9771 = _9754.xyz + _9758.xyz;
            }
            else
            {
                _9771 = 0.0f.xxx;
            }
            bool4 _9772 = _8639.xxxx;
            _9775 = _9771;
            _9776 = float4(_9772.x ? 0.0f.xxxx.x : _9763.x, _9772.y ? 0.0f.xxxx.y : _9763.y, _9772.z ? 0.0f.xxxx.z : _9763.z, _9772.w ? 0.0f.xxxx.w : _9763.w);
            _9777 = float4(_9772.x ? 0.0f.xxxx.x : _9764.x, _9772.y ? 0.0f.xxxx.y : _9764.y, _9772.z ? 0.0f.xxxx.z : _9764.z, _9772.w ? 0.0f.xxxx.w : _9764.w);
        }
        else
        {
            _9775 = 0.0f.xxx;
            _9776 = 0.0f.xxxx;
            _9777 = 0.0f.xxxx;
        }
        _9778 = _8699;
        _9779 = _9775;
        _9780 = _9474;
        _9781 = _9776;
        _9782 = _9777;
    }
    else
    {
        _9778 = _8486;
        _9779 = 0.0f.xxx;
        _9780 = 1.0f;
        _9781 = 0.0f.xxxx;
        _9782 = 0.0f.xxxx;
    }
    uint _9783 = ((((min(uint(max(0.0f, log2(mad(_571, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _8622.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _8622.x) * 2u;
    uint _9789 = _9783 + 1u;
    uint _9792 = min(min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_9783], OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
    float4 _9794 = 0.0f.xxxx;
    float4 _9797 = 0.0f.xxxx;
    _9794 = _9781;
    _9797 = _9782;
    float4 _9795 = 0.0f.xxxx;
    float4 _9798 = 0.0f.xxxx;
    [loop]
    for (uint _9799 = 0u; _9799 < _9792; _9794 = _9795, _9797 = _9798, _9799++)
    {
        uint _9808 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_9789] + _9799).x * 6u;
        uint _9811 = _9808 + 1u;
        uint _9814 = _9808 + 2u;
        uint _9817 = _9808 + 3u;
        uint _9820 = _9808 + 4u;
        uint _9824 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9814].w);
        uint _9830 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9811].y);
        uint _9846 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9817].z);
        float2 _9848 = spvUnpackHalf2x16(_9846 & 65535u);
        float _9849 = _9848.x;
        float2 _9852 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9817].w));
        float _9853 = _9852.x;
        bool _9858 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9811].w == 0.0f;
        float4 _9879 = float4(float(_9824 & 1u), float((_9824 & 2u) >> 1u), float((_9824 & 4u) >> 2u), float((_9824 & 8u) >> 3u));
        uint _9880 = _9824 >> 4u;
        float3 _9896 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9808].xyz - _628;
        float _9897 = dot(_9896, _9896);
        float _9914 = 0.0f;
        if (_9858)
        {
            float _9909 = _9897 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9808].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9808].w);
            float _9912 = clamp(mad(-_9909, _9909, 1.0f), 0.0f, 1.0f);
            _9914 = _9912 * _9912;
        }
        else
        {
            float3 _9903 = _9896 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9808].w;
            _9914 = pow(1.0f - clamp(dot(_9903, _9903), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9811].w);
        }
        float _9925 = 0.0f;
        if (((_9824 >> 16u) & 3u) == 2u)
        {
            float _9922 = clamp((dot(_9896 * rsqrt(_9897), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9814].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9817].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9817].y, 0.0f, 1.0f);
            _9925 = _9914 * (_9922 * _9922);
        }
        else
        {
            _9925 = _9914;
        }
        float3 _10296 = 0.0f.xxx;
        float3 _10297 = 0.0f.xxx;
        [branch]
        if (_9925 > 0.0f)
        {
            float _9937 = 0.0f;
            [branch]
            if (uint((_9824 & 255u) != 0u) != 0u)
            {
                _9937 = dot(float4(float(_9880 & 1u), float((_9880 & 2u) >> 1u), float((_9880 & 4u) >> 2u), float((_9880 & 8u) >> 3u)), _8654) * lerp(1.0f, dot(_9778, _9879), dot(_9879, 1.0f.xxxx));
            }
            else
            {
                _9937 = 1.0f;
            }
            float3 _10294 = 0.0f.xxx;
            float3 _10295 = 0.0f.xxx;
            [branch]
            if ((_9937 + _9937) > 0.0f)
            {
                float3 _9943 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9820].xyz * (0.5f * _9853);
                float3 _9944 = _9896 - _9943;
                float3 _9945 = _9896 + _9943;
                float _9946 = max(_8411, View_View_MinRoughness);
                bool _9947 = _9853 > 0.0f;
                float _9972 = 0.0f;
                float _9973 = 0.0f;
                float _9974 = 0.0f;
                [branch]
                if (_9947)
                {
                    float _9959 = rsqrt(dot(_9944, _9944));
                    float _9960 = rsqrt(dot(_9945, _9945));
                    float _9961 = _9959 * _9960;
                    float _9963 = dot(_9944, _9945) * _9961;
                    _9972 = _9963;
                    _9973 = 0.5f * mad(dot(_8434, _9944), _9959, dot(_8434, _9945) * _9960);
                    _9974 = _9961 / mad(_9959, _9960, mad(_9963, 0.5f, 0.5f));
                }
                else
                {
                    float _9951 = dot(_9944, _9944);
                    _9972 = 1.0f;
                    _9973 = dot(_8434, _9944 * rsqrt(_9951));
                    _9974 = 1.0f / (_9951 + 1.0f);
                }
                float _9992 = 0.0f;
                if (_9849 > 0.0f)
                {
                    float _9981 = sqrt(clamp((_9849 * _9849) * _9974, 0.0f, 1.0f));
                    float _9991 = 0.0f;
                    if (_9973 < _9981)
                    {
                        float _9987 = _9981 + max(_9973, -_9981);
                        _9991 = (_9987 * _9987) / (4.0f * _9981);
                    }
                    else
                    {
                        _9991 = _9973;
                    }
                    _9992 = _9991;
                }
                else
                {
                    _9992 = _9973;
                }
                float _9993 = clamp(_9992, 0.0f, 1.0f);
                float3 _10011 = 0.0f.xxx;
                if (_9947)
                {
                    float3 _9998 = reflect(-_646, _8434);
                    float3 _9999 = _9945 - _9944;
                    float _10000 = dot(_9998, _9999);
                    _10011 = _9944 + (_9999 * clamp(dot(_9944, (_9998 * _10000) - _9999) / mad(_9853, _9853, -(_10000 * _10000)), 0.0f, 1.0f));
                }
                else
                {
                    _10011 = _9944;
                }
                float _10013 = rsqrt(dot(_10011, _10011));
                float3 _10014 = _10011 * _10013;
                float _10015 = max(_9946, View_View_MinRoughness);
                float _10020 = clamp((_9849 * _10013) * mad(-_10015, _10015, 1.0f), 0.0f, 1.0f);
                float _10022 = clamp(spvUnpackHalf2x16(_9846 >> 16u).x * _10013, 0.0f, 1.0f);
                uint _10029 = 0u | (asuint(clamp(mad(-max(_9853, _9849), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u);
                float _10030 = dot(_8434, _10014);
                float _10031 = dot(_8434, _646);
                float _10032 = dot(_646, _10014);
                float _10034 = rsqrt(mad(2.0f, _10032, 2.0f));
                float _10037 = clamp((_10030 + _10031) * _10034, 0.0f, 1.0f);
                float _10039 = clamp(mad(_10034, _10032, _10034), 0.0f, 1.0f);
                bool _10040 = _10020 > 0.0f;
                float _10119 = 0.0f;
                float _10120 = 0.0f;
                if (_10040)
                {
                    float _10045 = sqrt(mad(-_10020, _10020, 1.0f));
                    float _10046 = 2.0f * _10030;
                    float _10047 = -_10032;
                    float _10048 = mad(_10046, _10031, _10047);
                    float _10117 = 0.0f;
                    float _10118 = 0.0f;
                    if (_10048 >= _10045)
                    {
                        _10117 = 1.0f;
                        _10118 = abs(_10031);
                    }
                    else
                    {
                        float _10053 = -_10048;
                        float _10056 = _10020 * rsqrt(mad(_10053, _10048, 1.0f));
                        float _10057 = mad(_10053, _10030, _10031);
                        float _10061 = mad(_10053, _10032, mad(2.0f * _10031, _10031, -1.0f));
                        float _10072 = _10056 * sqrt(clamp(mad(_10046 * _10031, _10032, mad(_10047, _10032, mad(-_10031, _10031, mad(-_10030, _10030, 1.0f)))), 0.0f, 1.0f));
                        float _10074 = (_10072 * 2.0f) * _10031;
                        float _10075 = mad(_10030, _10045, _10031);
                        float _10076 = mad(_10056, _10057, _10075);
                        float _10078 = mad(_10056, _10061, mad(_10032, _10045, 1.0f));
                        float _10079 = _10072 * _10078;
                        float _10080 = _10076 * _10078;
                        float _10085 = _10080 * mad(-0.5f, _10079, (0.25f * _10074) * _10076);
                        float _10095 = mad(_10076, mad(_10075, _10078 * _10078, _10080 * mad(-0.5f, mad(_10032, _10045, _10078), -0.5f)), mad(_10079, _10079, (_10074 * _10076) * mad(_10074, _10076, _10079 * (-2.0f))));
                        float _10099 = (2.0f * _10085) / mad(_10095, _10095, _10085 * _10085);
                        float _10100 = _10099 * _10095;
                        float _10102 = mad(-_10099, _10085, 1.0f);
                        float _10108 = mad(_10032, _10045, mad(_10102, _10056 * _10061, _10100 * _10074));
                        float _10110 = rsqrt(mad(2.0f, _10108, 2.0f));
                        _10117 = clamp((mad(_10030, _10045, mad(_10102, _10056 * _10057, _10100 * _10072)) + _10031) * _10110, 0.0f, 1.0f);
                        _10118 = clamp(mad(_10110, _10108, _10110), 0.0f, 1.0f);
                    }
                    _10119 = _10117;
                    _10120 = _10118;
                }
                else
                {
                    _10119 = _10037;
                    _10120 = _10039;
                }
                float _10123 = clamp(abs(_10031) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float _10124 = _9946 * _9946;
                float _10125 = _10124 * _10124;
                float _10130 = clamp(_10039, 0.0f, 1.0f);
                float _10138 = clamp(0.0555555559694766998291015625f * log2(mad(2.0f, asfloat(2129859010 - asint(_10125)), -1.0f)), 0.0f, 1.0f);
                float _10139 = 1.0f - _10130;
                float _10140 = _10139 * _10139;
                float _10143 = 1.0f - clamp(_10031, 0.0f, 1.0f);
                float _10144 = _10143 * _10143;
                float _10148 = 1.0f - clamp(_9993, 0.0f, 1.0f);
                float _10149 = _10148 * _10148;
                float3 _10174 = 1.0f.xxx * ((_9858 ? _9974 : 1.0f) * _9993);
                float3 _10256 = 0.0f.xxx;
                if ((_10029 & 1u) == 1u)
                {
                    _10256 = 0.0f.xxx;
                }
                else
                {
                    float _10189 = 0.0f;
                    if (_10022 > 0.0f)
                    {
                        _10189 = clamp(mad(_10124, _10124, (_10022 * _10022) / mad(_10120, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _10189 = _10125;
                    }
                    float _10203 = 0.0f;
                    float _10204 = 0.0f;
                    if (_10040)
                    {
                        float _10201 = _10189 + (((0.25f * _10020) * mad(3.0f, asfloat(532487669 + (asint(_10189) >> 1)), _10020)) / (_10120 + 0.001000000047497451305389404296875f));
                        _10203 = _10189 / _10201;
                        _10204 = _10201;
                    }
                    else
                    {
                        _10203 = 1.0f;
                        _10204 = _10189;
                    }
                    float _10225 = 0.0f;
                    if (_9972 < 1.0f)
                    {
                        float _10211 = sqrt((1.00010001659393310546875f - _9972) / (1.0f + _9972));
                        _10225 = _10203 * sqrt(_10204 / (_10204 + (((0.25f * _10211) * mad(3.0f, asfloat(532487669 + (asint(_10204) >> 1)), _10211)) / (_10120 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _10225 = _10203;
                    }
                    float _10228 = mad(mad(_10119, _10189, -_10119), _10119, 1.0f);
                    float _10233 = sqrt(_10189);
                    float _10234 = 1.0f - _10233;
                    float _10240 = 1.0f - _10120;
                    float _10241 = _10240 * _10240;
                    float _10242 = _10241 * _10241;
                    _10256 = _10174 * (((clamp(50.0f * _8530.y, 0.0f, 1.0f) * (_10242 * _10240)).xxx + (_8530 * mad(-_10242, _10240, 1.0f))) * (((_10189 / ((3.1415927410125732421875f * _10228) * _10228)) * _10225) * (0.5f / mad(_9993, mad(_10123, _10234, _10233), _10123 * mad(_9993, _10234, _10233)))));
                }
                float4 _10265 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_10123, _9946), 0.0f);
                bool3 _10269 = (View_View_bShadingEnergyConservation != 0u).xxx;
                float _10270 = _10265.x;
                float3 _10274 = 1.0f.xxx + (_8530 * ((1.0f - _10270) / _10270));
                float3 _10275 = float3(_10269.x ? _10274.x : 1.0f.xxx.x, _10269.y ? _10274.y : 1.0f.xxx.y, _10269.z ? _10274.z : 1.0f.xxx.z);
                float3 _10291 = ((float3(float((_9830 >> 0u) & 1023u), float((_9830 >> 10u) & 1023u), float((_9830 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9811].x) * _9925) * _9937;
                float3 _10293 = mad(((_8595 * (0.3183098733425140380859375f * mad((mad(mad(34.5f, _10138, -59.0f), _10138, 24.5f) * _10130) * exp2((-max(mad(73.1999969482421875f, _10138, -21.200000762939453125f), 8.8999996185302734375f)) * asfloat(532487669 + (asint(clamp(_10037, 0.0f, 1.0f)) >> 1))), asfloat(_10029 >> 1u), lerp(mad(_10140 * _10140, _10139, _10130), mad(-0.75f, (_10144 * _10144) * _10143, 1.0f) * mad(-0.75f, (_10149 * _10149) * _10148, 1.0f), clamp(mad(2.2000000476837158203125f, _10138, -0.5f), 0.0f, 1.0f))))) * _10174) * ((View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(_10275 * ((_8530 * _10270) + ((clamp(50.0f * _8530.y, 0.0f, 1.0f).xxx - _8530) * _10265.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f), _10291, 0.0f.xxx);
                _10294 = _10293;
                _10295 = ((_10256 * _10275) * spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_9820].w) & 65535u).x) * _10291;
            }
            else
            {
                _10294 = 0.0f.xxx;
                _10295 = 0.0f.xxx;
            }
            _10296 = _10294;
            _10297 = _10295;
        }
        else
        {
            _10296 = 0.0f.xxx;
            _10297 = 0.0f.xxx;
        }
        [flatten]
        if ((((_9824 >> 8u) & 7u) & _8670) != 0u)
        {
            _9795 = _9794 + float4(_10296, 0.0f);
            _9798 = _9797 + float4(_10297, 0.0f);
        }
        else
        {
            _9795 = _9794;
            _9798 = _9797;
        }
    }
    bool4 _10315 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    float3 _10401 = 0.0f.xxx;
    float3 _10402 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _10346 = _8377 + 31u;
        float3 _10355 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_8377 + 1u].xyz) * 2097152.0f) + (_629 - Scene_GPUScene_GPUScenePrimitiveSceneData[_8377 + 18u].xyz));
        float3 _10356 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_8377 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_8377 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_8377 + 25u].w) + 1.0f.xxx;
        float3 _10399 = 0.0f.xxx;
        float3 _10400 = 0.0f.xxx;
        if (any(bool3(_10355.x > _10356.x, _10355.y > _10356.y, _10355.z > _10356.z)))
        {
            float3 _10379 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _10380 = _629 * 0.57700002193450927734375f.xxx;
            float3 _10395 = frac(mad((_10380.x + _10380.y) + _10380.z, 0.00200000009499490261077880859375f, frac(((_10379.x + _10379.y) + _10379.z) * 4194.30419921875f))).xxx;
            float3 _10398 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_10395.x > 0.5f.xxx.x, _10395.y > 0.5f.xxx.y, _10395.z > 0.5f.xxx.z)));
            _10399 = _10398;
            _10400 = _10398;
        }
        else
        {
            float3 _10378 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_10346].x > 0.0f)
            {
                float3 _10366 = abs(_628 - in_var_TEXCOORD9);
                _10378 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_10366.x, max(_10366.y, _10366.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_10346].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _10378 = 0.0f.xxx;
            }
            _10399 = 0.0f.xxx;
            _10400 = _10378;
        }
        _10401 = _10399;
        _10402 = _10400;
    }
    else
    {
        _10401 = 0.0f.xxx;
        _10402 = 0.0f.xxx;
    }
    float4 _10414 = OpaqueBasePass_PreIntegratedGFTexture.SampleLevel(View_SharedBilinearClampedSampler, float2(max(0.0f, dot(_8434, _646)), _8411), 0.0f);
    float3 _10652 = 0.0f.xxx;
    float3 _10653 = 0.0f.xxx;
    if (_8435 > 0.0f)
    {
        float2 _10442 = clamp(mad(_619.xy / _632.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz), SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.xy, SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.zw);
        float4 _10444 = SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture.SampleLevel(View_SharedBilinearClampedSampler, _10442, 0.0f);
        float _10445 = _10444.x;
        float _10455 = -View_View_InvDeviceZToWorldZTransform.w;
        float _10458 = mad(_10445, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10445, View_View_InvDeviceZToWorldZTransform.z, _10455));
        float _10489 = _10458 - _632;
        float2 _10498 = clamp(_10442 + (((((((normalize(mul(_8434, float3x3(View_View_TranslatedWorldToView[0].xyz, View_View_TranslatedWorldToView[1].xyz, View_View_TranslatedWorldToView[2].xyz))).xy * (Material_Material_PreshaderBuffer[107].w - 1.0f)) * View_View_ViewSizeAndInvSize.xy) * View_View_BufferSizeAndInvSize.zw) * ((SingleLayerWater_SingleLayerWater_DistortionParams.zw * float2(0.000230000005103647708892822265625f, -0.000230000005103647708892822265625f)) * float2(SingleLayerWater_SingleLayerWater_DistortionParams.x, SingleLayerWater_SingleLayerWater_DistortionParams.y * SingleLayerWater_SingleLayerWater_DistortionParams.x))) * clamp(mad(_10489, 1.0f / max(1.0f, clamp(abs(Material_Material_PreshaderBuffer[108].x * (-0.5f)), 0.0f, 50.0f)), -Material_Material_PreshaderBuffer[108].x), 0.0f, 1.0f)) * 4.0f) * clamp(_10489 * 0.0333333350718021392822265625f, 0.0f, 1.0f)), SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.xy, SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV.zw);
        float4 _10500 = SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture.GatherRed(View_SharedBilinearClampedSampler, _10498);
        float _10501 = _10500.x;
        float _10506 = _10500.y;
        float _10511 = _10500.z;
        float _10516 = _10500.w;
        float4 _10521 = float4(mad(_10501, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10501, View_View_InvDeviceZToWorldZTransform.z, _10455)), mad(_10506, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10506, View_View_InvDeviceZToWorldZTransform.z, _10455)), mad(_10511, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10511, View_View_InvDeviceZToWorldZTransform.z, _10455)), mad(_10516, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10516, View_View_InvDeviceZToWorldZTransform.z, _10455)));
        float4 _10522 = _632.xxxx;
        bool _10524 = any(bool4(_10521.x < _10522.x, _10521.y < _10522.y, _10521.z < _10522.z, _10521.w < _10522.w));
        float _10550 = 0.0f;
        float _10551 = 0.0f;
        if (_10524)
        {
            _10550 = _10458;
            _10551 = _10445;
        }
        else
        {
            float2 _10531 = frac(((_10498 * SingleLayerWater_SingleLayerWater_SceneWithoutSingleLayerWaterTextureSize) * 1.0f) - 0.5f.xx);
            float _10533 = _10531.x;
            float _10534 = 1.0f - _10533;
            float _10535 = _10531.y;
            float _10536 = 1.0f - _10535;
            float4 _10538 = 0.0f.xxxx;
            _10538.x = _10534 * _10536;
            _10538.y = _10533 * _10536;
            _10538.z = _10534 * _10535;
            _10538.w = _10533 * _10535;
            float _10545 = dot(_10500.wzxy, _10538);
            _10550 = mad(_10545, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_10545, View_View_InvDeviceZToWorldZTransform.z, _10455));
            _10551 = _10545;
        }
        bool2 _10552 = _10524.xx;
        float _10556 = max(0.0f, _10550 - _632);
        float3 _10558 = clamp(_8358.xyz, 0.0f.xxx, 64512.0f.xxx).xyz;
        float _10566 = 1.0f / ((2.0f / (1.0f - sqrt(min(_8510, 0.9900000095367431640625f)))) - 1.0f);
        float3 _10589 = 0.0f.xxx;
        bool _10590 = false;
        do
        {
            float _10569 = dot(_646, _8434);
            float _10574 = mad(-(_10566 * _10566), mad(-_10569, _10569, 1.0f), 1.0f);
            if (_10574 < 0.0f)
            {
                _10589 = reflect(-_646, _8434);
                _10590 = false;
                break;
            }
            _10589 = (_8434 * mad(_10566, _10569, (-((_10569 >= 0.0f) ? 1.0f : (-1.0f))) * sqrt(_10574))) - (_646 * _10566);
            _10590 = true;
            break;
        } while(false);
        float _10602 = 0.0f;
        if (_10590)
        {
            float _10595 = mad(1.5499999523162841796875f, 0.0f, -0.0f);
            float _10596 = mad(_10595, dot(-View_View_DirectionalLightDirection, _10589), 1.0f);
            _10602 = mad(-_10595, _10595, 1.0f) / ((12.56637096405029296875f * _10596) * _10596);
        }
        else
        {
            _10602 = 0.0f;
        }
        float4 _10604 = mul(float4(gl_FragCoord.xy, max(9.9999999600419720025001879548654e-13f, _10551), 1.0f), View_View_SVPositionToTranslatedWorld);
        float3 _10630 = exp(-(_10558 * _10556));
        float3 _10631 = ((View_View_DirectionalLightColor.xyz * 3.1415927410125732421875f) * _10602) * _9780;
        float3 _10637 = clamp(((_8417.xyz * _10558) * (1.0f.xxx - _10630)) / max(_10558, 9.9999997473787516355514526367188e-06f.xxx), 0.0f.xxx, 1.0f.xxx);
        float3 _10641 = 1.0f.xxx - ((_8530 * _10414.x) + (clamp(50.0f * _8530.y, 0.0f, 1.0f) * _10414.y).xxx);
        float3 _10642 = float3(_10641.x, _10641.y, _10641.z);
        _10652 = _9779 + ((((_10631 * float(_8639)) * _10637) * _10642) * _8435);
        _10653 = mad((((_8580 * 3.1415927410125732421875f) * 0.079577468335628509521484375f) + (_10631 * (_8639 ? 0.0f : 1.0f))) * _10637, _10642, (_10630 * float3(1.0f.xxx.x, 1.0f.xxx.y, 1.0f.xxx.z)) * (((exp(_10558 * (-max(0.0f, (((View_View_ViewTilePosition - View_View_ViewTilePosition) * 2097152.0f) + (_629 - ((_10604.xyz / _10604.w.xxx) - View_View_RelativePreViewTranslation))).z))) * View_View_OneOverPreExposure) * SingleLayerWater_SceneColorWithoutSingleLayerWaterTexture.SampleLevel(View_SharedBilinearClampedSampler, float2(_10552.x ? _10442.x : _10498.x, _10552.y ? _10442.y : _10498.y), 0.0f).xyz) * lerp(1.0f.xxx, clamp(Material_Material_PreshaderBuffer[105].z.xxx.xyz, 0.0f.xxx, 64512.0f.xxx).xyz, clamp(_10556 * 0.0199999995529651641845703125f, 0.0f, 1.0f).xxx))) * _8435;
    }
    else
    {
        _10652 = _9779;
        _10653 = 0.0f.xxx;
    }
    float3 _10655 = normalize(_8433);
    uint2 _10656 = uint2(gl_FragCoord.xy);
    float3 _10659 = mad(clamp(_8423, 0.0f.xxx, 1.0f.xxx), View_View_DiffuseOverrideParameter.www, View_View_DiffuseOverrideParameter.xyz);
    _8404.x = 0.0f;
    float _10662 = mad(clamp(_8403, 0.0f, 1.0f), View_View_SpecularOverrideParameter.w, View_View_SpecularOverrideParameter.x);
    _8404.y = _10662;
    float _10666 = clamp(max(View_View_MinRoughness, mad(_8411, View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x)), 0.0f, 1.0f);
    _8404.z = _10666;
    float _10668 = clamp(_8413, 0.0f, 1.0f);
    _8404.w = _10668;
    bool3 _10675 = (View_View_bShadingEnergyConservation != 0u).xxx;
    bool _10676 = any(bool3(true, true, true));
    uint _10799 = 0u;
    float3 _10800 = 0.0f.xxx;
    uint _10801 = 0u;
    uint _10802 = 0u;
    bool _10803 = false;
    bool _10804 = false;
    float3 _10805 = 0.0f.xxx;
    float _10806 = 0.0f;
    float3 _10807 = 0.0f.xxx;
    float _10808 = 0.0f;
    if (_10676)
    {
        float3 _10787 = 0.0f.xxx;
        uint _10788 = 0u;
        bool _10789 = false;
        bool _10790 = false;
        float3 _10791 = 0.0f.xxx;
        float _10792 = 0.0f;
        float _10793 = 0.0f;
        uint _10794 = 0u;
        switch (4u)
        {
            case 0u:
            {
                float3 _10768 = 0.0f.xxx;
                do
                {
                    float3 _10765 = 0.0f.xxx;
                    bool _10766 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10765 = lerp(_10659.xyz, _8404.xyz, clamp((max(0.0f, max(_10662, _10666)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10766 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10765 = _10659.xyz;
                            _10766 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10765 = _10659.xyz;
                            _10766 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10765 = _10659.xyz;
                            _10766 = true;
                            break;
                        }
                        default:
                        {
                            _10765 = _449;
                            _10766 = false;
                            break;
                        }
                    }
                    if (_10766)
                    {
                        _10768 = _10765;
                        break;
                    }
                    _10768 = 0.0f.xxx;
                    break;
                } while(false);
                float3 _10769 = _10768 * 1.0f;
                float3 _10783 = 0.0f.xxx;
                float _10784 = 0.0f;
                if (false)
                {
                    float3 _10781 = 0.0f.xxx;
                    float _10782 = 0.0f;
                    if (false)
                    {
                        _10781 = lerp(0.0f, 0.039999999105930328369140625f, clamp((max(0.039999999105930328369140625f, max(0.039999999105930328369140625f, 0.039999999105930328369140625f)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f)).xxx;
                        _10782 = 0.0f;
                    }
                    else
                    {
                        _10781 = _10769;
                        _10782 = 0.0f;
                    }
                    _10783 = _10781;
                    _10784 = _10782;
                }
                else
                {
                    _10783 = _10769;
                    _10784 = 0.0f;
                }
                _10787 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10788 = 1u;
                _10789 = (true && all(bool3(true, true, true))) && true;
                _10790 = true;
                _10791 = _10783;
                _10792 = _10784;
                _10793 = 1.0f;
                _10794 = (_8509 | 0u) | 0u;
                break;
            }
            case 3u:
            {
                float3 _10738 = 0.0f.xxx;
                do
                {
                    float3 _10735 = 0.0f.xxx;
                    bool _10736 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10735 = lerp(_10659.xyz, _8404.xyz, clamp((max(0.0f, max(_10662, _10666)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10736 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10735 = _10659.xyz;
                            _10736 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10735 = _10659.xyz;
                            _10736 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10735 = _10659.xyz;
                            _10736 = true;
                            break;
                        }
                        default:
                        {
                            _10735 = _449;
                            _10736 = false;
                            break;
                        }
                    }
                    if (_10736)
                    {
                        _10738 = _10735;
                        break;
                    }
                    _10738 = 0.0f.xxx;
                    break;
                } while(false);
                _10787 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10788 = 1u;
                _10789 = false;
                _10790 = false;
                _10791 = _10738 * 1.0f;
                _10792 = 1.0f;
                _10793 = 1.0f;
                _10794 = (_8509 & 4294967288u) | 5u;
                break;
            }
            case 5u:
            {
                _10787 = 0.0f.xxx;
                _10788 = 1u;
                _10789 = false;
                _10790 = false;
                _10791 = 0.0f.xxx;
                _10792 = 1.0f;
                _10793 = 1.0f;
                _10794 = ((_8509 | 0u) & 4294967288u) | 6u;
                break;
            }
            case 4u:
            {
                float3 _10708 = 0.0f.xxx;
                do
                {
                    float3 _10705 = 0.0f.xxx;
                    bool _10706 = false;
                    switch (4u)
                    {
                        case 0u:
                        {
                            _10705 = lerp(_10659.xyz, _8404.xyz, clamp((max(0.0f, max(_10662, _10666)) - 0.07999999821186065673828125f) * 3.125f, 0.0f, 1.0f).xxx);
                            _10706 = true;
                            break;
                        }
                        case 3u:
                        {
                            _10705 = _10659.xyz;
                            _10706 = true;
                            break;
                        }
                        case 5u:
                        {
                            _10705 = _10659.xyz;
                            _10706 = true;
                            break;
                        }
                        case 4u:
                        {
                            _10705 = _10659.xyz;
                            _10706 = true;
                            break;
                        }
                        default:
                        {
                            _10705 = _449;
                            _10706 = false;
                            break;
                        }
                    }
                    if (_10706)
                    {
                        _10708 = _10705;
                        break;
                    }
                    _10708 = 0.0f.xxx;
                    break;
                } while(false);
                _10787 = mad(0.0f.xxx, 1.0f.xxx, 0.0f.xxx);
                _10788 = 2u;
                _10789 = false;
                _10790 = false;
                _10791 = _10708 * 1.0f;
                _10792 = mad(1.0f, _10666, 0.0f);
                _10793 = 1.0f;
                _10794 = (_8509 & 4294967288u) | 4u;
                break;
            }
            default:
            {
                _10787 = 0.0f.xxx;
                _10788 = 0u;
                _10789 = true;
                _10790 = true;
                _10791 = 0.0f.xxx;
                _10792 = 0.0f;
                _10793 = 0.0f;
                _10794 = _8509;
                break;
            }
        }
        float3 _10795[4] = { _10655, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx };
        float3 _564[4] = _10795;
        _10799 = 8194u;
        _10800 = _10787;
        _10801 = _10788;
        _10802 = _10794;
        _10803 = _10789;
        _10804 = _10790;
        _10805 = _10791;
        _10806 = _10792;
        _10807 = _564[0u] * 1.0f;
        _10808 = _10793;
    }
    else
    {
        _10799 = 8192u;
        _10800 = 0.0f.xxx;
        _10801 = 0u;
        _10802 = _8509;
        _10803 = true;
        _10804 = true;
        _10805 = 0.0f.xxx;
        _10806 = 0.0f;
        _10807 = 0.0f.xxx;
        _10808 = 0.0f;
    }
    uint _10809 = uint(_10676);
    bool _10810 = _10808 > 0.0f;
    bool3 _10811 = _10810.xxx;
    float3 _10812 = normalize(_10807);
    float3 _10813 = float3(_10811.x ? _10812.x : 0.0f.xxx.x, _10811.y ? _10812.y : 0.0f.xxx.y, _10811.z ? _10812.z : 0.0f.xxx.z);
    float3 _10817 = _10805 / _10808.xxx;
    uint _10904 = 0u;
    uint _10905 = 0u;
    uint _10906 = 0u;
    if (_10804)
    {
        bool _10822 = _10803 && (_10809 == 1u);
        uint _10902 = 0u;
        uint _10903 = 0u;
        if (_10822)
        {
            uint _10835 = 0u;
            if (((_10799 >> 6u) & 1u) != 0u)
            {
                _10835 = 1u;
            }
            else
            {
                _10835 = 0u;
            }
            uint _10843 = 0u;
            if ((((_10799 >> 9u) & 1u) != 0u) && true)
            {
                _10843 = _10835 | 4u;
            }
            else
            {
                _10843 = _10835;
            }
            uint _10850 = 0u;
            if (((_10799 >> 10u) & 1u) != 0u)
            {
                _10850 = _10843 | 8u;
            }
            else
            {
                _10850 = _10843;
            }
            uint _10852 = (_10799 >> 2u) & 7u;
            uint _10857 = 0u;
            if (_10852 == 4u)
            {
                _10857 = _10850 | 16u;
            }
            else
            {
                _10857 = _10850;
            }
            uint _10862 = 0u;
            if (_10852 == 1u)
            {
                _10862 = _10857 | 32u;
            }
            else
            {
                _10862 = _10857;
            }
            uint _10867 = 0u;
            if (_10852 == 3u)
            {
                _10867 = _10862 | 64u;
            }
            else
            {
                _10867 = _10862;
            }
            uint _10868 = _10867 & 2u;
            uint _10900 = 0u;
            uint _10901 = 0u;
            if ((_10868 == 2u) || (_10868 == 3u))
            {
                _10900 = 1u;
                _10901 = 0u;
            }
            else
            {
                uint _10898 = 0u;
                uint _10899 = 0u;
                if ((_10867 & 4u) == 4u)
                {
                    _10898 = 2u;
                    _10899 = 0u;
                }
                else
                {
                    uint _10896 = 0u;
                    uint _10897 = 0u;
                    if ((_10867 & 40u) == 40u)
                    {
                        _10896 = 5u;
                        _10897 = 0u;
                    }
                    else
                    {
                        uint _10894 = 0u;
                        uint _10895 = 0u;
                        if ((_10867 & 32u) == 32u)
                        {
                            _10894 = 3u;
                            _10895 = 0u;
                        }
                        else
                        {
                            bool _10891 = (_10867 & 72u) == 64u;
                            _10894 = _10891 ? 4u : 0u;
                            _10895 = _10891 ? 0u : 0u;
                        }
                        _10896 = _10894;
                        _10897 = _10895;
                    }
                    _10898 = _10896;
                    _10899 = _10897;
                }
                _10900 = _10898;
                _10901 = _10899;
            }
            _10902 = _10900;
            _10903 = _10901;
        }
        else
        {
            _10902 = 0u;
            _10903 = 0u;
        }
        _10904 = _10902;
        _10905 = _10903;
        _10906 = (_10802 & 4294967288u) | ((_10822 ? 1u : (_10822 ? 2u : 3u)) & 7u);
    }
    else
    {
        _10904 = 0u;
        _10905 = 0u;
        _10906 = _10802;
    }
    float3 _11305 = 0.0f.xxx;
    float _11306 = 0.0f;
    float2 _11307 = 0.0f.xx;
    [branch]
    if (_10676)
    {
        float3 _10909[4] = { _10655, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx };
        float3 _565[4] = _10909;
        uint _10911 = (_10799 >> 14u) & 3u;
        float _10914 = dot(_565[_10911], _646);
        float3 _11192 = 0.0f.xxx;
        float3 _11193 = 0.0f.xxx;
        float3 _11194 = 0.0f.xxx;
        float3 _11195 = 0.0f.xxx;
        switch ((_10799 >> 11u) & 7u)
        {
            case 0u:
            {
                float3 _11083 = _10659.xyz;
                float4 _11087 = View_ShadingEnergyGGXSpecTexture.SampleLevel(View_ShadingEnergySampler, float2(_10914, 0.001000000047497451305389404296875f), 0.0f);
                float _11088 = _11087.x;
                float3 _11092 = 1.0f.xxx + (_8404.xyz * ((1.0f - _11088) / _11088));
                float _11105 = (View_View_bShadingEnergyPreservation != 0u) ? (1.0f - dot(float3(_10675.x ? _11092.x : 1.0f.xxx.x, _10675.y ? _11092.y : 1.0f.xxx.y, _10675.z ? _11092.z : 1.0f.xxx.z) * ((_8404.xyz * _11088) + ((-_8404.xyz) * _11087.y)), float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f))) : 1.0f;
                float3 _11106 = _11083 * _11105;
                uint _11108 = (_10799 >> 2u) & 7u;
                float3 _11169 = 0.0f.xxx;
                [branch]
                if (_11108 == 4u)
                {
                    float _11117 = clamp(max(0.0f, max(0.0f, max(0.0f, 0.0f)) - 0.039999999105930328369140625f) * 3.0f, 0.0f, 1.0f);
                    float _11121 = abs(clamp(_10914, 0.0f, 1.0f));
                    float _11127 = clamp((mad(-0.15658299624919891357421875f, _11121, 1.57079637050628662109375f) * sqrt(1.0f - _11121)) * 0.636619746685028076171875f, 0.0f, 1.0f);
                    float _11136 = clamp(mad(10.0f, 0.001587301609106361865997314453125f, 1.0f), 0.0f, 1.0f);
                    float _11137 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10659.x, _11127), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11136;
                    float _11144 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10659.y, _11127), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11136;
                    float _11151 = View_SimpleVolumeEnvTexture.SampleLevel(View_SimpleVolumeEnvTextureSampler, mad(float3(0.909090936183929443359375f, 0.909090936183929443359375f, 0.875f), float3(0.0f, _10659.z, _11127), float3(0.04545454680919647216796875f, 0.04545454680919647216796875f, 0.0625f)), 0.0f).x * _11136;
                    float3 _11152 = float3(_11137, _11144, _11151);
                    float _11157 = max(_11106.x, max(_11106.y, _11106.z));
                    float _11159 = max(_11137, max(_11144, _11151));
                    float3 _11165 = 0.0f.xxx;
                    if (_11157 < _11159)
                    {
                        _11165 = _11152 * (_11157 / _11159);
                    }
                    else
                    {
                        _11165 = _11152;
                    }
                    _11169 = lerp(_11106, _11165 * _11105, (_11117 * _11117).xxx);
                }
                else
                {
                    _11169 = _11106;
                }
                float3 _11184 = 0.0f.xxx;
                [branch]
                if (_11108 == 1u)
                {
                    _11184 = (0.3183098733425140380859375f.xxx * exp((-max(9.9999999747524270787835121154785e-07f.xxx, 1.0f.xxx / max(9.9999999600419720025001879548654e-13f.xxx, 0.0f.xxx))) * (1.0f / max(9.9999997473787516355514526367188e-05f, abs(1.0f))))) * _11105;
                }
                else
                {
                    _11184 = 0.0f.xxx;
                }
                [branch]
                if (((_10799 >> 9u) & 1u) != 0u)
                {
                    _11192 = _11169 * 1.0f;
                    _11193 = _565[_10911];
                    _11194 = _11184;
                    _11195 = _11083 * 1.0f;
                    break;
                }
                _11192 = _11169;
                _11193 = _565[_10911];
                _11194 = _11184;
                _11195 = _11083;
                break;
            }
            case 3u:
            {
                float3 _10927 = normalize(_646 - (_565[_10911] * dot(_646, _565[_10911])));
                float _10928 = min(0.0f, 1.0f);
                float _10929 = dot(_646, _10927);
                float _10931 = clamp(dot(_565[_10911], _10927), -1.0f, 1.0f);
                float _10932 = clamp(_10914, -1.0f, 1.0f);
                float _10933 = abs(_10932);
                float _10934 = mad(-0.15658299624919891357421875f, _10933, 1.57079637050628662109375f);
                float _10936 = sqrt(1.0f - _10933);
                float _10943 = abs(_10931);
                float _10944 = mad(-0.15658299624919891357421875f, _10943, 1.57079637050628662109375f);
                float _10946 = sqrt(1.0f - _10943);
                float _10956 = cos(0.5f * abs((1.57079637050628662109375f - ((_10932 >= 0.0f) ? (_10934 * _10936) : mad(-_10934, _10936, 3.1415927410125732421875f))) - (1.57079637050628662109375f - ((_10931 >= 0.0f) ? (_10944 * _10946) : mad(-_10944, _10946, 3.1415927410125732421875f)))));
                float3 _10958 = _10927 - (_565[_10911] * _10931);
                float3 _10960 = _646 - (_565[_10911] * _10932);
                float _10966 = dot(_10958, _10960) * rsqrt(mad(dot(_10958, _10958), dot(_10960, _10960), 9.9999997473787516355514526367188e-05f));
                float _10969 = sqrt(clamp(mad(0.5f, _10966, 0.5f), 0.0f, 1.0f));
                float _10973 = mad(1.5378702300949953496456146240234e-05f, 0.5f, 0.20000000298023223876953125f);
                float _10974 = mad(1.5378702300949953496456146240234e-05f, 2.0f, 0.20000000298023223876953125f);
                float _10982 = mad(0.0039215688593685626983642578125f, 0.0039215688593685626983642578125f, 0.20000000298023223876953125f) * (1.41421353816986083984375f * _10969);
                float _10983 = _10931 + _10932;
                float _10984 = mad(0.1398856937885284423828125f, mad(0.997551023960113525390625f * _10969, sqrt(mad(-_10932, _10932, 1.0f)), (-0.06994284689426422119140625f) * _10932), _10983);
                float _10996 = 1.0f - sqrt(clamp(mad(0.5f, _10929, 0.5f), 0.0f, 1.0f));
                float _10997 = _10996 * _10996;
                float _11010 = _10983 - 0.0350000001490116119384765625f;
                float _11018 = 1.0f / mad(0.36000001430511474609375f, _10956, 1.190000057220458984375f / _10956);
                float _11021 = _10969 * mad(_11018, mad(-0.800000011920928955078125f, _10966, 0.60000002384185791015625f), 1.0f);
                float _11026 = -_10956;
                float _11027 = mad(_11026, sqrt(clamp(mad(-_11021, _11021, 1.0f), 0.0f, 1.0f)), 1.0f);
                float _11028 = _11027 * _11027;
                float _11032 = 1.0f - mad(0.95347940921783447265625f, (_11028 * _11028) * _11027, 0.0465205647051334381103515625f);
                float3 _11034 = abs(_10659.xyz);
                float _11035 = _11021 * _11018;
                float _11050 = _10983 - 0.14000000059604644775390625f;
                float _11058 = mad(_11026, 0.5f, 1.0f);
                float _11059 = _11058 * _11058;
                float _11062 = mad(0.95347940921783447265625f, (_11059 * _11059) * _11058, 0.0465205647051334381103515625f);
                float _11063 = 1.0f - _11062;
                float3 _11075 = (((((((exp(((-0.5f) * (_10984 * _10984)) / (_10982 * _10982)) / (2.5066282749176025390625f * _10982)) * (0.25f * _10969)) * mad(0.95347940921783447265625f, (_10997 * _10997) * _10996, 0.0465205647051334381103515625f)) * (_10662 * 2.0f)) * lerp(1.0f, _10928, clamp(-_10929, 0.0f, 1.0f))).xxx + ((pow(_11034, ((0.5f * sqrt(mad(-_11035, _11035, 1.0f))) / _10956).xxx) * (((exp(((-0.5f) * (_11010 * _11010)) / (_10973 * _10973)) / (2.5066282749176025390625f * _10973)) * exp(mad(-3.650000095367431640625f, _10966, -3.980000019073486328125f))) * (_11032 * _11032))) * _10928)) + (pow(_11034, (0.800000011920928955078125f / _10956).xxx) * (((exp(((-0.5f) * (_11050 * _11050)) / (_10974 * _10974)) / (2.5066282749176025390625f * _10974)) * exp(mad(17.0f, _10966, -16.7800006866455078125f))) * ((_11063 * _11063) * _11062)))) * 1.0f;
                _11192 = min(1.0f.xxx, (-min(-mad(0.0f.xxx, float3(1.0f.xxx.x, 1.0f.xxx.y, 1.0f.xxx.z), _11075), 0.0f.xxx)) * 6.283185482025146484375f);
                _11193 = _10927;
                _11194 = 0.0f.xxx;
                _11195 = 0.0f.xxx;
                break;
            }
            case 5u:
            {
                float3 _10921 = _10659.xyz;
                _11192 = _10921 * 1.0f;
                _11193 = _565[_10911];
                _11194 = 0.0f.xxx;
                _11195 = _10921;
                break;
            }
            default:
            {
                _11192 = 0.0f.xxx;
                _11193 = 0.0f.xxx;
                _11194 = 0.0f.xxx;
                _11195 = 0.0f.xxx;
                break;
            }
        }
        float3 _11284 = 0.0f.xxx;
        float3 _11285 = 0.0f.xxx;
        if (_8533)
        {
            float4 _11203 = float4(_11193, 1.0f);
            float3 _11207 = 0.0f.xxx;
            _11207.x = dot(View_SkyIrradianceEnvironmentMap[0u], _11203);
            _11207.y = dot(View_SkyIrradianceEnvironmentMap[1u], _11203);
            _11207.z = dot(View_SkyIrradianceEnvironmentMap[2u], _11203);
            float4 _11218 = _11203.xyzz * _11203.yzzx;
            float3 _11222 = 0.0f.xxx;
            _11222.x = dot(View_SkyIrradianceEnvironmentMap[3u], _11218);
            _11222.y = dot(View_SkyIrradianceEnvironmentMap[4u], _11218);
            _11222.z = dot(View_SkyIrradianceEnvironmentMap[5u], _11218);
            float3 _11283 = 0.0f.xxx;
            if (any(bool3(_11194.x > 0.0f.xxx.x, _11194.y > 0.0f.xxx.y, _11194.z > 0.0f.xxx.z)))
            {
                float3 _11246 = -_11193;
                float _11247 = _11246.x;
                float _11248 = _11246.y;
                float4 _11250 = float4(_11247, _11248, _11246.z, 1.0f);
                float3 _11253 = 0.0f.xxx;
                _11253.x = dot(View_SkyIrradianceEnvironmentMap[0u], _11250);
                _11253.y = dot(View_SkyIrradianceEnvironmentMap[1u], _11250);
                _11253.z = dot(View_SkyIrradianceEnvironmentMap[2u], _11250);
                float4 _11262 = _11250.xyzz * _11250.yzzx;
                float3 _11265 = 0.0f.xxx;
                _11265.x = dot(View_SkyIrradianceEnvironmentMap[3u], _11262);
                _11265.y = dot(View_SkyIrradianceEnvironmentMap[4u], _11262);
                _11265.z = dot(View_SkyIrradianceEnvironmentMap[5u], _11262);
                _11283 = (max(0.0f.xxx, (_11253 + _11265) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_11247, _11247, -(_11248 * _11248)))) * View_View_SkyLightColor.xyz) * 1.0f;
            }
            else
            {
                _11283 = 0.0f.xxx;
            }
            _11284 = (max(0.0f.xxx, (_11207 + _11222) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_11193.x, _11193.x, -(_11193.y * _11193.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
            _11285 = _11283;
        }
        else
        {
            _11284 = 0.0f.xxx;
            _11285 = 0.0f.xxx;
        }
        float2 _11300 = 0.0f.xx;
        _11300.x = max(1.0f.xxx, 0.99960005283355712890625f.xxx).y;
        _11300.y = 0.0f;
        _11305 = mad(mad(_11284, _11192, _11285 * _11194), max(1.0f.xxx, ((((((_11195 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_11195 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_11195 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), _10800);
        _11306 = 1.0f;
        _11307 = _11300;
    }
    else
    {
        _11305 = _10800;
        _11306 = 0.0f;
        _11307 = 0.0f.xx;
    }
    float2 _11310 = _11307 * (1.0f / max(1.0f, _11306));
    uint _11325 = (_10906 & 4294902015u) | ((uint(min(255.0f, mad(log2(mad(_11310.y * _11310.x, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f) * 255.0f)) & 255u) << 8u);
    uint _11326 = _11325 & 7u;
    bool _11328 = (_11326 == 1u) || false;
    bool _11329 = _11326 == 4u;
    bool _11331 = (_11326 == 2u) || false;
    bool _11332 = _11326 == 5u;
    bool _11333 = _11326 == 6u;
    bool _11340 = !_11329;
    bool _11341 = (((!_11328) && (!_11331)) && (!(_11332 || _11333))) && _11340;
    uint _11388 = 0u;
    uint _11389 = 0u;
    if (_11341)
    {
        float2 _11361 = _10655.xy / dot(1.0f.xxx, abs(_10655)).xx;
        float3 _11379 = 0.0f.xxx;
        if (_10655.z <= 0.0f)
        {
            float2 _11370 = _11361.xy;
            bool2 _11371 = bool2(_11370.x >= 0.0f.xx.x, _11370.y >= 0.0f.xx.y);
            float2 _11377 = (1.0f.xx - abs(_11361.yx)) * float2(_11371.x ? 1.0f : (-1.0f), _11371.y ? 1.0f : (-1.0f));
            _11379 = float3(_11377.x, _11377.y, _10655.z);
        }
        else
        {
            _11379 = float3(_11361.x, _11361.y, _10655.z);
        }
        _11388 = spvPackHalf2x16(float2(_11379.x, 0.0f)) | (spvPackHalf2x16(float2(_11379.y, 0.0f)) << 16u);
        _11389 = (((((((0u | ((_10809 & 15u) << 16u)) & 4287627263u) | 1048576u) & 4169138175u) | 0u) | (_11325 & 134217728u)) & 4294901760u) | ((_11325 & 65535u) << 0u);
    }
    else
    {
        _11388 = 0u;
        _11389 = 0u;
    }
    uint _11390 = _11341 ? 2u : 0u;
    uint _13398 = 0u;
    uint _13399 = 0u;
    uint _13400 = 0u;
    uint _13401 = 0u;
    uint _13402 = 0u;
    [branch]
    if (_10676)
    {
        uint _11400 = (((_10799 & 4294967263u) | 32u) & 4294901759u) | ((uint(any(bool3(false, false, false))) & 1u) << 16u);
        bool _11401 = _11328 && true;
        uint _12575 = 0u;
        uint _12576 = 0u;
        uint _12577 = 0u;
        uint _12578 = 0u;
        uint _12579 = 0u;
        if (_11401)
        {
            float _12417 = _8376 - 0.5f;
            float _12418 = _12417 * 0.0078740157186985015869140625f;
            float3 _12420 = float3(_12418, _12418, _12417 * 0.01587301678955554962158203125f);
            float3 _12421 = clamp(_10659.xyz, 0.0f.xxx, 1.0f.xxx);
            float _12422 = _12421.x;
            float _12431 = 0.0f;
            do
            {
                if (_12422 < 0.00313066993840038776397705078125f)
                {
                    _12431 = _12422 * 12.9200000762939453125f;
                    break;
                }
                _12431 = mad(pow(_12422, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12432 = _12421.y;
            float _12441 = 0.0f;
            do
            {
                if (_12432 < 0.00313066993840038776397705078125f)
                {
                    _12441 = _12432 * 12.9200000762939453125f;
                    break;
                }
                _12441 = mad(pow(_12432, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12442 = _12421.z;
            float _12451 = 0.0f;
            do
            {
                if (_12442 < 0.00313066993840038776397705078125f)
                {
                    _12451 = _12442 * 12.9200000762939453125f;
                    break;
                }
                _12451 = mad(pow(_12442, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float3 _12452 = float3(_12431, _12441, _12451);
            float3 _12458 = clamp(mad(_12420, float3(min((asuint(_12452) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12452), 0.0f.xxx, 1.0f.xxx);
            uint _12472 = ((uint(_12458.x * 127.0f) << 0u) | (uint(_12458.y * 127.0f) << 7u)) | (uint(_12458.z * 63.0f) << 14u);
            float3 _12477 = clamp(_8404.xyz, 0.0f.xxx, 1.0f.xxx);
            float _12478 = _12477.x;
            float _12487 = 0.0f;
            do
            {
                if (_12478 < 0.00313066993840038776397705078125f)
                {
                    _12487 = _12478 * 12.9200000762939453125f;
                    break;
                }
                _12487 = mad(pow(_12478, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12488 = _12477.y;
            float _12497 = 0.0f;
            do
            {
                if (_12488 < 0.00313066993840038776397705078125f)
                {
                    _12497 = _12488 * 12.9200000762939453125f;
                    break;
                }
                _12497 = mad(pow(_12488, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float _12498 = _12477.z;
            float _12507 = 0.0f;
            do
            {
                if (_12498 < 0.00313066993840038776397705078125f)
                {
                    _12507 = _12498 * 12.9200000762939453125f;
                    break;
                }
                _12507 = mad(pow(_12498, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                break;
            } while(false);
            float3 _12508 = float3(_12487, _12497, _12507);
            float3 _12514 = clamp(mad(_12420, float3(min((asuint(_12508) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12508), 0.0f.xxx, 1.0f.xxx);
            uint _12536 = ((0u | ((_11325 & 65535u) << 0u)) & 65535u) | (((((_12472 >> 12u) & 255u) << 8u) | 0u) << 16u);
            uint _12551 = 0u;
            uint _12552 = 0u;
            uint _12553 = 0u;
            if (_11390 < 3u)
            {
                _12551 = (_11390 == 2u) ? _12536 : 0u;
                _12552 = (_11390 == 1u) ? _12536 : _11388;
                _12553 = (_11390 == 0u) ? _12536 : _11389;
            }
            else
            {
                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 - 3u)] = _12536;
                _12551 = 0u;
                _12552 = _11388;
                _12553 = _11389;
            }
            uint _12554 = _11390 + 1u;
            uint _12556 = (((uint(_12514.x * 127.0f) << 0u) | (uint(_12514.y * 127.0f) << 7u)) | (uint(_12514.z * 63.0f) << 14u)) | ((_12472 & 4095u) << 20u);
            uint _12571 = 0u;
            uint _12572 = 0u;
            uint _12573 = 0u;
            if (_12554 < 3u)
            {
                _12571 = (_12554 == 2u) ? _12556 : _12551;
                _12572 = (_12554 == 1u) ? _12556 : _12552;
                _12573 = (_12554 == 0u) ? _12556 : _12553;
            }
            else
            {
                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 + 4294967294u)] = _12556;
                _12571 = _12551;
                _12572 = _12552;
                _12573 = _12553;
            }
            _12575 = 0u;
            _12576 = _12571;
            _12577 = _12572;
            _12578 = _12573;
            _12579 = _11390 + 2u;
        }
        else
        {
            uint _12411 = 0u;
            uint _12412 = 0u;
            uint _12413 = 0u;
            uint _12414 = 0u;
            uint _12415 = 0u;
            if (_11331 && true)
            {
                uint _11641 = (_11400 & 4294967293u) | 2u;
                uint _11648 = ((0u | ((_11325 & 65535u) << 0u)) & 65535u) | ((_10904 & 7u) << 16u);
                uint _12406 = 0u;
                uint _12407 = 0u;
                uint _12408 = 0u;
                uint _12409 = 0u;
                uint _12410 = 0u;
                [branch]
                if (_10904 == 0u)
                {
                    uint _12387 = _11648 | ((_11641 & 2047u) << 19u);
                    uint _12402 = 0u;
                    uint _12403 = 0u;
                    uint _12404 = 0u;
                    if (_11390 < 3u)
                    {
                        _12402 = (_11390 == 2u) ? _12387 : 0u;
                        _12403 = (_11390 == 1u) ? _12387 : _11388;
                        _12404 = (_11390 == 0u) ? _12387 : _11389;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 - 3u)] = _12387;
                        _12402 = 0u;
                        _12403 = _11388;
                        _12404 = _11389;
                    }
                    _12406 = _11641;
                    _12407 = _12402;
                    _12408 = _12403;
                    _12409 = _12404;
                    _12410 = _11390 + 1u;
                }
                else
                {
                    uint _12380 = 0u;
                    uint _12381 = 0u;
                    uint _12382 = 0u;
                    uint _12383 = 0u;
                    uint _12384 = 0u;
                    if (_10904 == 1u)
                    {
                        float _12256 = _8376 - 0.5f;
                        float _12257 = _12256 * 0.0078740157186985015869140625f;
                        float3 _12260 = clamp(_10659.xyz, 0.0f.xxx, 1.0f.xxx);
                        float _12261 = _12260.x;
                        float _12270 = 0.0f;
                        do
                        {
                            if (_12261 < 0.00313066993840038776397705078125f)
                            {
                                _12270 = _12261 * 12.9200000762939453125f;
                                break;
                            }
                            _12270 = mad(pow(_12261, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12271 = _12260.y;
                        float _12280 = 0.0f;
                        do
                        {
                            if (_12271 < 0.00313066993840038776397705078125f)
                            {
                                _12280 = _12271 * 12.9200000762939453125f;
                                break;
                            }
                            _12280 = mad(pow(_12271, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12281 = _12260.z;
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
                        float3 _12291 = float3(_12270, _12280, _12290);
                        float3 _12297 = clamp(mad(float3(_12257, _12257, _12256 * 0.01587301678955554962158203125f), float3(min((asuint(_12291) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12291), 0.0f.xxx, 1.0f.xxx);
                        uint _12323 = _11648 | 0u;
                        uint _12338 = 0u;
                        uint _12339 = 0u;
                        uint _12340 = 0u;
                        if (_11390 < 3u)
                        {
                            _12338 = (_11390 == 2u) ? _12323 : 0u;
                            _12339 = (_11390 == 1u) ? _12323 : _11388;
                            _12340 = (_11390 == 0u) ? _12323 : _11389;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 - 3u)] = _12323;
                            _12338 = 0u;
                            _12339 = _11388;
                            _12340 = _11389;
                        }
                        uint _12341 = _11390 + 1u;
                        uint _12342 = (((uint(_12297.x * 127.0f) << 0u) | (uint(_12297.y * 127.0f) << 7u)) | (uint(_12297.z * 63.0f) << 14u)) | 0u;
                        uint _12357 = 0u;
                        uint _12358 = 0u;
                        uint _12359 = 0u;
                        if (_12341 < 3u)
                        {
                            _12357 = (_12341 == 2u) ? _12342 : _12338;
                            _12358 = (_12341 == 1u) ? _12342 : _12339;
                            _12359 = (_12341 == 0u) ? _12342 : _12340;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 + 4294967294u)] = _12342;
                            _12357 = _12338;
                            _12358 = _12339;
                            _12359 = _12340;
                        }
                        uint _12360 = _11390 + 2u;
                        uint _12361 = (((0u | (uint(clamp(_10662, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_10666, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u) | 0u;
                        uint _12376 = 0u;
                        uint _12377 = 0u;
                        uint _12378 = 0u;
                        if (_12360 < 3u)
                        {
                            _12376 = (_12360 == 2u) ? _12361 : _12357;
                            _12377 = (_12360 == 1u) ? _12361 : _12358;
                            _12378 = (_12360 == 0u) ? _12361 : _12359;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 + 4294967295u)] = _12361;
                            _12376 = _12357;
                            _12377 = _12358;
                            _12378 = _12359;
                        }
                        _12380 = 0u;
                        _12381 = _12376;
                        _12382 = _12377;
                        _12383 = _12378;
                        _12384 = _11390 + 3u;
                    }
                    else
                    {
                        uint _12250 = 0u;
                        uint _12251 = 0u;
                        uint _12252 = 0u;
                        uint _12253 = 0u;
                        uint _12254 = 0u;
                        if (_10904 == 2u)
                        {
                            float _12041 = _8376 - 0.5f;
                            float _12042 = _12041 * 0.0078740157186985015869140625f;
                            float3 _12044 = float3(_12042, _12042, _12041 * 0.01587301678955554962158203125f);
                            float3 _12045 = clamp(_10659.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _12046 = _12045.x;
                            float _12055 = 0.0f;
                            do
                            {
                                if (_12046 < 0.00313066993840038776397705078125f)
                                {
                                    _12055 = _12046 * 12.9200000762939453125f;
                                    break;
                                }
                                _12055 = mad(pow(_12046, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12056 = _12045.y;
                            float _12065 = 0.0f;
                            do
                            {
                                if (_12056 < 0.00313066993840038776397705078125f)
                                {
                                    _12065 = _12056 * 12.9200000762939453125f;
                                    break;
                                }
                                _12065 = mad(pow(_12056, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12066 = _12045.z;
                            float _12075 = 0.0f;
                            do
                            {
                                if (_12066 < 0.00313066993840038776397705078125f)
                                {
                                    _12075 = _12066 * 12.9200000762939453125f;
                                    break;
                                }
                                _12075 = mad(pow(_12066, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12076 = float3(_12055, _12065, _12075);
                            float3 _12082 = clamp(mad(_12044, float3(min((asuint(_12076) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12076), 0.0f.xxx, 1.0f.xxx);
                            float3 _12098 = clamp(_8404.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _12099 = _12098.x;
                            float _12108 = 0.0f;
                            do
                            {
                                if (_12099 < 0.00313066993840038776397705078125f)
                                {
                                    _12108 = _12099 * 12.9200000762939453125f;
                                    break;
                                }
                                _12108 = mad(pow(_12099, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12109 = _12098.y;
                            float _12118 = 0.0f;
                            do
                            {
                                if (_12109 < 0.00313066993840038776397705078125f)
                                {
                                    _12118 = _12109 * 12.9200000762939453125f;
                                    break;
                                }
                                _12118 = mad(pow(_12109, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12119 = _12098.z;
                            float _12128 = 0.0f;
                            do
                            {
                                if (_12119 < 0.00313066993840038776397705078125f)
                                {
                                    _12128 = _12119 * 12.9200000762939453125f;
                                    break;
                                }
                                _12128 = mad(pow(_12119, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12129 = float3(_12108, _12118, _12128);
                            float3 _12135 = clamp(mad(_12044, float3(min((asuint(_12129) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12129), 0.0f.xxx, 1.0f.xxx);
                            float _12155 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12155 = 0.0f;
                                    break;
                                }
                                _12155 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12161 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12161 = 0.0f;
                                    break;
                                }
                                _12161 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _12167 = 0.0f;
                            do
                            {
                                if (true)
                                {
                                    _12167 = 0.0f;
                                    break;
                                }
                                _12167 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _12168 = float3(_12155, _12161, _12167);
                            float3 _12174 = clamp(mad(_12044, float3(min((asuint(_12168) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12168), 0.0f.xxx, 1.0f.xxx);
                            uint _12188 = ((uint(_12174.x * 127.0f) << 0u) | (uint(_12174.y * 127.0f) << 7u)) | (uint(_12174.z * 63.0f) << 14u);
                            uint _12189 = _11648 | 0u;
                            uint _12204 = 0u;
                            uint _12205 = 0u;
                            uint _12206 = 0u;
                            if (_11390 < 3u)
                            {
                                _12204 = (_11390 == 2u) ? _12189 : 0u;
                                _12205 = (_11390 == 1u) ? _12189 : _11388;
                                _12206 = (_11390 == 0u) ? _12189 : _11389;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 - 3u)] = _12189;
                                _12204 = 0u;
                                _12205 = _11388;
                                _12206 = _11389;
                            }
                            uint _12207 = _11390 + 1u;
                            uint _12210 = (((uint(_12082.x * 127.0f) << 0u) | (uint(_12082.y * 127.0f) << 7u)) | (uint(_12082.z * 63.0f) << 14u)) | ((_12188 & 1047552u) << 10u);
                            uint _12225 = 0u;
                            uint _12226 = 0u;
                            uint _12227 = 0u;
                            if (_12207 < 3u)
                            {
                                _12225 = (_12207 == 2u) ? _12210 : _12204;
                                _12226 = (_12207 == 1u) ? _12210 : _12205;
                                _12227 = (_12207 == 0u) ? _12210 : _12206;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 + 4294967294u)] = _12210;
                                _12225 = _12204;
                                _12226 = _12205;
                                _12227 = _12206;
                            }
                            uint _12228 = _11390 + 2u;
                            uint _12231 = (((uint(_12135.x * 127.0f) << 0u) | (uint(_12135.y * 127.0f) << 7u)) | (uint(_12135.z * 63.0f) << 14u)) | ((_12188 & 1023u) << 20u);
                            uint _12246 = 0u;
                            uint _12247 = 0u;
                            uint _12248 = 0u;
                            if (_12228 < 3u)
                            {
                                _12246 = (_12228 == 2u) ? _12231 : _12225;
                                _12247 = (_12228 == 1u) ? _12231 : _12226;
                                _12248 = (_12228 == 0u) ? _12231 : _12227;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 + 4294967295u)] = _12231;
                                _12246 = _12225;
                                _12247 = _12226;
                                _12248 = _12227;
                            }
                            _12250 = 0u;
                            _12251 = _12246;
                            _12252 = _12247;
                            _12253 = _12248;
                            _12254 = _11390 + 3u;
                        }
                        else
                        {
                            uint _12035 = 0u;
                            uint _12036 = 0u;
                            uint _12037 = 0u;
                            uint _12038 = 0u;
                            uint _12039 = 0u;
                            if ((_10904 == 3u) || (_10904 == 5u))
                            {
                                float _11845 = _8376 - 0.5f;
                                float _11846 = _11845 * 0.0078740157186985015869140625f;
                                float3 _11848 = float3(_11846, _11846, _11845 * 0.01587301678955554962158203125f);
                                float3 _11849 = clamp(_10659.xyz, 0.0f.xxx, 1.0f.xxx);
                                float _11850 = _11849.x;
                                float _11859 = 0.0f;
                                do
                                {
                                    if (_11850 < 0.00313066993840038776397705078125f)
                                    {
                                        _11859 = _11850 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11859 = mad(pow(_11850, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _11860 = _11849.y;
                                float _11869 = 0.0f;
                                do
                                {
                                    if (_11860 < 0.00313066993840038776397705078125f)
                                    {
                                        _11869 = _11860 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11869 = mad(pow(_11860, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _11870 = _11849.z;
                                float _11879 = 0.0f;
                                do
                                {
                                    if (_11870 < 0.00313066993840038776397705078125f)
                                    {
                                        _11879 = _11870 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11879 = mad(pow(_11870, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float3 _11880 = float3(_11859, _11869, _11879);
                                float3 _11886 = clamp(mad(_11848, float3(min((asuint(_11880) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11880), 0.0f.xxx, 1.0f.xxx);
                                float3 _11902 = clamp(_8404.xyz, 0.0f.xxx, 1.0f.xxx);
                                float _11903 = _11902.x;
                                float _11912 = 0.0f;
                                do
                                {
                                    if (_11903 < 0.00313066993840038776397705078125f)
                                    {
                                        _11912 = _11903 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11912 = mad(pow(_11903, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _11913 = _11902.y;
                                float _11922 = 0.0f;
                                do
                                {
                                    if (_11913 < 0.00313066993840038776397705078125f)
                                    {
                                        _11922 = _11913 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11922 = mad(pow(_11913, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float _11923 = _11902.z;
                                float _11932 = 0.0f;
                                do
                                {
                                    if (_11923 < 0.00313066993840038776397705078125f)
                                    {
                                        _11932 = _11923 * 12.9200000762939453125f;
                                        break;
                                    }
                                    _11932 = mad(pow(_11923, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                    break;
                                } while(false);
                                float3 _11933 = float3(_11912, _11922, _11932);
                                float3 _11939 = clamp(mad(_11848, float3(min((asuint(_11933) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11933), 0.0f.xxx, 1.0f.xxx);
                                uint _11958 = spvPackHalf2x16(0.0f.xx);
                                uint _11966 = (((_11958 << 15u) & 1072693248u) | ((_11958 << 5u) & 1047552u)) | ((_11958 >> 5u) & 1023u);
                                uint _11976 = (_11648 | ((uint(clamp(clamp(1.0f - abs(0.0f), 0.0f, 1.0f), 0.0f, 1.0f) * 127.0f) & 127u) << 19u)) | (((_11966 >> 24u) & 63u) << 26u);
                                uint _11991 = 0u;
                                uint _11992 = 0u;
                                uint _11993 = 0u;
                                if (_11390 < 3u)
                                {
                                    _11991 = (_11390 == 2u) ? _11976 : 0u;
                                    _11992 = (_11390 == 1u) ? _11976 : _11388;
                                    _11993 = (_11390 == 0u) ? _11976 : _11389;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 - 3u)] = _11976;
                                    _11991 = 0u;
                                    _11992 = _11388;
                                    _11993 = _11389;
                                }
                                uint _11994 = _11390 + 1u;
                                uint _11996 = (((uint(_11886.x * 127.0f) << 0u) | (uint(_11886.y * 127.0f) << 7u)) | (uint(_11886.z * 63.0f) << 14u)) | ((_11966 & 4095u) << 20u);
                                uint _12011 = 0u;
                                uint _12012 = 0u;
                                uint _12013 = 0u;
                                if (_11994 < 3u)
                                {
                                    _12011 = (_11994 == 2u) ? _11996 : _11991;
                                    _12012 = (_11994 == 1u) ? _11996 : _11992;
                                    _12013 = (_11994 == 0u) ? _11996 : _11993;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 + 4294967294u)] = _11996;
                                    _12011 = _11991;
                                    _12012 = _11992;
                                    _12013 = _11993;
                                }
                                uint _12014 = _11390 + 2u;
                                uint _12016 = (((uint(_11939.x * 127.0f) << 0u) | (uint(_11939.y * 127.0f) << 7u)) | (uint(_11939.z * 63.0f) << 14u)) | (((_11966 >> 12u) & 4095u) << 20u);
                                uint _12031 = 0u;
                                uint _12032 = 0u;
                                uint _12033 = 0u;
                                if (_12014 < 3u)
                                {
                                    _12031 = (_12014 == 2u) ? _12016 : _12011;
                                    _12032 = (_12014 == 1u) ? _12016 : _12012;
                                    _12033 = (_12014 == 0u) ? _12016 : _12013;
                                }
                                else
                                {
                                    OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 + 4294967295u)] = _12016;
                                    _12031 = _12011;
                                    _12032 = _12012;
                                    _12033 = _12013;
                                }
                                _12035 = 0u;
                                _12036 = _12031;
                                _12037 = _12032;
                                _12038 = _12033;
                                _12039 = _11390 + 3u;
                            }
                            else
                            {
                                bool _11667 = _10904 == 4u;
                                uint _11837 = 0u;
                                uint _11838 = 0u;
                                uint _11839 = 0u;
                                uint _11840 = 0u;
                                if (_11667)
                                {
                                    float _11671 = _8376 - 0.5f;
                                    float _11672 = _11671 * 0.0078740157186985015869140625f;
                                    float3 _11674 = float3(_11672, _11672, _11671 * 0.01587301678955554962158203125f);
                                    float3 _11675 = clamp(_10659.xyz, 0.0f.xxx, 1.0f.xxx);
                                    float _11676 = _11675.x;
                                    float _11685 = 0.0f;
                                    do
                                    {
                                        if (_11676 < 0.00313066993840038776397705078125f)
                                        {
                                            _11685 = _11676 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11685 = mad(pow(_11676, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11686 = _11675.y;
                                    float _11695 = 0.0f;
                                    do
                                    {
                                        if (_11686 < 0.00313066993840038776397705078125f)
                                        {
                                            _11695 = _11686 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11695 = mad(pow(_11686, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float _11696 = _11675.z;
                                    float _11705 = 0.0f;
                                    do
                                    {
                                        if (_11696 < 0.00313066993840038776397705078125f)
                                        {
                                            _11705 = _11696 * 12.9200000762939453125f;
                                            break;
                                        }
                                        _11705 = mad(pow(_11696, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                        break;
                                    } while(false);
                                    float3 _11706 = float3(_11685, _11695, _11705);
                                    float3 _11712 = clamp(mad(_11674, float3(min((asuint(_11706) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11706), 0.0f.xxx, 1.0f.xxx);
                                    float3 _11728 = clamp(_8404.xyz, 0.0f.xxx, 1.0f.xxx);
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
                                    float3 _11765 = clamp(mad(_11674, float3(min((asuint(_11759) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11759), 0.0f.xxx, 1.0f.xxx);
                                    uint _11780 = _11648 | 0u;
                                    uint _11795 = 0u;
                                    uint _11796 = 0u;
                                    uint _11797 = 0u;
                                    if (_11390 < 3u)
                                    {
                                        _11795 = (_11390 == 2u) ? _11780 : 0u;
                                        _11796 = (_11390 == 1u) ? _11780 : _11388;
                                        _11797 = (_11390 == 0u) ? _11780 : _11389;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 - 3u)] = _11780;
                                        _11795 = 0u;
                                        _11796 = _11388;
                                        _11797 = _11389;
                                    }
                                    uint _11798 = _11390 + 1u;
                                    uint _11799 = (((uint(_11712.x * 127.0f) << 0u) | (uint(_11712.y * 127.0f) << 7u)) | (uint(_11712.z * 63.0f) << 14u)) | 0u;
                                    uint _11814 = 0u;
                                    uint _11815 = 0u;
                                    uint _11816 = 0u;
                                    if (_11798 < 3u)
                                    {
                                        _11814 = (_11798 == 2u) ? _11799 : _11795;
                                        _11815 = (_11798 == 1u) ? _11799 : _11796;
                                        _11816 = (_11798 == 0u) ? _11799 : _11797;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 + 4294967294u)] = _11799;
                                        _11814 = _11795;
                                        _11815 = _11796;
                                        _11816 = _11797;
                                    }
                                    uint _11817 = _11390 + 2u;
                                    uint _11818 = (((uint(_11765.x * 127.0f) << 0u) | (uint(_11765.y * 127.0f) << 7u)) | (uint(_11765.z * 63.0f) << 14u)) | 0u;
                                    uint _11833 = 0u;
                                    uint _11834 = 0u;
                                    uint _11835 = 0u;
                                    if (_11817 < 3u)
                                    {
                                        _11833 = (_11817 == 2u) ? _11818 : _11814;
                                        _11834 = (_11817 == 1u) ? _11818 : _11815;
                                        _11835 = (_11817 == 0u) ? _11818 : _11816;
                                    }
                                    else
                                    {
                                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 + 4294967295u)] = _11818;
                                        _11833 = _11814;
                                        _11834 = _11815;
                                        _11835 = _11816;
                                    }
                                    _11837 = _11833;
                                    _11838 = _11834;
                                    _11839 = _11835;
                                    _11840 = _11390 + 3u;
                                }
                                else
                                {
                                    _11837 = 0u;
                                    _11838 = _11388;
                                    _11839 = _11389;
                                    _11840 = _11390;
                                }
                                _12035 = _11667 ? 0u : _11641;
                                _12036 = _11837;
                                _12037 = _11838;
                                _12038 = _11839;
                                _12039 = _11840;
                            }
                            _12250 = _12035;
                            _12251 = _12036;
                            _12252 = _12037;
                            _12253 = _12038;
                            _12254 = _12039;
                        }
                        _12380 = _12250;
                        _12381 = _12251;
                        _12382 = _12252;
                        _12383 = _12253;
                        _12384 = _12254;
                    }
                    _12406 = _12380;
                    _12407 = _12381;
                    _12408 = _12382;
                    _12409 = _12383;
                    _12410 = _12384;
                }
                _12411 = _12406;
                _12412 = _12407;
                _12413 = _12408;
                _12414 = _12409;
                _12415 = _12410;
            }
            else
            {
                uint _11635 = 0u;
                uint _11636 = 0u;
                uint _11637 = 0u;
                uint _11638 = 0u;
                uint _11639 = 0u;
                if (_11333)
                {
                    uint _11616 = ((0u | ((_11325 & 65535u) << 0u)) & 65535u) | ((0u | (uint(clamp(_10662, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u);
                    uint _11631 = 0u;
                    uint _11632 = 0u;
                    uint _11633 = 0u;
                    if (_11390 < 3u)
                    {
                        _11631 = (_11390 == 2u) ? _11616 : 0u;
                        _11632 = (_11390 == 1u) ? _11616 : _11388;
                        _11633 = (_11390 == 0u) ? _11616 : _11389;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 - 3u)] = _11616;
                        _11631 = 0u;
                        _11632 = _11388;
                        _11633 = _11389;
                    }
                    _11635 = _11400;
                    _11636 = _11631;
                    _11637 = _11632;
                    _11638 = _11633;
                    _11639 = _11390 + 1u;
                }
                else
                {
                    uint _11601 = 0u;
                    uint _11602 = 0u;
                    uint _11603 = 0u;
                    uint _11604 = 0u;
                    uint _11605 = 0u;
                    if (_11332)
                    {
                        uint _11582 = (0u | ((_11325 & 65535u) << 0u)) & 65535u;
                        uint _11597 = 0u;
                        uint _11598 = 0u;
                        uint _11599 = 0u;
                        if (_11390 < 3u)
                        {
                            _11597 = (_11390 == 2u) ? _11582 : 0u;
                            _11598 = (_11390 == 1u) ? _11582 : _11388;
                            _11599 = (_11390 == 0u) ? _11582 : _11389;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 - 3u)] = _11582;
                            _11597 = 0u;
                            _11598 = _11388;
                            _11599 = _11389;
                        }
                        _11601 = _11400;
                        _11602 = _11597;
                        _11603 = _11598;
                        _11604 = _11599;
                        _11605 = _11390 + 1u;
                    }
                    else
                    {
                        uint _11574 = 0u;
                        uint _11575 = 0u;
                        uint _11576 = 0u;
                        uint _11577 = 0u;
                        uint _11578 = 0u;
                        if (_11329)
                        {
                            float _11444 = _8376 - 0.5f;
                            float _11445 = _11444 * 0.0078740157186985015869140625f;
                            float3 _11447 = float3(_11445, _11445, _11444 * 0.01587301678955554962158203125f);
                            float3 _11448 = clamp(_10659.xyz, 0.0f.xxx, 1.0f.xxx);
                            float _11449 = _11448.x;
                            float _11458 = 0.0f;
                            do
                            {
                                if (_11449 < 0.00313066993840038776397705078125f)
                                {
                                    _11458 = _11449 * 12.9200000762939453125f;
                                    break;
                                }
                                _11458 = mad(pow(_11449, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _11459 = _11448.y;
                            float _11468 = 0.0f;
                            do
                            {
                                if (_11459 < 0.00313066993840038776397705078125f)
                                {
                                    _11468 = _11459 * 12.9200000762939453125f;
                                    break;
                                }
                                _11468 = mad(pow(_11459, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _11469 = _11448.z;
                            float _11478 = 0.0f;
                            do
                            {
                                if (_11469 < 0.00313066993840038776397705078125f)
                                {
                                    _11478 = _11469 * 12.9200000762939453125f;
                                    break;
                                }
                                _11478 = mad(pow(_11469, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float3 _11479 = float3(_11458, _11468, _11478);
                            float3 _11485 = clamp(mad(_11447, float3(min((asuint(_11479) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11479), 0.0f.xxx, 1.0f.xxx);
                            uint _11499 = ((uint(_11485.x * 127.0f) << 0u) | (uint(_11485.y * 127.0f) << 7u)) | (uint(_11485.z * 63.0f) << 14u);
                            float3 _11507 = clamp(float3(_10668, 0.0f, _10662), 0.0f.xxx, 1.0f.xxx);
                            float3 _11513 = clamp(mad(_11447, float3(min((asuint(_11507) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _11507), 0.0f.xxx, 1.0f.xxx);
                            uint _11535 = ((0u | ((_11325 & 65535u) << 0u)) & 65535u) | (((((_11499 >> 12u) & 255u) << 8u) | uint(clamp(_10666, 0.0f, 1.0f) * 255.0f)) << 16u);
                            uint _11550 = 0u;
                            uint _11551 = 0u;
                            uint _11552 = 0u;
                            if (_11390 < 3u)
                            {
                                _11550 = (_11390 == 2u) ? _11535 : 0u;
                                _11551 = (_11390 == 1u) ? _11535 : _11388;
                                _11552 = (_11390 == 0u) ? _11535 : _11389;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 - 3u)] = _11535;
                                _11550 = 0u;
                                _11551 = _11388;
                                _11552 = _11389;
                            }
                            uint _11553 = _11390 + 1u;
                            uint _11555 = ((_11499 & 4095u) << 20u) | (((uint(_11513.x * 127.0f) << 0u) | (uint(_11513.y * 127.0f) << 7u)) | (uint(_11513.z * 63.0f) << 14u));
                            uint _11570 = 0u;
                            uint _11571 = 0u;
                            uint _11572 = 0u;
                            if (_11553 < 3u)
                            {
                                _11570 = (_11553 == 2u) ? _11555 : _11550;
                                _11571 = (_11553 == 1u) ? _11555 : _11551;
                                _11572 = (_11553 == 0u) ? _11555 : _11552;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 + 4294967294u)] = _11555;
                                _11570 = _11550;
                                _11571 = _11551;
                                _11572 = _11552;
                            }
                            _11574 = 0u;
                            _11575 = _11570;
                            _11576 = _11571;
                            _11577 = _11572;
                            _11578 = _11390 + 2u;
                        }
                        else
                        {
                            uint _11424 = (_11400 & 4194303u) | ((((spvPackHalf2x16(float2(1.0f, 0.0f)) >> 5u) & 1023u) & 1023u) << 22u);
                            uint _11439 = 0u;
                            uint _11440 = 0u;
                            uint _11441 = 0u;
                            if (_11390 < 3u)
                            {
                                _11439 = (_11390 == 2u) ? _11424 : 0u;
                                _11440 = (_11390 == 1u) ? _11424 : _11388;
                                _11441 = (_11390 == 0u) ? _11424 : _11389;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _11390 - 3u)] = _11424;
                                _11439 = 0u;
                                _11440 = _11388;
                                _11441 = _11389;
                            }
                            _11574 = _11424;
                            _11575 = _11439;
                            _11576 = _11440;
                            _11577 = _11441;
                            _11578 = _11390 + 1u;
                        }
                        _11601 = _11574;
                        _11602 = _11575;
                        _11603 = _11576;
                        _11604 = _11577;
                        _11605 = _11578;
                    }
                    _11635 = _11601;
                    _11636 = _11602;
                    _11637 = _11603;
                    _11638 = _11604;
                    _11639 = _11605;
                }
                _12411 = _11635;
                _12412 = _11636;
                _12413 = _11637;
                _12414 = _11638;
                _12415 = _11639;
            }
            _12575 = _12411;
            _12576 = _12412;
            _12577 = _12413;
            _12578 = _12414;
            _12579 = _12415;
        }
        uint _13393 = 0u;
        uint _13394 = 0u;
        uint _13395 = 0u;
        uint _13396 = 0u;
        uint _13397 = 0u;
        if (((!_11401) && _11340) && (_10904 == 0u))
        {
            uint _13388 = 0u;
            uint _13389 = 0u;
            uint _13390 = 0u;
            uint _13391 = 0u;
            uint _13392 = 0u;
            switch ((_12575 >> 11u) & 7u)
            {
                case 0u:
                {
                    float _12883 = _8376 - 0.5f;
                    float _12884 = _12883 * 0.0078740157186985015869140625f;
                    float _12885 = _12883 * 0.01587301678955554962158203125f;
                    float3 _12886 = float3(_12884, _12884, _12885);
                    float3 _12887 = clamp(_10659.xyz, 0.0f.xxx, 1.0f.xxx);
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
                    float3 _12918 = float3(_12897, _12907, _12917);
                    float3 _12924 = clamp(mad(_12886, float3(min((asuint(_12918) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12918), 0.0f.xxx, 1.0f.xxx);
                    float3 _12940 = clamp(_8404.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12941 = _12940.x;
                    float _12950 = 0.0f;
                    do
                    {
                        if (_12941 < 0.00313066993840038776397705078125f)
                        {
                            _12950 = _12941 * 12.9200000762939453125f;
                            break;
                        }
                        _12950 = mad(pow(_12941, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12951 = _12940.y;
                    float _12960 = 0.0f;
                    do
                    {
                        if (_12951 < 0.00313066993840038776397705078125f)
                        {
                            _12960 = _12951 * 12.9200000762939453125f;
                            break;
                        }
                        _12960 = mad(pow(_12951, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12961 = _12940.z;
                    float _12970 = 0.0f;
                    do
                    {
                        if (_12961 < 0.00313066993840038776397705078125f)
                        {
                            _12970 = _12961 * 12.9200000762939453125f;
                            break;
                        }
                        _12970 = mad(pow(_12961, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float3 _12971 = float3(_12950, _12960, _12970);
                    float3 _12977 = clamp(mad(_12886, float3(min((asuint(_12971) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _12971), 0.0f.xxx, 1.0f.xxx);
                    uint _12991 = ((uint(_12977.x * 127.0f) << 0u) | (uint(_12977.y * 127.0f) << 7u)) | (uint(_12977.z * 63.0f) << 14u);
                    uint _12995 = (((((uint(_12924.x * 127.0f) << 0u) | (uint(_12924.y * 127.0f) << 7u)) | (uint(_12924.z * 63.0f) << 14u)) << 12u) & 4294963200u) | (_12991 & 4095u);
                    uint _13012 = 0u;
                    uint _13013 = 0u;
                    uint _13014 = 0u;
                    if (_12579 < 3u)
                    {
                        _13012 = (_12579 == 2u) ? _12995 : _12576;
                        _13013 = (_12579 == 1u) ? _12995 : _12577;
                        _13014 = (_12579 == 0u) ? _12995 : _12578;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _12579 - 3u)] = _12995;
                        _13012 = _12576;
                        _13013 = _12577;
                        _13014 = _12578;
                    }
                    uint _13015 = _12579 + 1u;
                    uint _13024 = ((_12991 >> 12u) & 255u) | ((0u | (uint(clamp((_10668 + 1.0f) * 0.5f, 0.0f, 1.0f) * 255.0f) << 16u)) | 2130706432u);
                    uint _13039 = 0u;
                    uint _13040 = 0u;
                    uint _13041 = 0u;
                    if (_13015 < 3u)
                    {
                        _13039 = (_13015 == 2u) ? _13024 : _13012;
                        _13040 = (_13015 == 1u) ? _13024 : _13013;
                        _13041 = (_13015 == 0u) ? _13024 : _13014;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _12579 + 4294967294u)] = _13024;
                        _13039 = _13012;
                        _13040 = _13013;
                        _13041 = _13014;
                    }
                    uint _13042 = _12579 + 2u;
                    uint _13093 = 0u;
                    uint _13094 = 0u;
                    uint _13095 = 0u;
                    uint _13096 = 0u;
                    if ((((_12575 >> 7u) & 1u) != 0u) || (((_12575 >> 6u) & 1u) != 0u))
                    {
                        bool3 _13055 = (max(0.0f, max(0.0f, 0.0f)) > 0.0f).xxx;
                        float3 _13056 = float3(_13055.x ? 0.0f.xxx.x : 1.0f.xxx.x, _13055.y ? 0.0f.xxx.y : 1.0f.xxx.y, _13055.z ? 0.0f.xxx.z : 1.0f.xxx.z);
                        float3 _13060 = mad(float3(_537, dot(_13056, float3(2.0f, 0.0f, -2.0f)), dot(_13056, float3(-1.0f, 2.0f, -1.0f))), 0.25f.xxx, float3(0.0f, 0.5f, 0.5f));
                        uint _13074 = 0u | ((((uint(clamp(_13060.y, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13060.z, 0.0f, 1.0f) * 255.0f) << 8u)) | 0u) | 0u);
                        uint _13089 = 0u;
                        uint _13090 = 0u;
                        uint _13091 = 0u;
                        if (_13042 < 3u)
                        {
                            _13089 = (_13042 == 2u) ? _13074 : _13039;
                            _13090 = (_13042 == 1u) ? _13074 : _13040;
                            _13091 = (_13042 == 0u) ? _13074 : _13041;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _12579 + 4294967295u)] = _13074;
                            _13089 = _13039;
                            _13090 = _13040;
                            _13091 = _13041;
                        }
                        _13093 = _13089;
                        _13094 = _13090;
                        _13095 = _13091;
                        _13096 = _12579 + 3u;
                    }
                    else
                    {
                        _13093 = _13039;
                        _13094 = _13040;
                        _13095 = _13041;
                        _13096 = _13042;
                    }
                    uint _13098 = (_12575 >> 2u) & 7u;
                    uint _13269 = 0u;
                    uint _13270 = 0u;
                    uint _13271 = 0u;
                    uint _13272 = 0u;
                    uint _13273 = 0u;
                    uint _13274 = 0u;
                    if (_13098 != 0u)
                    {
                        uint _13193 = 0u;
                        uint _13194 = 0u;
                        if (_13098 != 4u)
                        {
                            uint _13107 = (_10905 & 4294967292u) | (_13098 & 3u);
                            uint _13141 = 0u;
                            if (_13098 == 1u)
                            {
                                _13141 = (_13107 & 3u) | (uint(clamp(1.0f - abs(0.0f), 0.0f, 1.0f) * 255.0f) << 2u);
                            }
                            else
                            {
                                uint _13132 = 0u;
                                if (_13098 == 3u)
                                {
                                    _13132 = ((_13107 & 3u) | (uint(mad(0.0f, 255.0f, 0.5f)) << 24u)) | 0u;
                                }
                                else
                                {
                                    uint _13119 = (spvPackHalf2x16(0.0f.xx) >> 5u) & 1023u;
                                    _13132 = (_13107 & 3u) | (((_13119 << 22u) | (_13119 << 12u)) | (_13119 << 2u));
                                }
                                _13141 = _13132;
                            }
                            float3 _13147 = clamp(float4(_10659, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                            float _13148 = _13147.x;
                            float _13157 = 0.0f;
                            do
                            {
                                if (_13148 < 0.00313066993840038776397705078125f)
                                {
                                    _13157 = _13148 * 12.9200000762939453125f;
                                    break;
                                }
                                _13157 = mad(pow(_13148, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _13158 = _13147.y;
                            float _13167 = 0.0f;
                            do
                            {
                                if (_13158 < 0.00313066993840038776397705078125f)
                                {
                                    _13167 = _13158 * 12.9200000762939453125f;
                                    break;
                                }
                                _13167 = mad(pow(_13158, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                                break;
                            } while(false);
                            float _13168 = _13147.z;
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
                            _13193 = (((uint(clamp(_13157, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_13167, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_13177, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                            _13194 = _13141;
                        }
                        else
                        {
                            _13193 = 0u;
                            _13194 = _10905;
                        }
                        uint _13266 = 0u;
                        uint _13267 = 0u;
                        uint _13268 = 0u;
                        if (_13098 == 3u)
                        {
                            uint _13248 = 0u | (((spvPackHalf2x16(0.0f.xx) >> 5u) & 1023u) << 16u);
                            uint _13263 = 0u;
                            uint _13264 = 0u;
                            uint _13265 = 0u;
                            if (_13096 < 3u)
                            {
                                _13263 = (_13096 == 2u) ? _13248 : _13093;
                                _13264 = (_13096 == 1u) ? _13248 : _13094;
                                _13265 = (_13096 == 0u) ? _13248 : _13095;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _13096 - 3u)] = _13248;
                                _13263 = _13093;
                                _13264 = _13094;
                                _13265 = _13095;
                            }
                            _13266 = _13263;
                            _13267 = _13264;
                            _13268 = _13265;
                        }
                        else
                        {
                            float4 _13209 = 0.0f.xxxx;
                            if ((((_12575 >> 10u) & 1u) != 0u) && (_13098 == 2u))
                            {
                                float3 _13207 = max(0.0f.xxx, 0.0f.xxx);
                                _13209 = float4(_13207.x, _13207.y, _13207.z, 0.0f.xxxx.w);
                            }
                            else
                            {
                                _13209 = 0.0f.xxxx;
                            }
                            uint _13226 = (((spvPackHalf2x16(float2(_13209.x, 0.0f)) << 17u) & 4292870144u) | ((spvPackHalf2x16(float2(_13209.y, 0.0f)) << 6u) & 2096128u)) | ((spvPackHalf2x16(float2(_13209.z, 0.0f)) >> 5u) & 1023u);
                            uint _13241 = 0u;
                            uint _13242 = 0u;
                            uint _13243 = 0u;
                            if (_13096 < 3u)
                            {
                                _13241 = (_13096 == 2u) ? _13226 : _13093;
                                _13242 = (_13096 == 1u) ? _13226 : _13094;
                                _13243 = (_13096 == 0u) ? _13226 : _13095;
                            }
                            else
                            {
                                OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _13096 - 3u)] = _13226;
                                _13241 = _13093;
                                _13242 = _13094;
                                _13243 = _13095;
                            }
                            _13266 = _13241;
                            _13267 = _13242;
                            _13268 = _13243;
                        }
                        _13269 = _13193;
                        _13270 = _13194;
                        _13271 = _13266;
                        _13272 = _13267;
                        _13273 = _13268;
                        _13274 = _13096 + 1u;
                    }
                    else
                    {
                        _13269 = 0u;
                        _13270 = _10905;
                        _13271 = _13093;
                        _13272 = _13094;
                        _13273 = _13095;
                        _13274 = _13096;
                    }
                    uint _13345 = 0u;
                    uint _13346 = 0u;
                    uint _13347 = 0u;
                    uint _13348 = 0u;
                    if (((_12575 >> 9u) & 1u) != 0u)
                    {
                        float _13285 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13285 = 0.0f;
                                break;
                            }
                            _13285 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13291 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13291 = 0.0f;
                                break;
                            }
                            _13291 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _13297 = 0.0f;
                        do
                        {
                            if (true)
                            {
                                _13297 = 0.0f;
                                break;
                            }
                            _13297 = mad(0.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float3 _13298 = float3(_13285, _13291, _13297);
                        float3 _13304 = clamp(mad(_12886, float3(min((asuint(_13298) & uint3(2147483647u, 2147483647u, 2147483647u)), uint3(1u, 1u, 1u))), _13298), 0.0f.xxx, 1.0f.xxx);
                        uint _13322 = uint(clamp(mad(_12885, 0.0f, 0.0f), 0.0f, 1.0f) * 63.0f);
                        uint _13326 = ((((uint(_13304.x * 127.0f) << 0u) | (uint(_13304.y * 127.0f) << 7u)) | (uint(_13304.z * 63.0f) << 14u)) | (_13322 << 20u)) | (_13322 << 26u);
                        uint _13341 = 0u;
                        uint _13342 = 0u;
                        uint _13343 = 0u;
                        if (_13274 < 3u)
                        {
                            _13341 = (_13274 == 2u) ? _13326 : _13271;
                            _13342 = (_13274 == 1u) ? _13326 : _13272;
                            _13343 = (_13274 == 0u) ? _13326 : _13273;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _13274 - 3u)] = _13326;
                            _13341 = _13271;
                            _13342 = _13272;
                            _13343 = _13273;
                        }
                        _13345 = _13341;
                        _13346 = _13342;
                        _13347 = _13343;
                        _13348 = _13274 + 1u;
                    }
                    else
                    {
                        _13345 = _13271;
                        _13346 = _13272;
                        _13347 = _13273;
                        _13348 = _13274;
                    }
                    uint _13385 = 0u;
                    uint _13386 = 0u;
                    uint _13387 = 0u;
                    if (((_12575 >> 16u) & 1u) != 0u)
                    {
                        float _13356 = 0.0f;
                        do
                        {
                            _13356 = mad(1.0f, 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        uint _13361 = uint(clamp(_13356, 0.0f, 1.0f) * 255.0f);
                        uint _13367 = (((_13361 << 0u) | (_13361 << 8u)) | (_13361 << 16u)) | 0u;
                        uint _13382 = 0u;
                        uint _13383 = 0u;
                        uint _13384 = 0u;
                        if (_13348 < 3u)
                        {
                            _13382 = (_13348 == 2u) ? _13367 : _13345;
                            _13383 = (_13348 == 1u) ? _13367 : _13346;
                            _13384 = (_13348 == 0u) ? _13367 : _13347;
                        }
                        else
                        {
                            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _13348 - 3u)] = _13367;
                            _13382 = _13345;
                            _13383 = _13346;
                            _13384 = _13347;
                        }
                        _13385 = _13382;
                        _13386 = _13383;
                        _13387 = _13384;
                    }
                    else
                    {
                        _13385 = _13345;
                        _13386 = _13346;
                        _13387 = _13347;
                    }
                    _13388 = _13269;
                    _13389 = _13270;
                    _13390 = _13385;
                    _13391 = _13386;
                    _13392 = _13387;
                    break;
                }
                case 3u:
                {
                    float3 _12786 = clamp(float4(_10659, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12787 = _12786.x;
                    float _12796 = 0.0f;
                    do
                    {
                        if (_12787 < 0.00313066993840038776397705078125f)
                        {
                            _12796 = _12787 * 12.9200000762939453125f;
                            break;
                        }
                        _12796 = mad(pow(_12787, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12797 = _12786.y;
                    float _12806 = 0.0f;
                    do
                    {
                        if (_12797 < 0.00313066993840038776397705078125f)
                        {
                            _12806 = _12797 * 12.9200000762939453125f;
                            break;
                        }
                        _12806 = mad(pow(_12797, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12807 = _12786.z;
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
                    uint _12831 = (((uint(clamp(_12796, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12806, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12816, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                    uint _12846 = 0u;
                    uint _12847 = 0u;
                    uint _12848 = 0u;
                    if (_12579 < 3u)
                    {
                        _12846 = (_12579 == 2u) ? _12831 : _12576;
                        _12847 = (_12579 == 1u) ? _12831 : _12577;
                        _12848 = (_12579 == 0u) ? _12831 : _12578;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _12579 - 3u)] = _12831;
                        _12846 = _12576;
                        _12847 = _12577;
                        _12848 = _12578;
                    }
                    uint _12849 = _12579 + 1u;
                    uint _12864 = ((0u | (uint(clamp(_10662, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_10666, 0.0f, 1.0f) * 255.0f) << 16u)) | (uint(clamp(_10668, 0.0f, 1.0f) * 255.0f) << 24u);
                    uint _12879 = 0u;
                    uint _12880 = 0u;
                    uint _12881 = 0u;
                    if (_12849 < 3u)
                    {
                        _12879 = (_12849 == 2u) ? _12864 : _12846;
                        _12880 = (_12849 == 1u) ? _12864 : _12847;
                        _12881 = (_12849 == 0u) ? _12864 : _12848;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _12579 + 4294967294u)] = _12864;
                        _12879 = _12846;
                        _12880 = _12847;
                        _12881 = _12848;
                    }
                    _13388 = 0u;
                    _13389 = _10905;
                    _13390 = _12879;
                    _13391 = _12880;
                    _13392 = _12881;
                    break;
                }
                case 5u:
                {
                    float3 _12597 = 0.0f.xxx;
                    if (true)
                    {
                        float2 _12595 = 1.0f.xx - abs(0.0f.xx);
                        _12597 = float3(_12595.x, _12595.y, 0.0f.xxxx.z);
                    }
                    else
                    {
                        _12597 = 0.0f.xxx;
                    }
                    float3 _12604 = 0.0f.xxx;
                    if (true)
                    {
                        float2 _12602 = 1.0f.xx - abs(0.0f.xx);
                        _12604 = float3(_12602.x, _12602.y, 0.0f.xxxx.z);
                    }
                    else
                    {
                        _12604 = 0.0f.xxx;
                    }
                    float3 _12607 = clamp(_10659.xyz, 0.0f.xxx, 1.0f.xxx);
                    float _12608 = _12607.x;
                    float _12617 = 0.0f;
                    do
                    {
                        if (_12608 < 0.00313066993840038776397705078125f)
                        {
                            _12617 = _12608 * 12.9200000762939453125f;
                            break;
                        }
                        _12617 = mad(pow(_12608, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12618 = _12607.y;
                    float _12627 = 0.0f;
                    do
                    {
                        if (_12618 < 0.00313066993840038776397705078125f)
                        {
                            _12627 = _12618 * 12.9200000762939453125f;
                            break;
                        }
                        _12627 = mad(pow(_12618, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    float _12628 = _12607.z;
                    float _12637 = 0.0f;
                    do
                    {
                        if (_12628 < 0.00313066993840038776397705078125f)
                        {
                            _12637 = _12628 * 12.9200000762939453125f;
                            break;
                        }
                        _12637 = mad(pow(_12628, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                        break;
                    } while(false);
                    uint _12652 = (((uint(clamp(_12617, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12627, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12637, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                    uint _12667 = 0u;
                    uint _12668 = 0u;
                    uint _12669 = 0u;
                    if (_12579 < 3u)
                    {
                        _12667 = (_12579 == 2u) ? _12652 : _12576;
                        _12668 = (_12579 == 1u) ? _12652 : _12577;
                        _12669 = (_12579 == 0u) ? _12652 : _12578;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _12579 - 3u)] = _12652;
                        _12667 = _12576;
                        _12668 = _12577;
                        _12669 = _12578;
                    }
                    uint _12670 = _12579 + 1u;
                    float2 _12672 = (_12597.xy * 0.5f) + 0.5f.xx;
                    float2 _12674 = (_12604.xy * 0.5f) + 0.5f.xx;
                    uint _12697 = (((uint(clamp(_12672.x, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12672.y, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12674.x, 0.0f, 1.0f) * 255.0f) << 16u)) | (uint(clamp(_12674.y, 0.0f, 1.0f) * 255.0f) << 24u);
                    uint _12712 = 0u;
                    uint _12713 = 0u;
                    uint _12714 = 0u;
                    if (_12670 < 3u)
                    {
                        _12712 = (_12670 == 2u) ? _12697 : _12667;
                        _12713 = (_12670 == 1u) ? _12697 : _12668;
                        _12714 = (_12670 == 0u) ? _12697 : _12669;
                    }
                    else
                    {
                        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_10656, _12579 + 4294967294u)] = _12697;
                        _12712 = _12667;
                        _12713 = _12668;
                        _12714 = _12669;
                    }
                    uint _12779 = 0u;
                    uint _12780 = 0u;
                    if (((_12575 >> 2u) & 7u) == 3u)
                    {
                        float3 _12733 = clamp(float4(_10659, 0.0f).xyz, 0.0f.xxx, 1.0f.xxx);
                        float _12734 = _12733.x;
                        float _12743 = 0.0f;
                        do
                        {
                            if (_12734 < 0.00313066993840038776397705078125f)
                            {
                                _12743 = _12734 * 12.9200000762939453125f;
                                break;
                            }
                            _12743 = mad(pow(_12734, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12744 = _12733.y;
                        float _12753 = 0.0f;
                        do
                        {
                            if (_12744 < 0.00313066993840038776397705078125f)
                            {
                                _12753 = _12744 * 12.9200000762939453125f;
                                break;
                            }
                            _12753 = mad(pow(_12744, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        float _12754 = _12733.z;
                        float _12763 = 0.0f;
                        do
                        {
                            if (_12754 < 0.00313066993840038776397705078125f)
                            {
                                _12763 = _12754 * 12.9200000762939453125f;
                                break;
                            }
                            _12763 = mad(pow(_12754, 0.4166666567325592041015625f), 1.05499994754791259765625f, -0.054999999701976776123046875f);
                            break;
                        } while(false);
                        _12779 = (((uint(clamp(_12743, 0.0f, 1.0f) * 255.0f) << 0u) | (uint(clamp(_12753, 0.0f, 1.0f) * 255.0f) << 8u)) | (uint(clamp(_12763, 0.0f, 1.0f) * 255.0f) << 16u)) | 0u;
                        _12780 = ((((_10905 & 4294967292u) | 3u) & 3u) | (uint(mad(_10666, 255.0f, 0.5f)) << 24u)) | 16711680u;
                    }
                    else
                    {
                        _12779 = 0u;
                        _12780 = _10905;
                    }
                    _13388 = _12779;
                    _13389 = _12780;
                    _13390 = _12712;
                    _13391 = _12713;
                    _13392 = _12714;
                    break;
                }
                default:
                {
                    _13388 = 0u;
                    _13389 = _10905;
                    _13390 = _12576;
                    _13391 = _12577;
                    _13392 = _12578;
                    break;
                }
            }
            _13393 = _13388;
            _13394 = _13389;
            _13395 = _13390;
            _13396 = _13391;
            _13397 = _13392;
        }
        else
        {
            _13393 = 0u;
            _13394 = _10905;
            _13395 = _12576;
            _13396 = _12577;
            _13397 = _12578;
        }
        _13398 = _13393;
        _13399 = _13394;
        _13400 = _13395;
        _13401 = _13396;
        _13402 = _13397;
    }
    else
    {
        _13398 = 0u;
        _13399 = _10905;
        _13400 = 0u;
        _13401 = _11388;
        _13402 = _11389;
    }
    float2 _13407 = _10813.xy / dot(1.0f.xxx, abs(_10813)).xx;
    float3 _13425 = 0.0f.xxx;
    if (_10813.z <= 0.0f)
    {
        float2 _13416 = _13407.xy;
        bool2 _13417 = bool2(_13416.x >= 0.0f.xx.x, _13416.y >= 0.0f.xx.y);
        float2 _13423 = (1.0f.xx - abs(_13407.yx)) * float2(_13417.x ? 1.0f : (-1.0f), _13417.y ? 1.0f : (-1.0f));
        _13425 = float3(_13423.x, _13423.y, _10813.z);
    }
    else
    {
        _13425 = float3(_13407.x, _13407.y, _10813.z);
    }
    uint2 _13430 = uint2(clamp((_13425.xy * 1023.0f) + 1024.0f.xx, 0.0f.xx, 2047.0f.xx));
    uint _13442 = _13399 & 3u;
    [branch]
    if (_13442 != 0u)
    {
        uint _13449 = uint(OpaqueBasePass_OpaqueBasePass_Strata_FirstSliceStoringStrataSSSDataWithoutMRT);
        uint _13450 = _10656.x;
        OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_13450, _10656.y, _13449)] = _13399;
        if ((_13442 == 2u) || (_13442 == 3u))
        {
            OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs[uint3(_13450, _10656.y, _13449 + 1u)] = _13398;
        }
    }
    float4 _13471 = float4((lerp((((float4(_10315.x ? 0.0f.xxxx.x : _9794.x, _10315.y ? 0.0f.xxxx.y : _9794.y, _10315.z ? 0.0f.xxxx.z : _9794.z, _10315.w ? 0.0f.xxxx.w : _9794.w).xyz + float4(_10315.x ? 0.0f.xxxx.x : _9797.x, _10315.y ? 0.0f.xxxx.y : _9797.y, _10315.z ? 0.0f.xxxx.z : _9797.z, _10315.w ? 0.0f.xxxx.w : _9797.w).xyz) + (((_8580 * _8528) * max(1.0f.xxx, ((((((_8423 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_8423 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_8423 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)) * _8413)) + _10402) + _10653, float3(_10811.x ? _10817.x : 0.0f.xxx.x, _10811.y ? _10817.y : 0.0f.xxx.y, _10811.z ? _10817.z : 0.0f.xxx.z), View_View_UnlitViewmodeMask.xxx) + (_11305 + _10401)) * 1.0f, 0.0f);
    float4 _13478 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _13477 = _13471;
        _13477.w = 0.0f;
        _13478 = _13477;
    }
    else
    {
        _13478 = _13471;
    }
    float4 _13479 = 0.0f.xxxx;
    _13479.x = _8485;
    _13479.y = 1.0f;
    _13479.z = 1.0f;
    _13479.w = 1.0f;
    float4 _13488 = _13478 * View_View_PreExposure;
    float3 _13490 = min(_13488.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_13490.x, _13490.y, _13490.z, _13488.w);
    out_var_SV_Target1 = _13479;
    out_var_SV_Target2 = float4(_10652 * View_View_PreExposure, 1.0f);
    out_var_SV_Target3 = _13402;
    out_var_SV_Target4 = _13401;
    out_var_SV_Target5 = _13400;
    out_var_SV_Target6 = (((_13430.x | (_13430.y << 11u)) << 10u) | (uint(clamp(_10810 ? (_10806 / _10808) : 0.0f, 0.0f, 1.0f) * 255.0f) << 2u)) | _10801;
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
