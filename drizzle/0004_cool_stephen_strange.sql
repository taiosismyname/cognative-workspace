ALTER TABLE `message_origins` DROP INDEX `message_origins_native_idx`;--> statement-breakpoint
ALTER TABLE `message_origins` ADD `providerConnectionId` int;--> statement-breakpoint
ALTER TABLE `message_origins` ADD CONSTRAINT `message_origins_native_idx` UNIQUE(`providerConnectionId`,`nativeMessageId`);