--dont skid
-- By Foavv x Karszone

-- Config
local radius = 200
local FOV = math.rad(45)
local predictTime = 0.1

local v0=game.Players.LocalPlayer;local v1=game.Workspace;local v2=game:GetService("UserInputService");local function v3(v6,v7,v8) local v9=v0.Character and v0.Character.HumanoidRootPart and v0.Character.HumanoidRootPart.Position ;if  not v9 then return nil;end local v10;local v11=math.huge;for v18,v19 in ipairs(v7:GetChildren()) do if ((v19.Name==v6) and v19:IsA("Model") and v19:FindFirstChild("Humanoid") and (v19.Humanoid.Health>(0 -0))) then local v22=0 -0 ;local v23;local v24;while true do if (v22==(0 -0)) then v23=v19.PrimaryPart.Position;v24=(v23-v9).Magnitude;v22=1 -0 ;end if (v22==(351 -(87 + 263))) then if ((v24<=v8) and (v24<v11)) then local v31=180 -(67 + 113) ;local v32;local v33;local v34;while true do if (v31==1) then if (v33 and v33:IsDescendantOf(v19)) then local v38=0 -0 ;while true do if (v38==(0 + 0)) then v10=v19;v11=v24;break;end end end break;end if (v31==(0 -0)) then v32=Ray.new(v9,(v23-v9).unit * (v23-v9).magnitude );v33,v34=v1:FindPartOnRay(v32,v0.Character,false,true);v31=1;end end end break;end end end end return v10;end local function v4(v12,v13) local v14=0;local v15;while true do if (v14==(1 + 0)) then return nil;end if (v14==(0 -0)) then v15=v12:FindFirstChild("Head") and v12.Head.Position ;if v15 then local v27=952 -(802 + 150) ;local v28;while true do if (v27==0) then v28=v12.PrimaryPart.Velocity;return v15 + (v28 * v13) ;end end end v14=2 -1 ;end end end local function v5() local v16=false;local v17=false;v2.InputBegan:Connect(function(v20) if (v20.UserInputType==Enum.UserInputType.MouseButton2) then v17=true;end end);v2.InputEnded:Connect(function(v21) if (v21.UserInputType==Enum.UserInputType.MouseButton2) then v17=false;end end);while true do if v17 then v16=true;else v16=false;end if v16 then local v25=0 -0 ;local v26;while true do if (v25==(0 + 0)) then v26=v3("Dummy",v1.NPC,radius);if v26 then local v36=997 -(915 + 82) ;local v37;while true do if (v36==(0 -0)) then v37=v26:FindFirstChild("Head") and v26.Head.Position ;if v37 then local v39=0;local v40;local v41;local v42;local v43;while true do if (v39==(2 + 0)) then if (v43<=FOV) then local v47=1138 -(116 + 1022) ;local v48;while true do if ((0 -0)==v47) then v48=v4(v26,predictTime);if v48 then local v49=1187 -(1069 + 118) ;local v50;while true do if ((0 -0)==v49) then v50=CFrame.new(v40,v48);v1.CurrentCamera.CFrame=v50;break;end end end break;end end end break;end if ((2 -1)==v39) then v42=v1.CurrentCamera.CFrame.LookVector;v43=math.acos(v41:Dot(v42)/(v41.Magnitude * v42.Magnitude) );v39=7 -5 ;end if ((0 -0)==v39) then v40=v1.CurrentCamera.CFrame.Position;v41=(v37-v40).unit;v39=1 + 0 ;end end end break;end end end break;end end end wait(0 -0 );end end v5();
