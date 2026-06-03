#version 150
#extension GL_ARB_explicit_attrib_location : enable

layout(location = 0) in vec3 Position;
layout(location = 1) in vec4 Color;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

out vec4 vertexColor;
out vec2 texCoords;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    vertexColor = Color;
    texCoords = vec2(1, 1);
}
