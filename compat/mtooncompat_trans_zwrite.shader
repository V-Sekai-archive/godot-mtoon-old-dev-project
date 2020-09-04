shader_type spatial;
render_mode specular_disabled;

// VARIANTS:
// DEFAULT_MODE:
const float isOutline = 0.0;

// OUTLINE:
// // Comment `const float isOutline = 0.0;`
// render_mode cull_front;
// const float isOutline = 1.0;
// // Uncomment `ALPHA = alpha;` and comment `ALPHA_SCISSOR = _Cutoff` at end of fragment()

// TRANSPARENT:
// // Uncomment `ALPHA = alpha;` and comment `ALPHA_SCISSOR = _Cutoff` at end of fragment()

// TRANSPARENT_WITH_ZWRITE:
render_mode depth_draw_always;
// Uncomment `ALPHA = alpha;` and comment `ALPHA_SCISSOR = _Cutoff` at end of fragment()

// CULL_OFF:
// render_mode cull_disabled;

// TRANSPARENT_CULL_OFF:
// render_mode cull_disabled;
// // Uncomment `ALPHA = alpha;` and comment `ALPHA_SCISSOR = _Cutoff` at end of fragment()

// TRANSPARENT_WITH_ZWRITE_CULL_OFF:
// render_mode cull_disabled,depth_draw_always;
// // Uncomment `ALPHA = alpha;` and comment `ALPHA_SCISSOR = _Cutoff` at end of fragment()


const bool CALCULATE_LIGHTING_IN_FRAGMENT = true;


const float tmpx=0.0; float LM_SCENEDATA_FLOAT (float tmp) {return tmpx;}const vec2 tmp2x=vec2(0.0); vec2 LM_SCENEDATA_VEC2 (vec2 tmp2) {return tmp2x;}
const vec3 tmp3x=vec3(0.0); vec3 LM_SCENEDATA_VEC3 (vec3 tmp3) {return tmp3x;}const vec4 tmp4x=vec4(0.0); vec4 LM_SCENEDATA_VEC4 (vec4 tmp4) {return tmp4x;}
const bool tmpbx=false; bool LM_SCENEDATA_BOOL (bool tmpb) {return tmpbx;}const mat4 tmpm4x=mat4(0.0); mat4 LM_SCENEDATA_MAT4 (mat4 tmpm4) {return tmpm4x;}

const vec4 tmpverty=vec4(0.0); const vec4 tmpvertyUSE_VERTEX_LIGHTING=vec4(0.0); vec4 LM_VERTLIGHT (vec4 tmpvert) {return tmpverty+tmpvertyUSE_VERTEX_LIGHTING;}const vec4 tmpflvy=vec4(0.0); const vec4 tmpflvyUSE_FORWARD_LIGHTING=vec4(0.0);
vec4 LM_FWDLIGHT (vec4 tmpflv, int idx) {return tmpflvy+tmpflvyUSE_FORWARD_LIGHTING;}
const mat4 tmpflmy=mat4(0.0); const mat4 tmpflmyUSE_FORWARD_LIGHTING=mat4(0.0); mat4 LM_FWDLIGHT_MAT4 (mat4 tmpflm, int idx) {return tmpflmy+tmpflmyUSE_FORWARD_LIGHTING;}
const int tmpfliy=0; const int tmpfliyUSE_FORWARD_LIGHTING=0; int LM_FWDLIGHT_INT (int tmpfli) {return tmpfliy+tmpfliyUSE_FORWARD_LIGHTING;}
const vec4 tmpdlvd=vec4(0.0); const vec4 tmpdlvdUSE_LIGHT_DIRECTIONAL=vec4(0.0); vec4 LM_DIRLIGHT (vec4 tmpdlv) {return tmpdlvd+tmpdlvdUSE_LIGHT_DIRECTIONAL;}const mat4 tmpdlmd=mat4(0.0); const mat4 tmpdlmdUSE_LIGHT_DIRECTIONAL=mat4(0.0);
mat4 LM_DIRLIGHT_MAT4 (mat4 tmpdlm) {return tmpdlmd+tmpdlmdUSE_LIGHT_DIRECTIONAL;}const bool tmpdlbd=false; const bool tmpdlbdUSE_LIGHT_DIRECTIONAL=false; bool LM_DIRLIGHT_BOOL (bool tmpdlb) {return tmpdlbd||tmpdlbdUSE_LIGHT_DIRECTIONAL;}
const int tmpgipliy=0; const int tmpgipliyUSE_GI_PROBES=0; int LM_GIPROBES (int tmpgipli) {return tmpgipliy+tmpgipliyUSE_GI_PROBES;}

