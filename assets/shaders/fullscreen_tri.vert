#version 450
#extension GL_ARB_separate_shader_objects : enable

layout(location = 0) out vec4 position;
layout(location = 1) out vec2 uv;

void main()
{
    uv = vec2((gl_VertexIndex << 1) & 2, gl_VertexIndex & 2);
    gl_Position = vec4(uv + uv + -1.0f, 0.0f, 1.0f);
    position = gl_Position;
}
