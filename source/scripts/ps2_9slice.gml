return shader_pixel_create_base64("
    eJxdUz2LU1EQPfcj4RULAS0VDNhos7ARi1SLu43FWmi8YLesuxEDuyQkqaxuwB+Q
    n/DSyUuT0kZsbPwf73f45Mzc+5LdwIM7M2c+zsyJsU3zrznF+cc3Z08B/AFgbNN4
    ALRhgF8AbgFYWJpY0g/gOwAHI7518pWCkzT8SL6f4jP3fHfTmzG2222uwBh/89HV
    3ex2PGfM4+h+bHy9pN9Ijm/9i8m3MWaLy8HlZ7ybXM+ni+mXZf/Fh5f9txeji/7o
    69XNeN4/n97NJrfjeX94PBgeD18Pjl+dnJyw3nug49Dj6KdA5PcbQHymVCLgdvt3
    b53ea1P0SiNvE0mdb4OjCNSlBZyBiQbVyqASG7DRACsDtHEgSG4HcBaO8eiAsiu1
    JF9iRnOjRYge8E6wITr8LR2ebDLGam3J8ZLPmbOtNYCq/AR4C88aK689o/qK5GPt
    QLwFPHumdxEZezD/hrlAL9Wvo5WvxQjnPScIB+4DwI4xYpRDnjnERzKP2g6hBBrJ
    05o5Dyvt42UOctM+5FZFralv1nkOWCt7qOLj9OZOOX/G0bYIK+2vWPYGKsHp3LID
    wXb3Goj5jkC9M6hl7zlG/KG9r7fnnHCOOzdoVgaNaMVJT2opJC15uQ8Q0m3Zs2q1
    k/JT/0JivBv31xFsc087XZmpaut1tR9xohWftNJVDjK3T1rpIsRO0oqD5z7Su4iM
    6Vt08HB20Y1BL81eR590o/NTN6Hloxy4L/IJO8aIUY4aJ6+sG61JjOpGMTkv60Zu
    uSFP1Q3vTT45Rt2EpBuZKenGR5vul3NoW1RJN4plb+pH78y5m6SbSnST9X6ofWrq
    0N7ntzcR/5nw5u7qaIqsNbWBei3/10LtpgH+A/tP88k=
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
    float mode;

    PS_OUTPUT main(PS_INPUT input) {
        PS_OUTPUT output;

        float width = size.z;
        float height = size.w;

        float find_l = rect.x;
        float find_u = rect.y;
        float find_r = (size.x-(width-rect.z));
        float find_d = (size.y-(height-rect.w));

        float uv_l = rect.x / width;
        float uv_u = rect.y / height;
        float uv_r = rect.z / width;
        float uv_d = rect.w / height;

        if (find_l>find_r) {
            find_l=(find_l+find_r)/2.0;
            find_r=find_l;
            if (mode) {
                uv_l = find_l / width;
                uv_r = 1.0 - uv_l;
            }
        }

        if (find_u>find_d) {
            find_u=(find_u+find_d)/2.0;
            find_d=find_u;
            if (mode) {
                uv_u = find_u / height;
                uv_d = 1.0 - uv_u;
            }
        }

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