const vec3 tmpatplios=vec3(0.0);
const vec3 tmpatpliosUSE_SHADOW=vec3(0.0);
const vec3 tmpatpliosLIGHT_DIRECTIONAL_SHADOW=vec3(0.0);
const vec3 tmpatpliosUSE_SHADOWLIGHT_DIRECTIONAL_SHADOW=vec3(0.0);
const vec3 tmpatpliosUSE_CONTACT_SHADOWS=vec3(0.0);
const vec3 tmpatpliosUSE_SHADOWUSE_CONTACT_SHADOWS=vec3(0.0);
const vec3 tmpatpliosLIGHT_DIRECTIONAL_SHADOWUSE_CONTACT_SHADOWS=vec3(0.0);
const vec3 tmpatpliosUSE_SHADOWLIGHT_DIRECTIONAL_SHADOWUSE_CONTACT_SHADOWS=vec3(0.0);
vec3 LM_SHADOWATTEN (vec3 tmpatpli) {return tmpatplios+tmpatpliosUSE_SHADOW+tmpatpliosLIGHT_DIRECTIONAL_SHADOW+tmpatpliosUSE_SHADOWLIGHT_DIRECTIONAL_SHADOW+tmpatpliosUSE_CONTACT_SHADOWS+
tmpatpliosUSE_SHADOWUSE_CONTACT_SHADOWS+tmpatpliosLIGHT_DIRECTIONAL_SHADOWUSE_CONTACT_SHADOWS+tmpatpliosUSE_SHADOWLIGHT_DIRECTIONAL_SHADOWUSE_CONTACT_SHADOWS;}

const float tmpatplids=(0.0);
const float tmpatplidsLIGHT_DIRECTIONAL_SHADOW=(0.0);
const float tmpatplidsLIGHT_USE_PSSM2=(0.0);
const float tmpatplidsLIGHT_DIRECTIONAL_SHADOWLIGHT_USE_PSSM2=(0.0);
const float tmpatplidsLIGHT_USE_PSSM4=(0.0);
const float tmpatplidsLIGHT_USE_PSSM2LIGHT_USE_PSSM4=(0.0);
const float tmpatplidsLIGHT_DIRECTIONAL_SHADOWLIGHT_USE_PSSM4=(0.0);
const float tmpatplidsLIGHT_DIRECTIONAL_SHADOWLIGHT_USE_PSSM2LIGHT_USE_PSSM4=(0.0);
float LM_DIRSHADOW (float tmpatpli) {return tmpatplids+tmpatplidsLIGHT_DIRECTIONAL_SHADOW+tmpatplidsLIGHT_USE_PSSM2+tmpatplidsLIGHT_DIRECTIONAL_SHADOWLIGHT_USE_PSSM2+
tmpatplidsLIGHT_USE_PSSM4+tmpatplidsLIGHT_USE_PSSM2LIGHT_USE_PSSM4+tmpatplidsLIGHT_DIRECTIONAL_SHADOWLIGHT_USE_PSSM4+tmpatplidsLIGHT_DIRECTIONAL_SHADOWLIGHT_USE_PSSM2LIGHT_USE_PSSM4;}

