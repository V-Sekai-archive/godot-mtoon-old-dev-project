# MToon for Godot.
For use with VRM and as a basis for toon shaded models.

Based off the original MToon by Santarh at:

https://github.com/Santarh/MToon/tree/master/MToon/Resources/Shaders

Provided under the MIT License (see `LICENSE`)

If you have the NPR lighting patch applied to Godot master (vulkan),
then please open the Alicia/Alicia.tscn to get the full shader.

Otherwise, open Alicia/AliciaCompat.tscn for the "compatible" version.
The "compat" shader will not look correct. It's just to provide some
simple shading with compatible shader param naming.

The reference Unity project is also available, in VRMUnityTestProject.


## Importing VRM Files to use this shader:

VRM importer is available here:

https://github.com/V-Sekai/godot-vrm

To use the VRM Importer, it is recommended to be on the `groups` branch of this repository:

https://github.com/V-Sekai/godot

VRM import also requires custom modules, available from the `groups` branch here:

https://github.com/V-Sekai/godot-modules-groups

## Versions:

### Godot-MToon-Shader and Alicia/Alicia.tscn (Supports Godot 3.2 and 4.x with engine patch)

**(Requires adding shader language extensions to expose lighting information in fragment)**

This should be fully compatbile with MToon and implement proper ambient lighting.

This shader should look identical to MToon in Unity. (NOTE: this test scene uses
realtime Omni and Spot lights, which are not compatible due to different falloff
curves. However, directional lights and ambient should look the same.)
![](docs/alicia_realtime_lights.png)

#### Applying custom engine patches

The branch for 3.2 is available at: https://github.com/lyuma/godot/tree/shader_npr_lighting_3.2

The branch for 4.0 is available at: https://github.com/lyuma/godot/tree/shader_npr_lighting

The 4.x Pull Request based of this branch is available at godotengine/godot#42599

### MToonCompat and AliciaCompat/AliciaCompat.tscn (For any Godot version)

**(Compatible with all Godot versions, but with incorrect ambient and directional lighting)**

This shader uses the same naming as MToon, and it should work in all versions of Godot.
However, proper toon shading is not possible without engine modifications.

The compat shader may provide a PBR look:
![](docs/alicia_compat.png)

While not the intent of MToon, this version exists to allow for compatibility
across all Godot versions, while still using the same MToon shader params so that
import and assets will be compatible.

Note about shadows: The compat shader has ommitted multiplying with
`length(SHADOW_ATTENUATION)/sqrt(3)` which is required to get shadow support in Godot 4.
I have omitted this variable for 3.2 compatability.

This version will be needed until proper NPR support is implemented in Godot.

See our proposal here:
https://github.com/godotengine/godot-proposals/issues/1620

### Historical versions:

There is an old branch `old-3.2-hack` which is done using a hacky feature added only to Godot 3.2.2
The particular implementation is also only compatible with NVIDIA, due to nuances about preprocessor support.

Additionally, using the version in the `old-3.2-hack` branch may corrupt other assets in your project
due to a bug with the aformentioned hacky feature "`custom_defines`" available only in Godot 3.2.x

Given these caveats, it is not advisable to use this version. However, I am making a note in case it
is of interest for historical reasons, or for reference.

## Notes on usage:

This package provides several duplicate shaders depending on usecase:

- For opaque objects, use `mtoon.tres`
- For transparent objects, use `mtoon_trans.tres` or `mtoon_trans_zwrite.tres`
  for most transparent highlights.
- For cutout objects, use `mtoon.tres`, but set Enable Alpha Cutout to 1.

`_cull_off` tres variants are also provided to disable backface culling.

### To enable outlines.

For each material to outline, duplicate the material (or put all materials into a
folder and duplicate the folder).

Next, for each duplicate material, set the duplicate as the "Next Pass" of the original
materials. Finally, set the shader to `mtoon_outline.tres`

Note also: VRM provides a Unity-style render queue in the materials. Some materials may
need to have their "Render Priority" adjusted in Godot terms, in order to fix
transparency sorting.

## Feature parity / testing:

I may provide test projects in the future.
Tested features include rim light, Sphere Add (matcap), shading adjustments,
ambient GI (reflection probe), directional lights, omni lights, spot lights,
outlines with width texture, UV animations with mask, debug mode, shade
textures and shade color.

I have implemented this shader with PBR Directional light mode enabled. This is
controlled by this line:
```
//col = min(col, lit.rgb); // comment out if you want to PBR absolutely.
```
You can uncomment it if you desire the original (clamped directional light) behavior.

## TODO:

- File PRs and issues against Godot 4.0 so that this can be done without GLSL macros.
- Test all baked lighting / voxel GI variants in Godot.

## Unsupported features/Bugs:

- Outlines in ScreenCoordinates mode. The screen pixel calculations seem resolution
dependent and I had difficulty ascertaining the intent of the original code.
- HDR color pickers for emission and rim colors, due to Godot limitations must be done
  using the Raw checkbox, but these colors will be **GAMMA CORRECTED** even in raw mode,
  due to a limitation in Godot. To compare, I suggest adding `[HDR][GAMMA]` in the Unity
  shader, or else remove `[HDR]` which also puts the colors into Gamma mode.
  In practice, a Gamma conversion calculator must be used when converting colors.
- For now, shaders have been updated to use `Plane` selectors instead of `Color` pickers,
  to avoid HDR compatibility between 3.2 and 4.x until this issue is resolved.
