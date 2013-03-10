unit ACA_main;

{$mode objfpc}{$H+}

interface

uses
  LCLIntf, LCLType, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Menus, ExtCtrls, StdCtrls, Buttons, ExtDlgs, Grids, Spin,
  SynHighlighterPas, SynEdit, SynEditHighlighter,Client,IOManager,{$IFDEF MSWINDOWS}os_windows,{$ELSE} os_linux,{$ENDIF}
  MufasaTypes,Colour_conv,Bitmaps,Windowselector,aca_types,aca_utils,aca_base;

type

  { TMainForm }

  TMainForm = class(TForm)
    AddProfileBtn: TButton;
    BtnList: TImageList;
    CTS3Mod: TFloatSpinEdit;
    ImgFromClient: TButton;
    DeleteProfileBtn: TButton;
    Label2: TLabel;
    pBox: TComboBox;
    ColorsImage: TImage;
    ClientImage: TImage;
    Label1: TLabel;
    PageControl: TPageControl;
    ColorTab: TTabSheet;
    ClientTab: TTabSheet;
    AutoColorTab: TTabSheet;
    MainMenu: TMainMenu;
    File1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Open1: TMenuItem;
    Saveas1: TMenuItem;
    Client1: TMenuItem;
    Openbitmap1: TMenuItem;
    Copybitmapfromclipboard1: TMenuItem;
    N3: TMenuItem;
    Reloadfromclient1: TMenuItem;
    Refreshimage1: TMenuItem;
    Colors1: TMenuItem;
    Deleteduplicates1: TMenuItem;
    ColorPanel: TPanel;
    Colors: TListBox;
    BestColorLabel: TLabel;
    StringGrid1: TStringGrid;
    TolLabel: TLabel;
    ColorPopupMenu: TPopupMenu;
    DeleteColor1: TMenuItem;
    DeleteDuplicates2: TMenuItem;
    StatusBar1: TStatusBar;
    ScrollBox1: TScrollBox;
    Colors_RGB1: TLabeledEdit;
    Colors_RGB2: TLabeledEdit;
    Colors_RGB3: TLabeledEdit;
    Colors_HSL2: TLabeledEdit;
    Colors_HSL1: TLabeledEdit;
    Colors_HSL3: TLabeledEdit;
    Colors_XYZ2: TLabeledEdit;
    Colors_XYZ1: TLabeledEdit;
    Colors_XYZ3: TLabeledEdit;
    Colors_Shape: TShape;
    GroupBox1: TGroupBox;
    Colors_Color: TLabeledEdit;
    Colors_Tolerance: TLabeledEdit;
    GroupBox2: TGroupBox;
    Colors_HueMod: TLabeledEdit;
    Colors_RGBTol: TLabeledEdit;
    Colors_SatMod: TLabeledEdit;
    Colors_HSLTol: TLabeledEdit;
    Colors_XYZTol: TLabeledEdit;
    ScrollBox2: TScrollBox;
    GroupBox4: TGroupBox;
    Client_HSL1: TLabeledEdit;
    Client_RGB1: TLabeledEdit;
    Client_RGB2: TLabeledEdit;
    Client_RGB3: TLabeledEdit;
    Client_HSL3: TLabeledEdit;
    Client_HSL2: TLabeledEdit;
    Client_XYZ3: TLabeledEdit;
    Client_XYZ1: TLabeledEdit;
    Client_XYZ2: TLabeledEdit;
    Btn_MarkColors: TBitBtn;
    GroupBox5: TGroupBox;
    Btn_MarkBest: TBitBtn;
    Btn_RefreshImage: TBitBtn;
    CTSgroup: TRadioGroup;
    HueModLabel: TLabel;
    SatModLabel: TLabel;
    Colors_BestCol: TLabeledEdit;
    ClearList1: TMenuItem;
    GroupBox3: TGroupBox;
    ClearList2: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Savebitmap1: TMenuItem;
    GroupBox6: TGroupBox;
    Client_Color: TLabeledEdit;
    Client_RGBTol: TLabeledEdit;
    Client_XYZTol: TLabeledEdit;
    Client_HSLTol: TLabeledEdit;
    Client_SatMod: TLabeledEdit;
    Client_HueMod: TLabeledEdit;
    GroupBox7: TGroupBox;
    Client_Shape: TShape;
    Client_ZoomImage: TImage;
    ImagePopupMenu: TPopupMenu;
    PickColor1: TMenuItem;
    N4: TMenuItem;
    Savebitmap2: TMenuItem;
    Loadbitmap1: TMenuItem;
    Pastebitmap1: TMenuItem;
    N5: TMenuItem;
    Refreshimage2: TMenuItem;
    Reloadfromclient2: TMenuItem;
    MarkColorsearharea1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Wholeclient1: TMenuItem;
    Minimap1: TMenuItem;
    Mainscreen1: TMenuItem;
    Inventory1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    SynPasSyn1: TSynPasSyn;
    SynEdit1: TSynEdit;
    GroupBox8: TGroupBox;
    AutoColor_RGBRange: TCheckBox;
    AutoColor_HSLRange: TCheckBox;
    AutoColor_XYZRange: TCheckBox;
    AutoColor_AreaButtons: TRadioGroup;
    GroupBox9: TGroupBox;
    Timer: TTimer;
    N6: TMenuItem;
    CustomArea: TMenuItem;
    AutoColor_CreateFunction: TBitBtn;
    AutoColor_ClearFunction: TBitBtn;
    TabSheet1: TTabSheet;
    SynEdit2: TSynEdit;
    GroupBox10: TGroupBox;
    FindObj_CreateFunction: TBitBtn;
    FindObj_ClearFunction: TBitBtn;
    GroupBox11: TGroupBox;
    FindObj_RGBRange: TCheckBox;
    FindObj_HSLRange: TCheckBox;
    FindObj_XYZRange: TCheckBox;
    GroupBox12: TGroupBox;
    FindObj_UpText: TLabeledEdit;
    FindObj_Size: TLabeledEdit;
    FindObj_arLength: TCheckBox;
    MarkingColor1: TMenuItem;
    MCol_Red: TMenuItem;
    MCol_Green: TMenuItem;
    MCol_Blue: TMenuItem;
    MCol_White: TMenuItem;
    MCol_Black: TMenuItem;
    AutoColor_SpiralSearch: TCheckBox;
    Help1: TMenuItem;
    procedure AddProfileBtnClick(Sender: TObject);
    procedure AutoColor_ClearFunctionClick(Sender: TObject);
    procedure AutoColor_CreateFunctionClick(Sender: TObject);
    procedure Btn_MarkBestClick(Sender: TObject);
    procedure Btn_MarkColorsClick(Sender: TObject);
    procedure Btn_RefreshImageClick(Sender: TObject);
    procedure CTS3ModChange(Sender: TObject);
    procedure FindObj_CreateFunctionClick(Sender: TObject);
    procedure ImgFromClientClick(Sender: TObject);
    procedure DeleteProfileBtnClick(Sender: TObject);
    procedure ClientImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ClientImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ColorsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CTSgroupClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Openbitmap1Click(Sender: TObject);
    procedure pBoxChange(Sender: TObject);
    procedure pBoxSelect(Sender: TObject);
    procedure Savebitmap1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    StatusText: string;
    procedure ResetBuffer;
    procedure UpdateBitmap(aBmp: TMufasaBitmap);
    procedure PickColor(aColor: TColor);
    procedure ToListBox();
    procedure ToComboBox();
    procedure AddNewProfile();
    procedure FillColorValues(C: TColourRec);
    function SimilarColors(Color1, Color2, Tolerance: Integer): Boolean;
    procedure DisplayCurrentColor(aColor: Integer);
    procedure CalculateBestColor(P: TColorProfile);
    procedure MarkColors(aColor, Tolerance: Integer);
    Procedure ClearAll;
    procedure ImageFromClient;
    procedure CreateAutoColor(Engine: TColorEngine;var Script: TStringList);
    procedure CreateFindObject(Engine: TColorEngine;var Script: TStringList);
    { Private declarations }
  public

    { Public declarations }
  end;