const float tmpatplisbl=(0.0);
const float tmpatplisblLIGHT_USE_PSSM_BLEND=(0.0);
const float tmpatplisblLIGHT_USE_PSSM2=(0.0);
const float tmpatplisblLIGHT_USE_PSSM_BLENDLIGHT_USE_PSSM2=(0.0);
const float tmpatplisblLIGHT_USE_PSSM4=(0.0);
const float tmpatplisblLIGHT_USE_PSSM2LIGHT_USE_PSSM4=(0.0);
const float tmpatplisblLIGHT_USE_PSSM_BLENDLIGHT_USE_PSSM4=(0.0);
const float tmpatplisblLIGHT_USE_PSSM_BLENDLIGHT_USE_PSSM2LIGHT_USE_PSSM4=(0.0);
float LM_DIRSHADOWBLEND (float tmpatpli) {return tmpatplisbl+tmpatplisblLIGHT_USE_PSSM_BLEND+tmpatplisblLIGHT_USE_PSSM2+tmpatplisblLIGHT_USE_PSSM_BLENDLIGHT_USE_PSSM2+
tmpatplisblLIGHT_USE_PSSM4+tmpatplisblLIGHT_USE_PSSM2LIGHT_USE_PSSM4+tmpatplisblLIGHT_USE_PSSM_BLENDLIGHT_USE_PSSM4+tmpatplisblLIGHT_USE_PSSM_BLENDLIGHT_USE_PSSM2LIGHT_USE_PSSM4;}

const bool tmpatplbbool=false;const bool tmpatplbboolUSE_LIGHTMAP_CAPTURE=false;const bool tmpatplbboolUSE_LIGHTMAP=false;const bool tmpatplbboolUSE_LIGHTMAPUSE_LIGHTMAP_CAPTURE=false;
bool LM_CHECKDEFINE (bool tmpatplb) {return tmpatplbbool||tmpatplbboolUSE_LIGHTMAP_CAPTURE||tmpatplbboolUSE_LIGHTMAP||tmpatplbboolUSE_LIGHTMAPUSE_LIGHTMAP_CAPTURE;}
const vec3 tmpatpliat=vec3(0.0);const vec3 tmpatpliatUSE_RADIANCE_MAP=vec3(0.0);const vec3 tmpatpliatUSE_LIGHTMAP_CAPTURE=vec3(0.0);const vec3 tmpatpliatUSE_RADIANCE_MAPUSE_LIGHTMAP_CAPTURE=vec3(0.0);
const vec3 tmpatpliatUSE_LIGHTMAP=vec3(0.0);const vec3 tmpatpliatUSE_RADIANCE_MAPUSE_LIGHTMAP=vec3(0.0);const vec3 tmpatpliatUSE_LIGHTMAPUSE_LIGHTMAP_CAPTURE=vec3(0.0);
const vec3 tmpatpliatUSE_RADIANCE_MAPUSE_LIGHTMAPUSE_LIGHTMAP_CAPTURE=vec3(0.0);
vec3 LM_AMBIENTTERM (vec3 tmpatpli) {return tmpatpliat+tmpatpliatUSE_RADIANCE_MAP+tmpatpliatUSE_LIGHTMAP_CAPTURE+tmpatpliatUSE_RADIANCE_MAPUSE_LIGHTMAP_CAPTURE+tmpatpliatUSE_LIGHTMAP
+tmpatpliatUSE_RADIANCE_MAPUSE_LIGHTMAP+tmpatpliatUSE_LIGHTMAPUSE_LIGHTMAP_CAPTURE+tmpatpliatUSE_RADIANCE_MAPUSE_LIGHTMAPUSE_LIGHTMAP_CAPTURE;}
const vec3 tmperlplierl=vec3(0.0); const vec3 tmperlplierlUSE_RADIANCE_MAP=vec3(0.0); vec3 LM_ENVREFLLIGHT (vec3 tmperlpli) {return tmperlplierl+tmperlplierlUSE_RADIANCE_MAP;}

