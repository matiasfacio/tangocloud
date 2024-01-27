// Cynhyrchwyd y ffeil hon yn awtomatig. PEIDIWCH Â MODIWL
// This file is automatically generated. DO NOT EDIT
import {main} from '../models';

export function GetAudioFilesInFolder(arg1:string):Promise<Array<main.AudioFile>>;

export function GetFoldersInFolder(arg1:string):Promise<Array<string>>;

export function GetRecordingsWithFilter(arg1:string,arg2:string,arg3:string,arg4:string):Promise<Array<main.Recording>>;

export function GetSongTags():Promise<void>;

export function ImportCsvFile():Promise<void>;

export function MapSong(arg1:number,arg2:string):Promise<void>;

export function PrintLog(arg1:string):Promise<void>;
