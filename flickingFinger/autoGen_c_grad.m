function [c,ci,cz,czi,czd] = autoGen_c_grad(sqke1,sqke2,sqke3,sdqke1,sdqke2,sdqke3,sqk1e1,sqk1e2,sqk1e3,sdqk1e1,sdqk1e2,sdqk1e3,u1k1,u2k1,c1k,c2k,c3k,slackk,c1k1,c2k1,c3k1,slackk1,empty)
%AUTOGEN_C_GRAD
%    [C,CI,CZ,CZI,CZD] = AUTOGEN_C_GRAD(SQKE1,SQKE2,SQKE3,SDQKE1,SDQKE2,SDQKE3,SQK1E1,SQK1E2,SQK1E3,SDQK1E1,SDQK1E2,SDQK1E3,U1K1,U2K1,C1K,C2K,C3K,SLACKK,C1K1,C2K1,C3K1,SLACKK1,EMPTY)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    14-Dec-2019 01:03:10

t3 = sqke1+sqke2;
t6 = sin(t3);
t8 = sin(sqke1);
t25 = t6./2.0;
t26 = t8./2.0;
t2 = t25+t26-1.0./1.0e1;
t5 = cos(t3);
t7 = cos(sqke1);
t28 = t5./2.0;
t29 = t7./2.0;
t4 = t28+t29-1.9e1./2.0e1;
t9 = t6.*1.0e1i;
t10 = t8.*1.0e1i;
t13 = t5.*1.0e1;
t14 = t7.*1.0e1;
t11 = t9+t10-t13-t14+1.9e1-2.0i;
t12 = abs(t11);
t15 = cos(sqke2);
t16 = 1.0./t12;
t17 = sdqke3.*t12.*3.0;
t18 = slackk.*t12.*1.0e1;
t19 = sdqke1.*t5.*9.5e1;
t20 = sdqke2.*t5.*9.5e1;
t21 = sdqke1.*t6.*1.0e1;
t22 = sdqke2.*t6.*1.0e1;
t23 = sdqke1.*t7.*9.5e1;
t24 = sdqke1.*t8.*1.0e1;
t27 = t2.^2;
t30 = t4.^2;
t77 = c3k.*(2.0./5.0);
t31 = c1k+c2k-t77;
t33 = sdqke1.*1.0e2;
t34 = sdqke2.*5.0e1;
t35 = sdqke1.*t15.*1.0e2;
t36 = sdqke2.*t15.*5.0e1;
t32 = t17+t18+t19+t20+t21+t22+t23+t24-t33-t34-t35-t36;
t37 = sign(t11);
t38 = t5.*1.0e1i;
t39 = t6.*1.0e1;
t40 = t7.*1.0e1i;
t41 = t8.*1.0e1;
t42 = t38+t39+t40+t41;
t43 = sdqke1.*t5.*1.0e1;
t44 = sdqke2.*t5.*1.0e1;
t45 = sdqke1.*t7.*1.0e1;
t46 = sdqke3.*t37.*t42.*3.0;
t47 = slackk.*t37.*t42.*1.0e1;
t48 = 1.0./t12.^2;
t49 = t17-t18+t19+t20+t21+t22+t23+t24-t33-t34-t35-t36;
t50 = t28+t29;
t51 = t25+t26;
t52 = t4.*t51.*2.0;
t53 = t52-t2.*t50.*2.0;
t55 = sdqke1.*t6.*9.5e1;
t56 = sdqke2.*t6.*9.5e1;
t57 = sdqke1.*t8.*9.5e1;
t54 = t43+t44+t45+t46+t47-t55-t56-t57;
t58 = sin(sqke2);
t59 = t38+t39;
t60 = sdqke1.*t58.*1.0e2;
t61 = sdqke2.*t58.*5.0e1;
t62 = sdqke3.*t37.*t59.*3.0;
t63 = slackk.*t37.*t59.*1.0e1;
t64 = t4.*t6;
t65 = t64-t2.*t5;
t66 = t43+t44-t55-t56+t60+t61+t62+t63;
t67 = t43+t44-t55-t56+t60+t61+t62-t63;
t68 = t5.*9.5e1;
t69 = t7.*9.5e1;
t71 = t15.*1.0e2;
t70 = t39+t41+t68+t69-t71-1.0e2;
t72 = t15.*5.0e1;
t73 = t39+t68-t72-5.0e1;
t74 = empty-1.0;
t75 = empty+1.0;
t76 = t27+t30-9.0./1.0e2;
c = [-t27-t30+9.0./1.0e2;-c1k;-c2k;-c3k;-slackk;t31;t16.*t32.*(-1.0./1.0e1);(t16.*(sdqke1.*-1.0e2-sdqke2.*5.0e1+t17-t18+t19+t20+t21+t22+t23+t24-sdqke1.*t15.*1.0e2-sdqke2.*t15.*5.0e1))./1.0e1;c3k.*t76;-slackk.*t31;(c1k.*t16.*t32)./1.0e1;c2k.*t16.*t49.*(-1.0./1.0e1)];
if nargout > 1
    ci = [1.0;2.0;3.0;4.0;5.0;6.0;7.0;8.0;9.0;1.0e1;1.1e1;1.2e1];