const bool lm_macro_system_enabled_ = false;
const int env_reflection_light_ = 0;const vec3 ambient_term_ = vec3(0.0);const int refl_process_ = 0;const bool USE_LIGHTMAP = false;const bool USE_LIGHTMAP_CAPTURE = false;
const float dir_shadow_fade_ = 0.0;const float dir_shadow_blend_ = 0.0;const float dir_shadow_which_matrix_ = 0.0;const float dir_shadow_offset_ = 0.0;
const vec3 dir_shadow_atten_ = vec3(0.0);const vec3 spot_shadow_atten_ = vec3(0.0);const vec3 omni_shadow_atten_ = vec3(0.0);
const mat4 gi_probes_compute_ = mat4(0.0);const mat4 world_transform_ = mat4(0.0);const vec4 color_interp_ = vec4(0.0);const vec2 uv_interp_ = vec2(0.0);const vec2 uv2_interp_ = vec2(0.0);const vec3 tangent_interp_ = vec3(0.0);
const vec3 binormal_interp_ = vec3(0.0);const vec3 vertex_interp_ = vec3(0.0);const vec3 normal_interp_ = vec3(0.0);const mat4 radiance_inverse_xform_ = mat4(0.0);const float radiance_ambient_contribution_ = float(0.0);
// SceneData
const mat4 projection_matrix_ = mat4(0.0);const mat4 inv_projection_matrix_ = mat4(0.0);const mat4 camera_inverse_matrix_ = mat4(0.0);const mat4 camera_matrix_ = mat4(0.0);const vec4 ambient_light_color_ = vec4(0.0);const vec4 bg_color_ = vec4(0.0);
const vec4 fog_color_enabled_ = vec4(0.0);const vec4 fog_sun_color_amount_ = vec4(0.0);const float ambient_energy_ = float(0.0);const float bg_energy_ = float(0.0);const float z_offset_ = float(0.0);const float z_slope_scale_ = float(0.0);
const float shadow_dual_paraboloid_render_zfar_ = float(0.0);const float shadow_dual_paraboloid_render_side_ = float(0.0);
const vec2 viewport_size_ = vec2(0.0);const vec2 screen_pixel_size_ = vec2(0.0);const vec2 shadow_atlas_pixel_size_ = vec2(0.0);const vec2 directional_shadow_pixel_size_ = vec2(0.0);const float time_ = float(0.0);const float z_far_ = float(0.0);
const float reflection_multiplier_ = float(0.0);const float subsurface_scatter_width_ = float(0.0);const float ambient_occlusion_affect_light_ = float(0.0);const float ambient_occlusion_affect_ao_channel_ = float(0.0);
const float opaque_prepass_threshold_ = float(0.0);const bool fog_depth_enabled_ = bool(0.0);const float fog_depth_begin_ = float(0.0);const float fog_depth_end_ = float(0.0);const float fog_density_ = float(0.0);
const float fog_depth_curve_ = float(0.0);const bool fog_transmit_enabled_ = bool(0.0);const float fog_transmit_curve_ = float(0.0);
const bool fog_height_enabled_ = bool(0.0);const float fog_height_min_ = float(0.0);const float fog_height_max_ = float(0.0);const float fog_height_curve_ = float(0.0);

// DirectionalLightData
const vec4 dir_light_pos_inv_radius_ = vec4(0.0);const vec4 dir_light_direction_attenuation_ = vec4(0.0);const vec4 dir_light_color_energy_ = vec4(0.0);const vec4 dir_light_params_ = vec4(0.0);const vec4 dir_light_clamp_ = vec4(0.0);
const vec4 dir_shadow_color_contact_ = vec4(0.0);const mat4 dir_shadow_matrix1_ = mat4(0.0);const mat4 dir_shadow_matrix2_ = mat4(0.0);const mat4 dir_shadow_matrix3_ = mat4(0.0);const mat4 dir_shadow_matrix4_ = mat4(0.0);
const vec4 dir_shadow_split_offsets_ = vec4(0.0);const bool has_dir_light_ = false;
//Vertex
const vec4 diffuse_light_interp_ = vec4(0.0);const vec4 specular_light_interp_ = vec4(0.0);
// struct LightData, by m_idx
const int omni_light_count_ = 0;const vec4 omni_light_pos_inv_radius_ = vec4(0.0);const vec4 omni_light_direction_attenuation_ = vec4(0.0);const vec4 omni_light_color_energy_ = vec4(0.0);const vec4 omni_light_params_ = vec4(0.0);
const vec4 omni_light_clamp_ = vec4(0.0);const vec4 omni_shadow_color_contact_ = vec4(0.0);const mat4 omni_shadow_matrix_ = mat4(0.0);
// struct LightData, by m_idx
const int spot_light_count_ = 0;const vec4 spot_light_pos_inv_radius_ = vec4(0.0);const vec4 spot_light_direction_attenuation_ = vec4(0.0);const vec4 spot_light_color_energy_ = vec4(0.0);const vec4 spot_light_params_ = vec4(0.0);
const vec4 spot_light_clamp_ = vec4(0.0);const vec4 spot_shadow_color_contact_ = vec4(0.0);const mat4 spot_shadow_matrix_ = mat4(0.0);
// struct ReflectionData, by m_idx
const int reflection_count_ = 0;const vec4 box_extents_ = vec4(0.0);const vec4 box_offset_ = vec4(0.0);const vec4 params_ = vec4(0.0);const vec4 ambient_ = vec4(0.0);const vec4 atlas_clamp_ = vec4(0.0);const mat4 local_matrix_ = mat4(0.0);



