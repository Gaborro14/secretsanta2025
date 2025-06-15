return shader_vertex_create_base64("
    eJxNkLFrFEEUxn8zs3t3mJMBbQNeI6jFwZ0oHCkumiAKCUTj2cZDozmIXLg7xMJi
    RIvYbWM/tru12oiktUufRmH/jlt5M2t0YJfvffPe931vlF5Wy6rLxuM7d1eB94DS
    y0oDUqPgLbAJaBIp2REeeBo4SIDDmjucvDxYHE3nFEWhMCh0mJEz2x4vZpM3T3Yo
    CoMhqfXkvJ7v9ffGbE+ezabz6YtF59qj6537W7tbnd2D8fP9WWdj+upocrg/6wy6
    /UF3cKvfvdnr9XgIaYr145Xba8DwzP5cP7MPToRvYD3rq/eigxvKX/gm1quLp1/G
    K1+/FfmNtY/HxwPhW1hf5Pl34EfdP7wSV3RgM8EXwKkag3K6xik4g82S8BzKGfIs
    BZ8y8pfrXtH5ey84Jfcplb8KicIErknpW5RehZmmgzLTYGrsNGXw0MGDTIVsUVej
    a270DkYuBSO6it/OMMraoW47yaT4kF2CxIT7XHSDfswnXOUUpTPBM+rE+/Jz1G07
    xWb4Yr5WPZO7ZsjeclCdZxAsepKh7s0kx7+M4l/951+6BnjxjD3WyU6K0ktPrEsv
    u0tvnLOyh4c8cDGXPRENc/6m5lcj7C/Ynjb45KsK/gD/jZQY
")

/*
    struct VS_INPUT {
       float4 position: POSITION;
       float4 color: COLOR;

        //instance properties in slot 1
        float4 instance_offset: POSITION1;
        float4 instance_transform: TEXCOORD0;
    };

    struct VS_OUTPUT {
       float4 position: POSITION;
       float2 texcoord: TEXCOORD0;
       float4 color: COLOR;
    };

    matrix rMatrixVP;
    float2 lightpos;

    #define DEGTORAD 0.0174532925211111

    VS_OUTPUT main (VS_INPUT input) {
        VS_OUTPUT output;

        //add the instance's offset
        input.position += input.instance_offset;
        
        float rotate = input.instance_transform.z*DEGTORAD;
        
        float C=cos(rotate);
        float S=-sin(rotate);
        
        if (input.color.r>0.5) {//1,0
            input.position.x+=input.instance_transform.x*C;
            input.position.y+=input.instance_transform.x*S;
        }                          
        if (input.color.b>0.5) {//0,1
            input.position.x+=input.instance_transform.y*-S;
            input.position.y+=input.instance_transform.y*C;
        }        
        input.position.w = 1.0;
    
        if (input.color.a<0.5) {
            input.position.xy+=10000*normalize(input.position.xy-lightpos);
        }
    
        output.position = mul(rMatrixVP, input.position);
        output.color=float4(0,0,0,1);
        output.texcoord=float2(0,0);
    
        return output;
    }
*/