var
  MainForm: TMainForm;
  CurrIndex: integer = 0;
  BestColor, BestTolerance: Integer;
  HueMod, SatMod: Single;
  MMLClient: TClient;
  bmpBuffer, bmp: TMufasaBitmap;
  bufferChanged :boolean;
  Storage: TColorEngine;
  DefaultCTS3Mod: Extended=1;
  MinC,MaxC: TColourRec;
  OldRect: TRect;
  Select: TMWindowSelector;
 // MarkCol, ColFormat: Integer;
implementation

 uses math;

{$R *.lfm}

 procedure TMainForm.MarkColors(aColor, Tolerance: Integer);
 var
   x, y: Integer;
   SearchArea: TRect;
   TPA: TPointArray;
   TempClient: TClient;
   //hTol,sTol: extended;
 begin

  { if (CTSGroup.ItemIndex = 2) then
   begin
     if (StrToFloatDef(Trim(Client_HueMod.Text), -1) > -1) then
       hTol := (StrToFloat(Trim(Client_HueMod.Text)) * Tolerance)
     else
       hTol := (HueMod * Tolerance);
     if (StrToFloatDef(Trim(Client_SatMod.Text), -1) > -1) then
       sTol := (StrToFloat(Trim(Client_SatMod.Text)) * Tolerance)
     else
       sTol := (SatMod * Tolerance);
   end;}
   UpdateBitmap(BMP);
   if (CustomArea.Checked) and ((OldRect.Bottom - OldRect.Top) > 0) and ((OldRect.Right - OldRect.Left) > 0) then
   begin
     SearchArea := OldRect;
     InFlateRect(SearchArea, -1, -1);
   end else
   if (WholeClient1.Checked) or (BmpBuffer.Width < 738) or (BmpBuffer.Height < 467) then
     SearchArea := Rect(0, 0, BmpBuffer.Width -1, BmpBuffer.Height -1)
   else
   if (Minimap1.Checked) then
     SearchArea := Rect(550, 8, 703, 161)
   else
   if (MainScreen1.Checked) then
     SearchArea := Rect(1, 1, 516, 338)
   else
   if (Inventory1.Checked) then
     SearchArea := Rect(547, 202, 737, 466)
   else
     SearchArea := Rect(0, 0, BmpBuffer.Width -1, BmpBuffer.Height -1);

   TempClient:=Tclient.Create();
   TempClient.IOManager.SetTarget(BmpBuffer);
   TempClient.MFinder.WarnOnly:=true;
   case CTSGroup.ItemIndex of
     0:
       begin
         TempClient.MFinder.FindColorsTolerance(TPA,aColor,SearchArea.Left,SearchArea.Right,SearchArea.Bottom,SearchArea.Top,Tolerance);
         BMPBuffer.DrawTPA(TPA,clRed);
         end;
     1:
       begin
         TempClient.MFinder.FindColorsTolerance(TPA,aColor,SearchArea.Left,SearchArea.Right,SearchArea.Bottom,SearchArea.Top,Tolerance);
         BMPBuffer.DrawTPA(TPA,clRed);
         end;
     2:
       begin
         TempClient.MFinder.SetToleranceSpeed(2);
         TempClient.MFinder.SetToleranceSpeed2Modifiers(HueMod,SatMod);
         TempClient.MFinder.FindColorsTolerance(TPA,aColor,SearchArea.Left,SearchArea.Right,SearchArea.Bottom,SearchArea.Top,Tolerance);
         BMPBuffer.DrawTPA(TPA,clRed);
         end;

     3:
        begin
          DefaultCTS3Mod:=CTS3Mod.Value;
         TempClient.MFinder.SetToleranceSpeed(3);
         TempClient.MFinder.SetToleranceSpeed3Modifier(DefaultCTS3Mod);
         TempClient.MFinder.FindColorsTolerance(TPA,aColor,SearchArea.Left,SearchArea.Right,SearchArea.Bottom,SearchArea.Top,Tolerance);
         BMPBuffer.DrawTPA(TPA,clRed);
         end;
     end;
   UpdateBitmap(BMPBuffer);
   TempClient.Free;
  // ClientImage.Canvas.Draw(0, 0, Bitmap);
 //  DrawSelection;
 //  Bitmap.Free;
 end;


procedure TMainForm.ResetBuffer;
begin
  bmpBuffer := bmp.Copy(0, 0, bmp.Width - 1, bmp.Height - 1);
end;

procedure TMainForm.UpdateBitmap(aBmp: TMufasaBitmap);
begin
  bmpBuffer:=aBMP.Copy;
  with ColorsImage do
     begin
       width:=abmp.Width;
       height:=abmp.Height;
     end;
   with ClientImage do
     begin
       width:=abmp.Width;
       height:=abmp.Height;
     end;
  ColorsImage.Picture.Bitmap.Handle:=bmp.ToTBitmap.Handle;
  ClientImage.Picture.Bitmap.Handle:=bmpbuffer.ToTBitmap.Handle;
end;

procedure TMainForm.PickColor(aColor: TColor);
var
  oColor: TColorItem;
begin
  if (CurrIndex < 0) or (CurrIndex > Storage.Count) then exit;
  oColor:=Storage.Items[CurrIndex].ColorList.AddItem;
  oColor.aColor:=ColourRec(aColor);
end;

procedure TMainForm.ToListBox;
var
  CurrProfile: TColorProfile;
  i: integer;
begin
  if (CurrIndex < 0) or (CurrIndex> Storage.Count) then exit;
  CurrProfile:= Storage.Items[CurrIndex];
  Colors.Clear;
  for i:=0 to CurrProfile.ColorList.Count -1 do
   begin
     Colors.Items.Add(ColourToString(CurrProfile.ColorList[i].aColor,5));
   end;
  CalculateBestColor(Storage.Items[CurrIndex]);
end;

procedure TMainForm.ToComboBox;
var
  i: integer;
begin
  Pbox.Items.Clear;
  if not (storage.Count > 0) then exit;
  for i:=0 to storage.Count -1 do
     begin
       pbox.Items.Add(Storage.Items[i].Name);
       ctsgroup.ItemIndex:=Storage.Items[CurrIndex].CTS;
       //ToListView(sps_path.Items[i]);
     end;
  pBox.ItemIndex:=i;
  CurrIndex:=i;