uniform vec4 albedo : hint_color = vec4(1.0,1.0,1.0,1.0);
uniform sampler2D texture_albedo : hint_albedo;
uniform vec3 uv1_scale = vec3(1.0,1.0,1.0);
uniform vec3 uv1_offset;
//uniform float specular;
//uniform float metallic;
//uniform float roughness : hint_range(0,1);
//uniform float point_size : hint_range(0,128);
uniform sampler2D texture_normal : hint_normal; // "Normal Texture"
uniform float normal_scale : hint_range(-16,16);


uniform float _EnableAlphaCutout : hint_range(0,1,1) = 0.0;
uniform float _Cutoff : hint_range(0,1) = 0.5;
//const vec4 _Color = albedo; // "Lit Texture + Alpha"
uniform vec4 _ShadeColor : hint_color = vec4(0.97, 0.81, 0.86, 1); // "Shade Color"
//const sampler2D _MainTex = texture_albedo;
//uniform vec4 _MainTex_ST;
uniform sampler2D _ShadeTexture : hint_albedo;
//uniform float _BumpScale = 1.0; // "Normal Scale"
//uniform sampler2D _BumpMap : hint_normal; // "Normal Texture"
uniform sampler2D _ReceiveShadowTexture : hint_white;
uniform float _ReceiveShadowRate = 1.0; // "Receive Shadow"
uniform sampler2D _ShadingGradeTexture : hint_white;
uniform float _ShadingGradeRate = 1.0; // "Shading Grade"
uniform float _ShadeShift : hint_range(-1.0, 1.0) = 0.0;
uniform float _ShadeToony : hint_range(0.0, 1.0) = 0.9;
uniform float _LightColorAttenuation : hint_range(0.0, 1.0) = 0.0;
uniform float _IndirectLightIntensity : hint_range(0.0, 1.0) = 0.1;
uniform sampler2D _RimTexture : hint_albedo;
uniform vec4 _RimColor : hint_color = vec4(0,0,0,1);
uniform float _RimLightingMix : hint_range(0.0, 1.0) = 0.0;
uniform float _RimFresnelPower : hint_range(0.0, 100.0) = 1.0;
uniform float _RimLift : hint_range(0.0, 1.0) = 0.0;
uniform sampler2D _SphereAdd : hint_black_albedo; // "Sphere Texture(Add)"
uniform vec4 _EmissionColor : hint_color = vec4(0,0,0,1); // "Color"
uniform sampler2D _EmissionMap : hint_albedo;
// Not implemented:
// uniform float _OutlineWidthScreenCoordinates : hint_range(0,1,1);
uniform sampler2D _OutlineWidthTexture : hint_white;
uniform float _OutlineWidth : hint_range(0.01, 1.0) = 0.5;
uniform float _OutlineScaledMaxDistance : hint_range(1,10) = 1;
uniform float _OutlineMixedLighting : hint_range(0,1,1);
uniform vec4 _OutlineColor : hint_color = vec4(0,0,0,1);
uniform float _OutlineLightingMix : hint_range(0,1) = 0;
uniform sampler2D _UvAnimMaskTexture : hint_white;
uniform float _UvAnimScrollX = 0;
uniform float _UvAnimRotation = 0;
uniform float _UvAnimScrollY = 0;
uniform float _DebugMode : hint_range(0,3,1) = 0.0;

uniform float _MToonVersion = 33;

// const
const float PI_2 = 6.28318530718;
const float EPS_COL = 0.00001;


varying vec4 posWorld; // : TEXCOORD0;
varying vec3 tspace0; // : TEXCOORD1;
varying vec3 tspace1; // : TEXCOORD2;
varying vec3 tspace2; // : TEXCOORD3;


