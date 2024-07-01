export type Lcid = number;
export type CaptionKey = string;
export type CaptionTranslation = string;
export type Captions = {
  entries: Record<Lcid, Record<CaptionKey, string>>,
  isEmpty: () => boolean,
  getCaption: (lcid: Lcid, key: CaptionKey) => CaptionTranslation;
}