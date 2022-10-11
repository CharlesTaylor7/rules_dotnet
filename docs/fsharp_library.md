<!-- Generated with Stardoc: http://skydoc.bazel.build -->


Rules for compiling F# libraries.


<a id="fsharp_library"></a>

## fsharp_library

<pre>
fsharp_library(<a href="#fsharp_library-name">name</a>, <a href="#fsharp_library-data">data</a>, <a href="#fsharp_library-defines">defines</a>, <a href="#fsharp_library-deps">deps</a>, <a href="#fsharp_library-exports">exports</a>, <a href="#fsharp_library-internals_visible_to">internals_visible_to</a>, <a href="#fsharp_library-keyfile">keyfile</a>, <a href="#fsharp_library-langversion">langversion</a>, <a href="#fsharp_library-out">out</a>,
               <a href="#fsharp_library-override_strict_deps">override_strict_deps</a>, <a href="#fsharp_library-override_treat_warnings_as_errors">override_treat_warnings_as_errors</a>, <a href="#fsharp_library-override_warning_level">override_warning_level</a>,
               <a href="#fsharp_library-override_warnings_as_errors">override_warnings_as_errors</a>, <a href="#fsharp_library-override_warnings_not_as_errors">override_warnings_not_as_errors</a>, <a href="#fsharp_library-private_deps">private_deps</a>, <a href="#fsharp_library-resources">resources</a>,
               <a href="#fsharp_library-runtime_identifier">runtime_identifier</a>, <a href="#fsharp_library-srcs">srcs</a>, <a href="#fsharp_library-strict_deps">strict_deps</a>, <a href="#fsharp_library-target_frameworks">target_frameworks</a>, <a href="#fsharp_library-treat_warnings_as_errors">treat_warnings_as_errors</a>,
               <a href="#fsharp_library-warning_level">warning_level</a>, <a href="#fsharp_library-warnings_as_errors">warnings_as_errors</a>, <a href="#fsharp_library-warnings_not_as_errors">warnings_not_as_errors</a>)
</pre>

Compile a F# DLL

**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="fsharp_library-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/concepts/labels#target-names">Name</a> | required |  |
| <a id="fsharp_library-data"></a>data |  Runtime files. It is recommended to use the @rules_dotnet//tools/runfiles library to read the runtime files.   | <a href="https://bazel.build/concepts/labels">List of labels</a> | optional | [] |
| <a id="fsharp_library-defines"></a>defines |  A list of preprocessor directive symbols to define.   | List of strings | optional | [] |
| <a id="fsharp_library-deps"></a>deps |  Other libraries, binaries, or imported DLLs   | <a href="https://bazel.build/concepts/labels">List of labels</a> | optional | [] |
| <a id="fsharp_library-exports"></a>exports |  List of targets to add to the dependencies of those that depend on this target.          Use this sparingly as it weakens the precision of the build graph.<br><br>        This attribute does nothing if you don't have strict dependencies enabled.   | <a href="https://bazel.build/concepts/labels">List of labels</a> | optional | [] |
| <a id="fsharp_library-internals_visible_to"></a>internals_visible_to |  Other libraries that can see the assembly's internal symbols. Using this rather than the InternalsVisibleTo assembly attribute will improve build caching.   | List of strings | optional | [] |
| <a id="fsharp_library-keyfile"></a>keyfile |  The key file used to sign the assembly with a strong name.   | <a href="https://bazel.build/concepts/labels">Label</a> | optional | None |
| <a id="fsharp_library-langversion"></a>langversion |  The version string for the language.   | String | optional | "" |
| <a id="fsharp_library-out"></a>out |  File name, without extension, of the built assembly.   | String | optional | "" |
| <a id="fsharp_library-override_strict_deps"></a>override_strict_deps |  Whether or not to override the strict_deps attribute.   | Boolean | optional | False |
| <a id="fsharp_library-override_treat_warnings_as_errors"></a>override_treat_warnings_as_errors |  Whether or not to override the treat_warnings_as_errors attribute.   | Boolean | optional | False |
| <a id="fsharp_library-override_warning_level"></a>override_warning_level |  Whether or not to override the warning_level attribute.   | Boolean | optional | False |
| <a id="fsharp_library-override_warnings_as_errors"></a>override_warnings_as_errors |  Whether or not to override the warnings_as_errors attribute.   | Boolean | optional | False |
| <a id="fsharp_library-override_warnings_not_as_errors"></a>override_warnings_not_as_errors |  Whether or not to override the warnings_not_as_errors attribute.   | Boolean | optional | False |
| <a id="fsharp_library-private_deps"></a>private_deps |  Private dependencies <br><br>        This attribute should be used for dependencies are only private to the target.          The dependencies will not be propagated transitively to parent targets and          do not become part of the targets runfiles.   | <a href="https://bazel.build/concepts/labels">List of labels</a> | optional | [] |
| <a id="fsharp_library-resources"></a>resources |  A list of files to embed in the DLL as resources.   | <a href="https://bazel.build/concepts/labels">List of labels</a> | optional | [] |
| <a id="fsharp_library-runtime_identifier"></a>runtime_identifier |  The runtime identifier that is being targeted. See https://docs.microsoft.com/en-us/dotnet/core/rid-catalog   | String | required |  |
| <a id="fsharp_library-srcs"></a>srcs |  The source files used in the compilation.   | <a href="https://bazel.build/concepts/labels">List of labels</a> | optional | [] |
| <a id="fsharp_library-strict_deps"></a>strict_deps |  Whether to use strict dependencies or not. <br><br>        This attribute mirrors the DisableTransitiveProjectReferences in MSBuild.         The default setting of this attribute can be overridden in the toolchain configuration   | Boolean | optional | True |
| <a id="fsharp_library-target_frameworks"></a>target_frameworks |  A list of target framework monikers to buildSee https://docs.microsoft.com/en-us/dotnet/standard/frameworks   | List of strings | required |  |
| <a id="fsharp_library-treat_warnings_as_errors"></a>treat_warnings_as_errors |  Treat all compiler warnings as errors. Note that this attribute can not be used in conjunction with warnings_as_errors.   | Boolean | optional | False |
| <a id="fsharp_library-warning_level"></a>warning_level |  The warning level that should be used by the compiler.   | Integer | optional | 3 |
| <a id="fsharp_library-warnings_as_errors"></a>warnings_as_errors |  List of compiler warning codes that should be considered as errors. Note that this attribute can not be used in conjunction with treat_warning_as_errors.   | List of strings | optional | [] |
| <a id="fsharp_library-warnings_not_as_errors"></a>warnings_not_as_errors |  List of compiler warning codes that should not be considered as errors. Note that this attribute can only be used in conjunction with treat_warning_as_errors.   | List of strings | optional | [] |