void vertex() {
	UV=UV*uv1_scale.xy+uv1_offset.xy;
	COLOR=COLOR;

	if (isOutline == 1.0) {
	    float outlineTex = textureLod(_OutlineWidthTexture, UV, 0).r;
	    vec3 worldNormalLength = vec3(1.0/length(mat3(transpose(WORLD_MATRIX)) * NORMAL));
	    vec3 outlineOffset = 0.01 * _OutlineWidth * outlineTex * worldNormalLength * NORMAL;
	    VERTEX += outlineOffset;
	}
	/*
#elif defined(MTOON_OUTLINE_WIDTH_SCREEN)
    vec4 nearUpperRight = (xINV_PROJECTION_MATRIX * vec4(1, 1, 0, 1));
    float aspect = abs(nearUpperRight.y / nearUpperRight.x);
    vec3 viewNormal = mat3(xINV_CAMERA_MATRIX) * mat3(xWORLD_MATRIX) * normal.xyz;
    vec3 clipNormal = TransformViewToProjection(viewNormal.xyz);
    vec2 projectedNormal = normalize(clipNormal.xy);
    projectedNormal *= min(vertex.w, _OutlineScaledMaxDistance);
    projectedNormal.x *= aspect;
    vertex.xy += 0.01 * _OutlineWidth * outlineTex * projectedNormal.xy * saturate(1 - abs(normalize(viewNormal).z)); // ignore offset when normal toward camera
#else
    float4 vertex = UnityObjectToClipPos(v.vertex);
#endif
	*/

	posWorld = (MODELVIEW_MATRIX*vec4(VERTEX.xyz, 1.0));
    vec3 worldNormal = mat3(MODELVIEW_MATRIX)*NORMAL;
    vec3 worldTangent = mat3(MODELVIEW_MATRIX)*TANGENT;
    vec3 worldBitangent = mat3(MODELVIEW_MATRIX)*BINORMAL;
    tspace0 = vec3(worldTangent.x, worldBitangent.x, worldNormal.x);
    tspace1 = vec3(worldTangent.y, worldBitangent.y, worldNormal.y);
    tspace2 = vec3(worldTangent.z, worldBitangent.z, worldNormal.z);
}

vec3 UnpackScaleNormal(vec4 normalmap, float scale) {
	normalmap.xy = scale * (normalmap.xy * 2.0 - 1.0);
	normalmap.z = sqrt(max(0.0, 1.0 - dot(normalmap.xy, normalmap.xy))); //always ignore Z, as it can be RG packed, Z may be pos/neg, etc.
	return normalmap.xyz;
}

vec3 calculateLighting(vec2 mainUv, float dotNL, float lightAttenuation, vec4 shade, vec4 lit, vec3 lightColor, out vec3 col, out float lightIntensity) {
    // Decide albedo color rate from Direct Light
    float shadingGrade = 1.0 - _ShadingGradeRate * (1.0 - texture(_ShadingGradeTexture, mainUv).r);
    lightIntensity = dotNL; // [-1, +1]
    lightIntensity = lightIntensity * 0.5 + 0.5; // from [-1, +1] to [0, 1]
    lightIntensity = lightIntensity * lightAttenuation; // receive shadow
    lightIntensity = lightIntensity * shadingGrade; // darker
    lightIntensity = lightIntensity * 2.0 - 1.0; // from [0, 1] to [-1, +1]
    // tooned. mapping from [minIntensityThreshold, maxIntensityThreshold] to [0, 1]
    float maxIntensityThreshold = mix(1, _ShadeShift, _ShadeToony);
    float minIntensityThreshold = _ShadeShift;
    lightIntensity = clamp((lightIntensity - minIntensityThreshold) / max(EPS_COL, (maxIntensityThreshold - minIntensityThreshold)),0.0,1.0);

    col = mix(shade.rgb, lit.rgb, lightIntensity);
    //DEBUG_OVERRIDE = vec4(vec3(shade.rgb),1.0);
    //DEBUG_OVERRIDE = vec4(vec3(col.rgb),1.0);
    // Direct Light
    vec3 lighting = lightColor / 3.14159;
    lighting = mix(lighting, max(vec3(EPS_COL), max(lighting.x, max(lighting.y, lighting.z))), _LightColorAttenuation); // color atten
	return lighting;
}