end;

procedure TMainForm.AddNewProfile;
var
 Prof: TColorProfile;
 UserString: string;
begin
 if InputQuery('Add color profile name:', 'Type in new path name', UserString)
  then
   begin
    Prof:=Storage.AddItem;
    prof.Name:=UserString;
    prof.CTS:=CTSGroup.ItemIndex;
    ToComboBox;
    ToListBox;
   end
 else exit;
end;

procedure TMainForm.FillColorValues(C: TColourRec);
begin
  Client_RGB1.Text := IntToStr(C.r);                   //r
  Client_RGB2.Text := IntToStr(C.g);         //g
  Client_RGB3.Text := IntToStr(C.b);      //b

  Client_XYZ1.Text := FloatToStrF(C.x, ffFixed, 5, 3);               //x
  Client_XYZ2.Text := FloatToStrF(C.y, ffFixed, 5, 3);               //y
  Client_XYZ3.Text := FloatToStrF(C.z, ffFixed, 5, 3);
  //z
  Client_HSL1.Text := FloatToStrF(C.h, ffFixed, 5, 3);               //h
  Client_HSL2.Text := FloatToStrF(C.s, ffFixed, 5, 3);               //s
  Client_HSL3.Text := FloatToStrF(C.l, ffFixed, 5, 3);               //l             //z
  Colors_RGB1.Text := IntToStr(C.r);                   //r
  Colors_RGB2.Text := IntToStr(C.g);         //g
  Colors_RGB3.Text := IntToStr(C.b);      //b

  Colors_XYZ1.Text := FloatToStrF(C.x, ffFixed, 5, 3);               //x
  Colors_XYZ2.Text := FloatToStrF(C.y, ffFixed, 5, 3);               //y
  Colors_XYZ3.Text := FloatToStrF(C.z, ffFixed, 5, 3);
  //z
  Colors_HSL1.Text := FloatToStrF(C.h, ffFixed, 5, 3);               //h
  Colors_HSL2.Text := FloatToStrF(C.s, ffFixed, 5, 3);               //s
  Colors_HSL3.Text := FloatToStrF(C.l, ffFixed, 5, 3);
end;

function TMainForm.SimilarColors(Color1, Color2, Tolerance: Integer): Boolean;
var
  H1, S1, L1, H2, S2, L2: Extended;
begin
  Result := False;
  case CTSgroup.ItemIndex of
    0: Result := (Abs((Color1 and $ff)             -  (Color2 and $ff))             <= Tolerance) and
                (Abs(((Color1 and $ff00) shr 8)    - ((Color2 and $ff00) shr 8))    <= Tolerance) and
                (Abs(((Color1 and $ff0000) shr 16) - ((Color2 and $ff0000) shr 16)) <= Tolerance);

    1: Result := Round(Sqrt(Sqr((Color1 and $ff)              -  (Color2 and $ff)) +
                            Sqr(((Color1 and $ff00) shr 8)    - ((Color2 and $ff00) shr 8)) +
                            Sqr(((Color1 and $ff0000) shr 16) - ((Color2 and $ff0000) shr 16)) )) <= Tolerance;

    2:
      begin
        ColorToHSL(Color1, H1, S1, L1);
        ColorToHSL(Color2, H2, S2, L2);
        Result := (Abs(H1 - H2) <= (Tolerance * HueMod)) and
                  (Abs(S1 - S2) <= (Tolerance * SatMod)) and
                  (Abs(L1 - L2) <= Tolerance);
      end;
  end;
end;

procedure TMainForm.DisplayCurrentColor(aColor: Integer);
begin
  Client_Color.Text := IntToStr(aColor);
  Colors_Color.Text := IntTostr(aColor);
  Colors_Tolerance.Text := IntToStr(BestTolerance);
  Colors_Shape.Brush.Color := aColor;
  Client_Shape.Brush.Color := aColor;
  Colors_Shape.Repaint;
  Client_Shape.Repaint;
  FillColorValues(ColourRec(aColor));
end;

procedure CheckColorBounds(Colour: TColourRec);
begin
  with Colour do
  begin
    if (r < minC.r) then minC.r := r;
    if (r > maxC.r) then maxC.r := r;
    if (g < minC.g) then minC.g := g;
    if (g > maxC.g) then maxC.g := g;
    if (b < minC.b) then minC.b := b;
    if (b > maxC.b) then maxC.b := b;

    if (h < minC.h) then minC.h := h;
    if (h > maxC.h) then maxC.h := h;
    if (s < minC.s) then minC.s := s;
    if (s > maxC.s) then maxC.s := s;
    if (l < minC.l) then minC.l := l;
    if (l > maxC.l) then maxC.l := l;

    if (x < minC.x) then minC.x := x;
    if (x > maxC.x) then maxC.x := x;
    if (y < minC.y) then minC.y := y;
    if (y > maxC.y) then maxC.y := y;
    if (z < minC.z) then minC.z := z;
    if (z > maxC.z) then maxC.z := z;

    if (ll < minC.ll) then minC.ll := ll;
    if (ll > maxC.ll) then maxC.ll := ll;
    if (aa < minC.aa) then minC.aa := aa;
    if (aa > maxC.aa) then maxC.aa := aa;
    if (bb < minC.bb) then minC.bb := bb;
    if (bb > maxC.bb) then maxC.bb := bb;
  end;
end;

procedure BestColour_CTS0;
var
  r, g, b: Integer;
begin
  r := Ceil((maxC.r - minC.r) / 2.0);
  g := Ceil((maxC.g - minC.g) / 2.0);
  b := Ceil((maxC.b - minC.b) / 2.0);
  BestColor := RGBToColor(MinC.r + r, MinC.g + g, MinC.b + b);
  BestTolerance := Max(Max(r, g), b);
end;

procedure BestColour_CTS1;
var
  r, g, b: Integer;
begin
  r := Ceil((maxC.r - minC.r) / 2.0);
  g := Ceil((maxC.g - minC.g) / 2.0);
  b := Ceil((maxC.b - minC.b) / 2.0);
  BestColor := RGBToColor(MinC.r + r, MinC.g + g, MinC.b + b);
  BestTolerance := Ceil(Sqrt(r*r + g*g + b*b));
end;

const
  MaxHue = 100;
  MedHue = 50;
function BestColour_CTS2_Hue(out MinU, MaxU: Extended): Extended;
var
  {MinU, MaxU, }MinD, MaxD: Extended;
  i: Integer;
