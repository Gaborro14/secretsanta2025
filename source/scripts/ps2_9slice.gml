return shader_pixel_create_base64("
    eJyFVLFuE0EQfbs+Ry4iuaBFwhINNJZsoHAVkTQUoQjmpHRRSIywlMiW7QpRrHsK
    01Fe2nPjb8k3+DtY9GZmvRcJicLSvjezM/Nmn8/5GP/Etzj7/P70OYDfAJyPsQWA
    GA74BeASQAuOELfkAawAeE3BD+N+CueecIvx9f38brLAdrstcCxRl2KTmxV5J9WL
    A7+cfp9gvrwaXn3Bx+nNYracfV31Xn163ftwPj7vjb9d304WvbPZ/Xx6N1n0Rv3h
    qD96N+y/GQwGrHcBtD26FYATIJxYWbzQkQPQ2uVzd2Pnjet0Kyfn4wDsK0/ZcAGo
    1w51A2PtAMOemL+qfcBl8BZ36KT4wyVQ8L5DNK4MyvnEVXa35Rp9CrsHYEdM/gjw
    zHFAaOd8wRpjzVpmciiCQ0kdUktnqsmtPUqrz5wo9x3qoHnNnqX0bOiTutTFutqT
    NWqbR8+s91JiHcHPDuco2nMee8e13u3YvKqdWtiDHHMSp/eEsz3qDkybzXEUgMed
    w+OT90nxjHMNzpzeR9+YOuPaIVYZ0xOlvbF4hPm2b62RPeBTXDyQ9el+tG96o5Ie
    PHiAetkn76HcEZP/lwf0/UrzgOxZZvK2cyDae9MDuvPsgcSxf2x4QHtSs3pA9Nv+
    CtNRNzxRPrDP/zzhZV71BM/edpHyiD0gntBczp92IbNyD5KjXPYS7yYvcb5UO++Z
    OuvG/y/5JoZT0dXlNyC4zt58oxjYb+Qb0VEcI/AXjJnjgA==
")

/*
    struct PS_INPUT {
        float2 texcoord: TEXCOORD0;
        float4 color: COLOR0;
    };

    struct PS_OUTPUT {
        float4 color: COLOR0;
    };

    SamplerState dummy: register(s0);
    SamplerState rSampler;
    float4 rect; //left,top,right,bottom
    float4 size; //width,height, spritew,spriteh

    PS_OUTPUT main(PS_INPUT input) {
        PS_OUTPUT output;

        float width = size.z;
        float height = size.w;

        float find_l = rect.x;
        float find_u = rect.y;
        float find_r = (size.x-(width-rect.z));
        float find_d = (size.y-(height-rect.w));

        if (find_l>find_r) {
            find_l=(find_l+find_r)/2.0;
            find_r=find_l;
        }

        if (find_u>find_d) {
            find_u=(find_u+find_d)/2.0;
            find_d=find_u;
        }

        float uv_l = rect.x / width;
        float uv_u = rect.y / height;
        float uv_r = rect.z / width;
        float uv_d = rect.w / height;

        float2 tex;
        float2 pos = input.texcoord * size.xy;

        if (pos.x<find_l) tex.x=uv_l*(pos.x/find_l);
        else if (pos.x>=find_r) tex.x=uv_r+(1.0-uv_r)*((pos.x-find_r)/(size.x-find_r));
        else tex.x=uv_l+fmod((pos.x-find_l)/(rect.z-rect.x),1.0)*(uv_r-uv_l);

        if (pos.y<find_u) tex.y=uv_u*(pos.y/find_u);
        else if (pos.y>=find_d) tex.y=uv_d+(1.0-uv_d)*((pos.y-find_d)/(size.y-find_d));
        else tex.y=uv_u+fmod((pos.y-find_u)/(rect.w-rect.y),1.0)*(uv_d-uv_u);

        float4 albedo = tex2D(rSampler, tex);

        output.color = albedo * input.color;

        return output;
    }
*/
