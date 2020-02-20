#include "FontLoader.h"
// ...
IDWriteFactory *pDWriteFactory;
IDWriteFontCollection *fCollection;
IDWriteTextFormat *pTextFormat;

int main()
{
  MFFontContext fContext(pDWriteFactory);
  std::vector<std::wstring> filePaths; // vector containing ABSOLUTE file paths of the font files which are to be added to the collection
  std::wstring fontFileFilePath = L"C:\\xyz\\abc.ttf";
  filePaths.push_back(fontFileFilePath);
  HRESULT hr = fContext.CreateFontCollection(filePaths, &fCollection); // create custom font collection
  hr = pDWriteFactory->CreateTextFormat(
      L"Font Family", // Font family name
      fCollection,
      DWRITE_FONT_WEIGHT_REGULAR,
      DWRITE_FONT_STYLE_NORMAL,
      DWRITE_FONT_STRETCH_NORMAL,
      16.0f,
      L"en-us",
      &pTextFormat // IDWriteTextFormat object
  );
  return 0;
}