begin
  Result := -1;
  if (Storage.Count < 1) then
    Exit;

  MinU := MaxHue; MinD := MaxHue;
  MaxU := -1;     MaxD := -1;

  for i := Storage.Items[CurrIndex].ColorList.Count-1 downto 0 do
    if (Storage.Items[CurrIndex].ColorList[i].aColor.h < MedHue) then
    begin
      if (Storage.Items[CurrIndex].ColorList[i].aColor.h < MinU) then
        MinU := Storage.Items[CurrIndex].ColorList[i].aColor.h;
      if (Storage.Items[CurrIndex].ColorList[i].aColor.h > MaxU) then
        MaxU := Storage.Items[CurrIndex].ColorList[i].aColor.h;
    end
    else
    begin
      if (Storage.Items[CurrIndex].ColorList[i].aColor.h < MinD) then
        MinD := Storage.Items[CurrIndex].ColorList[i].aColor.h;
      if (Storage.Items[CurrIndex].ColorList[i].aColor.h > MaxD) then
        MaxD := Storage.Items[CurrIndex].ColorList[i].aColor.h;
    end;

  if ((MaxU >= 0) <> (MaxD >= 0)) then
    if (MaxU >= 0) then
      Result := (MinU + MaxU) / 2
    else
    begin
      Result := (MinD + MaxD) / 2;
      MinU := MinD;
      MaxU := MaxD;
    end
  else
  begin
    if ((MaxHue - MaxD) + MinU) < (MaxD - MaxU) then
      MinU := MinD
    else
      MaxU := MaxD;

    Result := (MinU + MaxU) / 2;
    if (MinU > MaxU) then
      Result := Result - MedHue;
  end;

  Result := Result + MaxHue;
  while (Result >= MaxHue) do
    Result := Result - MaxHue;
end;

procedure BestColour_CTS2;
var
  h, s, l,
  minH, maxH: Extended;
begin
  h := BestColour_CTS2_Hue(minH, maxH);
  //h := (minC.h + maxC.h) / 2;
  s := (minC.s + maxC.s) / 2;
  l := (minC.l + maxC.l) / 2;

  BestColor := HSLToColor(h, s, l);
  ColorToHSL(BestColor, h, s, l);

  BestTolerance := Ceil(Max(maxC.l - l, l - minC.l));
  if (BestTolerance > 0) then
  begin
    h := Max(Min(Abs(minH - h), minH + MaxHue - h), Min(Abs(maxH - h), maxH + MaxHue - h)) / BestTolerance;
    //h := MaxE(maxC.h - h, h - minC.h) / BestTolerance;
    s := Max(maxC.s - s, s - minC.s) / BestTolerance;
    HueMod := h;
    SatMod := s;
  end
  else
  begin
    HueMod := 0;
    SatMod := 0;
  end;
{   HueMod := RoundTo(h / Max(BestTolerance, 1), -2);
   SatMod := RoundTo(s / Max(BestTolerance, 1), -2);
   while ((HueMod * BestTolerance) < h) do
      HueMod := HueMod + 0.01;
   while ((SatMod * BestTolerance) < s) do
      SatMod := SatMod + 0.01;}
end;

procedure BestColour_CTS3;
var
  L, A, B: Extended;
begin
  L := (maxC.ll + minC.ll) / 2.0;
  A := (maxC.aa + minC.aa) / 2.0;
  B := (maxC.bb + minC.bb) / 2.0;

  BestColor := CIELabToColor(L, A, B);
  ColorToCIELab(BestColor, L, A, B);

  L := Max(maxC.ll - L, L - minC.ll);
  A := Max(maxC.aa - A, A - minC.aa);
  B := Max(maxC.bb - B, B - minC.bb);
  BestTolerance := Ceil(Sqrt(L*L + A*A + B*B) / DefaultCTS3Mod);
end;


procedure TMainForm.CalculateBestColor(P: TColorProfile);
var
  oColor: TColorItem;
   i: integer;
begin
   if (Storage.Items[CurrIndex].ColorList.Count < 1) then
     Exit;
    MinC:=Storage.Items[CurrIndex].ColorList[0].aColor;
    MaxC:=MinC;
    for i := 0 to Storage.Items[CurrIndex].ColorList.Count-1 do
     begin
      oColor:= Storage.Items[CurrIndex].ColorList[i];
     // MaxC:=oColor.aColor;
      CheckColorBounds(oColor.aColor);
     end;
    case CTSgroup.ItemIndex of
    0, 1:
      begin
        if (CTSgroup.ItemIndex = 0) then
          BestColour_CTS0
        else
          BestColour_CTS1;
       end;

    2: begin BestColour_CTS2; end;
    3: begin BestColour_CTS3; end;
  end;
  BestColorLabel.Caption := 'Best color - '+IntToStr(BestColor);
  TolLabel.Caption := 'Tolerance - '+IntToStr(BestTolerance);
  HueModLabel.Caption := 'Hue mod: '+FloatToStrF(HueMod, ffFixed, 5, 2);
  SatModLabel.Caption := 'Sat mod: '+FloatToStrF(SatMod, ffFixed, 5, 2);
  Colors_BestCol.Text := IntToStr(BestColor);
  Client_Color.Text:=IntToStr(BestColor);

  case CTSgroup.ItemIndex of
    0,1: begin Colors_RGBTol.Text := IntToStr(BestTolerance); Client_RGBTol.Text := IntToStr(BestTolerance); end;
    2: begin Colors_HueMod.Text := FloatToStrF(HueMod, ffFixed, 5, 2); Colors_SatMod.Text := FloatToStrF(SatMod, ffFixed, 5, 2); Colors_HSLTol.Text := IntToStr(BestTolerance); Client_HueMod.Text := FloatToStrF(HueMod, ffFixed, 5, 2); Client_SatMod.Text := FloatToStrF(SatMod, ffFixed, 5, 2); Client_HSLTol.Text := IntToStr(BestTolerance); end;
    3: begin Colors_RGBTol.Text := IntToStr(BestTolerance); Client_RGBTol.Text := IntToStr(BestTolerance); end;
  end;

end;

procedure TMainForm.ClearAll;
begin
    Storage.Clear;
    HueMod := 0.0;   SatMod := 0.0;
    BestColor := 0;  BestTolerance := 0;
    Colors_RGB1.Text := '';  Colors_RGB2.Text := '';  Colors_RGB3.Text := '';
    Colors_HSL1.Text := '';  Colors_HSL2.Text := '';  Colors_HSL3.Text := '';
    Colors_XYZ1.Text := '';  Colors_XYZ2.Text := '';  Colors_XYZ3.Text := '';
    Client_RGB1.Text := '';  Client_RGB2.Text := '';  Client_RGB3.Text := '';
    Client_HSL1.Text := '';  Client_HSL2.Text := '';  Client_HSL3.Text := '';
    Client_XYZ1.Text := '';  Client_XYZ2.Text := '';  Client_XYZ3.Text := '';
    Colors_Color.Text := ''; Colors_Tolerance.Text := '';
    Colors_BestCol.Text := ''; Colors_RGBTol.Text := '';  Colors_XYZTol.Text := '';
    Colors_HueMod.Text := '';  Colors_SatMod.Text := '';  Colors_HSLTol.Text := '';
    Client_Color.Text := '';   Client_RGBTol.Text := '';  Client_HueMod.Text := '';
    Client_SatMod.Text := '';  Client_HSLTol.Text := '';  Client_XYZTol.Text := '';
    HueModLabel.Caption := 'Hue mod: 0,00'; SatModLabel.Caption := 'Sat mod: 0,00';
    BestColorLabel.Caption := 'Best color'; TolLabel.Caption := 'Tolerance';
    FindObj_UpText.Text := 'Take'; FindObj_Size.Text := '10';
    Colors_Shape.Brush.Color := clWhite; client_Shape.Brush.Color := clWhite;
  end;