end
if nargout > 2
    cz = [t53;t16.*t54.*(-1.0./1.0e1)+(t32.*t37.*t42.*t48)./1.0e1;(t16.*(t43+t44+t45+t46-t47-sdqke1.*t6.*9.5e1-sdqke2.*t6.*9.5e1-sdqke1.*t8.*9.5e1))./1.0e1-(t37.*t42.*t48.*t49)./1.0e1;-c3k.*t53;(c1k.*t16.*t54)./1.0e1-(c1k.*t32.*t37.*t42.*t48)./1.0e1;c2k.*t16.*(t43+t44+t45+t46-t47-t55-t56-t57).*(-1.0./1.0e1)+(c2k.*t37.*t42.*t48.*t49)./1.0e1;t65;t16.*t66.*(-1.0./1.0e1)+(t32.*t37.*t48.*t59)./1.0e1;(t16.*t67)./1.0e1-(t37.*t48.*t49.*t59)./1.0e1;-c3k.*t65;(c1k.*t16.*t66)./1.0e1-(c1k.*t32.*t37.*t48.*t59)./1.0e1;c2k.*t16.*t67.*(-1.0./1.0e1)+(c2k.*t37.*t48.*t49.*t59)./1.0e1;t16.*t70.*(-1.0./1.0e1);(t16.*t70)./1.0e1;(c1k.*t16.*t70)./1.0e1;c2k.*t16.*t70.*(-1.0./1.0e1);t16.*t73.*(-1.0./1.0e1);(t16.*t73)./1.0e1;(c1k.*t16.*t73)./1.0e1;c2k.*t16.*t73.*(-1.0./1.0e1);empty-3.0./1.0e1;empty+3.0./1.0e1;c1k.*(3.0./1.0e1);c2k.*(-3.0./1.0e1);t74;t75;-slackk;(t16.*t32)./1.0e1;t74;t75;-slackk;t16.*t49.*(-1.0./1.0e1);t74;empty-2.0./5.0;t76;slackk.*(2.0./5.0);t74;t74;t74;-c1k-c2k+t77;c1k;c2k];
end
if nargout > 3
    czi = [1.0;7.0;8.0;9.0;1.1e1;1.2e1;1.3e1;1.9e1;2.0e1;2.1e1;2.3e1;2.4e1;4.3e1;4.4e1;4.7e1;4.8e1;5.5e1;5.6e1;5.9e1;6.0e1;6.7e1;6.8e1;7.1e1;7.2e1;1.7e2;1.74e2;1.78e2;1.79e2;1.83e2;1.86e2;1.9e2;1.92e2;1.96e2;1.98e2;2.01e2;2.02e2;2.09e2;2.11e2;2.12e2;2.14e2;2.15e2;2.16e2];
end
if nargout > 4
    czd = [1.2e1,1.0,2.2e1];
end
