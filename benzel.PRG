PROGRAM super_benzel_bros;
global

    font1;
    file1;
    text1;
    text2;
    text3;
    angle1=0;
    b=0;
BEGIN

    font1=load_fnt("benzel.fnt");
    file1=load_fpg("benzel.FPG");
    set_mode(m640x480);
    xput(file1,13,320,100,0,200,0,0);
    start_mode7(0,file1,12,11,0,180);
    m7.height=64;
    m7.distance=32;
    m7.color=162;
    //m7.angle=18000;
   // m7.camera=id;
    b=benzel();
    m7.camera=id;
    //text1=write(font1,320,80,4,"SUPER BENZEL BROS");
    text2=write(font1,0,20,0,"Benzel");
    text3=write(font1,0,40,0,"Dingus");
    text1=write(font1,0,60,0,"Tweezy");
    graph=7;
    x=320;
    y=80;
    size=130;

    //convert_palette(file1,1,
    loop
//if(text1.y<100)
//move_text(text1,b.x-10,b.y-100);
        move_text(text2,b.x-40,b.y+90);
        move_text(text3,b.son.x-40,b.y+90);
        move_text(text1,b.son.x-240,b.y-120);
    angle+=4000;
//angle1++;
//end
//x=mouse.x;
//y=mouse.y;
    frame;

    end
END


process benzel()
private
    anim[]=1,2,1,3;
    gr=1;
    ox=0;
    oy=0;
begin

    dingus(7);
    dingus(3);
    graph=1;
    //angle=90000;
    loop

        x=mouse.x;
        y=300;//mouse.y;
       // father.size=mouse.y;
        if(ox!=x)
            if(ox<x)
                flags=0;
            else
                flags=1;
            end
        end

        ox=x;
        oy=y;
        size=mouse.y;
       // angle=x*100;
//timer

        if(timer[0]>20)
            gr=gr+1;
            gr=gr%4;
            graph=anim[gr];
            timer[0]=0;
        end

        frame;
    end

end


process dingus(offs)

begin

    loop
        graph=father.graph+offs;
        flags=father.flags;
        x=father.x+350-(offs-3)*50;
        y=father.y;
        size=father.size;
       // angle=0-(father.x*200) ;
        frame;
    end

end