procedure TMainForm.ImageFromClient;
var
  w,h: integer;
begin
  MMLClient.IOManager.GetDimensions(w,h);
  bmp.CopyClientToBitmap(MMLClient.IOManager,true,0,0,0,0,w-1,h-1);
  //resetbuffer;
  UpdateBitmap(bmp);
end;

procedure TMainForm.CreateAutoColor(Engine: TColorEngine;
  var Script: TStringList);
var
  i,CTS: integer;
  prof: TColorProfile;
  x1, y1, x2, y2, cx, cy: string;
  HSLSpace, XYZSpace, ResultSpace: string;
begin
  case AutoColor_AreaButtons.ItemIndex of
        0: begin x1 := '0';    y1 := '0';    x2 := IntToStr(BMPBuffer.Width); y2 := IntToStr(BMPBuffer.Height); cx := IntToStr(Round(BMPBuffer.Width / 2)); cy := IntToStr(Round(BMPBuffer.Height / 2)); end;
        1: begin x1 := 'MMX1'; y1 := 'MMY1'; x2 := 'MMX2';                 y2 := 'MMY2';                  cx := 'MMCX';                            cy := 'MMCY';                             end;
        2: begin x1 := 'MSX1'; y1 := 'MSY1'; x2 := 'MSX2';                 y2 := 'MSY2';                  cx := 'MSCX';                            cy := 'MSCY';                             end;
        3: begin x1 := 'MIX1'; y1 := 'MIY1'; x2 := 'MIX2';                 y2 := 'MIY2';                  cx := 'MICX';                            cy := 'MICY';                             end;
      end;

      if (AutoColor_RGBRange.Checked) and (AutoColor_RGBRange.Enabled) then
        HSLSpace := GenSpaces(2);

      if (AutoColor_HSLRange.Checked) and (AutoColor_HSLRange.Enabled) then
        XYZSpace := GenSpaces(2);

      if (AutoColor_XYZRange.Checked) and (AutoColor_XYZRange.Enabled) then
        ResultSpace := GenSpaces(2);

   with Script do
      begin
        Add('program AutoColor;');
        Add('{$I SRL\SRL.simba}');
        Add('');
         for i:=0 to Engine.Count-1 do
          begin
            prof:=Engine.Items[i];
            CalculateBestColor(prof);
            CTS:=Prof.CTS;
            Add('function '+GenSpaces(1)+Prof.Name+GenSpaces(1)+': Integer;');
            Add('var');
            Add('  arP: TPointArray;');
            Add('  arC: TIntegerArray;');
            Add('  tmpCTS, i, arL: Integer;');
            if (AutoColor_RGBRange.Checked) and (AutoColor_RGBRange.Enabled) then
              Add('  R, G, B: Integer;');
            if (AutoColor_HSLRange.Checked) and (AutoColor_HSLRange.Enabled) then
              Add('  H, S, L: Extended;');
            if (AutoColor_XYZRange.Checked) and (AutoColor_XYZRange.Enabled) then
              Add('  X, Y, Z: Extended;');
            Add('begin');
            Add('  tmpCTS := GetColorToleranceSpeed;');
            Add('  ColorToleranceSpeed(' + IntToStr(CTS) + ');');
            if (CTS = 2) then
               Add('  SetColorSpeed2Modifiers(' + StringReplace(FloatToStrF(HueMod, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ', ' + StringReplace(FloatToStrF(SatMod, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ');');
            if (CTS = 3) then
               Add('  SetColorSpeed3Modifiers('+FloatToStr(DefaultCTS3Mod)+');');
               Add('');
            if (AutoColor_SpiralSearch.Checked) then
              begin
               Add('  FindColorsSpiralTolerance(' + cx + ', ' + cy + ', arP, ' + IntToStr(BestColor) + ', ' + x1 + ', ' + y1 + ', ' + x2 + ', ' + y2 + ', ' + IntToStr(BestTolerance) + ');');
               Add('  if (Length(arP) = 0) then');
              end else
              Add('  if not (FindColorsTolerance(arP, ' + IntToStr(BestColor) + ', ' + x1 + ', ' + y1 + ', ' + x2 + ', ' + y2 + ', ' + IntToStr(BestTolerance) + ')) then');
              Add('  begin');
              Add('    Writeln(''Failed to find the color, no result.'');');
              Add('    ColorToleranceSpeed(tmpCTS);');
              if (CTS = 2) then
                 Add('    SetColorSpeed2Modifiers(0.2, 0.2);');
              Add('    Exit;');
              Add('  end;');
              Add('');
              Add('  arC := GetColors(arP);');
              Add('  ClearSameIntegers(arC);');
              Add('  arL := High(arC);');
              Add('');
              Add('  for i := 0 to arL do');
              Add('  begin');
              if (AutoColor_RGBRange.Checked) and (AutoColor_RGBRange.Enabled) then
               begin
                 Add('    ColorToRGB(arC[i], R, G, B);');
                 Add('');
                 Add('    if (R >= ' + IntToStr(Max(MinC.r - 1, 0)) + ') and (R <= ' + IntToStr(MaxC.r + 1) + ') and (G >= ' + IntToStr(Max(MinC.G - 1, 0)) + ') and (G <= ' + IntToStr(Maxc.G + 1) + ') and (B >= ' + IntToStr(Max(Minc.B - 1, 0)) + ') and (B <= ' + IntToStr(Maxc.B + 1) + ') then');
                 Add('    begin');
               end;
              if (AutoColor_HSLRange.Checked) and (AutoColor_HSLRange.Enabled) then
               begin
                Add(HSLSpace + '    ColorToHSL(arC[i], H, S, L);');
                Add('');
                Add(HSLSpace + '    if (H >= ' + StringReplace(FloatToStrF(Max(Minc.H - 0.02, 0.0), ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (H <= ' + StringReplace(FloatToStrF(Maxc.H + 0.02, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (S >= ' + StringReplace(FloatToStrF(Max(Minc.S - 0.02, 0.0), ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (S <= ' + StringReplace(FloatToStrF(Maxc.S + 0.02, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (L >= ' + StringReplace(FloatToStrF(Max(Minc.L - 0.02, 0.0), ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (L <= ' + StringReplace(FloatToStrF(Maxc.L + 0.02, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') then');
                Add(HSLSpace + '    begin');
               end;
             if (AutoColor_XYZRange.Checked) and (AutoColor_XYZRange.Enabled) then
               begin
                 Add(HSLSpace + XYZSpace + '    ColorToXYZ(arC[i], X, Y, Z);');
                 Add('');
                 Add(HSLSpace + XYZSpace + '    if (X >= ' + StringReplace(FloatToStrF(Max(Minc.X - 0.02, 0.0), ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (X <= ' + StringReplace(FloatToStrF(Maxc.X + 0.02, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (Y >= ' + StringReplace(FloatToStrF(Max(Minc.Y - 0.02, 0.0), ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (Y <= ' + StringReplace(FloatToStrF(Maxc.Y + 0.02, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (Z >= ' + StringReplace(FloatToStrF(Max(Minc.Z - 0.02, 0.0), ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (Z <= ' + StringReplace(FloatToStrF(Maxc.Z + 0.02, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') then');
                 Add(HSLSpace + XYZSpace + '    begin');
               end;
            Add(HSLSpace + XYZSpace + ResultSpace + '    Result := arC[i];');
            Add(HSLSpace + XYZSpace + ResultSpace + '    Writeln(''AutoColor = '' + IntToStr(arC[i]));');
            Add(HSLSpace + XYZSpace + ResultSpace + '    Break;');
            if (AutoColor_XYZRange.Checked) and (AutoColor_XYZRange.Enabled) then
               Add(HSLSpace + XYZSpace + '    end;');
            if (AutoColor_HSLRange.Checked) and (AutoColor_HSLRange.Enabled) then
               Add(HSLSpace + '    end;');
            if (AutoColor_RGBRange.Checked) and (AutoColor_RGBRange.Enabled) then
               Add('    end;');
            Add('  end;');
            Add('');
            Add('  ColorToleranceSpeed(tmpCTS);');
            if (CTS = 2) then
               Add('  SetColorSpeed2Modifiers(0.2, 0.2);');
            Add('');
            Add('  if (i = arL + 1) then');
            Add('    Writeln(''AutoColor failed in finding the color.'');');
            Add('end;');
            Add('');
          end;
         Add('begin');
         Add('  SetupSRL;');
         //Add('  AutoColor;');
          for i:=0 to Engine.Count-1 do
            Add(genspaces(2)+Engine.Items[i].Name+';');
         Add('end.');
        StatusBar1.Panels.Items[2].Text := 'Generated function';
      end;
  CalculateBestColor(Storage.Items[CurrIndex]);

end;

procedure TMainForm.CreateFindObject(Engine: TColorEngine;
  var Script: TStringList);
var
  i,j,CTS: integer;
  prof: TColorProfile;
  x1, y1, x2, y2, cx, cy: string;
  HSLSpace, XYZSpace, ResultSpace: string;
begin
  case AutoColor_AreaButtons.ItemIndex of
        0: begin x1 := '0';    y1 := '0';    x2 := IntToStr(BMPBuffer.Width); y2 := IntToStr(BMPBuffer.Height); cx := IntToStr(Round(BMPBuffer.Width / 2)); cy := IntToStr(Round(BMPBuffer.Height / 2)); end;
        1: begin x1 := 'MMX1'; y1 := 'MMY1'; x2 := 'MMX2';                 y2 := 'MMY2';                  cx := 'MMCX';                            cy := 'MMCY';                             end;
        2: begin x1 := 'MSX1'; y1 := 'MSY1'; x2 := 'MSX2';                 y2 := 'MSY2';                  cx := 'MSCX';                            cy := 'MSCY';                             end;
        3: begin x1 := 'MIX1'; y1 := 'MIY1'; x2 := 'MIX2';                 y2 := 'MIY2';                  cx := 'MICX';                            cy := 'MICY';                             end;
      end;

      if (AutoColor_RGBRange.Checked) and (AutoColor_RGBRange.Enabled) then
        HSLSpace := GenSpaces(2);

      if (AutoColor_HSLRange.Checked) and (AutoColor_HSLRange.Enabled) then
        XYZSpace := GenSpaces(2);

      if (AutoColor_XYZRange.Checked) and (AutoColor_XYZRange.Enabled) then
        ResultSpace := GenSpaces(2);

   with Script do
      begin
        Add('program FindObjects;');
        Add('{$I SRL\SRL.simba}');
        Add('');
        Add('var');
        Add('  x, y: Integer;');
         for i:=0 to Engine.Count-1 do
          begin
            prof:=Engine.Items[i];
            CalculateBestColor(prof);
            CTS:=Prof.CTS;
            Add('function '+GenSpaces(1)+Prof.Name+'(var x,y: integer)'+GenSpaces(1)+': Integer;');
               Add('var');
        if (FindObj_RGBRange.Checked and FindObj_RGBRange.Enabled) or (FindObj_HSLRange.Checked and FindObj_HSLRange.Enabled) or (FindObj_XYZRange.Checked and FindObj_XYZRange.Enabled) then
          Add('  arP, arAP: TPointArray;')
        else
          Add('  arP: TPointArray;');
        if (FindObj_RGBRange.Checked and FindObj_RGBRange.Enabled) or (FindObj_HSLRange.Checked and FindObj_HSLRange.Enabled) or (FindObj_XYZRange.Checked and FindObj_XYZRange.Enabled) then
          Add('  arC, arUC: TIntegerArray;');
        Add('  ararP: T2DPointArray;');
        if (FindObj_RGBRange.Checked and FindObj_RGBRange.Enabled) or (FindObj_HSLRange.Checked and FindObj_HSLRange.Enabled) or (FindObj_XYZRange.Checked and FindObj_XYZRange.Enabled) then
          Add('  tmpCTS, i, j, arL, arL2: Integer;')
        else
          Add('  tmpCTS, i, arL: Integer;');
        Add('  P: TPoint;');
        if (FindObj_RGBRange.Checked) and (FindObj_RGBRange.Enabled) then
          Add('  R, G, B: Integer;');
        if (FindObj_HSLRange.Checked) and (FindObj_HSLRange.Enabled) then
          Add('  H, S, L: Extended;');
        if (FindObj_XYZRange.Checked) and (FindObj_XYZRange.Enabled) then
          Add('  X, Y, Z: Extended;');
        Add('begin');
        Add('  tmpCTS := GetColorToleranceSpeed;');
        Add('  ColorToleranceSpeed(' + IntToStr(CTS) + ');');
        if (CTS = 2) then
          Add('  SetColorSpeed2Modifiers(' + StringReplace(FloatToStrF(HueMod, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ', ' + StringReplace(FloatToStrF(SatMod, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ');');
        if (CTS = 3) then
          Add('  SetColorSpeed3Modifiers('+FloatToStr(DefaultCTS3Mod)+');');
        Add('');
        Add('  if not(FindColorsTolerance(arP, ' + IntToStr(BestColor) + ', MSX1, MSY1, MSX2, MSY2, ' + IntToStr(BestTolerance) + ')) then');
        Add('  begin');
        Add('    Writeln(''Failed to find the color, no object found.'');');
        Add('    ColorToleranceSpeed(tmpCTS);');
        if (CTS = 2) then
          Add('    SetColorSpeed2Modifiers(0.2, 0.2);');
        Add('    Exit;');
        Add('  end;');
        Add('');
        if (FindObj_RGBRange.Checked and FindObj_RGBRange.Enabled) or (FindObj_HSLRange.Checked and FindObj_HSLRange.Enabled) or (FindObj_XYZRange.Checked and FindObj_XYZRange.Enabled) then
        begin
          Add('  arC := GetColors(arP);');
          Add('  arUC := arC;');
          Add('  ClearSameIntegers(arUC);');
          Add('  arL := High(arUC);');
          Add('  arL2 := High(arC);');
          Add('');
          Add('  for i := 0 to arL do');
          Add('  begin');
         if (FindObj_RGBRange.Checked) and (FindObj_RGBRange.Enabled) then
         begin
            Add('    ColorToRGB(arC[i], R, G, B);');
            Add('');
            Add('    if (R >= ' + IntToStr(Max(Minc.R - 1, 0)) + ') and (R <= ' + IntToStr(Maxc.R + 1) + ') and (G >= ' + IntToStr(Max(Minc.G - 1, 0)) + ') and (G <= ' + IntToStr(Maxc.G + 1) + ') and (B >= ' + IntToStr(Max(Minc.B - 1, 0)) + ') and (B <= ' + IntToStr(Maxc.B + 1) + ') then');
            Add('    begin');
          end;
          if (FindObj_HSLRange.Checked) and (FindObj_HSLRange.Enabled) then
          begin
            Add(HSLSpace + '    ColorToHSL(arC[i], H, S, L);');
            Add('');
            Add(HSLSpace + '    if (H >= ' + StringReplace(FloatToStrF(Max(Minc.H - 0.02, 0.0), ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (H <= ' + StringReplace(FloatToStrF(Maxc.H + 0.02, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (S >= ' + StringReplace(FloatToStrF(Max(Minc.S - 0.02, 0.0), ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (S <= ' + StringReplace(FloatToStrF(Maxc.S + 0.02, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (L >= ' + StringReplace(FloatToStrF(Max(Minc.L - 0.02, 0.0), ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (L <= ' + StringReplace(FloatToStrF(Maxc.L + 0.02, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') then');
            Add(HSLSpace + '    begin');
          end;
          if (FindObj_XYZRange.Checked) and (FindObj_XYZRange.Enabled) then
          begin
            Add(HSLSpace + XYZSpace + '    ColorToXYZ(arC[i], X, Y, Z);');
            Add('');
            Add(HSLSpace + XYZSpace + '    if (X >= ' + StringReplace(FloatToStrF(Max(Minc.X - 0.02, 0.0), ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (X <= ' + StringReplace(FloatToStrF(Maxc.X + 0.02, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (Y >= ' + StringReplace(FloatToStrF(Max(Minc.Y - 0.02, 0.0), ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (Y <= ' + StringReplace(FloatToStrF(Maxc.Y + 0.02, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (Z >= ' + StringReplace(FloatToStrF(Max(Minc.Z - 0.02, 0.0), ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') and (Z <= ' + StringReplace(FloatToStrF(Maxc.Z + 0.02, ffFixed, 5, 2), ',', '.', [rfReplaceAll])  + ') then');
            Add(HSLSpace + XYZSpace + '    begin');
          end;
          Add(HSLSpace + XYZSpace + ResultSpace + '    for j := 0 to arL2 do');
          Add(HSLSpace + XYZSpace + ResultSpace + '    begin');
          Add(HSLSpace + XYZSpace + ResultSpace + '      if (arUC[i] = arC[j]) then');
          Add(HSLSpace + XYZSpace + ResultSpace + '      begin');
          Add(HSLSpace + XYZSpace + ResultSpace + '        SetLength(arAP, Length(arAP) + 1);');
          Add(HSLSpace + XYZSpace + ResultSpace + '        arAP[High(arAP)] := arP[j];');
          Add(HSLSpace + XYZSpace + ResultSpace + '      end;');
          Add(HSLSpace + XYZSpace + ResultSpace + '    end;');
          if (FindObj_XYZRange.Checked) and (FindObj_XYZRange.Enabled) then
            Add(HSLSpace + XYZSpace + '    end;');
          if (FindObj_HSLRange.Checked) and (FindObj_HSLRange.Enabled) then
            Add(HSLSpace + '    end;');
          if (FindObj_RGBRange.Checked) and (FindObj_RGBRange.Enabled) then
            Add('    end;');
          Add('  end;');
          Add('');
        end;
      end;
       Add('begin');
         Add('  SetupSRL;');
         //Add('  AutoColor;');
         for j:=0 to Engine.Count-1 do
            Add(genspaces(2)+Engine.Items[i].Name+'(x,y)'+';');
         Add('end.');
        StatusBar1.Panels.Items[2].Text := 'Generated function';
      end;
  CalculateBestColor(Storage.Items[CurrIndex]);
end;


procedure TMainForm.FormCreate(Sender: TObject);
var
  w,h: integer;
begin
  Storage:=TColorEngine.Create;
  bmp:=TMufasaBitmap.Create;
  bmpBuffer:=TMufasabitmap.Create;
  MMLClient:=TClient.Create;
  MMLClient.IOManager.GetDimensions(w,h);
  Self.Caption:='ACA Remake by Cynic for'+ {$IFDEF WINDOWS}'Win'{$ELSE}'*nix'{$ENDIF}+'(Based on ACA v2 source code)';
  bmp.SetSize(w,h);
  bmpBuffer.SetSize(w,h);
  bmp.CopyClientToBitmap(MMLClient.IOManager,true,0,0,0,0,w-1,h-1);
  select:=TMWindowSelector.Create(nil);
  DefaultCTS3Mod:=CTS3Mod.Value;
  //CTS:=CTSGroup.ItemIndex;
  //resetbuffer;
  UpdateBitmap(bmp);
  StatusBar1.Panels.Items[2].Text := 'ACA succesfully loaded..';
end;

procedure TMainForm.Openbitmap1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
   begin
   BMP.LoadFromFile(OpenPictureDialog1.FileName);
   UpdateBitmap(BMP);
   end else exit;
end;

procedure TMainForm.pBoxChange(Sender: TObject);
begin
  if not (Storage.Count > 0) then exit;
  ToListBox;
end;

procedure TMainForm.pBoxSelect(Sender: TObject);
begin
  if not (Storage.Count > 0) then exit;
  CurrIndex:=Pbox.ItemIndex;
  CTSGroup.ItemIndex:=Storage.Items[CurrIndex].CTS;
  ToListBox;
end;

procedure TMainForm.Savebitmap1Click(Sender: TObject);
begin
 if SavePictureDialog1.Execute then
   begin
   BMP.ToTbitmap.SaveToFile(SavePictureDialog1.FileName);
   end else exit;
end;

procedure TMainForm.ToolButton1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainForm.ToolButton3Click(Sender: TObject);
begin

end;

procedure TMainForm.ToolButton3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MMLClient.IOManager.SetTarget(Select.Drag);
  ImageFromClient;
end;

procedure TMainForm.ClientImageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Col: TColor;
begin
  if not (Storage.Count > 0) then
   AddNewProfile;
  if (Button = mbLeft) then
   begin
     Col:=bmp.FastGetPixel(X,Y);
     PickColor(Col);
     ToListBox;
     CalculateBestColor(Storage.Items[CurrIndex]);
     DisplayCurrentColor(Col);
   end;
end;

procedure TMainForm.AddProfileBtnClick(Sender: TObject);
begin
  AddNewProfile;
end;

procedure TMainForm.AutoColor_ClearFunctionClick(Sender: TObject);
begin
  SynEdit1.Lines.Clear;
end;

procedure TMainForm.AutoColor_CreateFunctionClick(Sender: TObject);
var
 ST: TStringList;
begin
  If not (storage.Count>0) then exit;
  SynEdit1.Lines.Clear;
  St:=TStringList.Create;
  CreateAutoColor(Storage,ST);
  SynEdit1.Text:=St.Text;
  st.Free;
end;

procedure TMainForm.Btn_MarkBestClick(Sender: TObject);
begin
  If not (storage.Count>0) then exit;
    Client_Color.Text := IntToStr(BestColor);
    case CTSgroup.ItemIndex of
      0, 1,3: Client_RGBTol.Text := IntToStr(BestTolerance);
      2:
        begin
          Client_HueMod.Text := FloatToStrF(HueMod, ffFixed, 5, 2);
          Client_SatMod.Text := FloatToStrF(SatMod, ffFixed, 5, 2);
          Client_HSLTol.Text := IntToStr(BestTolerance);
        end;
    end;
    MarkColors(BestColor, BestTolerance);
    StatusBar1.Panels.Items[2].Text := 'Marked best colors';
end;

procedure TMainForm.Btn_MarkColorsClick(Sender: TObject);
begin
  If not (storage.Count>0) then exit;
    if (StrToIntDef(Client_Color.Text, -1) > -1) then
    begin
      case CTSGroup.ItemIndex of
        0, 1:
          if (StrToIntDef(Trim(Client_RGBTol.Text), -1) > -1) then
            MarkColors(StrToInt(Trim(Client_Color.Text)), StrToInt(Trim(Client_RGBTol.Text)));
        2:
          if (StrToIntDef(Trim(Client_HSLTol.Text), -1) > -1) then
            MarkColors(StrToInt(Trim(Client_Color.Text)), StrToInt(Trim(Client_HSLTol.Text)));
        3:
          if (StrToIntDef(Trim(Client_XYZTol.Text), -1) > -1) then
            MarkColors(StrToInt(Trim(Client_Color.Text)), StrToInt(Trim(Client_XYZTol.Text)));
      end;
      StatusBar1.Panels.Items[2].Text := 'Marked colors';
    end;
end;

procedure TMainForm.Btn_RefreshImageClick(Sender: TObject);
begin
  UpdateBitmap(BMP);
end;

procedure TMainForm.CTS3ModChange(Sender: TObject);
begin
  DefaultCTS3Mod:=CTS3Mod.Value;
end;

procedure TMainForm.FindObj_CreateFunctionClick(Sender: TObject);
var
 ST: TStringList;
begin
  If not (storage.Count>0) then exit;
  SynEdit2.Lines.Clear;
  St:=TStringList.Create;
  CreateFindObject(Storage,ST);
  SynEdit2.Text:=St.Text;
  st.Free;
end;

procedure TMainForm.ImgFromClientClick(Sender: TObject);
begin
  ImageFromClient;
end;

procedure TMainForm.DeleteProfileBtnClick(Sender: TObject);
begin
  if not Storage.Count > 0 then exit;
  Storage.Delete(CurrIndex);
  pbox.Items.Delete(CurrIndex);
  ToComboBox;
  ToListBox;
end;

procedure TMainForm.ClientImageMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  Col: TColor;
begin
  Col:=BMP.FastGetPixel(x,y);
  FillColorValues(ColourRec(Col));
  Client_Shape.Brush.Color := Col;
  StatusBar1.Panels.Items[0].Text := IntToStr(X)+':'+IntToStr(Y);
  StatusBar1.Panels.Items[1].Text := IntToStr(Col);
   with Client_ZoomImage.Canvas do
      begin
        Pen.Color := clBlack;
        Brush.Style := bsSolid;
        Brush.Color := clWhite;
        Rectangle(0, 0, 70, 70);
        Brush.Style := bsDiagCross;
        Brush.Color := clNavy;
        Rectangle(0, 0, 70, 70);
        CopyRect(Rect(1, 1, 69, 69),BMP.TOTbitmap.Canvas, Rect(X - 2, Y -2, X + 3, Y + 3));
        Brush.Style := bsClear;
        Pen.Color := clRed;
        Rectangle(28, 28, 42, 42);
      end;
end;

procedure TMainForm.ColorsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not (storage.Count > 0) then exit;
  if not (Colors.ItemIndex > -1) then  exit;
  if Key = VK_DELETE then
    begin
     Storage.Items[CurrIndex].ColorList.Delete(Colors.ItemIndex);
    end;
  toListBox;
end;

procedure TMainForm.CTSgroupClick(Sender: TObject);
var
  i: integer;
begin
  if not (Storage.Count > 0) then exit;
    Storage.Items[CurrIndex].CTS:=CTSGroup.ItemIndex;
    CalculateBestColor(Storage.Items[CurrIndex]);
    i := StrToIntDef(Trim(Colors_Color.Text), -1);
    if (i > -1) then
      Colors_Tolerance.Text := IntToStr(BestTolerance);
    HueModLabel.Visible := (CTSGroup.ItemIndex = 2);
    SatModLabel.Visible := (CTSGroup.ItemIndex = 2);
    case CTSgroup.ItemIndex of
      0: begin Colors_RGBTol.Enabled := True;  Colors_HueMod.Enabled := False; Colors_SatMod.Enabled := False; Colors_HSLTol.Enabled := False; {Colors_XYZTol.Enabled := False;} Client_RGBTol.Enabled := True;   Client_HueMod.Enabled := False; Client_SatMod.Enabled := False; Client_HSLTol.Enabled := False; {Client_XYZTol.Enabled := False;} AutoColor_HSLRange.Enabled := True; FindObj_RGBRange.Enabled := True; end;
      1: begin Colors_RGBTol.Enabled := True;  Colors_HueMod.Enabled := False; Colors_SatMod.Enabled := False; Colors_HSLTol.Enabled := False; {Colors_XYZTol.Enabled := False;} Client_RGBTol.Enabled := True;   Client_HueMod.Enabled := False; Client_SatMod.Enabled := False; Client_HSLTol.Enabled := False; {Client_XYZTol.Enabled := False;} AutoColor_HSLRange.Enabled := True; FindObj_HSLRange.Enabled := True; end;
      2: begin Colors_RGBTol.Enabled := False; Colors_HueMod.Enabled := True;  Colors_SatMod.Enabled := True;  Colors_HSLTol.Enabled := True;  {Colors_XYZTol.Enabled := False;} Client_RGBTol.Enabled := False;  Client_HueMod.Enabled := True;  Client_SatMod.Enabled := True;  Client_HSLTol.Enabled := True;  {Client_XYZTol.Enabled := False;} AutoColor_HSLRange.Enabled := False; FindObj_HSLRange.Enabled := False; end;
      3: begin Colors_RGBTol.Enabled := False; Colors_HueMod.Enabled := False; Colors_SatMod.Enabled := False; Colors_HSLTol.Enabled := False; {Colors_XYZTol.Enabled := True; } Client_RGBTol.Enabled := False;  Client_HueMod.Enabled := False; Client_SatMod.Enabled := False; Client_HSLTol.Enabled := False; {Client_XYZTol.Enabled := True; } AutoColor_HSLRange.Enabled := True; FindObj_HSLRange.Enabled := True; end;
    end;
    StatusBar1.Panels.Items[2].Text := 'Changed cts to '+IntToStr(CTSgroup.ItemIndex);
  end;



end.