vec3 calculateAddLighting(vec2 mainUv, float dotNL, float dotNV, float shadowAttenuation, vec3 lighting, vec3 col) {
//    UNITY_LIGHT_ATTENUATION(shadowAttenuation, i, posWorld.xyz);
//#ifdef _ALPHABLEND_ON
//    lighting *= step(0, dotNL); // darken if transparent. Because Unity's transparent material can't receive shadowAttenuation.
//#endif
    lighting *= 0.5; // darken if additional light.
    lighting *= min(0.0, dotNL) + 1.0; // darken dotNL < 0 area by using float lambert
    lighting *= shadowAttenuation; // darken if receiving shadow
    col *= lighting;

    // parametric rim lighting
    vec3 staticRimLighting = vec3(0.0);
    vec3 mixedRimLighting = lighting;

    vec3 rimLighting = mix(staticRimLighting, mixedRimLighting, _RimLightingMix);
    vec3 rim = pow(clamp(1.0 - dotNV + _RimLift, 0.0, 1.0), _RimFresnelPower) * _RimColor.rgb * texture(_RimTexture, mainUv).rgb;
    col += mix(rim * rimLighting, vec3(0.0), isOutline);
	return col;
}

void fragment() {
	bool _NORMALMAP = textureSize(texture_normal, 0).x > 8;
	bool MTOON_OUTLINE_COLOR_FIXED = _OutlineMixedLighting == 0.0;
	bool MTOON_OUTLINE_COLOR_MIXED = _OutlineMixedLighting == 1.0;

    // uv
    vec2 mainUv = UV; //TRANSFORM_TEX(i.uv0, _MainTex);
    
    // uv anim
    float uvAnim = texture(_UvAnimMaskTexture, mainUv).r * TIME;
    // translate uv in bottom-left origin coordinates.
    mainUv += vec2(_UvAnimScrollX, -_UvAnimScrollY) * uvAnim;
    // rotate uv counter-clockwise around (0.5, 0.5) in bottom-left origin coordinates.
    float rotateRad = _UvAnimRotation * PI_2 * uvAnim;
    const vec2 rotatePivot = vec2(0.5, 0.5);
    mainUv = mat2(vec2(cos(rotateRad), -sin(rotateRad)), vec2(-sin(rotateRad), cos(rotateRad))) * (mainUv - rotatePivot) + rotatePivot;
    
    // main tex
    vec4 mainTex = texture(texture_albedo, mainUv);
    vec4 DEBUG_OVERRIDE = vec4(0.0);
    // alpha
	float alpha = albedo.a * mainTex.a;
 
    // normal
    vec3 viewNormal;
	if (_NORMALMAP) {
	    vec3 tangentNormal = UnpackScaleNormal(texture(texture_normal, mainUv), normal_scale);
	    viewNormal.x = dot(tspace0, tangentNormal);
	    viewNormal.y = dot(tspace1, tangentNormal);
	    viewNormal.z = dot(tspace2, tangentNormal);
	} else {
	    viewNormal = vec3(tspace0.z, tspace1.z, tspace2.z);
	}
    vec3 viewView = -VIEW;
    viewNormal *= step(0.0, dot(viewView, viewNormal)) * 2.0 - 1.0; // flip if projection matrix is flipped
    viewNormal *= mix(+1.0, -1.0, isOutline);
    viewNormal = normalize(viewNormal);

    // Unity lighting
	// dir light in light()

	// Indirect Light
	// ...

    // Albedo color
    vec4 shade = _ShadeColor * texture(_ShadeTexture, mainUv);
    vec4 lit = albedo * mainTex;
	
	vec3 col;
	float lightIntensity = 1.0;

   
    //col = min(col, lit.rgb); // comment out if you want to PBR absolutely.

    // parametric rim lighting

    vec3 rimLighting = vec3(1.0);
    vec3 rim = pow(clamp(1.0 - dot(viewNormal, viewView) + _RimLift, 0.0, 1.0), _RimFresnelPower) * _RimColor.rgb * texture(_RimTexture, mainUv).rgb;
    vec3 rimEmission = mix(rim * rimLighting, vec3(0, 0, 0), isOutline);


    // additive matcap
    vec3 viewCameraUp = vec3(0.0,1.0,0.0);//normalize(CAMERA_MATRIX[1].xyz); // FIXME!!
    vec3 viewViewUp = normalize(viewCameraUp - viewView * dot(viewView, viewCameraUp));
    vec3 viewViewRight = normalize(cross(viewView, viewViewUp));
    vec2 matcapUv = vec2(-dot(viewViewRight, viewNormal), dot(viewViewUp, viewNormal)) * 0.5 + 0.5;
    vec3 matcapLighting = texture(_SphereAdd, matcapUv).rgb;
    col += mix(matcapLighting, vec3(0, 0, 0), isOutline);

    // Emission
    vec3 emission = texture(_EmissionMap, mainUv).rgb * _EmissionColor.rgb;
    col += mix(emission, vec3(0, 0, 0), isOutline);


    // outline
	if (isOutline == 1.0) {
		if (MTOON_OUTLINE_COLOR_FIXED) {
	        col = mix(col, _OutlineColor.rgb, isOutline);
		} else if (MTOON_OUTLINE_COLOR_MIXED) {
	        col = mix(col, _OutlineColor.rgb * mix(vec3(1, 1, 1), col, _OutlineLightingMix), isOutline);
	    }
	}

    // debug
	if (_DebugMode == 1.0) { //MTOON_DEBUG_NORMAL
		col = ((mat3(CAMERA_MATRIX) * -viewNormal) * 0.5 + vec3(0.5));
	} else if (_DebugMode == 2.0) { //MTOON_DEBUG_LITSHADERATE
		col = lightIntensity * rimLighting;
	} else if (_DebugMode == 3.0) { // Add pass lighting
		col = vec3(0.0);
	}

    EMISSION = rimEmission; //mix(col.rgb, DEBUG_OVERRIDE.rgb, DEBUG_OVERRIDE.a);

    ALBEDO = lit.rgb;//vec3(0.0);
	SPECULAR = 1.0;
	ROUGHNESS = 0.0;
	METALLIC = 0.0;
	ALPHA = alpha;
	//ALPHA_SCISSOR = _Cutoff;

	//METALLIC = metallic;
	//ROUGHNESS = roughness;
	//SPECULAR = specular;
}

