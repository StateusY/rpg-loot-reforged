// GUI IMPORT

ivec3 control = ivec3(0);
if (pos.y > 3200.0) { control = ivec3(Color.rgb * 255.0 + 0.5); if (control == ivec3(255, 255, 255)) control = ivec3(texture(Sampler0, texCoord0).rgb * 255.0 + 0.5); } if (control == ivec3(0, 0, 170) || (control.r < 4 && control.g < 4 && control.b < 4) && control != ivec3(0)) {
    /* COMPENSATE FOR OFFSET     */ pos += vec3(0.0, -6400.0, 0.0); vertexColor = vec4(1.0);
    // GENERIC ANCHORS
    /* #010000 TOP LEFT          */ /**/ if (control == ivec3(1, 0, 0)) pos.xy += floor(GUI_SIZE * vec2(-0.5,  0.0) + 0.5);
    /* #020000 TOP CENTER        */ else if (control == ivec3(2, 0, 0)) pos.xy += floor(GUI_SIZE * vec2( 0.0,  0.0) + 0.5);
    /* #030000 TOP RIGHT         */ else if (control == ivec3(3, 0, 0)) pos.xy += floor(GUI_SIZE * vec2( 0.5,  0.0) + 0.5);
    /* #000100 CENTER LEFT       */ else if (control == ivec3(0, 1, 0)) pos.xy += floor(GUI_SIZE * vec2(-0.5,  0.5) + 0.5);
    /* #000200 CENTER CENTER     */ else if (control == ivec3(0, 2, 0)) pos.xy += floor(GUI_SIZE * vec2( 0.0,  0.5) + 0.5);
    /* #000300 CENTER RIGHT      */ else if (control == ivec3(0, 3, 0)) pos.xy += floor(GUI_SIZE * vec2( 0.5,  0.5) + 0.5);
    /* #000001 BOTTOM LEFT       */ else if (control == ivec3(0, 0, 1)) pos.xy += floor(GUI_SIZE * vec2(-0.5,  1.0) + 0.5);
    /* #000002 BOTTOM CENTER     */ else if (control == ivec3(0, 0, 2)) pos.xy += floor(GUI_SIZE * vec2( 0.0,  1.0) + 0.5);
    /* #000003 BOTTOM RIGHT      */ else if (control == ivec3(0, 0, 3)) pos.xy += floor(GUI_SIZE * vec2( 0.5,  1.0) + 0.5);
    /* #010100 FILL SCREEN       */ else if (control == ivec3(1, 1, 0)) pos.xy = GUI_SIZE * (SCREEN_CORNERS[vertex] * vec2(0.5, -0.5) + 0.5);
    /* #010101 DEATH             */ else if (control == ivec3(1, 1, 1)) {
        pos.xy = GUI_SIZE * (SCREEN_CORNERS[vertex] * vec2(0.5, -0.5) + 0.5);
        float heartbeat = sin(GameTime * 6400.0);
        vertexColor = vec4(vec3(heartbeat * 0.2 + 0.8), heartbeat * 0.05 + 0.95);
    }
}

// IMPORT END