float SchlickFresnel(float u) {
	float m = 1.0 - u;
	float m2 = m * m;
	return m2 * m2 * m; // pow(m,5)
}

void light() {
    // uv
    vec2 mainUv = UV; //TRANSFORM_TEX(i.uv0, _MainTex);
    
    // uv anim
    float uvAnim = texture(_UvAnimMaskTexture, mainUv).r * TIME;
    // translate uv in bottom-left origin coordinates.
    mainUv += vec2(_UvAnimScrollX, -_UvAnimScrollY) * uvAnim;
    // rotate uv counter-clockwise around (0.5, 0.5) in bottom-left origin coordinates.
    float rotateRad = _UvAnimRotation * PI_2 * uvAnim;
    const vec2 rotatePivot = vec2(0.5, 0.5);
    mainUv = mat2(vec2(cos(rotateRad), sin(rotateRad)), vec2(-sin(rotateRad), cos(rotateRad))) * (mainUv - rotatePivot) + rotatePivot;

	float addDotNL = dot(NORMAL, LIGHT);
    vec4 mainTex = texture(texture_albedo, mainUv);
    vec4 shade = _ShadeColor * texture(_ShadeTexture, mainUv);
   	vec4 lit = albedo * mainTex;

	vec3 addCol = vec3(0.0);
	float addTmp;
	vec3 addLighting = calculateLighting(mainUv, addDotNL, 1.0, shade, lit, LIGHT_COLOR, addCol, addTmp);
	// addLighting *= step(0, addDotNL); // darken if transparent. Because Unity's transparent material can't receive shadowAttenuation.
	DIFFUSE_LIGHT += calculateAddLighting(mainUv, addDotNL, dot(NORMAL, VIEW), length(ATTENUATION)/length(vec3(1.0)), addLighting, addCol);

    SPECULAR_LIGHT = vec3(0.0);
}
